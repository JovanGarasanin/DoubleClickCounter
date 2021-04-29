----------------------------------------------------------------------------------------------------
-- Project      : Doubleclick counter + SPI
-- Description  : Doubleclick counter with an SPI for data serialization and transfer
-- Authors      : Djordje Hadzic, Jovan Garasanin
-- File         : DClick_reg.vhd
-- File descrip.: This file contains an entity which registers doubleclicks.
----------------------------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity DClick_reg is
    port 
    (
        --Input ports
        Clock      : in std_logic;
        Reset    : in std_logic;
        button_input : in std_logic; --Output of DeBounce
        
        --Output ports
        dclick   : out std_logic
    );
end DClick_reg;

architecture Behavioral of DClick_reg is
    
    component DeBounce is
        port(   
				-- Input signals
				Clock     : in std_logic;
            reset     : in std_logic;
            pb : in std_logic;
            
				--Output signals
				pb_debounced : out std_logic
        );
    end component;

    
    
    --the below constants decide the working parameters.
    -- the higher this is, the more time user has for the 2nd click
    constant COUNT_MAX : integer := 500000; -- 50 000 000 -1s na 50MHz

    signal counter: integer range 0 to COUNT_MAX;
    type state_type is (s0, s2, s3); --states of the FSM
    signal state_reg, next_state : state_type;
    signal pulse_in : std_logic;
    signal cross : std_logic := '0';
    
    
    begin
        
        timer_gen: process(Reset, Clock) is 
        begin
            if (Reset = '1') then
                counter <= 0;    
            elsif (Clock'event and Clock = '1') then
                if (cross = '1') then
                    counter <= 1; --*num;
						  
                else
                    counter <= counter + 1;--num;
                end if;
            end if;
        end process;
            
            
        state_transition: process (Reset, Clock, state_reg) is
        begin
            if (Reset = '1') then
                state_reg <= s0;
            elsif (rising_edge(Clock)) then --ako ne radi probaj: (Clock'event and Clock = '1')
                state_reg <= next_state;
            end if;
        end process;
        
        next_state_logic: process (counter, pulse_in, state_reg) is
        begin
            case (state_reg) is
                    
                when s0 =>
                    if (pulse_in='1') then 
                        next_state <= s2;
                        cross <= '1';
                    else
                        next_state <= state_reg;
								cross <= '1';
                    end if;
							
					 when s2 =>
							if (counter < COUNT_MAX) then
								if(pulse_in = '1') then
									next_state <= s3;
									cross <= '1';
								else 
									next_state <= state_reg;
									cross <= '0';
								end if;
							else
								next_state <= s0;
								cross <='1';
							end if;
						
                when s3 =>
							next_state <= s0;
							cross <= '1';
                    
            end case;
        end process;
        
        
        output_logic: process (state_reg) is
        begin
            case (state_reg) is
                when s0 =>
                    dclick <= '0';
          
            
                when s2 =>
                    dclick <= '0';
					 
					 when s3 =>
						  dclick <= '1';
                
					 when others =>
						dclick <= '0'; --Maybe try this for all?
            end case;
            
        end process;
        
        

    detector: DeBounce port map (Clock, Reset, button_input, pulse_in);
   
   end Behavioral;