-- Copyright (C) 2019  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "12/07/2019 01:10:41"
                                                            
-- Vhdl Test Bench template for design  :  dclick_reg
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY dclick_reg_vhd_tst IS
END dclick_reg_vhd_tst;
ARCHITECTURE dclick_reg_arch OF dclick_reg_vhd_tst IS
-- constants
constant Clock_period : time := 10 ps;                                                 
-- signals                                                   
SIGNAL button_input : STD_LOGIC;
SIGNAL Clock : STD_LOGIC;
SIGNAL dclick : STD_LOGIC;
SIGNAL Reset : STD_LOGIC;
COMPONENT dclick_reg
	PORT (
	button_input : IN STD_LOGIC;
	Clock : IN STD_LOGIC;
	dclick : OUT STD_LOGIC;
	Reset : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : dclick_reg
	PORT MAP (
-- list connections between master ports and signals
	button_input => button_input,
	Clock => Clock,
	dclick => dclick,
	Reset => Reset
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
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
        -- code executes for every event on sensitivity list  
            -- code executes for every event on sensitivity list  
	    button_input <= '0';
        reset <= '1';
      -- hold reset state for 10 ps.
      wait for Clock_period;
        reset <= '0';
      wait for Clock_period*10;
       button_input <= '0';   wait for Clock_period*50;
        button_input <= '1';   wait for Clock_period*50;
        button_input <= '0';   wait for Clock_period*30;
        button_input <= '1';   wait for Clock_period*120;
        button_input <= '0';   wait for Clock_period*90;
        button_input <= '1';   wait for Clock_period*90;
        button_input <= '0';   wait for Clock_period*400;
        button_input <= '1';   wait for Clock_period*1400;
        button_input <= '0';   wait for Clock_period*101;
        button_input <= '1';   wait for Clock_period*101;
        button_input <= '0';   wait for Clock_period*100;
        button_input <= '1';   wait for Clock_period*100;
        button_input <= '0';   wait for Clock_period*300;
        button_input <= '1';   wait for Clock_period*700;
	button_input <= '0';	wait for Clock_period*10;
	button_input <= '0';   wait for Clock_period*50;
        button_input <= '1';   wait for Clock_period*50;
        button_input <= '0';   wait for Clock_period*30;
        button_input <= '1';   wait for Clock_period*120;
        button_input <= '0';   wait for Clock_period*90;
        button_input <= '1';   wait for Clock_period*90;
        button_input <= '0';   wait for Clock_period*400;
        button_input <= '1';   wait for Clock_period*1400;
        button_input <= '0';   wait for Clock_period*101;
        button_input <= '1';   wait for Clock_period*101;
        button_input <= '0';   wait for Clock_period*100;
        button_input <= '1';   wait for Clock_period*100;
        button_input <= '0';   wait for Clock_period*300;
        button_input <= '1';   wait for Clock_period*700;
	button_input <= '0';
	reset <= '1';
      wait;                                          
END PROCESS always;                                          
END dclick_reg_arch;


