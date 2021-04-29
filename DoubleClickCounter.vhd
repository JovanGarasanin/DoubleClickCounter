----------------------------------------------------------------------------------------------------
-- Project      : Doubleclick counter + SPI
-- Description  : Doubleclick counter with an SPI for data serialization and transfer
-- Authors      : Djordje Hadzic, Jovan Garasanin
-- File         : DoubleClickCounter.vhd
-- File descrip.: This file contains an entity which combines all of the lower level entities into 
--                a whole.
----------------------------------------------------------------------------------------------------

library IEEE;
use ieee.std_logic_1164.all;

entity DoubleClickCounter is 
   port( 
    --Input signals
    i_Clock     	: in std_logic;
    i_Reset    	: in std_logic;
    i_ButtonInput : in std_logic; --Output of DeBounce

    i_miso_dc		: in std_logic;
	 
    --Output signals
	 sclk_dc		: out std_logic;
	 ss_dc			: out std_logic;
	 mosi_dc		: out std_logic
	 
    );
end DoubleClickCounter;






architecture RTL of DoubleClickCounter is


component int_time is 
   port( 
    --Input signals
    i_Clock     	: in std_logic;
    
    --Output signals
	 o_Clock			: out std_logic
	 
    );
end component;


component DClick_reg is
    port 
    (
        --Input ports
        Clock      : in std_logic;
        Reset    : in std_logic;
        button_input : in std_logic; --Output of DeBounce
        
        --Output ports
        dclick   : out std_logic
    );
end component;


component Counter is 
   port( 
    --Input signals
    Clock	: in std_logic;
    Reset	: in std_logic;
    
    --Output signals
    Output	: out std_logic_vector(3 downto 0);
	 Carry 	: out std_logic
    );
end component;

component Converter is 
   port( 
    --Input signals
    Input8bit		: in std_logic_vector(7 downto 0);
    Clock			: in std_logic;
    Reset			: in std_logic;
    
    --Output signals
    Output30bit	: out std_logic_vector(31 downto 0)
    );
end component;

component Preparator is 
   port( 
    --Input signals
		 -- Left hand side
		 InputInfo		: in std_logic_vector(31 downto 0);
		 i_Clk			: in std_logic;
		 i_Reset			: in std_logic;
		 -- Right hand side
		 tr_end			: in std_logic;
		 
    --Output signals
    Output16bit	: out std_logic_vector(15 downto 0)
    );
end component;

component SPI is
generic(
  N                     : integer := 16;     -- number of bit to serialize
  CLK_DIV               : integer := 4 );    -- input clock divider to generate output serial clock; 
                                             -- o_sclk frequency = i_clk/(2*CLK_DIV)  
  
 port (
    --+ CPU Interface Signals
    i_clk                       : in  std_logic;    -- clk input
    i_rstb                      : in  std_logic;    -- reset ACTIVE LOW
    i_tx_start                  : in  std_logic;    -- start TX on serial line
    o_tx_end                    : out std_logic;    -- TX data completed; o_data_parallel available
    i_data_parallel             : in  std_logic_vector(N-1 downto 0) ;  -- data to sent
    o_data_parallel             : out std_logic_vector(N-1 downto 0);  -- received data  NOT USING
    
    --+ SPI Interface Signals
    o_sclk                      : out std_logic;    --serial clk output
    o_ss                        : out std_logic;    -- slave/chip selet
    o_mosi                      : out std_logic;    --serial data output
    i_miso                      : in  std_logic);   --serial data input
end component;


-- Unused signals/wires
signal unused_c_tens	: std_logic;
signal SPIdp_output	: std_logic_vector(15 downto 0);

-- Jumper wires/signals
signal dc_registered : std_logic;
signal cnt_ones		: std_logic_vector(3 downto 0);
signal carry_ones		: std_logic;
signal cnt_tens		: std_logic_vector(3 downto 0);
signal concat			: std_logic_vector(7 downto 0);
signal con_to_prep	: std_logic_vector(31 downto 0);
signal rdy				: std_logic;
signal prep_to_SPI	: std_logic_vector(15 downto 0);
signal reset_internal: std_logic;

signal Clock			: std_logic;

signal Reset			: std_logic;
signal ButtonInput	: std_logic;
signal o_sclk_dc		: std_logic;
signal o_ss_dc			: std_logic;
signal o_mosi_dc		: std_logic;
signal miso_dc		: std_logic;

begin

	 

	Reset 		<= not i_Reset;
	ButtonInput <= i_ButtonInput;
	miso_dc 		<= i_miso_dc;
	
	sclk_dc 		<= o_sclk_dc;
	ss_dc 		<= o_ss_dc;
	mosi_dc 		<= o_mosi_dc;
	
	
	concat(7 downto 4) <= cnt_tens;
	concat(3 downto 0) <= cnt_ones;
	reset_internal <= i_Reset;

	dc_time				: int_time port map (i_Clock, Clock);
	dc_register			: DClick_reg port map (Clock, Reset, ButtonInput, dc_registered);
	dc_counter_ones	: Counter port map (dc_registered, Reset, cnt_ones, carry_ones); 
	dc_counter_tens	: Counter port map (carry_ones, Reset, cnt_tens, unused_c_tens); 
	dc_converter		: Converter port map (concat, Clock, Reset, con_to_prep);
	dc_preparator		: Preparator port map (con_to_prep, Clock, Reset, rdy, prep_to_SPI);
	spi_comp				: SPI port map (Clock, reset_internal, prep_to_SPI(15), rdy, prep_to_SPI, SPIdp_output,   -- CPU interface
									o_sclk_dc, o_ss_dc, o_mosi_dc, miso_dc );               -- PER interface

end RTL;