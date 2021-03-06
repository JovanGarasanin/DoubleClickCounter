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
-- Generated on "12/16/2019 05:56:59"
                                                            
-- Vhdl Test Bench template for design  :  Counter
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Counter_vhd_tst IS
END Counter_vhd_tst;
ARCHITECTURE Counter_arch OF Counter_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Carry : STD_LOGIC;
SIGNAL Clock : STD_LOGIC;
SIGNAL Output : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Reset : STD_LOGIC;
COMPONENT Counter
	PORT (
	Carry : BUFFER STD_LOGIC;
	Clock : IN STD_LOGIC;
	Output : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	Reset : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Counter
	PORT MAP (
-- list connections between master ports and signals
	Carry => Carry,
	Clock => Clock,
	Output => Output,
	Reset => Reset
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END Counter_arch;
