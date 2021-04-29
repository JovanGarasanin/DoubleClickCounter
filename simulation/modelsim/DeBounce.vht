
library ieee;                                               
use ieee.std_logic_1164.all;                                

ENTITY DeBounce_vhd_tst IS
END DeBounce_vhd_tst;
ARCHITECTURE DeBounce_arch OF DeBounce_vhd_tst IS
-- constants
constant Clock_period : time := 10 ps;                                                 
-- signals                                                   
SIGNAL Clock : STD_LOGIC;
SIGNAL pb : STD_LOGIC;
SIGNAL pb_debounced : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
COMPONENT DeBounce
	PORT (
	Clock : IN STD_LOGIC;
	pb : IN STD_LOGIC;
	pb_debounced : OUT STD_LOGIC;
	reset : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : DeBounce
	PORT MAP (
-- list connections between master ports and signals
	Clock => Clock,
	pb => pb,
	pb_debounced => pb_debounced,
	reset => reset
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        

        Clock <= '0';
        wait for Clock_period/2;
        Clock <= '1';
        wait for Clock_period/2;
                      
                                                      
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
          pb <= '0';
        reset <= '1';
      -- hold reset state for 10 ps.
      wait for 10 ps;
        reset <= '0';
      wait for Clock_period*10;
        pb <= '0';   wait for Clock_period*50;
        pb <= '1';   wait for Clock_period*50;
        pb <= '0';   wait for Clock_period*30;
        pb <= '1';   wait for Clock_period*120;
        pb <= '0';   wait for Clock_period*90;
        pb <= '1';   wait for Clock_period*90;
        pb <= '0';   wait for Clock_period*400;
        pb <= '1';   wait for Clock_period*1400;
        pb <= '0';   wait for Clock_period*101;
        pb <= '1';   wait for Clock_period*101;
        pb <= '0';   wait for Clock_period*100;
        pb <= '1';   wait for Clock_period*100;
        pb <= '0';   wait for Clock_period*300;
        pb <= '1';   wait for Clock_period*700;
	pb <= '0';
      wait;                                                        
END PROCESS always;                                          
END DeBounce_arch;


