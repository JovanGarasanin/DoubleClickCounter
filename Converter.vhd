----------------------------------------------------------------------------------------------------
-- Project      : Doubleclick counter + SPI
-- Description  : Doubleclick counter with an SPI for data serialization and transfer
-- Authors      : Djordje Hadzic, Jovan Garasanin
-- File         : Converter.vhd
-- File descrip.: This file contains an entity which sets the output registers according to the 
--                Counter.vhd output.
----------------------------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Converter is 
   port( 
    --Input signals
    Input8bit		: in std_logic_vector(7 downto 0);
    Clock			: in std_logic;
    Reset			: in std_logic;
    
    --Output signals
    Output30bit	: out std_logic_vector(31 downto 0)
    );
end Converter;

architecture Behavioral of Converter is
    signal cnt_ones			: std_logic_vector(3 downto 0);
    signal cnt_tens			: std_logic_vector(3 downto 0);
	 signal ex 					: std_logic_vector(7 downto 0);
	 signal ex_flag			: std_logic;
	 
  type mem_array is array (4 downto 0) of std_logic_vector(2 downto 0); 
	
   
    signal reg_ones, reg_tens : mem_array := (
        others => "000"
    );
	 
	 type state_type is (idle, s0, s1); --states of the FSM
    signal state_reg, next_state : state_type;
	 
    
begin 


	state_transition: process (Reset, Clock, ex) is
        begin
            if (Reset = '1') then
                state_reg <= idle;
            elsif (rising_edge(Clock)) then --ako ne radi probaj: (Clock'event and Clock = '1')
                state_reg <= next_state;
            end if;
        end process;
	
	
	
	
	next_state_logic: process (state_reg, Input8bit, ex) is
        begin
            case (state_reg) is
					when idle =>
						next_state <= s0;
					when s0 =>
					
						if(ex = Input8bit) then
							next_state <= state_reg;
						else
							next_state <= s1;
							
						end if;
					
					when s1 =>
						
						next_state <=s0;
						
			   end case;
        end process;
   
	ex_logic: process (Clock) is
        begin
			if (rising_edge(Clock)) then
            case (state_reg) is
					when idle =>
						ex <= "00000000";
					when s0 =>
					
					when s1 =>
						
						ex <= Input8bit;
						
			   end case;
			end if;
        end process;
	
				

	
	cnt_ones <= Input8bit(3 downto 0);
	cnt_tens <= Input8bit(7 downto 4);
	
    my_proc: process (cnt_ones, cnt_tens, Clock) is
		begin
			if (rising_edge(Clock)) then	
					  -- Case for determining ON and OFF diodes based on what ones digit the counter displays
				case (cnt_ones) is
					  when "0000" => -- When The Digit Is '0'
							reg_ones (4) <= "111";  
							reg_ones (3) <= "101"; 
							reg_ones (2) <= "101"; 
							reg_ones (1) <= "101";
							reg_ones (0) <= "111";
							
					  
					  when "0001" => -- WTDI '1'
							reg_ones (4) <= "001";  
							reg_ones (3) <= "001"; 
							reg_ones (2) <= "001"; 
							reg_ones (1) <= "001";
							reg_ones (0) <= "001";
					  
					  when "0010" => -- WTDI '2'
							reg_ones (4) <= "111";
							reg_ones (3) <= "001";
							reg_ones (2) <= "111";
							reg_ones (1) <= "100";
							reg_ones (0) <= "111";
							
						  
					  
					  when "0011" => -- WTDI '3'
							reg_ones (4) <= "111";
							reg_ones (3) <= "001";
							reg_ones (2) <= "111";
							reg_ones (1) <= "001";
							reg_ones (0) <= "111";
							
							
					  when "0100" => -- WTDI '4'
							reg_ones (4) <= "101";
							reg_ones (3) <= "101";
							reg_ones (2) <= "111";
							reg_ones (1) <= "001";
							reg_ones (0) <= "001";
							
					  when "0101" => -- WTDI '5'
							reg_ones (4) <= "111";
							reg_ones (3) <= "100";
							reg_ones (2) <= "111";
							reg_ones (1) <= "001";
							reg_ones (0) <= "111";
							
							
					  
					  when "0110" => -- WTDI '6'
							reg_ones (4) <= "111";
							reg_ones (3) <= "100";
							reg_ones (2) <= "111";
							reg_ones (1) <= "101";
							reg_ones (0) <= "111";
							
					  when "0111" => -- WTDI '7'
							reg_ones (4) <= "111";
							reg_ones (3) <= "001";
							reg_ones (2) <= "001";
							reg_ones (1) <= "001";
							reg_ones (0) <= "001";
							
					  when "1000" => -- WTDI '8'
							reg_ones (4) <= "111";
							reg_ones (3) <= "101";
							reg_ones (2) <= "111";
							reg_ones (1) <= "101";
							reg_ones (0) <= "111";
							
							
							
							
					  when "1001" => -- WTDI '9'
							reg_ones (4) <= "111";
							reg_ones (3) <= "101";
							reg_ones (2) <= "111";
							reg_ones (1) <= "001";
							reg_ones (0) <= "111";
							
					  when others => -- When others 
							reg_ones (4) <= "111";
							reg_ones (3) <= "100";
							reg_ones (2) <= "111";
							reg_ones (1) <= "100";
							reg_ones (0) <= "111";
							
				 end case;

				 -- Case for determining ON and OFF diodes based on what tens digit the counter displays
				 case (cnt_tens) is
					  when "0000" => -- When The Digit Is '0'
							reg_tens (4) <= "111";  
							reg_tens (3) <= "101"; 
							reg_tens (2) <= "101"; 
							reg_tens (1) <= "101";
							reg_tens (0) <= "111";
							
					  
					  when "0001" => -- WTDI '1'
							reg_tens (4) <= "001";  
							reg_tens (3) <= "001"; 
							reg_tens (2) <= "001"; 
							reg_tens (1) <= "001";
							reg_tens (0) <= "001";
					  
					  when "0010" => -- WTDI '2'
							reg_tens (4) <= "111";
							reg_tens (3) <= "001";
							reg_tens (2) <= "111";
							reg_tens (1) <= "100";
							reg_tens (0) <= "111";
							
						  
					  
					  when "0011" => -- WTDI '3'
							reg_tens (4) <= "111";
							reg_tens (3) <= "001";
							reg_tens (2) <= "111";
							reg_tens (1) <= "001";
							reg_tens (0) <= "111";
							
							
					  when "0100" => -- WTDI '4'
							reg_tens (4) <= "101";
							reg_tens (3) <= "101";
							reg_tens (2) <= "111";
							reg_tens (1) <= "001";
							reg_tens (0) <= "001";
							
					  when "0101" => -- WTDI '5'
							reg_tens (4) <= "111";
							reg_tens (3) <= "100";
							reg_tens (2) <= "111";
							reg_tens (1) <= "001";
							reg_tens (0) <= "111";
							
							
					  
					  when "0110" => -- WTDI '6'
							reg_tens (4) <= "111";
							reg_tens (3) <= "100";
							reg_tens (2) <= "111";
							reg_tens (1) <= "101";
							reg_tens (0) <= "111";
							
					  when "0111" => -- WTDI '7'
							reg_tens (4) <= "111";
							reg_tens (3) <= "001";
							reg_tens (2) <= "001";
							reg_tens (1) <= "001";
							reg_tens (0) <= "001";
							
					  when "1000" => -- WTDI '8'
							reg_tens (4) <= "111";
							reg_tens (3) <= "101";
							reg_tens (2) <= "111";
							reg_tens (1) <= "101";
							reg_tens (0) <= "111";
							
							
							
							
					  when "1001" => -- WTDI '9'
							reg_tens (4) <= "111";
							reg_tens (3) <= "101";
							reg_tens (2) <= "111";
							reg_tens (1) <= "001";
							reg_tens (0) <= "111";
							
					  when others => -- When others 
							reg_tens (4) <= "111";
							reg_tens (3) <= "100";
							reg_tens (2) <= "111";
							reg_tens (1) <= "100";
							reg_tens (0) <= "111";
							
				 end case;
			end if;
    end process;
	
	output_logic: process (state_reg, reg_ones, reg_tens) is
        begin
            case (state_reg) is
					when idle => Output30bit <= x"00000000";
                when others =>
						   Output30bit(31) <= '0';
							Output30bit(30) <= '0';
	
							Output30bit(29 downto 27) <= reg_tens (4);
							Output30bit(26 downto 24) <= reg_tens (3);
							Output30bit(23 downto 21) <= reg_tens (2);
							Output30bit(20 downto 18) <= reg_tens (1);
							Output30bit(17 downto 15) <= reg_tens (0);
							
							Output30bit(14 downto 12) <= reg_ones (4);
							Output30bit(11 downto 9) <= reg_ones (3);
							Output30bit(8 downto 6) <= reg_ones (2);
							Output30bit(5 downto 3) <= reg_ones (1);
							Output30bit(2 downto 0) <= reg_ones (0);
				
					
					
				end case;
        end process;
	
	
	
	
	
end Behavioral;
    
    