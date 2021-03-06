----------------------------------------------------------------------------------------------------
-- Project      : Doubleclick counter + SPI
-- Description  : Doubleclick counter with an SPI for data serialization and transfer
-- Authors      : Djordje Hadzic, Jovan Garasanin
-- File         : DeBounce.vhd
-- File descrip.: This file contains an entity which debounces input button/registers a valid input.
----------------------------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
-- This is O.K.
entity DeBounce is
	port (
		-- Input signals
		Clock 			: in std_logic;
		reset			: in std_logic; -- clk frequency = 2.5Mhz
		pb				: in std_logic;
		
		-- Output signals
		pb_debounced: out std_logic
			);
end entity DeBounce;

architecture behav of DeBounce is
signal counter : integer range 0 to 1000; -- Debounce period Td = 4ms @ 2.5Mhz
signal cross	: std_logic;

type state_type is (s0,s1,s2,s3,s4); -- States of the FSM
signal state_reg, next_state : state_type;


begin

    timer_gen: process(Reset, Clock) is 
    begin
        if (Reset = '1') then
            counter <= 0;    
        elsif (Clock'event and Clock = '1') then
            if (cross = '1') then
                counter <= 0; --*num;
                      
            else
                counter <= counter + 1;--num;
            end if;
        end if;
    end process;

   
    state_transition: process (Reset, Clock) is
    begin
        if (Reset = '1') then
            state_reg <= s0;
        elsif (rising_edge(Clock)) then 
            state_reg <= next_state;
        end if;
    end process;

    next_state_logic: process (counter, pb, state_reg) is
    begin
        case (state_reg) is
            
            when s0 =>
				cross <= '1';
                if(pb = '1') then
                    next_state <= s1;

                else 
                    next_state <= state_reg;

                end if;

            when s1 =>
                if (counter < 800) then
                    next_state <= state_reg;
						  cross <='0';
                else    
                    next_state <= s2;
						  cross <='1';
                end if;

            when s2 =>
					 cross <= '1';
                if(pb = '1') then
                    next_state <= s3;
						  
                else
                    next_state <= s0;
						
                end if;

            when s3 =>
					 cross <= '1';
                next_state <= s4;
					 
				
				when s4 =>
					cross <= '1';
					if (pb = '1') then
						next_state <= state_reg;
					else
						next_state <= s0;
					end if;
					
            when others =>
                next_state <= s0;
					 cross <= '1';
            
        end case;
    end process;


    output_logic: process(state_reg) is
        begin
            case (state_reg) is
                when s3 =>
                    pb_debounced <= '1';
                when others =>
                    pb_debounced <= '0';
				end case;		  
        end process;
end architecture behav;