----------------------------------------------------------------------------------------------------
-- Project      : Doubleclick counter + SPI
-- Description  : Doubleclick counter with an SPI for data serialization and transfer
-- Authors      : Djordje Hadzic, Jovan Garasanin
-- File         : Counter.vhd
-- File descrip.: This file contains an entity which counts doubleclicks, and then sets the 4-bit 
--                output accordingly.
----------------------------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Counter is 
   port( 
    --Input signals
    Clock	: in std_logic;
    Reset	: in std_logic;
    
    --Output signals
    Output	: out std_logic_vector(3 downto 0);
	 Carry 	: out std_logic
    );
end Counter;
 
architecture Behavioral of Counter is
   signal count: std_logic_vector(3 downto 0);
	signal timer: integer := 0;
   signal cross: std_logic;
   
begin   

        timer_gen: process(Reset, Clock) is 
        begin
            if (Reset = '1') then
                timer <= 0;    
            elsif (Clock'event and Clock = '1') then
                if (cross = '1') then
                    timer <= 0; --*num;
						  carry <= '1';
                elsif (cross = '1' and count(2) = '1') then
						  timer <= 0;
						  carry <= '0';
					 else
                    timer <= timer + 1;--num;
						  carry <= '0';
                end if;
            end if;
        end process;
        
        outputcnt_logic: process (timer, count) is
        begin
            case (timer) is
                when 0 =>
                    cross <= '0';
                    count <= "0000";
                when 1 =>
                    cross <= '0';
                    count <= "0001";
                when 2 => 
                    cross <= '0';
                    count <= "0010";
                when 3 =>
                    cross <= '0';
                    count <= "0011";
                when 4 =>
                    cross <= '0';
                    count <= "0100";
                when 5 =>
						  cross <= '0';
                    count <= "0101";
                when 6 =>
                    cross <= '0';
                    count <= "0110";
                when 7 =>
                    cross <= '0';
                    count <= "0111";
                when 8 =>
                    count <= "1000";
                    cross <= '0';
                when 9 =>
                    count <= "1001";
                    cross <= '1';
                when others =>
                    count <= "1110";
                    cross <= '1';
            end case;
				Output <= count;
        end process;
        
end Behavioral;