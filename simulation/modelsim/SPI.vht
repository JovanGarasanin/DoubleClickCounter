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
-- Generated on "12/16/2019 09:43:56"
                                                            
-- Vhdl Test Bench template for design  :  SPI
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY SPI_vhd_tst IS
END SPI_vhd_tst;
ARCHITECTURE SPI_arch OF SPI_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL i_clk : STD_LOGIC;
SIGNAL i_data_parallel : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL i_miso : STD_LOGIC;
SIGNAL i_rstb : STD_LOGIC;
SIGNAL i_tx_start : STD_LOGIC;
SIGNAL o_data_parallel : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL o_mosi : STD_LOGIC;
SIGNAL o_sclk : STD_LOGIC;
SIGNAL o_ss : STD_LOGIC;
SIGNAL o_tx_end : STD_LOGIC;
COMPONENT SPI
	PORT (
	i_clk : IN STD_LOGIC;
	i_data_parallel : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	i_miso : IN STD_LOGIC;
	i_rstb : IN STD_LOGIC;
	i_tx_start : IN STD_LOGIC;
	o_data_parallel : BUFFER STD_LOGIC_VECTOR(15 DOWNTO 0);
	o_mosi : BUFFER STD_LOGIC;
	o_sclk : BUFFER STD_LOGIC;
	o_ss : BUFFER STD_LOGIC;
	o_tx_end : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : SPI
	PORT MAP (
-- list connections between master ports and signals
	i_clk => i_clk,
	i_data_parallel => i_data_parallel,
	i_miso => i_miso,
	i_rstb => i_rstb,
	i_tx_start => i_tx_start,
	o_data_parallel => o_data_parallel,
	o_mosi => o_mosi,
	o_sclk => o_sclk,
	o_ss => o_ss,
	o_tx_end => o_tx_end
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
END SPI_arch;
