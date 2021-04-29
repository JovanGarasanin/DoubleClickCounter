----------------------------------------------------------------------------------------------------
-- Project      : Doubleclick counter + SPI
-- Description  : Doubleclick counter with an SPI for data serialization and transfer
-- Authors      : Djordje Hadzic, Jovan Garasanin
-- File         : int_time.vhd
-- File descrip.: This file contains an entity which combines all of the lower level entities into 
--                a whole.
----------------------------------------------------------------------------------------------------

library IEEE;
use ieee.std_logic_1164.all;

entity int_time is 
   port( 
    --Input signals
    i_Clock     	: in std_logic;
    
    --Output signals
	 o_Clock			: out std_logic
	 
    );
end int_time;



architecture behav of int_time is



signal timer			: integer := 0;
signal carry			: std_logic;
signal cross			: std_logic;


begin

	timer_gen: process(i_Clock, cross) is 
	begin
		if (i_Clock'event and i_Clock = '1') then
			if(cross = '0') then
				
				timer <= timer + 1;
				
			else 
				timer <= 1;
			end if; 
		end if;			
	end process;
	  
	timer_flg: process(timer) is
		begin
			if (timer < 500) then
				cross <= '0';
				carry <= '1';
			elsif (timer < 1000) then
				cross <= '0';
				carry <= '0';
			else	
				cross <= '1';
				carry <= '1';
				
			end if;
		
		end process;
		o_Clock <= carry;
end behav;