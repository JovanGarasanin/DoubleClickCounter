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
-- Generated on "12/16/2019 10:38:12"
                                                            
-- Vhdl Test Bench template for design  :  DoubleClickCounter
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY DoubleClickCounter_vhd_tst IS
END DoubleClickCounter_vhd_tst;
ARCHITECTURE DoubleClickCounter_arch OF DoubleClickCounter_vhd_tst IS
-- constants 
constant Clock_period : time := 1000 ps;                                                
-- signals                                                   
SIGNAL i_ButtonInput : STD_LOGIC;
SIGNAL i_Clock : STD_LOGIC;
SIGNAL i_miso_dc : STD_LOGIC;
SIGNAL i_Reset : STD_LOGIC;
SIGNAL mosi_dc : STD_LOGIC;
SIGNAL sclk_dc : STD_LOGIC;
SIGNAL ss_dc : STD_LOGIC;
COMPONENT DoubleClickCounter
	PORT (
	i_ButtonInput : IN STD_LOGIC;
	i_Clock : IN STD_LOGIC;
	i_miso_dc : IN STD_LOGIC;
	i_Reset : IN STD_LOGIC;
	mosi_dc : BUFFER STD_LOGIC;
	sclk_dc : BUFFER STD_LOGIC;
	ss_dc : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : DoubleClickCounter
	PORT MAP (
-- list connections between master ports and signals
	i_ButtonInput => i_ButtonInput,
	i_Clock => i_Clock,
	i_miso_dc => i_miso_dc,
	i_Reset => i_Reset,
	mosi_dc => mosi_dc,
	sclk_dc => sclk_dc,
	ss_dc => ss_dc
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
	i_Clock <= '0';
        wait for Clock_period/2;
        i_Clock <= '1';
        wait for Clock_period/2;                     
                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN    
	i_miso_dc <= '0';                                                     
        i_ButtonInput <= '0';
	i_Reset <= '1'; wait for Clock_period*110000*5;
	i_Reset <= '0'; wait for Clock_period*110000*5;
	i_Reset <= '1'; wait for Clock_period*110000*5;
	i_Reset <= '0'; wait for Clock_period*110000*5;
	i_Reset <= '1'; wait for Clock_period*110000*5;
	
	i_ButtonInput <= '1'; wait for Clock_period*1100000*5;
	i_ButtonInput <= '0'; wait for Clock_period*2000000*5;
	i_ButtonInput <= '1'; wait for Clock_period*1200000*5;
	i_ButtonInput <= '0'; wait for Clock_period*1000000*5;
	i_ButtonInput <= '1'; wait for Clock_period*5000000*5;
	i_ButtonInput <= '0'; wait for Clock_period*1000000*5;
	i_ButtonInput <= '1'; wait for Clock_period*6000000*5;
	i_ButtonInput <= '0'; wait for Clock_period*6000000*5;
	i_ButtonInput <= '1'; wait for Clock_period*1200000*5;
	i_ButtonInput <= '0'; wait for Clock_period*4000000*5;
	i_ButtonInput <= '1'; wait for Clock_period*110000*5;
	i_ButtonInput <= '0'; wait for Clock_period*1000000*5;
	
WAIT;                                                        
END PROCESS always;                                          
END DoubleClickCounter_arch;
