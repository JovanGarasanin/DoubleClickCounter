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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.1 Build 646 04/11/2019 SJ Lite Edition"

-- DATE "12/20/2019 11:45:08"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	DoubleClickCounter IS
    PORT (
	i_Clock : IN std_logic;
	i_Reset : IN std_logic;
	i_ButtonInput : IN std_logic;
	i_miso_dc : IN std_logic;
	sclk_dc : BUFFER std_logic;
	ss_dc : BUFFER std_logic;
	mosi_dc : BUFFER std_logic
	);
END DoubleClickCounter;

-- Design Ports Information
-- i_miso_dc	=>  Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sclk_dc	=>  Location: PIN_Y17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ss_dc	=>  Location: PIN_AD17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- mosi_dc	=>  Location: PIN_AC18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- i_Reset	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_Clock	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_ButtonInput	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF DoubleClickCounter IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_Clock : std_logic;
SIGNAL ww_i_Reset : std_logic;
SIGNAL ww_i_ButtonInput : std_logic;
SIGNAL ww_i_miso_dc : std_logic;
SIGNAL ww_sclk_dc : std_logic;
SIGNAL ww_ss_dc : std_logic;
SIGNAL ww_mosi_dc : std_logic;
SIGNAL \i_miso_dc~input_o\ : std_logic;
SIGNAL \i_Clock~input_o\ : std_logic;
SIGNAL \i_Clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \dc_time|Add0~90\ : std_logic;
SIGNAL \dc_time|Add0~81_sumout\ : std_logic;
SIGNAL \dc_time|Add0~94\ : std_logic;
SIGNAL \dc_time|Add0~97_sumout\ : std_logic;
SIGNAL \dc_time|Add0~98\ : std_logic;
SIGNAL \dc_time|Add0~101_sumout\ : std_logic;
SIGNAL \dc_time|Add0~102\ : std_logic;
SIGNAL \dc_time|Add0~105_sumout\ : std_logic;
SIGNAL \dc_time|Add0~106\ : std_logic;
SIGNAL \dc_time|Add0~109_sumout\ : std_logic;
SIGNAL \dc_time|Add0~110\ : std_logic;
SIGNAL \dc_time|Add0~117_sumout\ : std_logic;
SIGNAL \dc_time|Add0~118\ : std_logic;
SIGNAL \dc_time|Add0~113_sumout\ : std_logic;
SIGNAL \dc_time|Add0~114\ : std_logic;
SIGNAL \dc_time|Add0~1_sumout\ : std_logic;
SIGNAL \dc_time|LessThan1~1_combout\ : std_logic;
SIGNAL \dc_time|LessThan1~0_combout\ : std_logic;
SIGNAL \dc_time|LessThan1~2_combout\ : std_logic;
SIGNAL \dc_time|timer~2_combout\ : std_logic;
SIGNAL \dc_time|Add0~82\ : std_logic;
SIGNAL \dc_time|Add0~65_sumout\ : std_logic;
SIGNAL \dc_time|Add0~66\ : std_logic;
SIGNAL \dc_time|Add0~69_sumout\ : std_logic;
SIGNAL \dc_time|Add0~70\ : std_logic;
SIGNAL \dc_time|Add0~77_sumout\ : std_logic;
SIGNAL \dc_time|Add0~78\ : std_logic;
SIGNAL \dc_time|Add0~73_sumout\ : std_logic;
SIGNAL \dc_time|Add0~74\ : std_logic;
SIGNAL \dc_time|Add0~61_sumout\ : std_logic;
SIGNAL \dc_time|Add0~62\ : std_logic;
SIGNAL \dc_time|Add0~9_sumout\ : std_logic;
SIGNAL \dc_time|Add0~10\ : std_logic;
SIGNAL \dc_time|Add0~5_sumout\ : std_logic;
SIGNAL \dc_time|Add0~6\ : std_logic;
SIGNAL \dc_time|Add0~37_sumout\ : std_logic;
SIGNAL \dc_time|Add0~38\ : std_logic;
SIGNAL \dc_time|Add0~41_sumout\ : std_logic;
SIGNAL \dc_time|Add0~42\ : std_logic;
SIGNAL \dc_time|Add0~45_sumout\ : std_logic;
SIGNAL \dc_time|Add0~46\ : std_logic;
SIGNAL \dc_time|Add0~49_sumout\ : std_logic;
SIGNAL \dc_time|Add0~50\ : std_logic;
SIGNAL \dc_time|Add0~57_sumout\ : std_logic;
SIGNAL \dc_time|Add0~58\ : std_logic;
SIGNAL \dc_time|Add0~53_sumout\ : std_logic;
SIGNAL \dc_time|Add0~54\ : std_logic;
SIGNAL \dc_time|Add0~13_sumout\ : std_logic;
SIGNAL \dc_time|Add0~14\ : std_logic;
SIGNAL \dc_time|Add0~17_sumout\ : std_logic;
SIGNAL \dc_time|Add0~18\ : std_logic;
SIGNAL \dc_time|Add0~21_sumout\ : std_logic;
SIGNAL \dc_time|Add0~22\ : std_logic;
SIGNAL \dc_time|Add0~25_sumout\ : std_logic;
SIGNAL \dc_time|Add0~26\ : std_logic;
SIGNAL \dc_time|Add0~33_sumout\ : std_logic;
SIGNAL \dc_time|Add0~34\ : std_logic;
SIGNAL \dc_time|Add0~29_sumout\ : std_logic;
SIGNAL \dc_time|Add0~30\ : std_logic;
SIGNAL \dc_time|Add0~93_sumout\ : std_logic;
SIGNAL \dc_time|Add0~125_sumout\ : std_logic;
SIGNAL \dc_time|timer~3_combout\ : std_logic;
SIGNAL \dc_time|Add0~126\ : std_logic;
SIGNAL \dc_time|Add0~121_sumout\ : std_logic;
SIGNAL \dc_time|Add0~122\ : std_logic;
SIGNAL \dc_time|Add0~85_sumout\ : std_logic;
SIGNAL \dc_time|Add0~86\ : std_logic;
SIGNAL \dc_time|Add0~89_sumout\ : std_logic;
SIGNAL \dc_time|LessThan1~3_combout\ : std_logic;
SIGNAL \dc_time|timer~0_combout\ : std_logic;
SIGNAL \dc_time|timer~1_combout\ : std_logic;
SIGNAL \dc_time|LessThan0~0_combout\ : std_logic;
SIGNAL \dc_time|o_Clock~combout\ : std_logic;
SIGNAL \spi_comp|Add0~1_sumout\ : std_logic;
SIGNAL \spi_comp|cnt_reset[0]~feeder_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \i_Reset~input_o\ : std_logic;
SIGNAL \i_Reset~inputCLKENA0_outclk\ : std_logic;
SIGNAL \spi_comp|Add0~2\ : std_logic;
SIGNAL \spi_comp|Add0~25_sumout\ : std_logic;
SIGNAL \spi_comp|cnt_reset[1]~feeder_combout\ : std_logic;
SIGNAL \spi_comp|Add0~26\ : std_logic;
SIGNAL \spi_comp|Add0~21_sumout\ : std_logic;
SIGNAL \spi_comp|cnt_reset[2]~feeder_combout\ : std_logic;
SIGNAL \spi_comp|Add0~22\ : std_logic;
SIGNAL \spi_comp|Add0~17_sumout\ : std_logic;
SIGNAL \spi_comp|cnt_reset[3]~feeder_combout\ : std_logic;
SIGNAL \spi_comp|Add0~18\ : std_logic;
SIGNAL \spi_comp|Add0~13_sumout\ : std_logic;
SIGNAL \spi_comp|cnt_reset[4]~feeder_combout\ : std_logic;
SIGNAL \spi_comp|cnt_reset[4]~DUPLICATE_q\ : std_logic;
SIGNAL \spi_comp|Add0~14\ : std_logic;
SIGNAL \spi_comp|Add0~9_sumout\ : std_logic;
SIGNAL \spi_comp|cnt_reset[5]~feeder_combout\ : std_logic;
SIGNAL \spi_comp|Add0~10\ : std_logic;
SIGNAL \spi_comp|Add0~5_sumout\ : std_logic;
SIGNAL \spi_comp|cnt_reset[6]~feeder_combout\ : std_logic;
SIGNAL \spi_comp|Equal0~0_combout\ : std_logic;
SIGNAL \spi_comp|cnt_reset[2]~1_combout\ : std_logic;
SIGNAL \spi_comp|r_counter_clock_ena~q\ : std_logic;
SIGNAL \spi_comp|r_counter_clock~1_combout\ : std_logic;
SIGNAL \spi_comp|r_counter_clock~0_combout\ : std_logic;
SIGNAL \spi_comp|r_sclk_rise~0_combout\ : std_logic;
SIGNAL \spi_comp|r_sclk_rise~DUPLICATE_q\ : std_logic;
SIGNAL \spi_comp|r_counter_data[3]~DUPLICATE_q\ : std_logic;
SIGNAL \spi_comp|r_counter_data[2]~1_combout\ : std_logic;
SIGNAL \spi_comp|r_counter_data[2]~DUPLICATE_q\ : std_logic;
SIGNAL \spi_comp|r_counter_data[3]~0_combout\ : std_logic;
SIGNAL \spi_comp|r_counter_data[1]~2_combout\ : std_logic;
SIGNAL \spi_comp|r_counter_data[0]~3_combout\ : std_logic;
SIGNAL \spi_comp|p_comb~0_combout\ : std_logic;
SIGNAL \dc_preparator|Add0~25_sumout\ : std_logic;
SIGNAL \spi_comp|Selector0~1_combout\ : std_logic;
SIGNAL \spi_comp|o_tx_end~q\ : std_logic;
SIGNAL \dc_preparator|cnt_en~0_combout\ : std_logic;
SIGNAL \dc_preparator|cnt_en~q\ : std_logic;
SIGNAL \dc_preparator|wait_cnt[6]~DUPLICATE_q\ : std_logic;
SIGNAL \dc_preparator|wait_cnt~1_combout\ : std_logic;
SIGNAL \dc_preparator|wait_cnt[0]~DUPLICATE_q\ : std_logic;
SIGNAL \dc_preparator|Add0~26\ : std_logic;
SIGNAL \dc_preparator|Add0~21_sumout\ : std_logic;
SIGNAL \dc_preparator|Add0~22\ : std_logic;
SIGNAL \dc_preparator|Add0~17_sumout\ : std_logic;
SIGNAL \dc_preparator|Add0~18\ : std_logic;
SIGNAL \dc_preparator|Add0~13_sumout\ : std_logic;
SIGNAL \dc_preparator|wait_cnt[3]~feeder_combout\ : std_logic;
SIGNAL \dc_preparator|Add0~14\ : std_logic;
SIGNAL \dc_preparator|Add0~9_sumout\ : std_logic;
SIGNAL \dc_preparator|wait_cnt[5]~DUPLICATE_q\ : std_logic;
SIGNAL \dc_preparator|Add0~10\ : std_logic;
SIGNAL \dc_preparator|Add0~5_sumout\ : std_logic;
SIGNAL \dc_preparator|Equal2~0_combout\ : std_logic;
SIGNAL \dc_preparator|Add0~6\ : std_logic;
SIGNAL \dc_preparator|Add0~1_sumout\ : std_logic;
SIGNAL \dc_preparator|wait_cnt~0_combout\ : std_logic;
SIGNAL \dc_converter|state_reg.idle~feeder_combout\ : std_logic;
SIGNAL \dc_converter|state_reg.idle~DUPLICATE_q\ : std_logic;
SIGNAL \dc_register|Add0~73_sumout\ : std_logic;
SIGNAL \dc_register|counter[0]~feeder_combout\ : std_logic;
SIGNAL \dc_register|detector|Add0~37_sumout\ : std_logic;
SIGNAL \dc_register|detector|Add0~14\ : std_logic;
SIGNAL \dc_register|detector|Add0~17_sumout\ : std_logic;
SIGNAL \dc_register|detector|counter[7]~DUPLICATE_q\ : std_logic;
SIGNAL \dc_register|detector|Add0~18\ : std_logic;
SIGNAL \dc_register|detector|Add0~5_sumout\ : std_logic;
SIGNAL \dc_register|detector|counter[8]~feeder_combout\ : std_logic;
SIGNAL \dc_register|detector|counter[8]~DUPLICATE_q\ : std_logic;
SIGNAL \dc_register|detector|Add0~6\ : std_logic;
SIGNAL \dc_register|detector|Add0~1_sumout\ : std_logic;
SIGNAL \i_ButtonInput~input_o\ : std_logic;
SIGNAL \dc_register|detector|Selector0~0_combout\ : std_logic;
SIGNAL \dc_register|detector|state_reg.s0~q\ : std_logic;
SIGNAL \dc_register|detector|LessThan0~0_combout\ : std_logic;
SIGNAL \dc_register|detector|Selector1~0_combout\ : std_logic;
SIGNAL \dc_register|detector|state_reg.s1~q\ : std_logic;
SIGNAL \dc_register|detector|cross~0_combout\ : std_logic;
SIGNAL \dc_register|detector|Add0~38\ : std_logic;
SIGNAL \dc_register|detector|Add0~33_sumout\ : std_logic;
SIGNAL \dc_register|detector|Add0~34\ : std_logic;
SIGNAL \dc_register|detector|Add0~29_sumout\ : std_logic;
SIGNAL \dc_register|detector|Add0~30\ : std_logic;
SIGNAL \dc_register|detector|Add0~25_sumout\ : std_logic;
SIGNAL \dc_register|detector|Add0~26\ : std_logic;
SIGNAL \dc_register|detector|Add0~21_sumout\ : std_logic;
SIGNAL \dc_register|detector|Add0~22\ : std_logic;
SIGNAL \dc_register|detector|Add0~9_sumout\ : std_logic;
SIGNAL \dc_register|detector|counter[5]~DUPLICATE_q\ : std_logic;
SIGNAL \dc_register|detector|Add0~10\ : std_logic;
SIGNAL \dc_register|detector|Add0~13_sumout\ : std_logic;
SIGNAL \dc_register|detector|counter[6]~DUPLICATE_q\ : std_logic;
SIGNAL \dc_register|detector|counter[9]~DUPLICATE_q\ : std_logic;
SIGNAL \dc_register|detector|next_state.s2~0_combout\ : std_logic;
SIGNAL \dc_register|detector|state_reg.s2~q\ : std_logic;
SIGNAL \dc_register|detector|next_state.s3~0_combout\ : std_logic;
SIGNAL \dc_register|detector|state_reg.s3~q\ : std_logic;
SIGNAL \dc_register|Add0~2\ : std_logic;
SIGNAL \dc_register|Add0~53_sumout\ : std_logic;
SIGNAL \dc_register|counter[18]~DUPLICATE_q\ : std_logic;
SIGNAL \dc_register|Add0~54\ : std_logic;
SIGNAL \dc_register|Add0~49_sumout\ : std_logic;
SIGNAL \dc_register|Add0~50\ : std_logic;
SIGNAL \dc_register|Add0~45_sumout\ : std_logic;
SIGNAL \dc_register|Add0~46\ : std_logic;
SIGNAL \dc_register|Add0~41_sumout\ : std_logic;
SIGNAL \dc_register|LessThan0~1_combout\ : std_logic;
SIGNAL \dc_register|Selector0~0_combout\ : std_logic;
SIGNAL \dc_register|state_reg.s0~q\ : std_logic;
SIGNAL \dc_register|Selector1~0_combout\ : std_logic;
SIGNAL \dc_register|state_reg.s2~DUPLICATE_q\ : std_logic;
SIGNAL \dc_register|cross~1_combout\ : std_logic;
SIGNAL \dc_register|LessThan0~2_combout\ : std_logic;
SIGNAL \dc_register|cross~0_combout\ : std_logic;
SIGNAL \dc_register|Add0~74\ : std_logic;
SIGNAL \dc_register|Add0~69_sumout\ : std_logic;
SIGNAL \dc_register|Add0~70\ : std_logic;
SIGNAL \dc_register|Add0~65_sumout\ : std_logic;
SIGNAL \dc_register|Add0~66\ : std_logic;
SIGNAL \dc_register|Add0~61_sumout\ : std_logic;
SIGNAL \dc_register|Add0~62\ : std_logic;
SIGNAL \dc_register|Add0~57_sumout\ : std_logic;
SIGNAL \dc_register|Add0~58\ : std_logic;
SIGNAL \dc_register|Add0~21_sumout\ : std_logic;
SIGNAL \dc_register|Add0~22\ : std_logic;
SIGNAL \dc_register|Add0~17_sumout\ : std_logic;
SIGNAL \dc_register|Add0~18\ : std_logic;
SIGNAL \dc_register|Add0~13_sumout\ : std_logic;
SIGNAL \dc_register|Add0~14\ : std_logic;
SIGNAL \dc_register|Add0~9_sumout\ : std_logic;
SIGNAL \dc_register|Add0~10\ : std_logic;
SIGNAL \dc_register|Add0~37_sumout\ : std_logic;
SIGNAL \dc_register|Add0~38\ : std_logic;
SIGNAL \dc_register|Add0~33_sumout\ : std_logic;
SIGNAL \dc_register|counter[10]~DUPLICATE_q\ : std_logic;
SIGNAL \dc_register|Add0~34\ : std_logic;
SIGNAL \dc_register|Add0~29_sumout\ : std_logic;
SIGNAL \dc_register|Add0~30\ : std_logic;
SIGNAL \dc_register|Add0~25_sumout\ : std_logic;
SIGNAL \dc_register|counter[12]~DUPLICATE_q\ : std_logic;
SIGNAL \dc_register|Add0~26\ : std_logic;
SIGNAL \dc_register|Add0~5_sumout\ : std_logic;
SIGNAL \dc_register|counter[13]~DUPLICATE_q\ : std_logic;
SIGNAL \dc_register|Add0~6\ : std_logic;
SIGNAL \dc_register|Add0~1_sumout\ : std_logic;
SIGNAL \dc_register|LessThan0~0_combout\ : std_logic;
SIGNAL \dc_register|state_reg.s2~q\ : std_logic;
SIGNAL \dc_register|next_state.s3~0_combout\ : std_logic;
SIGNAL \dc_register|state_reg.s3~q\ : std_logic;
SIGNAL \dc_counter_ones|Add0~125_sumout\ : std_logic;
SIGNAL \dc_counter_ones|timer[0]~DUPLICATE_q\ : std_logic;
SIGNAL \dc_counter_ones|Add0~126\ : std_logic;
SIGNAL \dc_counter_ones|Add0~121_sumout\ : std_logic;
SIGNAL \dc_counter_ones|Add0~122\ : std_logic;
SIGNAL \dc_counter_ones|Add0~1_sumout\ : std_logic;
SIGNAL \dc_counter_ones|Add0~2\ : std_logic;
SIGNAL \dc_counter_ones|Add0~6\ : std_logic;
SIGNAL \dc_counter_ones|Add0~41_sumout\ : std_logic;
SIGNAL \dc_counter_ones|Add0~42\ : std_logic;
SIGNAL \dc_counter_ones|Add0~77_sumout\ : std_logic;
SIGNAL \dc_counter_ones|Add0~78\ : std_logic;
SIGNAL \dc_counter_ones|Add0~45_sumout\ : std_logic;
SIGNAL \dc_counter_ones|Add0~46\ : std_logic;
SIGNAL \dc_counter_ones|Add0~49_sumout\ : std_logic;
SIGNAL \dc_counter_ones|Add0~50\ : std_logic;
SIGNAL \dc_counter_ones|Add0~13_sumout\ : std_logic;
SIGNAL \dc_counter_ones|Add0~14\ : std_logic;
SIGNAL \dc_counter_ones|Add0~17_sumout\ : std_logic;
SIGNAL \dc_counter_ones|Add0~18\ : std_logic;
SIGNAL \dc_counter_ones|Add0~21_sumout\ : std_logic;
SIGNAL \dc_counter_ones|Add0~22\ : std_logic;
SIGNAL \dc_counter_ones|Add0~117_sumout\ : std_logic;
SIGNAL \dc_counter_ones|Add0~118\ : std_logic;
SIGNAL \dc_counter_ones|Add0~37_sumout\ : std_logic;
SIGNAL \dc_counter_ones|timer[12]~DUPLICATE_q\ : std_logic;
SIGNAL \dc_counter_ones|Add0~38\ : std_logic;
SIGNAL \dc_counter_ones|Add0~33_sumout\ : std_logic;
SIGNAL \dc_counter_ones|Add0~34\ : std_logic;
SIGNAL \dc_counter_ones|Add0~29_sumout\ : std_logic;
SIGNAL \dc_counter_ones|Add0~30\ : std_logic;
SIGNAL \dc_counter_ones|Add0~81_sumout\ : std_logic;
SIGNAL \dc_counter_ones|Add0~82\ : std_logic;
SIGNAL \dc_counter_ones|Add0~73_sumout\ : std_logic;
SIGNAL \dc_counter_ones|Add0~74\ : std_logic;
SIGNAL \dc_counter_ones|Add0~69_sumout\ : std_logic;
SIGNAL \dc_counter_ones|Add0~70\ : std_logic;
SIGNAL \dc_counter_ones|Add0~65_sumout\ : std_logic;
SIGNAL \dc_counter_ones|Add0~66\ : std_logic;
SIGNAL \dc_counter_ones|Add0~61_sumout\ : std_logic;
SIGNAL \dc_counter_ones|Add0~62\ : std_logic;
SIGNAL \dc_counter_ones|Add0~57_sumout\ : std_logic;
SIGNAL \dc_counter_ones|Add0~58\ : std_logic;
SIGNAL \dc_counter_ones|Add0~53_sumout\ : std_logic;
SIGNAL \dc_counter_ones|Add0~54\ : std_logic;
SIGNAL \dc_counter_ones|Add0~25_sumout\ : std_logic;
SIGNAL \dc_counter_ones|Add0~26\ : std_logic;
SIGNAL \dc_counter_ones|Add0~85_sumout\ : std_logic;
SIGNAL \dc_counter_ones|Add0~86\ : std_logic;
SIGNAL \dc_counter_ones|Add0~113_sumout\ : std_logic;
SIGNAL \dc_counter_ones|Add0~114\ : std_logic;
SIGNAL \dc_counter_ones|Add0~109_sumout\ : std_logic;
SIGNAL \dc_counter_ones|Add0~110\ : std_logic;
SIGNAL \dc_counter_ones|Add0~105_sumout\ : std_logic;
SIGNAL \dc_counter_ones|Add0~106\ : std_logic;
SIGNAL \dc_counter_ones|Add0~101_sumout\ : std_logic;
SIGNAL \dc_counter_ones|Add0~102\ : std_logic;
SIGNAL \dc_counter_ones|Add0~97_sumout\ : std_logic;
SIGNAL \dc_counter_ones|Add0~98\ : std_logic;
SIGNAL \dc_counter_ones|Add0~93_sumout\ : std_logic;
SIGNAL \dc_counter_ones|Add0~94\ : std_logic;
SIGNAL \dc_counter_ones|Add0~89_sumout\ : std_logic;
SIGNAL \dc_counter_ones|timer[29]~DUPLICATE_q\ : std_logic;
SIGNAL \dc_counter_ones|Equal0~3_combout\ : std_logic;
SIGNAL \dc_counter_ones|timer[10]~DUPLICATE_q\ : std_logic;
SIGNAL \dc_counter_ones|timer[22]~DUPLICATE_q\ : std_logic;
SIGNAL \dc_counter_ones|Equal0~0_combout\ : std_logic;
SIGNAL \dc_counter_ones|timer[17]~DUPLICATE_q\ : std_logic;
SIGNAL \dc_counter_ones|timer[21]~DUPLICATE_q\ : std_logic;
SIGNAL \dc_counter_ones|Equal0~2_combout\ : std_logic;
SIGNAL \dc_counter_ones|Equal0~1_combout\ : std_logic;
SIGNAL \dc_counter_ones|Add0~90\ : std_logic;
SIGNAL \dc_counter_ones|Add0~9_sumout\ : std_logic;
SIGNAL \dc_counter_ones|timer[27]~DUPLICATE_q\ : std_logic;
SIGNAL \dc_counter_ones|timer[26]~DUPLICATE_q\ : std_logic;
SIGNAL \dc_counter_ones|timer[24]~DUPLICATE_q\ : std_logic;
SIGNAL \dc_counter_ones|Equal0~4_combout\ : std_logic;
SIGNAL \dc_counter_ones|Equal0~5_combout\ : std_logic;
SIGNAL \dc_counter_ones|WideOr0~0_combout\ : std_logic;
SIGNAL \dc_counter_ones|timer[3]~DUPLICATE_q\ : std_logic;
SIGNAL \dc_counter_ones|Add0~5_sumout\ : std_logic;
SIGNAL \dc_counter_ones|timer[1]~DUPLICATE_q\ : std_logic;
SIGNAL \dc_counter_ones|WideNor0~0_combout\ : std_logic;
SIGNAL \dc_counter_ones|WideOr0~combout\ : std_logic;
SIGNAL \dc_counter_ones|WideOr1~combout\ : std_logic;
SIGNAL \dc_counter_ones|WideOr2~combout\ : std_logic;
SIGNAL \dc_converter|Mux7~0_combout\ : std_logic;
SIGNAL \dc_converter|reg_ones[1][0]~q\ : std_logic;
SIGNAL \dc_converter|state_reg.idle~q\ : std_logic;
SIGNAL \dc_converter|Output30bit[3]~11_combout\ : std_logic;
SIGNAL \dc_preparator|Selector16~0_combout\ : std_logic;
SIGNAL \dc_converter|Mux6~0_combout\ : std_logic;
SIGNAL \dc_converter|reg_ones[1][2]~q\ : std_logic;
SIGNAL \dc_converter|Output30bit[5]~12_combout\ : std_logic;
SIGNAL \dc_preparator|Equal1~5_combout\ : std_logic;
SIGNAL \dc_converter|reg_ones[0][0]~feeder_combout\ : std_logic;
SIGNAL \dc_converter|reg_ones[0][0]~q\ : std_logic;
SIGNAL \dc_converter|Output30bit[27]~9_combout\ : std_logic;
SIGNAL \dc_converter|Mux8~0_combout\ : std_logic;
SIGNAL \dc_converter|reg_ones[0][1]~q\ : std_logic;
SIGNAL \dc_converter|Output30bit[2]~10_combout\ : std_logic;
SIGNAL \dc_preparator|Equal1~4_combout\ : std_logic;
SIGNAL \dc_converter|Mux2~0_combout\ : std_logic;
SIGNAL \dc_converter|reg_ones[3][2]~q\ : std_logic;
SIGNAL \dc_converter|Output30bit[11]~6_combout\ : std_logic;
SIGNAL \dc_converter|Mux3~0_combout\ : std_logic;
SIGNAL \dc_converter|reg_ones[3][0]~q\ : std_logic;
SIGNAL \dc_converter|Output30bit[9]~5_combout\ : std_logic;
SIGNAL \dc_preparator|Equal1~2_combout\ : std_logic;
SIGNAL \dc_converter|Mux4~0_combout\ : std_logic;
SIGNAL \dc_converter|reg_ones[2][2]~q\ : std_logic;
SIGNAL \dc_converter|Output30bit[8]~8_combout\ : std_logic;
SIGNAL \dc_converter|Mux5~0_combout\ : std_logic;
SIGNAL \dc_converter|reg_ones[2][1]~q\ : std_logic;
SIGNAL \dc_converter|Output30bit[7]~7_combout\ : std_logic;
SIGNAL \dc_preparator|Equal1~3_combout\ : std_logic;
SIGNAL \dc_converter|Mux0~0_combout\ : std_logic;
SIGNAL \dc_converter|reg_ones[4][2]~q\ : std_logic;
SIGNAL \dc_converter|Output30bit[14]~4_combout\ : std_logic;
SIGNAL \dc_converter|Mux1~0_combout\ : std_logic;
SIGNAL \dc_converter|reg_ones[4][1]~q\ : std_logic;
SIGNAL \dc_converter|Output30bit[13]~3_combout\ : std_logic;
SIGNAL \dc_preparator|Equal1~1_combout\ : std_logic;
SIGNAL \dc_preparator|Equal1~6_combout\ : std_logic;
SIGNAL \dc_counter_ones|Carry~q\ : std_logic;
SIGNAL \dc_counter_tens|timer[3]~DUPLICATE_q\ : std_logic;
SIGNAL \dc_counter_tens|Add0~125_sumout\ : std_logic;
SIGNAL \dc_counter_tens|timer[0]~DUPLICATE_q\ : std_logic;
SIGNAL \dc_counter_tens|Add0~126\ : std_logic;
SIGNAL \dc_counter_tens|Add0~122\ : std_logic;
SIGNAL \dc_counter_tens|Add0~1_sumout\ : std_logic;
SIGNAL \dc_counter_tens|timer[2]~DUPLICATE_q\ : std_logic;
SIGNAL \dc_counter_tens|Add0~2\ : std_logic;
SIGNAL \dc_counter_tens|Add0~5_sumout\ : std_logic;
SIGNAL \dc_counter_tens|Add0~6\ : std_logic;
SIGNAL \dc_counter_tens|Add0~25_sumout\ : std_logic;
SIGNAL \dc_counter_tens|Add0~26\ : std_logic;
SIGNAL \dc_counter_tens|Add0~21_sumout\ : std_logic;
SIGNAL \dc_counter_tens|timer[5]~DUPLICATE_q\ : std_logic;
SIGNAL \dc_counter_tens|Add0~22\ : std_logic;
SIGNAL \dc_counter_tens|Add0~37_sumout\ : std_logic;
SIGNAL \dc_counter_tens|Add0~38\ : std_logic;
SIGNAL \dc_counter_tens|Add0~33_sumout\ : std_logic;
SIGNAL \dc_counter_tens|Add0~34\ : std_logic;
SIGNAL \dc_counter_tens|Add0~29_sumout\ : std_logic;
SIGNAL \dc_counter_tens|Add0~30\ : std_logic;
SIGNAL \dc_counter_tens|Add0~45_sumout\ : std_logic;
SIGNAL \dc_counter_tens|Add0~46\ : std_logic;
SIGNAL \dc_counter_tens|Add0~69_sumout\ : std_logic;
SIGNAL \dc_counter_tens|Add0~70\ : std_logic;
SIGNAL \dc_counter_tens|Add0~65_sumout\ : std_logic;
SIGNAL \dc_counter_tens|Add0~66\ : std_logic;
SIGNAL \dc_counter_tens|Add0~61_sumout\ : std_logic;
SIGNAL \dc_counter_tens|Add0~62\ : std_logic;
SIGNAL \dc_counter_tens|Add0~57_sumout\ : std_logic;
SIGNAL \dc_counter_tens|timer[13]~DUPLICATE_q\ : std_logic;
SIGNAL \dc_counter_tens|Add0~58\ : std_logic;
SIGNAL \dc_counter_tens|Add0~53_sumout\ : std_logic;
SIGNAL \dc_counter_tens|Add0~54\ : std_logic;
SIGNAL \dc_counter_tens|Add0~9_sumout\ : std_logic;
SIGNAL \dc_counter_tens|Add0~10\ : std_logic;
SIGNAL \dc_counter_tens|Add0~117_sumout\ : std_logic;
SIGNAL \dc_counter_tens|Add0~118\ : std_logic;
SIGNAL \dc_counter_tens|Add0~113_sumout\ : std_logic;
SIGNAL \dc_counter_tens|Add0~114\ : std_logic;
SIGNAL \dc_counter_tens|Add0~109_sumout\ : std_logic;
SIGNAL \dc_counter_tens|Add0~110\ : std_logic;
SIGNAL \dc_counter_tens|Add0~105_sumout\ : std_logic;
SIGNAL \dc_counter_tens|Add0~106\ : std_logic;
SIGNAL \dc_counter_tens|Add0~41_sumout\ : std_logic;
SIGNAL \dc_counter_tens|Add0~42\ : std_logic;
SIGNAL \dc_counter_tens|Add0~101_sumout\ : std_logic;
SIGNAL \dc_counter_tens|timer[21]~DUPLICATE_q\ : std_logic;
SIGNAL \dc_counter_tens|Add0~102\ : std_logic;
SIGNAL \dc_counter_tens|Add0~97_sumout\ : std_logic;
SIGNAL \dc_counter_tens|Add0~98\ : std_logic;
SIGNAL \dc_counter_tens|Add0~93_sumout\ : std_logic;
SIGNAL \dc_counter_tens|Add0~94\ : std_logic;
SIGNAL \dc_counter_tens|Add0~89_sumout\ : std_logic;
SIGNAL \dc_counter_tens|Add0~90\ : std_logic;
SIGNAL \dc_counter_tens|Add0~85_sumout\ : std_logic;
SIGNAL \dc_counter_tens|Add0~86\ : std_logic;
SIGNAL \dc_counter_tens|Add0~81_sumout\ : std_logic;
SIGNAL \dc_counter_tens|Add0~82\ : std_logic;
SIGNAL \dc_counter_tens|Add0~77_sumout\ : std_logic;
SIGNAL \dc_counter_tens|Add0~78\ : std_logic;
SIGNAL \dc_counter_tens|Add0~17_sumout\ : std_logic;
SIGNAL \dc_counter_tens|timer[29]~DUPLICATE_q\ : std_logic;
SIGNAL \dc_counter_tens|Add0~18\ : std_logic;
SIGNAL \dc_counter_tens|Add0~13_sumout\ : std_logic;
SIGNAL \dc_counter_tens|Equal0~0_combout\ : std_logic;
SIGNAL \dc_counter_tens|timer[7]~DUPLICATE_q\ : std_logic;
SIGNAL \dc_counter_tens|Add0~14\ : std_logic;
SIGNAL \dc_counter_tens|Add0~49_sumout\ : std_logic;
SIGNAL \dc_counter_tens|Equal0~1_combout\ : std_logic;
SIGNAL \dc_counter_tens|timer[25]~DUPLICATE_q\ : std_logic;
SIGNAL \dc_counter_tens|Equal0~3_combout\ : std_logic;
SIGNAL \dc_counter_tens|timer[16]~DUPLICATE_q\ : std_logic;
SIGNAL \dc_counter_tens|timer[17]~DUPLICATE_q\ : std_logic;
SIGNAL \dc_counter_tens|timer[19]~DUPLICATE_q\ : std_logic;
SIGNAL \dc_counter_tens|Equal0~4_combout\ : std_logic;
SIGNAL \dc_counter_tens|Add0~50\ : std_logic;
SIGNAL \dc_counter_tens|Add0~73_sumout\ : std_logic;
SIGNAL \dc_counter_tens|timer[10]~DUPLICATE_q\ : std_logic;
SIGNAL \dc_counter_tens|Equal0~2_combout\ : std_logic;
SIGNAL \dc_counter_tens|Equal0~5_combout\ : std_logic;
SIGNAL \dc_counter_tens|WideOr0~0_combout\ : std_logic;
SIGNAL \dc_counter_tens|Add0~121_sumout\ : std_logic;
SIGNAL \dc_counter_tens|timer[1]~DUPLICATE_q\ : std_logic;
SIGNAL \dc_counter_tens|WideNor0~0_combout\ : std_logic;
SIGNAL \dc_counter_tens|WideOr0~combout\ : std_logic;
SIGNAL \dc_counter_tens|WideOr1~combout\ : std_logic;
SIGNAL \dc_counter_tens|WideOr2~combout\ : std_logic;
SIGNAL \dc_converter|Mux16~0_combout\ : std_logic;
SIGNAL \dc_converter|reg_tens[1][0]~q\ : std_logic;
SIGNAL \dc_converter|Mux17~0_combout\ : std_logic;
SIGNAL \dc_converter|reg_tens[0][1]~q\ : std_logic;
SIGNAL \dc_converter|Output30bit[17]~1_combout\ : std_logic;
SIGNAL \dc_converter|Output30bit[18]~2_combout\ : std_logic;
SIGNAL \dc_preparator|Equal1~0_combout\ : std_logic;
SIGNAL \dc_converter|Mux12~0_combout\ : std_logic;
SIGNAL \dc_converter|reg_tens[3][0]~q\ : std_logic;
SIGNAL \dc_converter|Mux13~0_combout\ : std_logic;
SIGNAL \dc_converter|reg_tens[2][2]~q\ : std_logic;
SIGNAL \dc_converter|Output30bit[23]~17_combout\ : std_logic;
SIGNAL \dc_converter|Output30bit[24]~18_combout\ : std_logic;
SIGNAL \dc_preparator|Equal1~9_combout\ : std_logic;
SIGNAL \dc_converter|Mux9~0_combout\ : std_logic;
SIGNAL \dc_converter|reg_tens[4][2]~q\ : std_logic;
SIGNAL \dc_converter|Output30bit[29]~0_combout\ : std_logic;
SIGNAL \dc_converter|Mux14~0_combout\ : std_logic;
SIGNAL \dc_converter|reg_tens[2][1]~q\ : std_logic;
SIGNAL \dc_converter|Mux15~0_combout\ : std_logic;
SIGNAL \dc_converter|reg_tens[1][2]~q\ : std_logic;
SIGNAL \dc_converter|Output30bit[20]~15_combout\ : std_logic;
SIGNAL \dc_converter|Output30bit[22]~16_combout\ : std_logic;
SIGNAL \dc_preparator|Equal1~8_combout\ : std_logic;
SIGNAL \dc_converter|Mux11~0_combout\ : std_logic;
SIGNAL \dc_converter|reg_tens[3][2]~q\ : std_logic;
SIGNAL \dc_converter|Output30bit[26]~13_combout\ : std_logic;
SIGNAL \dc_converter|Mux10~0_combout\ : std_logic;
SIGNAL \dc_converter|reg_tens[4][1]~q\ : std_logic;
SIGNAL \dc_converter|Output30bit[28]~14_combout\ : std_logic;
SIGNAL \dc_preparator|Equal1~7_combout\ : std_logic;
SIGNAL \dc_preparator|Equal1~10_combout\ : std_logic;
SIGNAL \dc_preparator|Selector0~0_combout\ : std_logic;
SIGNAL \dc_preparator|state_reg.s7~q\ : std_logic;
SIGNAL \dc_preparator|state_reg.s6~q\ : std_logic;
SIGNAL \dc_preparator|state_reg.s5~q\ : std_logic;
SIGNAL \dc_preparator|state_reg.s4~q\ : std_logic;
SIGNAL \dc_preparator|state_reg.s3~q\ : std_logic;
SIGNAL \dc_preparator|Selector8~0_combout\ : std_logic;
SIGNAL \dc_preparator|state_reg.idleplus~q\ : std_logic;
SIGNAL \dc_preparator|state_reg.idleplusplus~q\ : std_logic;
SIGNAL \dc_preparator|state_reg.idle1~q\ : std_logic;
SIGNAL \dc_preparator|state_reg.idle2~feeder_combout\ : std_logic;
SIGNAL \dc_preparator|state_reg.idle2~DUPLICATE_q\ : std_logic;
SIGNAL \dc_preparator|state_reg.idle3~DUPLICATE_q\ : std_logic;
SIGNAL \dc_preparator|state_reg.zero1~q\ : std_logic;
SIGNAL \dc_preparator|state_reg.zero7~q\ : std_logic;
SIGNAL \dc_preparator|state_reg.zero8~DUPLICATE_q\ : std_logic;
SIGNAL \dc_preparator|Selector13~0_combout\ : std_logic;
SIGNAL \dc_preparator|Selector13~1_combout\ : std_logic;
SIGNAL \dc_preparator|state_reg.check_if_new~q\ : std_logic;
SIGNAL \dc_preparator|Selector46~0_combout\ : std_logic;
SIGNAL \spi_comp|r_tx_start~q\ : std_logic;
SIGNAL \spi_comp|Selector1~0_combout\ : std_logic;
SIGNAL \spi_comp|r_st_present.ST_TX_RX~q\ : std_logic;
SIGNAL \spi_comp|Selector2~0_combout\ : std_logic;
SIGNAL \spi_comp|r_st_present.ST_END~q\ : std_logic;
SIGNAL \spi_comp|Selector0~0_combout\ : std_logic;
SIGNAL \spi_comp|r_st_present.ST_RESET~q\ : std_logic;
SIGNAL \spi_comp|r_counter_clock_ena~DUPLICATE_q\ : std_logic;
SIGNAL \spi_comp|r_counter_clock~2_combout\ : std_logic;
SIGNAL \spi_comp|r_counter_clock[0]~DUPLICATE_q\ : std_logic;
SIGNAL \spi_comp|r_sclk_fall~0_combout\ : std_logic;
SIGNAL \spi_comp|r_sclk_fall~DUPLICATE_q\ : std_logic;
SIGNAL \spi_comp|Selector3~0_combout\ : std_logic;
SIGNAL \spi_comp|o_sclk~q\ : std_logic;
SIGNAL \spi_comp|o_ss~q\ : std_logic;
SIGNAL \spi_comp|r_tx_data[15]~feeder_combout\ : std_logic;
SIGNAL \spi_comp|r_sclk_fall~q\ : std_logic;
SIGNAL \dc_preparator|state_reg.idle2~q\ : std_logic;
SIGNAL \dc_preparator|state_reg.zero8~q\ : std_logic;
SIGNAL \dc_preparator|Selector47~0_combout\ : std_logic;
SIGNAL \dc_preparator|Selector47~1_combout\ : std_logic;
SIGNAL \dc_preparator|Selector48~0_combout\ : std_logic;
SIGNAL \dc_preparator|Selector48~1_combout\ : std_logic;
SIGNAL \dc_preparator|state_reg.idle3~q\ : std_logic;
SIGNAL \dc_preparator|Selector49~0_combout\ : std_logic;
SIGNAL \dc_preparator|Selector49~1_combout\ : std_logic;
SIGNAL \dc_preparator|Selector50~0_combout\ : std_logic;
SIGNAL \dc_preparator|state_reg.s5~DUPLICATE_q\ : std_logic;
SIGNAL \dc_preparator|Selector51~0_combout\ : std_logic;
SIGNAL \dc_preparator|Selector51~1_combout\ : std_logic;
SIGNAL \dc_preparator|Selector51~2_combout\ : std_logic;
SIGNAL \dc_preparator|Selector52~0_combout\ : std_logic;
SIGNAL \dc_preparator|Selector52~1_combout\ : std_logic;
SIGNAL \dc_preparator|Selector53~1_combout\ : std_logic;
SIGNAL \dc_preparator|Selector53~0_combout\ : std_logic;
SIGNAL \dc_preparator|Selector53~2_combout\ : std_logic;
SIGNAL \dc_preparator|Selector54~1_combout\ : std_logic;
SIGNAL \dc_preparator|Selector54~0_combout\ : std_logic;
SIGNAL \dc_preparator|Selector54~2_combout\ : std_logic;
SIGNAL \dc_preparator|Selector54~3_combout\ : std_logic;
SIGNAL \dc_preparator|Selector55~0_combout\ : std_logic;
SIGNAL \dc_preparator|Selector55~1_combout\ : std_logic;
SIGNAL \dc_preparator|Selector56~0_combout\ : std_logic;
SIGNAL \dc_preparator|Selector56~1_combout\ : std_logic;
SIGNAL \dc_preparator|state_reg.zero1~DUPLICATE_q\ : std_logic;
SIGNAL \spi_comp|r_tx_data~2_combout\ : std_logic;
SIGNAL \spi_comp|r_tx_data~3_combout\ : std_logic;
SIGNAL \spi_comp|Selector13~0_combout\ : std_logic;
SIGNAL \spi_comp|r_tx_data~1_combout\ : std_logic;
SIGNAL \spi_comp|r_sclk_rise~q\ : std_logic;
SIGNAL \spi_comp|r_tx_data[15]~0_combout\ : std_logic;
SIGNAL \spi_comp|Selector8~0_combout\ : std_logic;
SIGNAL \spi_comp|Selector7~0_combout\ : std_logic;
SIGNAL \spi_comp|Selector6~0_combout\ : std_logic;
SIGNAL \spi_comp|o_mosi~q\ : std_logic;
SIGNAL \spi_comp|Selector4~0_combout\ : std_logic;
SIGNAL \spi_comp|o_mosi~DUPLICATE_q\ : std_logic;
SIGNAL \spi_comp|r_tx_data\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \spi_comp|cnt_reset\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \dc_time|timer\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \dc_counter_tens|timer\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \spi_comp|r_counter_data\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \dc_register|detector|counter\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \dc_counter_ones|timer\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \dc_register|counter\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \spi_comp|r_counter_clock\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dc_preparator|wait_cnt\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \dc_preparator|ex\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \spi_comp|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \spi_comp|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \spi_comp|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \spi_comp|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \spi_comp|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \spi_comp|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \spi_comp|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \dc_time|ALT_INV_timer\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \spi_comp|ALT_INV_cnt_reset\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \spi_comp|ALT_INV_r_tx_data\ : std_logic_vector(15 DOWNTO 3);
SIGNAL \dc_time|ALT_INV_Add0~125_sumout\ : std_logic;
SIGNAL \dc_counter_ones|ALT_INV_timer\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \dc_counter_tens|ALT_INV_timer\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \dc_preparator|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \dc_preparator|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \dc_preparator|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \dc_register|ALT_INV_counter\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \dc_preparator|ALT_INV_cnt_en~q\ : std_logic;
SIGNAL \dc_preparator|ALT_INV_Selector46~0_combout\ : std_logic;
SIGNAL \dc_preparator|ALT_INV_state_reg.check_if_new~q\ : std_logic;
SIGNAL \dc_preparator|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \dc_preparator|ALT_INV_wait_cnt\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \dc_time|ALT_INV_timer~1_combout\ : std_logic;
SIGNAL \dc_time|ALT_INV_timer~0_combout\ : std_logic;
SIGNAL \dc_time|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \dc_time|ALT_INV_LessThan1~3_combout\ : std_logic;
SIGNAL \dc_time|ALT_INV_LessThan1~2_combout\ : std_logic;
SIGNAL \dc_time|ALT_INV_LessThan1~1_combout\ : std_logic;
SIGNAL \dc_time|ALT_INV_LessThan1~0_combout\ : std_logic;
SIGNAL \spi_comp|ALT_INV_p_comb~0_combout\ : std_logic;
SIGNAL \spi_comp|ALT_INV_r_counter_data\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \spi_comp|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \spi_comp|ALT_INV_r_tx_start~q\ : std_logic;
SIGNAL \spi_comp|ALT_INV_r_counter_clock\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \spi_comp|ALT_INV_r_counter_clock_ena~q\ : std_logic;
SIGNAL \spi_comp|ALT_INV_r_st_present.ST_RESET~q\ : std_logic;
SIGNAL \spi_comp|ALT_INV_r_st_present.ST_END~q\ : std_logic;
SIGNAL \spi_comp|ALT_INV_r_sclk_fall~q\ : std_logic;
SIGNAL \spi_comp|ALT_INV_r_st_present.ST_TX_RX~q\ : std_logic;
SIGNAL \spi_comp|ALT_INV_r_sclk_rise~q\ : std_logic;
SIGNAL \spi_comp|ALT_INV_o_mosi~q\ : std_logic;
SIGNAL \spi_comp|ALT_INV_o_ss~q\ : std_logic;
SIGNAL \spi_comp|ALT_INV_o_sclk~q\ : std_logic;
SIGNAL \dc_register|detector|ALT_INV_counter\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \dc_register|ALT_INV_Add0~73_sumout\ : std_logic;
SIGNAL \dc_register|detector|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \dc_preparator|ALT_INV_state_reg.zero7~q\ : std_logic;
SIGNAL \dc_preparator|ALT_INV_state_reg.s4~q\ : std_logic;
SIGNAL \dc_converter|ALT_INV_Output30bit[28]~14_combout\ : std_logic;
SIGNAL \dc_counter_ones|ALT_INV_WideOr0~combout\ : std_logic;
SIGNAL \dc_counter_ones|ALT_INV_WideOr1~combout\ : std_logic;
SIGNAL \dc_counter_ones|ALT_INV_WideOr2~combout\ : std_logic;
SIGNAL \dc_counter_ones|ALT_INV_WideNor0~0_combout\ : std_logic;
SIGNAL \dc_counter_ones|ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \dc_counter_ones|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \dc_counter_ones|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \dc_counter_ones|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \dc_counter_ones|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \dc_counter_ones|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \dc_counter_tens|ALT_INV_WideOr0~combout\ : std_logic;
SIGNAL \dc_counter_tens|ALT_INV_WideOr1~combout\ : std_logic;
SIGNAL \dc_counter_tens|ALT_INV_WideOr2~combout\ : std_logic;
SIGNAL \dc_counter_tens|ALT_INV_WideNor0~0_combout\ : std_logic;
SIGNAL \dc_counter_tens|ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \dc_counter_tens|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \dc_counter_tens|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \dc_counter_tens|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \dc_counter_tens|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \dc_counter_tens|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \dc_preparator|ALT_INV_Selector16~0_combout\ : std_logic;
SIGNAL \dc_converter|ALT_INV_Output30bit[17]~1_combout\ : std_logic;
SIGNAL \dc_preparator|ALT_INV_Selector13~0_combout\ : std_logic;
SIGNAL \dc_preparator|ALT_INV_state_reg.zero8~q\ : std_logic;
SIGNAL \dc_preparator|ALT_INV_state_reg.s3~q\ : std_logic;
SIGNAL \spi_comp|ALT_INV_o_tx_end~q\ : std_logic;
SIGNAL \dc_preparator|ALT_INV_Equal1~10_combout\ : std_logic;
SIGNAL \dc_preparator|ALT_INV_Equal1~9_combout\ : std_logic;
SIGNAL \dc_converter|ALT_INV_reg_tens[3][0]~q\ : std_logic;
SIGNAL \dc_preparator|ALT_INV_ex\ : std_logic_vector(29 DOWNTO 0);
SIGNAL \dc_converter|ALT_INV_reg_tens[2][2]~q\ : std_logic;
SIGNAL \dc_preparator|ALT_INV_Equal1~8_combout\ : std_logic;
SIGNAL \dc_converter|ALT_INV_reg_tens[2][1]~q\ : std_logic;
SIGNAL \dc_converter|ALT_INV_reg_tens[1][2]~q\ : std_logic;
SIGNAL \dc_preparator|ALT_INV_Equal1~7_combout\ : std_logic;
SIGNAL \dc_converter|ALT_INV_reg_tens[4][1]~q\ : std_logic;
SIGNAL \dc_converter|ALT_INV_reg_tens[3][2]~q\ : std_logic;
SIGNAL \dc_converter|ALT_INV_Output30bit[29]~0_combout\ : std_logic;
SIGNAL \dc_converter|ALT_INV_reg_tens[4][2]~q\ : std_logic;
SIGNAL \dc_preparator|ALT_INV_Equal1~6_combout\ : std_logic;
SIGNAL \dc_preparator|ALT_INV_Equal1~5_combout\ : std_logic;
SIGNAL \dc_converter|ALT_INV_reg_ones[1][2]~q\ : std_logic;
SIGNAL \dc_converter|ALT_INV_reg_ones[1][0]~q\ : std_logic;
SIGNAL \dc_preparator|ALT_INV_Equal1~4_combout\ : std_logic;
SIGNAL \dc_converter|ALT_INV_reg_ones[0][1]~q\ : std_logic;
SIGNAL \dc_converter|ALT_INV_reg_ones[0][0]~q\ : std_logic;
SIGNAL \dc_preparator|ALT_INV_Equal1~3_combout\ : std_logic;
SIGNAL \dc_converter|ALT_INV_reg_ones[2][2]~q\ : std_logic;
SIGNAL \dc_converter|ALT_INV_reg_ones[2][1]~q\ : std_logic;
SIGNAL \dc_preparator|ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \dc_converter|ALT_INV_reg_ones[3][2]~q\ : std_logic;
SIGNAL \dc_converter|ALT_INV_reg_ones[3][0]~q\ : std_logic;
SIGNAL \dc_preparator|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \dc_converter|ALT_INV_reg_ones[4][2]~q\ : std_logic;
SIGNAL \dc_converter|ALT_INV_reg_ones[4][1]~q\ : std_logic;
SIGNAL \dc_preparator|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \dc_converter|ALT_INV_reg_tens[1][0]~q\ : std_logic;
SIGNAL \dc_converter|ALT_INV_reg_tens[0][1]~q\ : std_logic;
SIGNAL \dc_converter|ALT_INV_state_reg.idle~q\ : std_logic;
SIGNAL \spi_comp|ALT_INV_r_counter_data[2]~DUPLICATE_q\ : std_logic;
SIGNAL \spi_comp|ALT_INV_r_counter_data[3]~DUPLICATE_q\ : std_logic;
SIGNAL \spi_comp|ALT_INV_r_counter_clock[0]~DUPLICATE_q\ : std_logic;
SIGNAL \spi_comp|ALT_INV_r_counter_clock_ena~DUPLICATE_q\ : std_logic;
SIGNAL \spi_comp|ALT_INV_r_sclk_fall~DUPLICATE_q\ : std_logic;
SIGNAL \spi_comp|ALT_INV_r_sclk_rise~DUPLICATE_q\ : std_logic;
SIGNAL \spi_comp|ALT_INV_o_mosi~DUPLICATE_q\ : std_logic;
SIGNAL \dc_register|detector|ALT_INV_counter[7]~DUPLICATE_q\ : std_logic;
SIGNAL \dc_register|detector|ALT_INV_counter[6]~DUPLICATE_q\ : std_logic;
SIGNAL \dc_register|detector|ALT_INV_counter[5]~DUPLICATE_q\ : std_logic;
SIGNAL \dc_register|detector|ALT_INV_counter[8]~DUPLICATE_q\ : std_logic;
SIGNAL \dc_register|detector|ALT_INV_counter[9]~DUPLICATE_q\ : std_logic;
SIGNAL \dc_register|ALT_INV_counter[18]~DUPLICATE_q\ : std_logic;
SIGNAL \dc_register|ALT_INV_counter[10]~DUPLICATE_q\ : std_logic;
SIGNAL \dc_register|ALT_INV_counter[12]~DUPLICATE_q\ : std_logic;
SIGNAL \dc_register|ALT_INV_counter[13]~DUPLICATE_q\ : std_logic;
SIGNAL \dc_counter_ones|ALT_INV_timer[0]~DUPLICATE_q\ : std_logic;
SIGNAL \dc_counter_ones|ALT_INV_timer[1]~DUPLICATE_q\ : std_logic;
SIGNAL \dc_counter_ones|ALT_INV_timer[24]~DUPLICATE_q\ : std_logic;
SIGNAL \dc_counter_ones|ALT_INV_timer[26]~DUPLICATE_q\ : std_logic;
SIGNAL \dc_counter_ones|ALT_INV_timer[27]~DUPLICATE_q\ : std_logic;
SIGNAL \dc_counter_ones|ALT_INV_timer[29]~DUPLICATE_q\ : std_logic;
SIGNAL \dc_counter_ones|ALT_INV_timer[17]~DUPLICATE_q\ : std_logic;
SIGNAL \dc_counter_ones|ALT_INV_timer[21]~DUPLICATE_q\ : std_logic;
SIGNAL \dc_counter_ones|ALT_INV_timer[12]~DUPLICATE_q\ : std_logic;
SIGNAL \dc_counter_ones|ALT_INV_timer[22]~DUPLICATE_q\ : std_logic;
SIGNAL \dc_counter_ones|ALT_INV_timer[10]~DUPLICATE_q\ : std_logic;
SIGNAL \dc_counter_ones|ALT_INV_timer[3]~DUPLICATE_q\ : std_logic;
SIGNAL \dc_counter_tens|ALT_INV_timer[0]~DUPLICATE_q\ : std_logic;
SIGNAL \dc_counter_tens|ALT_INV_timer[1]~DUPLICATE_q\ : std_logic;
SIGNAL \dc_counter_tens|ALT_INV_timer[16]~DUPLICATE_q\ : std_logic;
SIGNAL \dc_counter_tens|ALT_INV_timer[17]~DUPLICATE_q\ : std_logic;
SIGNAL \dc_counter_tens|ALT_INV_timer[19]~DUPLICATE_q\ : std_logic;
SIGNAL \dc_counter_tens|ALT_INV_timer[21]~DUPLICATE_q\ : std_logic;
SIGNAL \dc_counter_tens|ALT_INV_timer[25]~DUPLICATE_q\ : std_logic;
SIGNAL \dc_counter_tens|ALT_INV_timer[10]~DUPLICATE_q\ : std_logic;
SIGNAL \dc_counter_tens|ALT_INV_timer[13]~DUPLICATE_q\ : std_logic;
SIGNAL \dc_counter_tens|ALT_INV_timer[7]~DUPLICATE_q\ : std_logic;
SIGNAL \dc_counter_tens|ALT_INV_timer[5]~DUPLICATE_q\ : std_logic;
SIGNAL \dc_counter_tens|ALT_INV_timer[29]~DUPLICATE_q\ : std_logic;
SIGNAL \dc_counter_tens|ALT_INV_timer[3]~DUPLICATE_q\ : std_logic;
SIGNAL \dc_counter_tens|ALT_INV_timer[2]~DUPLICATE_q\ : std_logic;
SIGNAL \spi_comp|ALT_INV_cnt_reset[4]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_i_ButtonInput~input_o\ : std_logic;
SIGNAL \dc_register|ALT_INV_cross~1_combout\ : std_logic;
SIGNAL \dc_register|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \spi_comp|ALT_INV_r_tx_data~2_combout\ : std_logic;
SIGNAL \dc_preparator|ALT_INV_Selector56~0_combout\ : std_logic;
SIGNAL \dc_preparator|ALT_INV_Selector55~0_combout\ : std_logic;
SIGNAL \dc_preparator|ALT_INV_Selector54~2_combout\ : std_logic;
SIGNAL \dc_preparator|ALT_INV_Selector54~1_combout\ : std_logic;
SIGNAL \dc_preparator|ALT_INV_Selector54~0_combout\ : std_logic;
SIGNAL \dc_preparator|ALT_INV_Selector53~1_combout\ : std_logic;
SIGNAL \dc_preparator|ALT_INV_Selector53~0_combout\ : std_logic;
SIGNAL \dc_preparator|ALT_INV_Selector52~0_combout\ : std_logic;
SIGNAL \dc_preparator|ALT_INV_Selector51~1_combout\ : std_logic;
SIGNAL \dc_preparator|ALT_INV_Selector51~0_combout\ : std_logic;
SIGNAL \dc_register|detector|ALT_INV_state_reg.s0~q\ : std_logic;
SIGNAL \dc_register|detector|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \dc_preparator|ALT_INV_Selector49~0_combout\ : std_logic;
SIGNAL \dc_register|detector|ALT_INV_state_reg.s1~q\ : std_logic;
SIGNAL \dc_preparator|ALT_INV_Selector48~0_combout\ : std_logic;
SIGNAL \dc_preparator|ALT_INV_state_reg.idle1~q\ : std_logic;
SIGNAL \dc_preparator|ALT_INV_state_reg.idleplus~q\ : std_logic;
SIGNAL \dc_preparator|ALT_INV_state_reg.s7~q\ : std_logic;
SIGNAL \dc_register|ALT_INV_state_reg.s0~q\ : std_logic;
SIGNAL \dc_register|detector|ALT_INV_state_reg.s2~q\ : std_logic;
SIGNAL \dc_preparator|ALT_INV_Selector47~0_combout\ : std_logic;
SIGNAL \dc_preparator|ALT_INV_state_reg.idle2~q\ : std_logic;
SIGNAL \dc_preparator|ALT_INV_state_reg.idleplusplus~q\ : std_logic;
SIGNAL \dc_preparator|ALT_INV_state_reg.idle3~q\ : std_logic;
SIGNAL \dc_preparator|ALT_INV_state_reg.s6~q\ : std_logic;
SIGNAL \dc_register|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \dc_register|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \dc_register|ALT_INV_state_reg.s2~q\ : std_logic;
SIGNAL \dc_register|detector|ALT_INV_state_reg.s3~q\ : std_logic;
SIGNAL \dc_preparator|ALT_INV_state_reg.zero1~q\ : std_logic;
SIGNAL \dc_preparator|ALT_INV_state_reg.s5~q\ : std_logic;
SIGNAL \dc_preparator|ALT_INV_state_reg.idle2~DUPLICATE_q\ : std_logic;
SIGNAL \dc_preparator|ALT_INV_state_reg.idle3~DUPLICATE_q\ : std_logic;
SIGNAL \dc_register|ALT_INV_state_reg.s2~DUPLICATE_q\ : std_logic;
SIGNAL \dc_preparator|ALT_INV_state_reg.zero1~DUPLICATE_q\ : std_logic;
SIGNAL \dc_preparator|ALT_INV_state_reg.s5~DUPLICATE_q\ : std_logic;
SIGNAL \dc_preparator|ALT_INV_state_reg.zero8~DUPLICATE_q\ : std_logic;
SIGNAL \dc_converter|ALT_INV_state_reg.idle~DUPLICATE_q\ : std_logic;
SIGNAL \dc_preparator|ALT_INV_wait_cnt[0]~DUPLICATE_q\ : std_logic;
SIGNAL \dc_preparator|ALT_INV_wait_cnt[5]~DUPLICATE_q\ : std_logic;
SIGNAL \dc_preparator|ALT_INV_wait_cnt[6]~DUPLICATE_q\ : std_logic;

BEGIN

ww_i_Clock <= i_Clock;
ww_i_Reset <= i_Reset;
ww_i_ButtonInput <= i_ButtonInput;
ww_i_miso_dc <= i_miso_dc;
sclk_dc <= ww_sclk_dc;
ss_dc <= ww_ss_dc;
mosi_dc <= ww_mosi_dc;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\spi_comp|ALT_INV_Add0~25_sumout\ <= NOT \spi_comp|Add0~25_sumout\;
\spi_comp|ALT_INV_Add0~21_sumout\ <= NOT \spi_comp|Add0~21_sumout\;
\spi_comp|ALT_INV_Add0~17_sumout\ <= NOT \spi_comp|Add0~17_sumout\;
\spi_comp|ALT_INV_Add0~13_sumout\ <= NOT \spi_comp|Add0~13_sumout\;
\spi_comp|ALT_INV_Add0~9_sumout\ <= NOT \spi_comp|Add0~9_sumout\;
\spi_comp|ALT_INV_Add0~5_sumout\ <= NOT \spi_comp|Add0~5_sumout\;
\spi_comp|ALT_INV_Add0~1_sumout\ <= NOT \spi_comp|Add0~1_sumout\;
\dc_time|ALT_INV_timer\(29) <= NOT \dc_time|timer\(29);
\dc_time|ALT_INV_timer\(30) <= NOT \dc_time|timer\(30);
\dc_time|ALT_INV_timer\(28) <= NOT \dc_time|timer\(28);
\dc_time|ALT_INV_timer\(27) <= NOT \dc_time|timer\(27);
\dc_time|ALT_INV_timer\(26) <= NOT \dc_time|timer\(26);
\dc_time|ALT_INV_timer\(25) <= NOT \dc_time|timer\(25);
\dc_time|ALT_INV_timer\(24) <= NOT \dc_time|timer\(24);
\dc_time|ALT_INV_timer\(3) <= NOT \dc_time|timer\(3);
\dc_time|ALT_INV_timer\(2) <= NOT \dc_time|timer\(2);
\dc_time|ALT_INV_timer\(4) <= NOT \dc_time|timer\(4);
\dc_time|ALT_INV_timer\(7) <= NOT \dc_time|timer\(7);
\dc_time|ALT_INV_timer\(8) <= NOT \dc_time|timer\(8);
\dc_time|ALT_INV_timer\(6) <= NOT \dc_time|timer\(6);
\dc_time|ALT_INV_timer\(5) <= NOT \dc_time|timer\(5);
\dc_time|ALT_INV_timer\(9) <= NOT \dc_time|timer\(9);
\dc_time|ALT_INV_timer\(16) <= NOT \dc_time|timer\(16);
\dc_time|ALT_INV_timer\(17) <= NOT \dc_time|timer\(17);
\dc_time|ALT_INV_timer\(15) <= NOT \dc_time|timer\(15);
\dc_time|ALT_INV_timer\(14) <= NOT \dc_time|timer\(14);
\dc_time|ALT_INV_timer\(13) <= NOT \dc_time|timer\(13);
\dc_time|ALT_INV_timer\(12) <= NOT \dc_time|timer\(12);
\dc_time|ALT_INV_timer\(22) <= NOT \dc_time|timer\(22);
\dc_time|ALT_INV_timer\(23) <= NOT \dc_time|timer\(23);
\dc_time|ALT_INV_timer\(21) <= NOT \dc_time|timer\(21);
\dc_time|ALT_INV_timer\(20) <= NOT \dc_time|timer\(20);
\dc_time|ALT_INV_timer\(19) <= NOT \dc_time|timer\(19);
\dc_time|ALT_INV_timer\(18) <= NOT \dc_time|timer\(18);
\dc_time|ALT_INV_timer\(10) <= NOT \dc_time|timer\(10);
\dc_time|ALT_INV_timer\(11) <= NOT \dc_time|timer\(11);
\dc_time|ALT_INV_timer\(31) <= NOT \dc_time|timer\(31);
\spi_comp|ALT_INV_cnt_reset\(1) <= NOT \spi_comp|cnt_reset\(1);
\spi_comp|ALT_INV_cnt_reset\(2) <= NOT \spi_comp|cnt_reset\(2);
\spi_comp|ALT_INV_cnt_reset\(3) <= NOT \spi_comp|cnt_reset\(3);
\spi_comp|ALT_INV_cnt_reset\(4) <= NOT \spi_comp|cnt_reset\(4);
\spi_comp|ALT_INV_cnt_reset\(5) <= NOT \spi_comp|cnt_reset\(5);
\spi_comp|ALT_INV_cnt_reset\(6) <= NOT \spi_comp|cnt_reset\(6);
\spi_comp|ALT_INV_cnt_reset\(0) <= NOT \spi_comp|cnt_reset\(0);
\spi_comp|ALT_INV_r_tx_data\(15) <= NOT \spi_comp|r_tx_data\(15);
\dc_time|ALT_INV_Add0~125_sumout\ <= NOT \dc_time|Add0~125_sumout\;
\dc_time|ALT_INV_timer\(1) <= NOT \dc_time|timer\(1);
\dc_counter_ones|ALT_INV_timer\(0) <= NOT \dc_counter_ones|timer\(0);
\dc_counter_ones|ALT_INV_timer\(1) <= NOT \dc_counter_ones|timer\(1);
\dc_counter_ones|ALT_INV_timer\(11) <= NOT \dc_counter_ones|timer\(11);
\dc_counter_ones|ALT_INV_timer\(24) <= NOT \dc_counter_ones|timer\(24);
\dc_counter_ones|ALT_INV_timer\(25) <= NOT \dc_counter_ones|timer\(25);
\dc_counter_ones|ALT_INV_timer\(26) <= NOT \dc_counter_ones|timer\(26);
\dc_counter_ones|ALT_INV_timer\(27) <= NOT \dc_counter_ones|timer\(27);
\dc_counter_ones|ALT_INV_timer\(28) <= NOT \dc_counter_ones|timer\(28);
\dc_counter_ones|ALT_INV_timer\(29) <= NOT \dc_counter_ones|timer\(29);
\dc_counter_ones|ALT_INV_timer\(30) <= NOT \dc_counter_ones|timer\(30);
\dc_counter_ones|ALT_INV_timer\(23) <= NOT \dc_counter_ones|timer\(23);
\dc_counter_ones|ALT_INV_timer\(15) <= NOT \dc_counter_ones|timer\(15);
\dc_counter_ones|ALT_INV_timer\(5) <= NOT \dc_counter_ones|timer\(5);
\dc_counter_ones|ALT_INV_timer\(16) <= NOT \dc_counter_ones|timer\(16);
\dc_counter_ones|ALT_INV_timer\(17) <= NOT \dc_counter_ones|timer\(17);
\dc_counter_ones|ALT_INV_timer\(18) <= NOT \dc_counter_ones|timer\(18);
\dc_counter_ones|ALT_INV_timer\(19) <= NOT \dc_counter_ones|timer\(19);
\dc_counter_ones|ALT_INV_timer\(20) <= NOT \dc_counter_ones|timer\(20);
\dc_counter_ones|ALT_INV_timer\(21) <= NOT \dc_counter_ones|timer\(21);
\dc_counter_ones|ALT_INV_timer\(7) <= NOT \dc_counter_ones|timer\(7);
\dc_counter_ones|ALT_INV_timer\(6) <= NOT \dc_counter_ones|timer\(6);
\dc_counter_ones|ALT_INV_timer\(4) <= NOT \dc_counter_ones|timer\(4);
\dc_counter_ones|ALT_INV_timer\(12) <= NOT \dc_counter_ones|timer\(12);
\dc_counter_ones|ALT_INV_timer\(13) <= NOT \dc_counter_ones|timer\(13);
\dc_counter_ones|ALT_INV_timer\(14) <= NOT \dc_counter_ones|timer\(14);
\dc_counter_ones|ALT_INV_timer\(22) <= NOT \dc_counter_ones|timer\(22);
\dc_counter_ones|ALT_INV_timer\(10) <= NOT \dc_counter_ones|timer\(10);
\dc_counter_ones|ALT_INV_timer\(9) <= NOT \dc_counter_ones|timer\(9);
\dc_counter_ones|ALT_INV_timer\(8) <= NOT \dc_counter_ones|timer\(8);
\dc_counter_ones|ALT_INV_timer\(31) <= NOT \dc_counter_ones|timer\(31);
\dc_counter_ones|ALT_INV_timer\(3) <= NOT \dc_counter_ones|timer\(3);
\dc_counter_ones|ALT_INV_timer\(2) <= NOT \dc_counter_ones|timer\(2);
\dc_counter_tens|ALT_INV_timer\(0) <= NOT \dc_counter_tens|timer\(0);
\dc_counter_tens|ALT_INV_timer\(1) <= NOT \dc_counter_tens|timer\(1);
\dc_counter_tens|ALT_INV_timer\(16) <= NOT \dc_counter_tens|timer\(16);
\dc_counter_tens|ALT_INV_timer\(17) <= NOT \dc_counter_tens|timer\(17);
\dc_counter_tens|ALT_INV_timer\(18) <= NOT \dc_counter_tens|timer\(18);
\dc_counter_tens|ALT_INV_timer\(19) <= NOT \dc_counter_tens|timer\(19);
\dc_counter_tens|ALT_INV_timer\(21) <= NOT \dc_counter_tens|timer\(21);
\dc_counter_tens|ALT_INV_timer\(22) <= NOT \dc_counter_tens|timer\(22);
\dc_counter_tens|ALT_INV_timer\(23) <= NOT \dc_counter_tens|timer\(23);
\dc_counter_tens|ALT_INV_timer\(24) <= NOT \dc_counter_tens|timer\(24);
\dc_counter_tens|ALT_INV_timer\(25) <= NOT \dc_counter_tens|timer\(25);
\dc_counter_tens|ALT_INV_timer\(26) <= NOT \dc_counter_tens|timer\(26);
\dc_counter_tens|ALT_INV_timer\(27) <= NOT \dc_counter_tens|timer\(27);
\dc_counter_tens|ALT_INV_timer\(31) <= NOT \dc_counter_tens|timer\(31);
\dc_counter_tens|ALT_INV_timer\(10) <= NOT \dc_counter_tens|timer\(10);
\dc_counter_tens|ALT_INV_timer\(11) <= NOT \dc_counter_tens|timer\(11);
\dc_counter_tens|ALT_INV_timer\(12) <= NOT \dc_counter_tens|timer\(12);
\dc_counter_tens|ALT_INV_timer\(13) <= NOT \dc_counter_tens|timer\(13);
\dc_counter_tens|ALT_INV_timer\(14) <= NOT \dc_counter_tens|timer\(14);
\dc_counter_tens|ALT_INV_timer\(30) <= NOT \dc_counter_tens|timer\(30);
\dc_counter_tens|ALT_INV_timer\(9) <= NOT \dc_counter_tens|timer\(9);
\dc_counter_tens|ALT_INV_timer\(20) <= NOT \dc_counter_tens|timer\(20);
\dc_counter_tens|ALT_INV_timer\(6) <= NOT \dc_counter_tens|timer\(6);
\dc_counter_tens|ALT_INV_timer\(7) <= NOT \dc_counter_tens|timer\(7);
\dc_counter_tens|ALT_INV_timer\(8) <= NOT \dc_counter_tens|timer\(8);
\dc_counter_tens|ALT_INV_timer\(4) <= NOT \dc_counter_tens|timer\(4);
\dc_counter_tens|ALT_INV_timer\(5) <= NOT \dc_counter_tens|timer\(5);
\dc_counter_tens|ALT_INV_timer\(28) <= NOT \dc_counter_tens|timer\(28);
\dc_counter_tens|ALT_INV_timer\(29) <= NOT \dc_counter_tens|timer\(29);
\dc_counter_tens|ALT_INV_timer\(15) <= NOT \dc_counter_tens|timer\(15);
\dc_counter_tens|ALT_INV_timer\(3) <= NOT \dc_counter_tens|timer\(3);
\dc_counter_tens|ALT_INV_timer\(2) <= NOT \dc_counter_tens|timer\(2);
\dc_preparator|ALT_INV_Add0~25_sumout\ <= NOT \dc_preparator|Add0~25_sumout\;
\dc_preparator|ALT_INV_Add0~13_sumout\ <= NOT \dc_preparator|Add0~13_sumout\;
\dc_preparator|ALT_INV_Add0~1_sumout\ <= NOT \dc_preparator|Add0~1_sumout\;
\dc_register|ALT_INV_counter\(15) <= NOT \dc_register|counter\(15);
\dc_register|ALT_INV_counter\(16) <= NOT \dc_register|counter\(16);
\dc_register|ALT_INV_counter\(17) <= NOT \dc_register|counter\(17);
\dc_register|ALT_INV_counter\(18) <= NOT \dc_register|counter\(18);
\dc_register|ALT_INV_counter\(9) <= NOT \dc_register|counter\(9);
\dc_register|ALT_INV_counter\(10) <= NOT \dc_register|counter\(10);
\dc_register|ALT_INV_counter\(11) <= NOT \dc_register|counter\(11);
\dc_register|ALT_INV_counter\(12) <= NOT \dc_register|counter\(12);
\dc_register|ALT_INV_counter\(5) <= NOT \dc_register|counter\(5);
\dc_register|ALT_INV_counter\(6) <= NOT \dc_register|counter\(6);
\dc_register|ALT_INV_counter\(7) <= NOT \dc_register|counter\(7);
\dc_register|ALT_INV_counter\(8) <= NOT \dc_register|counter\(8);
\dc_register|ALT_INV_counter\(13) <= NOT \dc_register|counter\(13);
\dc_register|ALT_INV_counter\(14) <= NOT \dc_register|counter\(14);
\spi_comp|ALT_INV_r_tx_data\(11) <= NOT \spi_comp|r_tx_data\(11);
\dc_preparator|ALT_INV_cnt_en~q\ <= NOT \dc_preparator|cnt_en~q\;
\spi_comp|ALT_INV_r_tx_data\(14) <= NOT \spi_comp|r_tx_data\(14);
\dc_preparator|ALT_INV_Selector46~0_combout\ <= NOT \dc_preparator|Selector46~0_combout\;
\dc_preparator|ALT_INV_state_reg.check_if_new~q\ <= NOT \dc_preparator|state_reg.check_if_new~q\;
\dc_preparator|ALT_INV_Equal2~0_combout\ <= NOT \dc_preparator|Equal2~0_combout\;
\dc_preparator|ALT_INV_wait_cnt\(0) <= NOT \dc_preparator|wait_cnt\(0);
\dc_preparator|ALT_INV_wait_cnt\(1) <= NOT \dc_preparator|wait_cnt\(1);
\dc_preparator|ALT_INV_wait_cnt\(2) <= NOT \dc_preparator|wait_cnt\(2);
\dc_preparator|ALT_INV_wait_cnt\(3) <= NOT \dc_preparator|wait_cnt\(3);
\dc_preparator|ALT_INV_wait_cnt\(4) <= NOT \dc_preparator|wait_cnt\(4);
\dc_preparator|ALT_INV_wait_cnt\(5) <= NOT \dc_preparator|wait_cnt\(5);
\dc_preparator|ALT_INV_wait_cnt\(6) <= NOT \dc_preparator|wait_cnt\(6);
\dc_time|ALT_INV_timer~1_combout\ <= NOT \dc_time|timer~1_combout\;
\dc_time|ALT_INV_timer~0_combout\ <= NOT \dc_time|timer~0_combout\;
\dc_time|ALT_INV_LessThan0~0_combout\ <= NOT \dc_time|LessThan0~0_combout\;
\dc_time|ALT_INV_LessThan1~3_combout\ <= NOT \dc_time|LessThan1~3_combout\;
\dc_time|ALT_INV_LessThan1~2_combout\ <= NOT \dc_time|LessThan1~2_combout\;
\dc_time|ALT_INV_LessThan1~1_combout\ <= NOT \dc_time|LessThan1~1_combout\;
\dc_time|ALT_INV_LessThan1~0_combout\ <= NOT \dc_time|LessThan1~0_combout\;
\spi_comp|ALT_INV_p_comb~0_combout\ <= NOT \spi_comp|p_comb~0_combout\;
\spi_comp|ALT_INV_r_counter_data\(0) <= NOT \spi_comp|r_counter_data\(0);
\spi_comp|ALT_INV_r_counter_data\(1) <= NOT \spi_comp|r_counter_data\(1);
\spi_comp|ALT_INV_r_counter_data\(2) <= NOT \spi_comp|r_counter_data\(2);
\spi_comp|ALT_INV_r_counter_data\(3) <= NOT \spi_comp|r_counter_data\(3);
\spi_comp|ALT_INV_Equal0~0_combout\ <= NOT \spi_comp|Equal0~0_combout\;
\spi_comp|ALT_INV_r_tx_start~q\ <= NOT \spi_comp|r_tx_start~q\;
\spi_comp|ALT_INV_r_counter_clock\(0) <= NOT \spi_comp|r_counter_clock\(0);
\spi_comp|ALT_INV_r_counter_clock\(1) <= NOT \spi_comp|r_counter_clock\(1);
\spi_comp|ALT_INV_r_counter_clock\(2) <= NOT \spi_comp|r_counter_clock\(2);
\spi_comp|ALT_INV_r_counter_clock_ena~q\ <= NOT \spi_comp|r_counter_clock_ena~q\;
\spi_comp|ALT_INV_r_st_present.ST_RESET~q\ <= NOT \spi_comp|r_st_present.ST_RESET~q\;
\spi_comp|ALT_INV_r_st_present.ST_END~q\ <= NOT \spi_comp|r_st_present.ST_END~q\;
\spi_comp|ALT_INV_r_sclk_fall~q\ <= NOT \spi_comp|r_sclk_fall~q\;
\spi_comp|ALT_INV_r_st_present.ST_TX_RX~q\ <= NOT \spi_comp|r_st_present.ST_TX_RX~q\;
\spi_comp|ALT_INV_r_sclk_rise~q\ <= NOT \spi_comp|r_sclk_rise~q\;
\spi_comp|ALT_INV_o_mosi~q\ <= NOT \spi_comp|o_mosi~q\;
\spi_comp|ALT_INV_o_ss~q\ <= NOT \spi_comp|o_ss~q\;
\spi_comp|ALT_INV_o_sclk~q\ <= NOT \spi_comp|o_sclk~q\;
\dc_register|detector|ALT_INV_counter\(0) <= NOT \dc_register|detector|counter\(0);
\dc_register|detector|ALT_INV_counter\(1) <= NOT \dc_register|detector|counter\(1);
\spi_comp|ALT_INV_r_tx_data\(3) <= NOT \spi_comp|r_tx_data\(3);
\dc_register|ALT_INV_counter\(0) <= NOT \dc_register|counter\(0);
\dc_register|detector|ALT_INV_counter\(2) <= NOT \dc_register|detector|counter\(2);
\dc_register|ALT_INV_Add0~73_sumout\ <= NOT \dc_register|Add0~73_sumout\;
\dc_register|ALT_INV_counter\(1) <= NOT \dc_register|counter\(1);
\dc_register|detector|ALT_INV_counter\(3) <= NOT \dc_register|detector|counter\(3);
\dc_register|ALT_INV_counter\(2) <= NOT \dc_register|counter\(2);
\dc_register|detector|ALT_INV_counter\(4) <= NOT \dc_register|detector|counter\(4);
\dc_register|ALT_INV_counter\(3) <= NOT \dc_register|counter\(3);
\dc_register|ALT_INV_counter\(4) <= NOT \dc_register|counter\(4);
\dc_register|detector|ALT_INV_Add0~5_sumout\ <= NOT \dc_register|detector|Add0~5_sumout\;
\dc_register|detector|ALT_INV_counter\(7) <= NOT \dc_register|detector|counter\(7);
\dc_register|detector|ALT_INV_counter\(6) <= NOT \dc_register|detector|counter\(6);
\dc_register|detector|ALT_INV_counter\(5) <= NOT \dc_register|detector|counter\(5);
\dc_register|detector|ALT_INV_counter\(8) <= NOT \dc_register|detector|counter\(8);
\dc_register|detector|ALT_INV_counter\(9) <= NOT \dc_register|detector|counter\(9);
\spi_comp|ALT_INV_r_tx_data\(12) <= NOT \spi_comp|r_tx_data\(12);
\dc_preparator|ALT_INV_state_reg.zero7~q\ <= NOT \dc_preparator|state_reg.zero7~q\;
\dc_preparator|ALT_INV_state_reg.s4~q\ <= NOT \dc_preparator|state_reg.s4~q\;
\dc_converter|ALT_INV_Output30bit[28]~14_combout\ <= NOT \dc_converter|Output30bit[28]~14_combout\;
\dc_counter_ones|ALT_INV_WideOr0~combout\ <= NOT \dc_counter_ones|WideOr0~combout\;
\dc_counter_ones|ALT_INV_WideOr1~combout\ <= NOT \dc_counter_ones|WideOr1~combout\;
\dc_counter_ones|ALT_INV_WideOr2~combout\ <= NOT \dc_counter_ones|WideOr2~combout\;
\dc_counter_ones|ALT_INV_WideNor0~0_combout\ <= NOT \dc_counter_ones|WideNor0~0_combout\;
\dc_counter_ones|ALT_INV_Equal0~5_combout\ <= NOT \dc_counter_ones|Equal0~5_combout\;
\dc_counter_ones|ALT_INV_Equal0~4_combout\ <= NOT \dc_counter_ones|Equal0~4_combout\;
\dc_counter_ones|ALT_INV_Equal0~3_combout\ <= NOT \dc_counter_ones|Equal0~3_combout\;
\dc_counter_ones|ALT_INV_Equal0~2_combout\ <= NOT \dc_counter_ones|Equal0~2_combout\;
\dc_counter_ones|ALT_INV_Equal0~1_combout\ <= NOT \dc_counter_ones|Equal0~1_combout\;
\dc_counter_ones|ALT_INV_Equal0~0_combout\ <= NOT \dc_counter_ones|Equal0~0_combout\;
\dc_counter_tens|ALT_INV_WideOr0~combout\ <= NOT \dc_counter_tens|WideOr0~combout\;
\dc_counter_tens|ALT_INV_WideOr1~combout\ <= NOT \dc_counter_tens|WideOr1~combout\;
\dc_counter_tens|ALT_INV_WideOr2~combout\ <= NOT \dc_counter_tens|WideOr2~combout\;
\dc_counter_tens|ALT_INV_WideNor0~0_combout\ <= NOT \dc_counter_tens|WideNor0~0_combout\;
\dc_counter_tens|ALT_INV_Equal0~5_combout\ <= NOT \dc_counter_tens|Equal0~5_combout\;
\dc_counter_tens|ALT_INV_Equal0~4_combout\ <= NOT \dc_counter_tens|Equal0~4_combout\;
\dc_counter_tens|ALT_INV_Equal0~3_combout\ <= NOT \dc_counter_tens|Equal0~3_combout\;
\dc_counter_tens|ALT_INV_Equal0~2_combout\ <= NOT \dc_counter_tens|Equal0~2_combout\;
\dc_counter_tens|ALT_INV_Equal0~1_combout\ <= NOT \dc_counter_tens|Equal0~1_combout\;
\dc_counter_tens|ALT_INV_Equal0~0_combout\ <= NOT \dc_counter_tens|Equal0~0_combout\;
\dc_preparator|ALT_INV_Selector16~0_combout\ <= NOT \dc_preparator|Selector16~0_combout\;
\dc_converter|ALT_INV_Output30bit[17]~1_combout\ <= NOT \dc_converter|Output30bit[17]~1_combout\;
\spi_comp|ALT_INV_r_tx_data\(13) <= NOT \spi_comp|r_tx_data\(13);
\dc_preparator|ALT_INV_Selector13~0_combout\ <= NOT \dc_preparator|Selector13~0_combout\;
\dc_preparator|ALT_INV_state_reg.zero8~q\ <= NOT \dc_preparator|state_reg.zero8~q\;
\dc_preparator|ALT_INV_state_reg.s3~q\ <= NOT \dc_preparator|state_reg.s3~q\;
\spi_comp|ALT_INV_o_tx_end~q\ <= NOT \spi_comp|o_tx_end~q\;
\dc_preparator|ALT_INV_Equal1~10_combout\ <= NOT \dc_preparator|Equal1~10_combout\;
\dc_preparator|ALT_INV_Equal1~9_combout\ <= NOT \dc_preparator|Equal1~9_combout\;
\dc_converter|ALT_INV_reg_tens[3][0]~q\ <= NOT \dc_converter|reg_tens[3][0]~q\;
\dc_preparator|ALT_INV_ex\(24) <= NOT \dc_preparator|ex\(24);
\dc_converter|ALT_INV_reg_tens[2][2]~q\ <= NOT \dc_converter|reg_tens[2][2]~q\;
\dc_preparator|ALT_INV_ex\(23) <= NOT \dc_preparator|ex\(23);
\dc_preparator|ALT_INV_Equal1~8_combout\ <= NOT \dc_preparator|Equal1~8_combout\;
\dc_converter|ALT_INV_reg_tens[2][1]~q\ <= NOT \dc_converter|reg_tens[2][1]~q\;
\dc_preparator|ALT_INV_ex\(22) <= NOT \dc_preparator|ex\(22);
\dc_converter|ALT_INV_reg_tens[1][2]~q\ <= NOT \dc_converter|reg_tens[1][2]~q\;
\dc_preparator|ALT_INV_ex\(20) <= NOT \dc_preparator|ex\(20);
\dc_preparator|ALT_INV_Equal1~7_combout\ <= NOT \dc_preparator|Equal1~7_combout\;
\dc_converter|ALT_INV_reg_tens[4][1]~q\ <= NOT \dc_converter|reg_tens[4][1]~q\;
\dc_preparator|ALT_INV_ex\(28) <= NOT \dc_preparator|ex\(28);
\dc_converter|ALT_INV_reg_tens[3][2]~q\ <= NOT \dc_converter|reg_tens[3][2]~q\;
\dc_preparator|ALT_INV_ex\(26) <= NOT \dc_preparator|ex\(26);
\dc_converter|ALT_INV_Output30bit[29]~0_combout\ <= NOT \dc_converter|Output30bit[29]~0_combout\;
\dc_converter|ALT_INV_reg_tens[4][2]~q\ <= NOT \dc_converter|reg_tens[4][2]~q\;
\dc_preparator|ALT_INV_ex\(29) <= NOT \dc_preparator|ex\(29);
\dc_preparator|ALT_INV_Equal1~6_combout\ <= NOT \dc_preparator|Equal1~6_combout\;
\dc_preparator|ALT_INV_Equal1~5_combout\ <= NOT \dc_preparator|Equal1~5_combout\;
\dc_converter|ALT_INV_reg_ones[1][2]~q\ <= NOT \dc_converter|reg_ones[1][2]~q\;
\dc_preparator|ALT_INV_ex\(5) <= NOT \dc_preparator|ex\(5);
\dc_converter|ALT_INV_reg_ones[1][0]~q\ <= NOT \dc_converter|reg_ones[1][0]~q\;
\dc_preparator|ALT_INV_ex\(3) <= NOT \dc_preparator|ex\(3);
\dc_preparator|ALT_INV_Equal1~4_combout\ <= NOT \dc_preparator|Equal1~4_combout\;
\dc_converter|ALT_INV_reg_ones[0][1]~q\ <= NOT \dc_converter|reg_ones[0][1]~q\;
\dc_preparator|ALT_INV_ex\(1) <= NOT \dc_preparator|ex\(1);
\dc_converter|ALT_INV_reg_ones[0][0]~q\ <= NOT \dc_converter|reg_ones[0][0]~q\;
\dc_preparator|ALT_INV_ex\(0) <= NOT \dc_preparator|ex\(0);
\dc_preparator|ALT_INV_Equal1~3_combout\ <= NOT \dc_preparator|Equal1~3_combout\;
\dc_converter|ALT_INV_reg_ones[2][2]~q\ <= NOT \dc_converter|reg_ones[2][2]~q\;
\dc_preparator|ALT_INV_ex\(8) <= NOT \dc_preparator|ex\(8);
\dc_converter|ALT_INV_reg_ones[2][1]~q\ <= NOT \dc_converter|reg_ones[2][1]~q\;
\dc_preparator|ALT_INV_ex\(7) <= NOT \dc_preparator|ex\(7);
\dc_preparator|ALT_INV_Equal1~2_combout\ <= NOT \dc_preparator|Equal1~2_combout\;
\dc_converter|ALT_INV_reg_ones[3][2]~q\ <= NOT \dc_converter|reg_ones[3][2]~q\;
\dc_preparator|ALT_INV_ex\(11) <= NOT \dc_preparator|ex\(11);
\dc_converter|ALT_INV_reg_ones[3][0]~q\ <= NOT \dc_converter|reg_ones[3][0]~q\;
\dc_preparator|ALT_INV_ex\(9) <= NOT \dc_preparator|ex\(9);
\dc_preparator|ALT_INV_Equal1~1_combout\ <= NOT \dc_preparator|Equal1~1_combout\;
\dc_converter|ALT_INV_reg_ones[4][2]~q\ <= NOT \dc_converter|reg_ones[4][2]~q\;
\dc_preparator|ALT_INV_ex\(14) <= NOT \dc_preparator|ex\(14);
\dc_converter|ALT_INV_reg_ones[4][1]~q\ <= NOT \dc_converter|reg_ones[4][1]~q\;
\dc_preparator|ALT_INV_ex\(13) <= NOT \dc_preparator|ex\(13);
\dc_preparator|ALT_INV_Equal1~0_combout\ <= NOT \dc_preparator|Equal1~0_combout\;
\dc_converter|ALT_INV_reg_tens[1][0]~q\ <= NOT \dc_converter|reg_tens[1][0]~q\;
\dc_preparator|ALT_INV_ex\(18) <= NOT \dc_preparator|ex\(18);
\dc_converter|ALT_INV_reg_tens[0][1]~q\ <= NOT \dc_converter|reg_tens[0][1]~q\;
\dc_preparator|ALT_INV_ex\(16) <= NOT \dc_preparator|ex\(16);
\dc_converter|ALT_INV_state_reg.idle~q\ <= NOT \dc_converter|state_reg.idle~q\;
\spi_comp|ALT_INV_r_counter_data[2]~DUPLICATE_q\ <= NOT \spi_comp|r_counter_data[2]~DUPLICATE_q\;
\spi_comp|ALT_INV_r_counter_data[3]~DUPLICATE_q\ <= NOT \spi_comp|r_counter_data[3]~DUPLICATE_q\;
\spi_comp|ALT_INV_r_counter_clock[0]~DUPLICATE_q\ <= NOT \spi_comp|r_counter_clock[0]~DUPLICATE_q\;
\spi_comp|ALT_INV_r_counter_clock_ena~DUPLICATE_q\ <= NOT \spi_comp|r_counter_clock_ena~DUPLICATE_q\;
\spi_comp|ALT_INV_r_sclk_fall~DUPLICATE_q\ <= NOT \spi_comp|r_sclk_fall~DUPLICATE_q\;
\spi_comp|ALT_INV_r_sclk_rise~DUPLICATE_q\ <= NOT \spi_comp|r_sclk_rise~DUPLICATE_q\;
\spi_comp|ALT_INV_o_mosi~DUPLICATE_q\ <= NOT \spi_comp|o_mosi~DUPLICATE_q\;
\dc_register|detector|ALT_INV_counter[7]~DUPLICATE_q\ <= NOT \dc_register|detector|counter[7]~DUPLICATE_q\;
\dc_register|detector|ALT_INV_counter[6]~DUPLICATE_q\ <= NOT \dc_register|detector|counter[6]~DUPLICATE_q\;
\dc_register|detector|ALT_INV_counter[5]~DUPLICATE_q\ <= NOT \dc_register|detector|counter[5]~DUPLICATE_q\;
\dc_register|detector|ALT_INV_counter[8]~DUPLICATE_q\ <= NOT \dc_register|detector|counter[8]~DUPLICATE_q\;
\dc_register|detector|ALT_INV_counter[9]~DUPLICATE_q\ <= NOT \dc_register|detector|counter[9]~DUPLICATE_q\;
\dc_register|ALT_INV_counter[18]~DUPLICATE_q\ <= NOT \dc_register|counter[18]~DUPLICATE_q\;
\dc_register|ALT_INV_counter[10]~DUPLICATE_q\ <= NOT \dc_register|counter[10]~DUPLICATE_q\;
\dc_register|ALT_INV_counter[12]~DUPLICATE_q\ <= NOT \dc_register|counter[12]~DUPLICATE_q\;
\dc_register|ALT_INV_counter[13]~DUPLICATE_q\ <= NOT \dc_register|counter[13]~DUPLICATE_q\;
\dc_counter_ones|ALT_INV_timer[0]~DUPLICATE_q\ <= NOT \dc_counter_ones|timer[0]~DUPLICATE_q\;
\dc_counter_ones|ALT_INV_timer[1]~DUPLICATE_q\ <= NOT \dc_counter_ones|timer[1]~DUPLICATE_q\;
\dc_counter_ones|ALT_INV_timer[24]~DUPLICATE_q\ <= NOT \dc_counter_ones|timer[24]~DUPLICATE_q\;
\dc_counter_ones|ALT_INV_timer[26]~DUPLICATE_q\ <= NOT \dc_counter_ones|timer[26]~DUPLICATE_q\;
\dc_counter_ones|ALT_INV_timer[27]~DUPLICATE_q\ <= NOT \dc_counter_ones|timer[27]~DUPLICATE_q\;
\dc_counter_ones|ALT_INV_timer[29]~DUPLICATE_q\ <= NOT \dc_counter_ones|timer[29]~DUPLICATE_q\;
\dc_counter_ones|ALT_INV_timer[17]~DUPLICATE_q\ <= NOT \dc_counter_ones|timer[17]~DUPLICATE_q\;
\dc_counter_ones|ALT_INV_timer[21]~DUPLICATE_q\ <= NOT \dc_counter_ones|timer[21]~DUPLICATE_q\;
\dc_counter_ones|ALT_INV_timer[12]~DUPLICATE_q\ <= NOT \dc_counter_ones|timer[12]~DUPLICATE_q\;
\dc_counter_ones|ALT_INV_timer[22]~DUPLICATE_q\ <= NOT \dc_counter_ones|timer[22]~DUPLICATE_q\;
\dc_counter_ones|ALT_INV_timer[10]~DUPLICATE_q\ <= NOT \dc_counter_ones|timer[10]~DUPLICATE_q\;
\dc_counter_ones|ALT_INV_timer[3]~DUPLICATE_q\ <= NOT \dc_counter_ones|timer[3]~DUPLICATE_q\;
\dc_counter_tens|ALT_INV_timer[0]~DUPLICATE_q\ <= NOT \dc_counter_tens|timer[0]~DUPLICATE_q\;
\dc_counter_tens|ALT_INV_timer[1]~DUPLICATE_q\ <= NOT \dc_counter_tens|timer[1]~DUPLICATE_q\;
\dc_counter_tens|ALT_INV_timer[16]~DUPLICATE_q\ <= NOT \dc_counter_tens|timer[16]~DUPLICATE_q\;
\dc_counter_tens|ALT_INV_timer[17]~DUPLICATE_q\ <= NOT \dc_counter_tens|timer[17]~DUPLICATE_q\;
\dc_counter_tens|ALT_INV_timer[19]~DUPLICATE_q\ <= NOT \dc_counter_tens|timer[19]~DUPLICATE_q\;
\dc_counter_tens|ALT_INV_timer[21]~DUPLICATE_q\ <= NOT \dc_counter_tens|timer[21]~DUPLICATE_q\;
\dc_counter_tens|ALT_INV_timer[25]~DUPLICATE_q\ <= NOT \dc_counter_tens|timer[25]~DUPLICATE_q\;
\dc_counter_tens|ALT_INV_timer[10]~DUPLICATE_q\ <= NOT \dc_counter_tens|timer[10]~DUPLICATE_q\;
\dc_counter_tens|ALT_INV_timer[13]~DUPLICATE_q\ <= NOT \dc_counter_tens|timer[13]~DUPLICATE_q\;
\dc_counter_tens|ALT_INV_timer[7]~DUPLICATE_q\ <= NOT \dc_counter_tens|timer[7]~DUPLICATE_q\;
\dc_counter_tens|ALT_INV_timer[5]~DUPLICATE_q\ <= NOT \dc_counter_tens|timer[5]~DUPLICATE_q\;
\dc_counter_tens|ALT_INV_timer[29]~DUPLICATE_q\ <= NOT \dc_counter_tens|timer[29]~DUPLICATE_q\;
\dc_counter_tens|ALT_INV_timer[3]~DUPLICATE_q\ <= NOT \dc_counter_tens|timer[3]~DUPLICATE_q\;
\dc_counter_tens|ALT_INV_timer[2]~DUPLICATE_q\ <= NOT \dc_counter_tens|timer[2]~DUPLICATE_q\;
\spi_comp|ALT_INV_cnt_reset[4]~DUPLICATE_q\ <= NOT \spi_comp|cnt_reset[4]~DUPLICATE_q\;
\ALT_INV_i_ButtonInput~input_o\ <= NOT \i_ButtonInput~input_o\;
\dc_register|ALT_INV_cross~1_combout\ <= NOT \dc_register|cross~1_combout\;
\dc_register|ALT_INV_LessThan0~2_combout\ <= NOT \dc_register|LessThan0~2_combout\;
\spi_comp|ALT_INV_r_tx_data~2_combout\ <= NOT \spi_comp|r_tx_data~2_combout\;
\dc_preparator|ALT_INV_Selector56~0_combout\ <= NOT \dc_preparator|Selector56~0_combout\;
\dc_preparator|ALT_INV_Selector55~0_combout\ <= NOT \dc_preparator|Selector55~0_combout\;
\dc_preparator|ALT_INV_Selector54~2_combout\ <= NOT \dc_preparator|Selector54~2_combout\;
\dc_preparator|ALT_INV_Selector54~1_combout\ <= NOT \dc_preparator|Selector54~1_combout\;
\dc_preparator|ALT_INV_Selector54~0_combout\ <= NOT \dc_preparator|Selector54~0_combout\;
\dc_preparator|ALT_INV_Selector53~1_combout\ <= NOT \dc_preparator|Selector53~1_combout\;
\dc_preparator|ALT_INV_Selector53~0_combout\ <= NOT \dc_preparator|Selector53~0_combout\;
\dc_preparator|ALT_INV_Selector52~0_combout\ <= NOT \dc_preparator|Selector52~0_combout\;
\dc_preparator|ALT_INV_Selector51~1_combout\ <= NOT \dc_preparator|Selector51~1_combout\;
\dc_preparator|ALT_INV_Selector51~0_combout\ <= NOT \dc_preparator|Selector51~0_combout\;
\dc_register|detector|ALT_INV_state_reg.s0~q\ <= NOT \dc_register|detector|state_reg.s0~q\;
\dc_register|detector|ALT_INV_LessThan0~0_combout\ <= NOT \dc_register|detector|LessThan0~0_combout\;
\dc_preparator|ALT_INV_Selector49~0_combout\ <= NOT \dc_preparator|Selector49~0_combout\;
\dc_register|detector|ALT_INV_state_reg.s1~q\ <= NOT \dc_register|detector|state_reg.s1~q\;
\dc_preparator|ALT_INV_Selector48~0_combout\ <= NOT \dc_preparator|Selector48~0_combout\;
\dc_preparator|ALT_INV_state_reg.idle1~q\ <= NOT \dc_preparator|state_reg.idle1~q\;
\dc_preparator|ALT_INV_state_reg.idleplus~q\ <= NOT \dc_preparator|state_reg.idleplus~q\;
\dc_preparator|ALT_INV_state_reg.s7~q\ <= NOT \dc_preparator|state_reg.s7~q\;
\dc_register|ALT_INV_state_reg.s0~q\ <= NOT \dc_register|state_reg.s0~q\;
\dc_register|detector|ALT_INV_state_reg.s2~q\ <= NOT \dc_register|detector|state_reg.s2~q\;
\dc_preparator|ALT_INV_Selector47~0_combout\ <= NOT \dc_preparator|Selector47~0_combout\;
\dc_preparator|ALT_INV_state_reg.idle2~q\ <= NOT \dc_preparator|state_reg.idle2~q\;
\dc_preparator|ALT_INV_state_reg.idleplusplus~q\ <= NOT \dc_preparator|state_reg.idleplusplus~q\;
\dc_preparator|ALT_INV_state_reg.idle3~q\ <= NOT \dc_preparator|state_reg.idle3~q\;
\dc_preparator|ALT_INV_state_reg.s6~q\ <= NOT \dc_preparator|state_reg.s6~q\;
\dc_register|ALT_INV_LessThan0~1_combout\ <= NOT \dc_register|LessThan0~1_combout\;
\dc_register|ALT_INV_LessThan0~0_combout\ <= NOT \dc_register|LessThan0~0_combout\;
\dc_register|ALT_INV_state_reg.s2~q\ <= NOT \dc_register|state_reg.s2~q\;
\dc_register|detector|ALT_INV_state_reg.s3~q\ <= NOT \dc_register|detector|state_reg.s3~q\;
\dc_time|ALT_INV_timer\(0) <= NOT \dc_time|timer\(0);
\dc_preparator|ALT_INV_state_reg.zero1~q\ <= NOT \dc_preparator|state_reg.zero1~q\;
\dc_preparator|ALT_INV_state_reg.s5~q\ <= NOT \dc_preparator|state_reg.s5~q\;
\dc_preparator|ALT_INV_state_reg.idle2~DUPLICATE_q\ <= NOT \dc_preparator|state_reg.idle2~DUPLICATE_q\;
\dc_preparator|ALT_INV_state_reg.idle3~DUPLICATE_q\ <= NOT \dc_preparator|state_reg.idle3~DUPLICATE_q\;
\dc_register|ALT_INV_state_reg.s2~DUPLICATE_q\ <= NOT \dc_register|state_reg.s2~DUPLICATE_q\;
\dc_preparator|ALT_INV_state_reg.zero1~DUPLICATE_q\ <= NOT \dc_preparator|state_reg.zero1~DUPLICATE_q\;
\dc_preparator|ALT_INV_state_reg.s5~DUPLICATE_q\ <= NOT \dc_preparator|state_reg.s5~DUPLICATE_q\;
\dc_preparator|ALT_INV_state_reg.zero8~DUPLICATE_q\ <= NOT \dc_preparator|state_reg.zero8~DUPLICATE_q\;
\dc_converter|ALT_INV_state_reg.idle~DUPLICATE_q\ <= NOT \dc_converter|state_reg.idle~DUPLICATE_q\;
\dc_preparator|ALT_INV_wait_cnt[0]~DUPLICATE_q\ <= NOT \dc_preparator|wait_cnt[0]~DUPLICATE_q\;
\dc_preparator|ALT_INV_wait_cnt[5]~DUPLICATE_q\ <= NOT \dc_preparator|wait_cnt[5]~DUPLICATE_q\;
\dc_preparator|ALT_INV_wait_cnt[6]~DUPLICATE_q\ <= NOT \dc_preparator|wait_cnt[6]~DUPLICATE_q\;

-- Location: IOOBUF_X68_Y0_N2
\sclk_dc~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \spi_comp|ALT_INV_o_sclk~q\,
	devoe => ww_devoe,
	o => ww_sclk_dc);

-- Location: IOOBUF_X64_Y0_N19
\ss_dc~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \spi_comp|ALT_INV_o_ss~q\,
	devoe => ww_devoe,
	o => ww_ss_dc);

-- Location: IOOBUF_X64_Y0_N2
\mosi_dc~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \spi_comp|ALT_INV_o_mosi~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_mosi_dc);

-- Location: IOIBUF_X32_Y0_N1
\i_Clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_Clock,
	o => \i_Clock~input_o\);

-- Location: CLKCTRL_G7
\i_Clock~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \i_Clock~input_o\,
	outclk => \i_Clock~inputCLKENA0_outclk\);

-- Location: LABCELL_X66_Y6_N9
\dc_time|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_time|Add0~89_sumout\ = SUM(( \dc_time|timer\(3) ) + ( GND ) + ( \dc_time|Add0~86\ ))
-- \dc_time|Add0~90\ = CARRY(( \dc_time|timer\(3) ) + ( GND ) + ( \dc_time|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dc_time|ALT_INV_timer\(3),
	cin => \dc_time|Add0~86\,
	sumout => \dc_time|Add0~89_sumout\,
	cout => \dc_time|Add0~90\);

-- Location: LABCELL_X66_Y6_N12
\dc_time|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_time|Add0~81_sumout\ = SUM(( \dc_time|timer\(4) ) + ( GND ) + ( \dc_time|Add0~90\ ))
-- \dc_time|Add0~82\ = CARRY(( \dc_time|timer\(4) ) + ( GND ) + ( \dc_time|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dc_time|ALT_INV_timer\(4),
	cin => \dc_time|Add0~90\,
	sumout => \dc_time|Add0~81_sumout\,
	cout => \dc_time|Add0~82\);

-- Location: LABCELL_X66_Y5_N12
\dc_time|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_time|Add0~93_sumout\ = SUM(( \dc_time|timer\(24) ) + ( GND ) + ( \dc_time|Add0~30\ ))
-- \dc_time|Add0~94\ = CARRY(( \dc_time|timer\(24) ) + ( GND ) + ( \dc_time|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dc_time|ALT_INV_timer\(24),
	cin => \dc_time|Add0~30\,
	sumout => \dc_time|Add0~93_sumout\,
	cout => \dc_time|Add0~94\);

-- Location: LABCELL_X66_Y5_N15
\dc_time|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_time|Add0~97_sumout\ = SUM(( \dc_time|timer\(25) ) + ( GND ) + ( \dc_time|Add0~94\ ))
-- \dc_time|Add0~98\ = CARRY(( \dc_time|timer\(25) ) + ( GND ) + ( \dc_time|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dc_time|ALT_INV_timer\(25),
	cin => \dc_time|Add0~94\,
	sumout => \dc_time|Add0~97_sumout\,
	cout => \dc_time|Add0~98\);

-- Location: FF_X66_Y5_N17
\dc_time|timer[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clock~inputCLKENA0_outclk\,
	d => \dc_time|Add0~97_sumout\,
	sclr => \dc_time|timer~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_time|timer\(25));

-- Location: LABCELL_X66_Y5_N18
\dc_time|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_time|Add0~101_sumout\ = SUM(( \dc_time|timer\(26) ) + ( GND ) + ( \dc_time|Add0~98\ ))
-- \dc_time|Add0~102\ = CARRY(( \dc_time|timer\(26) ) + ( GND ) + ( \dc_time|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dc_time|ALT_INV_timer\(26),
	cin => \dc_time|Add0~98\,
	sumout => \dc_time|Add0~101_sumout\,
	cout => \dc_time|Add0~102\);

-- Location: FF_X66_Y5_N20
\dc_time|timer[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clock~inputCLKENA0_outclk\,
	d => \dc_time|Add0~101_sumout\,
	sclr => \dc_time|timer~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_time|timer\(26));

-- Location: LABCELL_X66_Y5_N21
\dc_time|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_time|Add0~105_sumout\ = SUM(( \dc_time|timer\(27) ) + ( GND ) + ( \dc_time|Add0~102\ ))
-- \dc_time|Add0~106\ = CARRY(( \dc_time|timer\(27) ) + ( GND ) + ( \dc_time|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \dc_time|ALT_INV_timer\(27),
	cin => \dc_time|Add0~102\,
	sumout => \dc_time|Add0~105_sumout\,
	cout => \dc_time|Add0~106\);

-- Location: FF_X66_Y5_N23
\dc_time|timer[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clock~inputCLKENA0_outclk\,
	d => \dc_time|Add0~105_sumout\,
	sclr => \dc_time|timer~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_time|timer\(27));

-- Location: LABCELL_X66_Y5_N24
\dc_time|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_time|Add0~109_sumout\ = SUM(( \dc_time|timer\(28) ) + ( GND ) + ( \dc_time|Add0~106\ ))
-- \dc_time|Add0~110\ = CARRY(( \dc_time|timer\(28) ) + ( GND ) + ( \dc_time|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dc_time|ALT_INV_timer\(28),
	cin => \dc_time|Add0~106\,
	sumout => \dc_time|Add0~109_sumout\,
	cout => \dc_time|Add0~110\);

-- Location: FF_X66_Y5_N26
\dc_time|timer[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clock~inputCLKENA0_outclk\,
	d => \dc_time|Add0~109_sumout\,
	sclr => \dc_time|timer~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_time|timer\(28));

-- Location: LABCELL_X66_Y5_N27
\dc_time|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_time|Add0~117_sumout\ = SUM(( \dc_time|timer\(29) ) + ( GND ) + ( \dc_time|Add0~110\ ))
-- \dc_time|Add0~118\ = CARRY(( \dc_time|timer\(29) ) + ( GND ) + ( \dc_time|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \dc_time|ALT_INV_timer\(29),
	cin => \dc_time|Add0~110\,
	sumout => \dc_time|Add0~117_sumout\,
	cout => \dc_time|Add0~118\);

-- Location: FF_X66_Y5_N29
\dc_time|timer[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clock~inputCLKENA0_outclk\,
	d => \dc_time|Add0~117_sumout\,
	sclr => \dc_time|timer~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_time|timer\(29));

-- Location: LABCELL_X66_Y5_N30
\dc_time|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_time|Add0~113_sumout\ = SUM(( \dc_time|timer\(30) ) + ( GND ) + ( \dc_time|Add0~118\ ))
-- \dc_time|Add0~114\ = CARRY(( \dc_time|timer\(30) ) + ( GND ) + ( \dc_time|Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dc_time|ALT_INV_timer\(30),
	cin => \dc_time|Add0~118\,
	sumout => \dc_time|Add0~113_sumout\,
	cout => \dc_time|Add0~114\);

-- Location: FF_X66_Y5_N32
\dc_time|timer[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clock~inputCLKENA0_outclk\,
	d => \dc_time|Add0~113_sumout\,
	sclr => \dc_time|timer~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_time|timer\(30));

-- Location: LABCELL_X66_Y5_N33
\dc_time|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_time|Add0~1_sumout\ = SUM(( \dc_time|timer\(31) ) + ( GND ) + ( \dc_time|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_time|ALT_INV_timer\(31),
	cin => \dc_time|Add0~114\,
	sumout => \dc_time|Add0~1_sumout\);

-- Location: FF_X66_Y5_N35
\dc_time|timer[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clock~inputCLKENA0_outclk\,
	d => \dc_time|Add0~1_sumout\,
	sclr => \dc_time|timer~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_time|timer\(31));

-- Location: MLABCELL_X65_Y6_N39
\dc_time|LessThan1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_time|LessThan1~1_combout\ = ( !\dc_time|timer\(16) & ( !\dc_time|timer\(13) & ( (!\dc_time|timer\(17) & (!\dc_time|timer\(14) & !\dc_time|timer\(15))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_time|ALT_INV_timer\(17),
	datac => \dc_time|ALT_INV_timer\(14),
	datad => \dc_time|ALT_INV_timer\(15),
	datae => \dc_time|ALT_INV_timer\(16),
	dataf => \dc_time|ALT_INV_timer\(13),
	combout => \dc_time|LessThan1~1_combout\);

-- Location: MLABCELL_X65_Y6_N57
\dc_time|LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_time|LessThan1~0_combout\ = ( !\dc_time|timer\(23) & ( !\dc_time|timer\(20) & ( (!\dc_time|timer\(21) & (!\dc_time|timer\(19) & !\dc_time|timer\(22))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_time|ALT_INV_timer\(21),
	datac => \dc_time|ALT_INV_timer\(19),
	datad => \dc_time|ALT_INV_timer\(22),
	datae => \dc_time|ALT_INV_timer\(23),
	dataf => \dc_time|ALT_INV_timer\(20),
	combout => \dc_time|LessThan1~0_combout\);

-- Location: MLABCELL_X65_Y6_N6
\dc_time|LessThan1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_time|LessThan1~2_combout\ = ( !\dc_time|timer\(10) & ( \dc_time|LessThan1~0_combout\ & ( (!\dc_time|timer\(11) & (!\dc_time|timer\(18) & (!\dc_time|timer\(12) & \dc_time|LessThan1~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_time|ALT_INV_timer\(11),
	datab => \dc_time|ALT_INV_timer\(18),
	datac => \dc_time|ALT_INV_timer\(12),
	datad => \dc_time|ALT_INV_LessThan1~1_combout\,
	datae => \dc_time|ALT_INV_timer\(10),
	dataf => \dc_time|ALT_INV_LessThan1~0_combout\,
	combout => \dc_time|LessThan1~2_combout\);

-- Location: MLABCELL_X65_Y6_N42
\dc_time|timer~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_time|timer~2_combout\ = ( \dc_time|timer\(24) & ( \dc_time|LessThan1~2_combout\ & ( !\dc_time|timer\(31) ) ) ) # ( !\dc_time|timer\(24) & ( \dc_time|LessThan1~2_combout\ & ( (!\dc_time|timer\(31) & !\dc_time|timer~1_combout\) ) ) ) # ( 
-- \dc_time|timer\(24) & ( !\dc_time|LessThan1~2_combout\ & ( !\dc_time|timer\(31) ) ) ) # ( !\dc_time|timer\(24) & ( !\dc_time|LessThan1~2_combout\ & ( !\dc_time|timer\(31) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011000000110000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dc_time|ALT_INV_timer\(31),
	datac => \dc_time|ALT_INV_timer~1_combout\,
	datae => \dc_time|ALT_INV_timer\(24),
	dataf => \dc_time|ALT_INV_LessThan1~2_combout\,
	combout => \dc_time|timer~2_combout\);

-- Location: FF_X66_Y6_N14
\dc_time|timer[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clock~inputCLKENA0_outclk\,
	d => \dc_time|Add0~81_sumout\,
	sclr => \dc_time|timer~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_time|timer\(4));

-- Location: LABCELL_X66_Y6_N15
\dc_time|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_time|Add0~65_sumout\ = SUM(( \dc_time|timer\(5) ) + ( GND ) + ( \dc_time|Add0~82\ ))
-- \dc_time|Add0~66\ = CARRY(( \dc_time|timer\(5) ) + ( GND ) + ( \dc_time|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dc_time|ALT_INV_timer\(5),
	cin => \dc_time|Add0~82\,
	sumout => \dc_time|Add0~65_sumout\,
	cout => \dc_time|Add0~66\);

-- Location: FF_X66_Y6_N17
\dc_time|timer[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clock~inputCLKENA0_outclk\,
	d => \dc_time|Add0~65_sumout\,
	sclr => \dc_time|timer~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_time|timer\(5));

-- Location: LABCELL_X66_Y6_N18
\dc_time|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_time|Add0~69_sumout\ = SUM(( \dc_time|timer\(6) ) + ( GND ) + ( \dc_time|Add0~66\ ))
-- \dc_time|Add0~70\ = CARRY(( \dc_time|timer\(6) ) + ( GND ) + ( \dc_time|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dc_time|ALT_INV_timer\(6),
	cin => \dc_time|Add0~66\,
	sumout => \dc_time|Add0~69_sumout\,
	cout => \dc_time|Add0~70\);

-- Location: FF_X66_Y6_N20
\dc_time|timer[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clock~inputCLKENA0_outclk\,
	d => \dc_time|Add0~69_sumout\,
	sclr => \dc_time|timer~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_time|timer\(6));

-- Location: LABCELL_X66_Y6_N21
\dc_time|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_time|Add0~77_sumout\ = SUM(( \dc_time|timer\(7) ) + ( GND ) + ( \dc_time|Add0~70\ ))
-- \dc_time|Add0~78\ = CARRY(( \dc_time|timer\(7) ) + ( GND ) + ( \dc_time|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \dc_time|ALT_INV_timer\(7),
	cin => \dc_time|Add0~70\,
	sumout => \dc_time|Add0~77_sumout\,
	cout => \dc_time|Add0~78\);

-- Location: FF_X66_Y6_N23
\dc_time|timer[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clock~inputCLKENA0_outclk\,
	d => \dc_time|Add0~77_sumout\,
	sclr => \dc_time|timer~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_time|timer\(7));

-- Location: LABCELL_X66_Y6_N24
\dc_time|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_time|Add0~73_sumout\ = SUM(( \dc_time|timer\(8) ) + ( GND ) + ( \dc_time|Add0~78\ ))
-- \dc_time|Add0~74\ = CARRY(( \dc_time|timer\(8) ) + ( GND ) + ( \dc_time|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dc_time|ALT_INV_timer\(8),
	cin => \dc_time|Add0~78\,
	sumout => \dc_time|Add0~73_sumout\,
	cout => \dc_time|Add0~74\);

-- Location: FF_X66_Y6_N26
\dc_time|timer[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clock~inputCLKENA0_outclk\,
	d => \dc_time|Add0~73_sumout\,
	sclr => \dc_time|timer~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_time|timer\(8));

-- Location: LABCELL_X66_Y6_N27
\dc_time|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_time|Add0~61_sumout\ = SUM(( \dc_time|timer\(9) ) + ( GND ) + ( \dc_time|Add0~74\ ))
-- \dc_time|Add0~62\ = CARRY(( \dc_time|timer\(9) ) + ( GND ) + ( \dc_time|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \dc_time|ALT_INV_timer\(9),
	cin => \dc_time|Add0~74\,
	sumout => \dc_time|Add0~61_sumout\,
	cout => \dc_time|Add0~62\);

-- Location: FF_X66_Y6_N29
\dc_time|timer[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clock~inputCLKENA0_outclk\,
	d => \dc_time|Add0~61_sumout\,
	sclr => \dc_time|timer~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_time|timer\(9));

-- Location: LABCELL_X66_Y6_N30
\dc_time|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_time|Add0~9_sumout\ = SUM(( \dc_time|timer\(10) ) + ( GND ) + ( \dc_time|Add0~62\ ))
-- \dc_time|Add0~10\ = CARRY(( \dc_time|timer\(10) ) + ( GND ) + ( \dc_time|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \dc_time|ALT_INV_timer\(10),
	cin => \dc_time|Add0~62\,
	sumout => \dc_time|Add0~9_sumout\,
	cout => \dc_time|Add0~10\);

-- Location: FF_X66_Y6_N32
\dc_time|timer[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clock~inputCLKENA0_outclk\,
	d => \dc_time|Add0~9_sumout\,
	sclr => \dc_time|timer~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_time|timer\(10));

-- Location: LABCELL_X66_Y6_N33
\dc_time|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_time|Add0~5_sumout\ = SUM(( \dc_time|timer\(11) ) + ( GND ) + ( \dc_time|Add0~10\ ))
-- \dc_time|Add0~6\ = CARRY(( \dc_time|timer\(11) ) + ( GND ) + ( \dc_time|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_time|ALT_INV_timer\(11),
	cin => \dc_time|Add0~10\,
	sumout => \dc_time|Add0~5_sumout\,
	cout => \dc_time|Add0~6\);

-- Location: FF_X66_Y6_N35
\dc_time|timer[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clock~inputCLKENA0_outclk\,
	d => \dc_time|Add0~5_sumout\,
	sclr => \dc_time|timer~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_time|timer\(11));

-- Location: LABCELL_X66_Y6_N36
\dc_time|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_time|Add0~37_sumout\ = SUM(( \dc_time|timer\(12) ) + ( GND ) + ( \dc_time|Add0~6\ ))
-- \dc_time|Add0~38\ = CARRY(( \dc_time|timer\(12) ) + ( GND ) + ( \dc_time|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \dc_time|ALT_INV_timer\(12),
	cin => \dc_time|Add0~6\,
	sumout => \dc_time|Add0~37_sumout\,
	cout => \dc_time|Add0~38\);

-- Location: FF_X66_Y6_N38
\dc_time|timer[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clock~inputCLKENA0_outclk\,
	d => \dc_time|Add0~37_sumout\,
	sclr => \dc_time|timer~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_time|timer\(12));

-- Location: LABCELL_X66_Y6_N39
\dc_time|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_time|Add0~41_sumout\ = SUM(( \dc_time|timer\(13) ) + ( GND ) + ( \dc_time|Add0~38\ ))
-- \dc_time|Add0~42\ = CARRY(( \dc_time|timer\(13) ) + ( GND ) + ( \dc_time|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dc_time|ALT_INV_timer\(13),
	cin => \dc_time|Add0~38\,
	sumout => \dc_time|Add0~41_sumout\,
	cout => \dc_time|Add0~42\);

-- Location: FF_X66_Y6_N41
\dc_time|timer[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clock~inputCLKENA0_outclk\,
	d => \dc_time|Add0~41_sumout\,
	sclr => \dc_time|timer~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_time|timer\(13));

-- Location: LABCELL_X66_Y6_N42
\dc_time|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_time|Add0~45_sumout\ = SUM(( \dc_time|timer\(14) ) + ( GND ) + ( \dc_time|Add0~42\ ))
-- \dc_time|Add0~46\ = CARRY(( \dc_time|timer\(14) ) + ( GND ) + ( \dc_time|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dc_time|ALT_INV_timer\(14),
	cin => \dc_time|Add0~42\,
	sumout => \dc_time|Add0~45_sumout\,
	cout => \dc_time|Add0~46\);

-- Location: FF_X66_Y6_N44
\dc_time|timer[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clock~inputCLKENA0_outclk\,
	d => \dc_time|Add0~45_sumout\,
	sclr => \dc_time|timer~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_time|timer\(14));

-- Location: LABCELL_X66_Y6_N45
\dc_time|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_time|Add0~49_sumout\ = SUM(( \dc_time|timer\(15) ) + ( GND ) + ( \dc_time|Add0~46\ ))
-- \dc_time|Add0~50\ = CARRY(( \dc_time|timer\(15) ) + ( GND ) + ( \dc_time|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \dc_time|ALT_INV_timer\(15),
	cin => \dc_time|Add0~46\,
	sumout => \dc_time|Add0~49_sumout\,
	cout => \dc_time|Add0~50\);

-- Location: FF_X66_Y6_N47
\dc_time|timer[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clock~inputCLKENA0_outclk\,
	d => \dc_time|Add0~49_sumout\,
	sclr => \dc_time|timer~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_time|timer\(15));

-- Location: LABCELL_X66_Y6_N48
\dc_time|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_time|Add0~57_sumout\ = SUM(( \dc_time|timer\(16) ) + ( GND ) + ( \dc_time|Add0~50\ ))
-- \dc_time|Add0~58\ = CARRY(( \dc_time|timer\(16) ) + ( GND ) + ( \dc_time|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dc_time|ALT_INV_timer\(16),
	cin => \dc_time|Add0~50\,
	sumout => \dc_time|Add0~57_sumout\,
	cout => \dc_time|Add0~58\);

-- Location: FF_X66_Y6_N50
\dc_time|timer[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clock~inputCLKENA0_outclk\,
	d => \dc_time|Add0~57_sumout\,
	sclr => \dc_time|timer~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_time|timer\(16));

-- Location: LABCELL_X66_Y6_N51
\dc_time|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_time|Add0~53_sumout\ = SUM(( \dc_time|timer\(17) ) + ( GND ) + ( \dc_time|Add0~58\ ))
-- \dc_time|Add0~54\ = CARRY(( \dc_time|timer\(17) ) + ( GND ) + ( \dc_time|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_time|ALT_INV_timer\(17),
	cin => \dc_time|Add0~58\,
	sumout => \dc_time|Add0~53_sumout\,
	cout => \dc_time|Add0~54\);

-- Location: FF_X66_Y6_N53
\dc_time|timer[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clock~inputCLKENA0_outclk\,
	d => \dc_time|Add0~53_sumout\,
	sclr => \dc_time|timer~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_time|timer\(17));

-- Location: LABCELL_X66_Y6_N54
\dc_time|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_time|Add0~13_sumout\ = SUM(( \dc_time|timer\(18) ) + ( GND ) + ( \dc_time|Add0~54\ ))
-- \dc_time|Add0~14\ = CARRY(( \dc_time|timer\(18) ) + ( GND ) + ( \dc_time|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dc_time|ALT_INV_timer\(18),
	cin => \dc_time|Add0~54\,
	sumout => \dc_time|Add0~13_sumout\,
	cout => \dc_time|Add0~14\);

-- Location: FF_X66_Y6_N56
\dc_time|timer[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clock~inputCLKENA0_outclk\,
	d => \dc_time|Add0~13_sumout\,
	sclr => \dc_time|timer~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_time|timer\(18));

-- Location: LABCELL_X66_Y6_N57
\dc_time|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_time|Add0~17_sumout\ = SUM(( \dc_time|timer\(19) ) + ( GND ) + ( \dc_time|Add0~14\ ))
-- \dc_time|Add0~18\ = CARRY(( \dc_time|timer\(19) ) + ( GND ) + ( \dc_time|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dc_time|ALT_INV_timer\(19),
	cin => \dc_time|Add0~14\,
	sumout => \dc_time|Add0~17_sumout\,
	cout => \dc_time|Add0~18\);

-- Location: FF_X66_Y6_N59
\dc_time|timer[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clock~inputCLKENA0_outclk\,
	d => \dc_time|Add0~17_sumout\,
	sclr => \dc_time|timer~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_time|timer\(19));

-- Location: LABCELL_X66_Y5_N0
\dc_time|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_time|Add0~21_sumout\ = SUM(( \dc_time|timer\(20) ) + ( GND ) + ( \dc_time|Add0~18\ ))
-- \dc_time|Add0~22\ = CARRY(( \dc_time|timer\(20) ) + ( GND ) + ( \dc_time|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dc_time|ALT_INV_timer\(20),
	cin => \dc_time|Add0~18\,
	sumout => \dc_time|Add0~21_sumout\,
	cout => \dc_time|Add0~22\);

-- Location: FF_X66_Y5_N2
\dc_time|timer[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clock~inputCLKENA0_outclk\,
	d => \dc_time|Add0~21_sumout\,
	sclr => \dc_time|timer~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_time|timer\(20));

-- Location: LABCELL_X66_Y5_N3
\dc_time|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_time|Add0~25_sumout\ = SUM(( \dc_time|timer\(21) ) + ( GND ) + ( \dc_time|Add0~22\ ))
-- \dc_time|Add0~26\ = CARRY(( \dc_time|timer\(21) ) + ( GND ) + ( \dc_time|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \dc_time|ALT_INV_timer\(21),
	cin => \dc_time|Add0~22\,
	sumout => \dc_time|Add0~25_sumout\,
	cout => \dc_time|Add0~26\);

-- Location: FF_X66_Y5_N5
\dc_time|timer[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clock~inputCLKENA0_outclk\,
	d => \dc_time|Add0~25_sumout\,
	sclr => \dc_time|timer~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_time|timer\(21));

-- Location: LABCELL_X66_Y5_N6
\dc_time|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_time|Add0~33_sumout\ = SUM(( \dc_time|timer\(22) ) + ( GND ) + ( \dc_time|Add0~26\ ))
-- \dc_time|Add0~34\ = CARRY(( \dc_time|timer\(22) ) + ( GND ) + ( \dc_time|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dc_time|ALT_INV_timer\(22),
	cin => \dc_time|Add0~26\,
	sumout => \dc_time|Add0~33_sumout\,
	cout => \dc_time|Add0~34\);

-- Location: FF_X66_Y5_N8
\dc_time|timer[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clock~inputCLKENA0_outclk\,
	d => \dc_time|Add0~33_sumout\,
	sclr => \dc_time|timer~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_time|timer\(22));

-- Location: LABCELL_X66_Y5_N9
\dc_time|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_time|Add0~29_sumout\ = SUM(( \dc_time|timer\(23) ) + ( GND ) + ( \dc_time|Add0~34\ ))
-- \dc_time|Add0~30\ = CARRY(( \dc_time|timer\(23) ) + ( GND ) + ( \dc_time|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dc_time|ALT_INV_timer\(23),
	cin => \dc_time|Add0~34\,
	sumout => \dc_time|Add0~29_sumout\,
	cout => \dc_time|Add0~30\);

-- Location: FF_X66_Y5_N11
\dc_time|timer[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clock~inputCLKENA0_outclk\,
	d => \dc_time|Add0~29_sumout\,
	sclr => \dc_time|timer~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_time|timer\(23));

-- Location: FF_X66_Y5_N14
\dc_time|timer[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clock~inputCLKENA0_outclk\,
	d => \dc_time|Add0~93_sumout\,
	sclr => \dc_time|timer~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_time|timer\(24));

-- Location: LABCELL_X66_Y6_N0
\dc_time|Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_time|Add0~125_sumout\ = SUM(( \dc_time|timer\(0) ) + ( VCC ) + ( !VCC ))
-- \dc_time|Add0~126\ = CARRY(( \dc_time|timer\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \dc_time|ALT_INV_timer\(0),
	cin => GND,
	sumout => \dc_time|Add0~125_sumout\,
	cout => \dc_time|Add0~126\);

-- Location: MLABCELL_X65_Y6_N33
\dc_time|timer~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_time|timer~3_combout\ = ( \dc_time|timer\(31) & ( \dc_time|LessThan1~2_combout\ & ( \dc_time|Add0~125_sumout\ ) ) ) # ( !\dc_time|timer\(31) & ( \dc_time|LessThan1~2_combout\ & ( ((!\dc_time|timer~1_combout\) # (\dc_time|Add0~125_sumout\)) # 
-- (\dc_time|timer\(24)) ) ) ) # ( \dc_time|timer\(31) & ( !\dc_time|LessThan1~2_combout\ & ( \dc_time|Add0~125_sumout\ ) ) ) # ( !\dc_time|timer\(31) & ( !\dc_time|LessThan1~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111001100110011001111111111011101110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_time|ALT_INV_timer\(24),
	datab => \dc_time|ALT_INV_Add0~125_sumout\,
	datad => \dc_time|ALT_INV_timer~1_combout\,
	datae => \dc_time|ALT_INV_timer\(31),
	dataf => \dc_time|ALT_INV_LessThan1~2_combout\,
	combout => \dc_time|timer~3_combout\);

-- Location: FF_X65_Y6_N34
\dc_time|timer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clock~inputCLKENA0_outclk\,
	d => \dc_time|timer~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_time|timer\(0));

-- Location: LABCELL_X66_Y6_N3
\dc_time|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_time|Add0~121_sumout\ = SUM(( \dc_time|timer\(1) ) + ( GND ) + ( \dc_time|Add0~126\ ))
-- \dc_time|Add0~122\ = CARRY(( \dc_time|timer\(1) ) + ( GND ) + ( \dc_time|Add0~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \dc_time|ALT_INV_timer\(1),
	cin => \dc_time|Add0~126\,
	sumout => \dc_time|Add0~121_sumout\,
	cout => \dc_time|Add0~122\);

-- Location: FF_X66_Y6_N5
\dc_time|timer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clock~inputCLKENA0_outclk\,
	d => \dc_time|Add0~121_sumout\,
	sclr => \dc_time|timer~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_time|timer\(1));

-- Location: LABCELL_X66_Y6_N6
\dc_time|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_time|Add0~85_sumout\ = SUM(( \dc_time|timer\(2) ) + ( GND ) + ( \dc_time|Add0~122\ ))
-- \dc_time|Add0~86\ = CARRY(( \dc_time|timer\(2) ) + ( GND ) + ( \dc_time|Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dc_time|ALT_INV_timer\(2),
	cin => \dc_time|Add0~122\,
	sumout => \dc_time|Add0~85_sumout\,
	cout => \dc_time|Add0~86\);

-- Location: FF_X66_Y6_N8
\dc_time|timer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clock~inputCLKENA0_outclk\,
	d => \dc_time|Add0~85_sumout\,
	sclr => \dc_time|timer~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_time|timer\(2));

-- Location: FF_X66_Y6_N11
\dc_time|timer[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clock~inputCLKENA0_outclk\,
	d => \dc_time|Add0~89_sumout\,
	sclr => \dc_time|timer~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_time|timer\(3));

-- Location: MLABCELL_X65_Y6_N15
\dc_time|LessThan1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_time|LessThan1~3_combout\ = ( \dc_time|timer\(7) & ( (\dc_time|timer\(6) & (\dc_time|timer\(8) & \dc_time|timer\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001100000000000000000000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dc_time|ALT_INV_timer\(6),
	datac => \dc_time|ALT_INV_timer\(8),
	datad => \dc_time|ALT_INV_timer\(5),
	datae => \dc_time|ALT_INV_timer\(7),
	combout => \dc_time|LessThan1~3_combout\);

-- Location: LABCELL_X66_Y5_N48
\dc_time|timer~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_time|timer~0_combout\ = ( !\dc_time|timer\(30) & ( (!\dc_time|timer\(26) & (!\dc_time|timer\(27) & (!\dc_time|timer\(28) & !\dc_time|timer\(29)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_time|ALT_INV_timer\(26),
	datab => \dc_time|ALT_INV_timer\(27),
	datac => \dc_time|ALT_INV_timer\(28),
	datad => \dc_time|ALT_INV_timer\(29),
	dataf => \dc_time|ALT_INV_timer\(30),
	combout => \dc_time|timer~0_combout\);

-- Location: MLABCELL_X65_Y6_N18
\dc_time|timer~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_time|timer~1_combout\ = ( \dc_time|timer\(9) & ( \dc_time|timer~0_combout\ & ( (!\dc_time|timer\(25) & ((!\dc_time|LessThan1~3_combout\) # ((!\dc_time|timer\(3) & !\dc_time|timer\(4))))) ) ) ) # ( !\dc_time|timer\(9) & ( \dc_time|timer~0_combout\ & ( 
-- !\dc_time|timer\(25) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001110000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_time|ALT_INV_timer\(3),
	datab => \dc_time|ALT_INV_LessThan1~3_combout\,
	datac => \dc_time|ALT_INV_timer\(25),
	datad => \dc_time|ALT_INV_timer\(4),
	datae => \dc_time|ALT_INV_timer\(9),
	dataf => \dc_time|ALT_INV_timer~0_combout\,
	combout => \dc_time|timer~1_combout\);

-- Location: MLABCELL_X65_Y6_N48
\dc_time|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_time|LessThan0~0_combout\ = ( \dc_time|timer\(4) & ( (!\dc_time|timer\(9) & ((!\dc_time|LessThan1~3_combout\) # ((!\dc_time|timer\(3) & !\dc_time|timer\(2))))) ) ) # ( !\dc_time|timer\(4) & ( !\dc_time|timer\(9) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011101100000000001110110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_time|ALT_INV_timer\(3),
	datab => \dc_time|ALT_INV_LessThan1~3_combout\,
	datac => \dc_time|ALT_INV_timer\(2),
	datad => \dc_time|ALT_INV_timer\(9),
	dataf => \dc_time|ALT_INV_timer\(4),
	combout => \dc_time|LessThan0~0_combout\);

-- Location: MLABCELL_X65_Y6_N0
\dc_time|o_Clock\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_time|o_Clock~combout\ = LCELL(( \dc_time|timer\(31) & ( \dc_time|LessThan0~0_combout\ ) ) # ( !\dc_time|timer\(31) & ( \dc_time|LessThan0~0_combout\ ) ) # ( \dc_time|timer\(31) & ( !\dc_time|LessThan0~0_combout\ ) ) # ( !\dc_time|timer\(31) & ( 
-- !\dc_time|LessThan0~0_combout\ & ( (!\dc_time|timer~1_combout\) # ((!\dc_time|LessThan1~2_combout\) # (\dc_time|timer\(24))) ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110101111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_time|ALT_INV_timer~1_combout\,
	datac => \dc_time|ALT_INV_timer\(24),
	datad => \dc_time|ALT_INV_LessThan1~2_combout\,
	datae => \dc_time|ALT_INV_timer\(31),
	dataf => \dc_time|ALT_INV_LessThan0~0_combout\,
	combout => \dc_time|o_Clock~combout\);

-- Location: MLABCELL_X65_Y5_N0
\spi_comp|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi_comp|Add0~1_sumout\ = SUM(( \spi_comp|cnt_reset\(0) ) + ( VCC ) + ( !VCC ))
-- \spi_comp|Add0~2\ = CARRY(( \spi_comp|cnt_reset\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \spi_comp|ALT_INV_cnt_reset\(0),
	cin => GND,
	sumout => \spi_comp|Add0~1_sumout\,
	cout => \spi_comp|Add0~2\);

-- Location: MLABCELL_X65_Y5_N36
\spi_comp|cnt_reset[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi_comp|cnt_reset[0]~feeder_combout\ = \spi_comp|Add0~1_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi_comp|ALT_INV_Add0~1_sumout\,
	combout => \spi_comp|cnt_reset[0]~feeder_combout\);

-- Location: LABCELL_X64_Y4_N42
\~GND\ : cyclonev_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: IOIBUF_X12_Y0_N18
\i_Reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_Reset,
	o => \i_Reset~input_o\);

-- Location: CLKCTRL_G5
\i_Reset~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \i_Reset~input_o\,
	outclk => \i_Reset~inputCLKENA0_outclk\);

-- Location: MLABCELL_X65_Y5_N3
\spi_comp|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi_comp|Add0~25_sumout\ = SUM(( \spi_comp|cnt_reset\(1) ) + ( GND ) + ( \spi_comp|Add0~2\ ))
-- \spi_comp|Add0~26\ = CARRY(( \spi_comp|cnt_reset\(1) ) + ( GND ) + ( \spi_comp|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \spi_comp|ALT_INV_cnt_reset\(1),
	cin => \spi_comp|Add0~2\,
	sumout => \spi_comp|Add0~25_sumout\,
	cout => \spi_comp|Add0~26\);

-- Location: MLABCELL_X65_Y5_N57
\spi_comp|cnt_reset[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi_comp|cnt_reset[1]~feeder_combout\ = \spi_comp|Add0~25_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi_comp|ALT_INV_Add0~25_sumout\,
	combout => \spi_comp|cnt_reset[1]~feeder_combout\);

-- Location: FF_X65_Y5_N59
\spi_comp|cnt_reset[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	d => \spi_comp|cnt_reset[1]~feeder_combout\,
	asdata => \~GND~combout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sload => \spi_comp|r_st_present.ST_RESET~q\,
	ena => \spi_comp|cnt_reset[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_comp|cnt_reset\(1));

-- Location: MLABCELL_X65_Y5_N6
\spi_comp|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi_comp|Add0~21_sumout\ = SUM(( \spi_comp|cnt_reset\(2) ) + ( GND ) + ( \spi_comp|Add0~26\ ))
-- \spi_comp|Add0~22\ = CARRY(( \spi_comp|cnt_reset\(2) ) + ( GND ) + ( \spi_comp|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi_comp|ALT_INV_cnt_reset\(2),
	cin => \spi_comp|Add0~26\,
	sumout => \spi_comp|Add0~21_sumout\,
	cout => \spi_comp|Add0~22\);

-- Location: MLABCELL_X65_Y5_N48
\spi_comp|cnt_reset[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi_comp|cnt_reset[2]~feeder_combout\ = \spi_comp|Add0~21_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \spi_comp|ALT_INV_Add0~21_sumout\,
	combout => \spi_comp|cnt_reset[2]~feeder_combout\);

-- Location: FF_X65_Y5_N50
\spi_comp|cnt_reset[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	d => \spi_comp|cnt_reset[2]~feeder_combout\,
	asdata => \~GND~combout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sload => \spi_comp|r_st_present.ST_RESET~q\,
	ena => \spi_comp|cnt_reset[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_comp|cnt_reset\(2));

-- Location: MLABCELL_X65_Y5_N9
\spi_comp|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi_comp|Add0~17_sumout\ = SUM(( \spi_comp|cnt_reset\(3) ) + ( GND ) + ( \spi_comp|Add0~22\ ))
-- \spi_comp|Add0~18\ = CARRY(( \spi_comp|cnt_reset\(3) ) + ( GND ) + ( \spi_comp|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi_comp|ALT_INV_cnt_reset\(3),
	cin => \spi_comp|Add0~22\,
	sumout => \spi_comp|Add0~17_sumout\,
	cout => \spi_comp|Add0~18\);

-- Location: MLABCELL_X65_Y5_N30
\spi_comp|cnt_reset[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi_comp|cnt_reset[3]~feeder_combout\ = \spi_comp|Add0~17_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi_comp|ALT_INV_Add0~17_sumout\,
	combout => \spi_comp|cnt_reset[3]~feeder_combout\);

-- Location: FF_X65_Y5_N32
\spi_comp|cnt_reset[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	d => \spi_comp|cnt_reset[3]~feeder_combout\,
	asdata => \~GND~combout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sload => \spi_comp|r_st_present.ST_RESET~q\,
	ena => \spi_comp|cnt_reset[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_comp|cnt_reset\(3));

-- Location: MLABCELL_X65_Y5_N12
\spi_comp|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi_comp|Add0~13_sumout\ = SUM(( \spi_comp|cnt_reset[4]~DUPLICATE_q\ ) + ( GND ) + ( \spi_comp|Add0~18\ ))
-- \spi_comp|Add0~14\ = CARRY(( \spi_comp|cnt_reset[4]~DUPLICATE_q\ ) + ( GND ) + ( \spi_comp|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \spi_comp|ALT_INV_cnt_reset[4]~DUPLICATE_q\,
	cin => \spi_comp|Add0~18\,
	sumout => \spi_comp|Add0~13_sumout\,
	cout => \spi_comp|Add0~14\);

-- Location: MLABCELL_X65_Y5_N33
\spi_comp|cnt_reset[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi_comp|cnt_reset[4]~feeder_combout\ = \spi_comp|Add0~13_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi_comp|ALT_INV_Add0~13_sumout\,
	combout => \spi_comp|cnt_reset[4]~feeder_combout\);

-- Location: FF_X65_Y5_N34
\spi_comp|cnt_reset[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	d => \spi_comp|cnt_reset[4]~feeder_combout\,
	asdata => \~GND~combout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sload => \spi_comp|r_st_present.ST_RESET~q\,
	ena => \spi_comp|cnt_reset[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_comp|cnt_reset[4]~DUPLICATE_q\);

-- Location: MLABCELL_X65_Y5_N15
\spi_comp|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi_comp|Add0~9_sumout\ = SUM(( \spi_comp|cnt_reset\(5) ) + ( GND ) + ( \spi_comp|Add0~14\ ))
-- \spi_comp|Add0~10\ = CARRY(( \spi_comp|cnt_reset\(5) ) + ( GND ) + ( \spi_comp|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi_comp|ALT_INV_cnt_reset\(5),
	cin => \spi_comp|Add0~14\,
	sumout => \spi_comp|Add0~9_sumout\,
	cout => \spi_comp|Add0~10\);

-- Location: MLABCELL_X65_Y5_N51
\spi_comp|cnt_reset[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi_comp|cnt_reset[5]~feeder_combout\ = \spi_comp|Add0~9_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi_comp|ALT_INV_Add0~9_sumout\,
	combout => \spi_comp|cnt_reset[5]~feeder_combout\);

-- Location: FF_X65_Y5_N53
\spi_comp|cnt_reset[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	d => \spi_comp|cnt_reset[5]~feeder_combout\,
	asdata => \~GND~combout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sload => \spi_comp|r_st_present.ST_RESET~q\,
	ena => \spi_comp|cnt_reset[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_comp|cnt_reset\(5));

-- Location: MLABCELL_X65_Y5_N18
\spi_comp|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi_comp|Add0~5_sumout\ = SUM(( \spi_comp|cnt_reset\(6) ) + ( GND ) + ( \spi_comp|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi_comp|ALT_INV_cnt_reset\(6),
	cin => \spi_comp|Add0~10\,
	sumout => \spi_comp|Add0~5_sumout\);

-- Location: MLABCELL_X65_Y5_N54
\spi_comp|cnt_reset[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi_comp|cnt_reset[6]~feeder_combout\ = ( \spi_comp|Add0~5_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \spi_comp|ALT_INV_Add0~5_sumout\,
	combout => \spi_comp|cnt_reset[6]~feeder_combout\);

-- Location: FF_X65_Y5_N56
\spi_comp|cnt_reset[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	d => \spi_comp|cnt_reset[6]~feeder_combout\,
	asdata => \~GND~combout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sload => \spi_comp|r_st_present.ST_RESET~q\,
	ena => \spi_comp|cnt_reset[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_comp|cnt_reset\(6));

-- Location: FF_X65_Y5_N35
\spi_comp|cnt_reset[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	d => \spi_comp|cnt_reset[4]~feeder_combout\,
	asdata => \~GND~combout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sload => \spi_comp|r_st_present.ST_RESET~q\,
	ena => \spi_comp|cnt_reset[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_comp|cnt_reset\(4));

-- Location: MLABCELL_X65_Y5_N27
\spi_comp|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi_comp|Equal0~0_combout\ = ( \spi_comp|cnt_reset\(6) & ( !\spi_comp|cnt_reset\(4) & ( (!\spi_comp|cnt_reset\(2) & (!\spi_comp|cnt_reset\(1) & (!\spi_comp|cnt_reset\(3) & !\spi_comp|cnt_reset\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi_comp|ALT_INV_cnt_reset\(2),
	datab => \spi_comp|ALT_INV_cnt_reset\(1),
	datac => \spi_comp|ALT_INV_cnt_reset\(3),
	datad => \spi_comp|ALT_INV_cnt_reset\(5),
	datae => \spi_comp|ALT_INV_cnt_reset\(6),
	dataf => \spi_comp|ALT_INV_cnt_reset\(4),
	combout => \spi_comp|Equal0~0_combout\);

-- Location: MLABCELL_X65_Y5_N39
\spi_comp|cnt_reset[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi_comp|cnt_reset[2]~1_combout\ = ( \spi_comp|Equal0~0_combout\ & ( (\spi_comp|r_st_present.ST_RESET~q\) # (\spi_comp|cnt_reset\(0)) ) ) # ( !\spi_comp|Equal0~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi_comp|ALT_INV_cnt_reset\(0),
	datad => \spi_comp|ALT_INV_r_st_present.ST_RESET~q\,
	dataf => \spi_comp|ALT_INV_Equal0~0_combout\,
	combout => \spi_comp|cnt_reset[2]~1_combout\);

-- Location: FF_X65_Y5_N37
\spi_comp|cnt_reset[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	d => \spi_comp|cnt_reset[0]~feeder_combout\,
	asdata => \~GND~combout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sload => \spi_comp|r_st_present.ST_RESET~q\,
	ena => \spi_comp|cnt_reset[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_comp|cnt_reset\(0));

-- Location: FF_X66_Y4_N40
\spi_comp|r_counter_clock_ena\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	asdata => \spi_comp|r_st_present.ST_RESET~q\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_comp|r_counter_clock_ena~q\);

-- Location: LABCELL_X66_Y4_N12
\spi_comp|r_counter_clock~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi_comp|r_counter_clock~1_combout\ = ( \spi_comp|r_counter_clock[0]~DUPLICATE_q\ & ( (\spi_comp|r_counter_clock_ena~DUPLICATE_q\ & !\spi_comp|r_counter_clock\(1)) ) ) # ( !\spi_comp|r_counter_clock[0]~DUPLICATE_q\ & ( 
-- (\spi_comp|r_counter_clock_ena~DUPLICATE_q\ & \spi_comp|r_counter_clock\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi_comp|ALT_INV_r_counter_clock_ena~DUPLICATE_q\,
	datac => \spi_comp|ALT_INV_r_counter_clock\(1),
	dataf => \spi_comp|ALT_INV_r_counter_clock[0]~DUPLICATE_q\,
	combout => \spi_comp|r_counter_clock~1_combout\);

-- Location: FF_X66_Y4_N7
\spi_comp|r_counter_clock[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	asdata => \spi_comp|r_counter_clock~1_combout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_comp|r_counter_clock\(1));

-- Location: FF_X66_Y4_N4
\spi_comp|r_counter_clock[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	asdata => \spi_comp|r_counter_clock~2_combout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_comp|r_counter_clock\(0));

-- Location: LABCELL_X67_Y4_N42
\spi_comp|r_counter_clock~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi_comp|r_counter_clock~0_combout\ = ( \spi_comp|r_counter_clock\(1) & ( \spi_comp|r_counter_clock\(0) & ( (\spi_comp|r_counter_clock_ena~q\ & !\spi_comp|r_counter_clock\(2)) ) ) ) # ( !\spi_comp|r_counter_clock\(1) & ( \spi_comp|r_counter_clock\(0) & ( 
-- (\spi_comp|r_counter_clock_ena~q\ & \spi_comp|r_counter_clock\(2)) ) ) ) # ( \spi_comp|r_counter_clock\(1) & ( !\spi_comp|r_counter_clock\(0) & ( (\spi_comp|r_counter_clock_ena~q\ & \spi_comp|r_counter_clock\(2)) ) ) ) # ( !\spi_comp|r_counter_clock\(1) & 
-- ( !\spi_comp|r_counter_clock\(0) & ( (\spi_comp|r_counter_clock_ena~q\ & \spi_comp|r_counter_clock\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi_comp|ALT_INV_r_counter_clock_ena~q\,
	datac => \spi_comp|ALT_INV_r_counter_clock\(2),
	datae => \spi_comp|ALT_INV_r_counter_clock\(1),
	dataf => \spi_comp|ALT_INV_r_counter_clock\(0),
	combout => \spi_comp|r_counter_clock~0_combout\);

-- Location: FF_X66_Y4_N32
\spi_comp|r_counter_clock[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	asdata => \spi_comp|r_counter_clock~0_combout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_comp|r_counter_clock\(2));

-- Location: LABCELL_X66_Y4_N54
\spi_comp|r_sclk_rise~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi_comp|r_sclk_rise~0_combout\ = ( \spi_comp|r_counter_clock\(2) & ( (\spi_comp|r_counter_clock_ena~q\ & (\spi_comp|r_counter_clock[0]~DUPLICATE_q\ & \spi_comp|r_counter_clock\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi_comp|ALT_INV_r_counter_clock_ena~q\,
	datac => \spi_comp|ALT_INV_r_counter_clock[0]~DUPLICATE_q\,
	datad => \spi_comp|ALT_INV_r_counter_clock\(1),
	dataf => \spi_comp|ALT_INV_r_counter_clock\(2),
	combout => \spi_comp|r_sclk_rise~0_combout\);

-- Location: FF_X66_Y4_N55
\spi_comp|r_sclk_rise~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	d => \spi_comp|r_sclk_rise~0_combout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_comp|r_sclk_rise~DUPLICATE_q\);

-- Location: FF_X67_Y4_N2
\spi_comp|r_counter_data[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	asdata => \spi_comp|r_counter_data[3]~0_combout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_comp|r_counter_data[3]~DUPLICATE_q\);

-- Location: LABCELL_X67_Y4_N6
\spi_comp|r_counter_data[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi_comp|r_counter_data[2]~1_combout\ = ( \spi_comp|r_counter_data\(3) & ( \spi_comp|r_st_present.ST_TX_RX~q\ & ( ((\spi_comp|r_sclk_rise~DUPLICATE_q\ & (\spi_comp|r_counter_data\(0) & \spi_comp|r_counter_data\(1)))) # 
-- (\spi_comp|r_counter_data[2]~DUPLICATE_q\) ) ) ) # ( !\spi_comp|r_counter_data\(3) & ( \spi_comp|r_st_present.ST_TX_RX~q\ & ( !\spi_comp|r_counter_data[2]~DUPLICATE_q\ $ (((!\spi_comp|r_sclk_rise~DUPLICATE_q\) # ((!\spi_comp|r_counter_data\(0)) # 
-- (!\spi_comp|r_counter_data\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001101100011001100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi_comp|ALT_INV_r_sclk_rise~DUPLICATE_q\,
	datab => \spi_comp|ALT_INV_r_counter_data[2]~DUPLICATE_q\,
	datac => \spi_comp|ALT_INV_r_counter_data\(0),
	datad => \spi_comp|ALT_INV_r_counter_data\(1),
	datae => \spi_comp|ALT_INV_r_counter_data\(3),
	dataf => \spi_comp|ALT_INV_r_st_present.ST_TX_RX~q\,
	combout => \spi_comp|r_counter_data[2]~1_combout\);

-- Location: FF_X67_Y4_N55
\spi_comp|r_counter_data[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	asdata => \spi_comp|r_counter_data[2]~1_combout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_comp|r_counter_data[2]~DUPLICATE_q\);

-- Location: LABCELL_X67_Y4_N3
\spi_comp|r_counter_data[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi_comp|r_counter_data[3]~0_combout\ = ( \spi_comp|r_counter_data[3]~DUPLICATE_q\ & ( \spi_comp|r_counter_data[2]~DUPLICATE_q\ & ( \spi_comp|r_st_present.ST_TX_RX~q\ ) ) ) # ( !\spi_comp|r_counter_data[3]~DUPLICATE_q\ & ( 
-- \spi_comp|r_counter_data[2]~DUPLICATE_q\ & ( (\spi_comp|r_sclk_rise~DUPLICATE_q\ & (\spi_comp|r_st_present.ST_TX_RX~q\ & (\spi_comp|r_counter_data\(1) & \spi_comp|r_counter_data\(0)))) ) ) ) # ( \spi_comp|r_counter_data[3]~DUPLICATE_q\ & ( 
-- !\spi_comp|r_counter_data[2]~DUPLICATE_q\ & ( \spi_comp|r_st_present.ST_TX_RX~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi_comp|ALT_INV_r_sclk_rise~DUPLICATE_q\,
	datab => \spi_comp|ALT_INV_r_st_present.ST_TX_RX~q\,
	datac => \spi_comp|ALT_INV_r_counter_data\(1),
	datad => \spi_comp|ALT_INV_r_counter_data\(0),
	datae => \spi_comp|ALT_INV_r_counter_data[3]~DUPLICATE_q\,
	dataf => \spi_comp|ALT_INV_r_counter_data[2]~DUPLICATE_q\,
	combout => \spi_comp|r_counter_data[3]~0_combout\);

-- Location: FF_X67_Y4_N1
\spi_comp|r_counter_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	asdata => \spi_comp|r_counter_data[3]~0_combout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_comp|r_counter_data\(3));

-- Location: LABCELL_X67_Y4_N57
\spi_comp|r_counter_data[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi_comp|r_counter_data[1]~2_combout\ = ( \spi_comp|r_counter_data\(3) & ( \spi_comp|r_counter_data[2]~DUPLICATE_q\ & ( (\spi_comp|r_st_present.ST_TX_RX~q\ & (((\spi_comp|r_counter_data\(0) & \spi_comp|r_sclk_rise~DUPLICATE_q\)) # 
-- (\spi_comp|r_counter_data\(1)))) ) ) ) # ( !\spi_comp|r_counter_data\(3) & ( \spi_comp|r_counter_data[2]~DUPLICATE_q\ & ( (\spi_comp|r_st_present.ST_TX_RX~q\ & (!\spi_comp|r_counter_data\(1) $ (((!\spi_comp|r_counter_data\(0)) # 
-- (!\spi_comp|r_sclk_rise~DUPLICATE_q\))))) ) ) ) # ( \spi_comp|r_counter_data\(3) & ( !\spi_comp|r_counter_data[2]~DUPLICATE_q\ & ( (\spi_comp|r_st_present.ST_TX_RX~q\ & (!\spi_comp|r_counter_data\(1) $ (((!\spi_comp|r_counter_data\(0)) # 
-- (!\spi_comp|r_sclk_rise~DUPLICATE_q\))))) ) ) ) # ( !\spi_comp|r_counter_data\(3) & ( !\spi_comp|r_counter_data[2]~DUPLICATE_q\ & ( (\spi_comp|r_st_present.ST_TX_RX~q\ & (!\spi_comp|r_counter_data\(1) $ (((!\spi_comp|r_counter_data\(0)) # 
-- (!\spi_comp|r_sclk_rise~DUPLICATE_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010010000000110001001000000011000100100000001100010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi_comp|ALT_INV_r_counter_data\(0),
	datab => \spi_comp|ALT_INV_r_st_present.ST_TX_RX~q\,
	datac => \spi_comp|ALT_INV_r_counter_data\(1),
	datad => \spi_comp|ALT_INV_r_sclk_rise~DUPLICATE_q\,
	datae => \spi_comp|ALT_INV_r_counter_data\(3),
	dataf => \spi_comp|ALT_INV_r_counter_data[2]~DUPLICATE_q\,
	combout => \spi_comp|r_counter_data[1]~2_combout\);

-- Location: FF_X66_Y4_N14
\spi_comp|r_counter_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	asdata => \spi_comp|r_counter_data[1]~2_combout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_comp|r_counter_data\(1));

-- Location: LABCELL_X67_Y4_N24
\spi_comp|r_counter_data[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi_comp|r_counter_data[0]~3_combout\ = ( \spi_comp|r_counter_data\(3) & ( \spi_comp|r_counter_data[2]~DUPLICATE_q\ & ( (\spi_comp|r_st_present.ST_TX_RX~q\ & ((!\spi_comp|r_sclk_rise~DUPLICATE_q\ & (\spi_comp|r_counter_data\(0))) # 
-- (\spi_comp|r_sclk_rise~DUPLICATE_q\ & ((!\spi_comp|r_counter_data\(0)) # (\spi_comp|r_counter_data\(1)))))) ) ) ) # ( !\spi_comp|r_counter_data\(3) & ( \spi_comp|r_counter_data[2]~DUPLICATE_q\ & ( (\spi_comp|r_st_present.ST_TX_RX~q\ & 
-- (!\spi_comp|r_sclk_rise~DUPLICATE_q\ $ (!\spi_comp|r_counter_data\(0)))) ) ) ) # ( \spi_comp|r_counter_data\(3) & ( !\spi_comp|r_counter_data[2]~DUPLICATE_q\ & ( (\spi_comp|r_st_present.ST_TX_RX~q\ & (!\spi_comp|r_sclk_rise~DUPLICATE_q\ $ 
-- (!\spi_comp|r_counter_data\(0)))) ) ) ) # ( !\spi_comp|r_counter_data\(3) & ( !\spi_comp|r_counter_data[2]~DUPLICATE_q\ & ( (\spi_comp|r_st_present.ST_TX_RX~q\ & (!\spi_comp|r_sclk_rise~DUPLICATE_q\ $ (!\spi_comp|r_counter_data\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000010010000100100001001000010010000100100001001000010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi_comp|ALT_INV_r_sclk_rise~DUPLICATE_q\,
	datab => \spi_comp|ALT_INV_r_st_present.ST_TX_RX~q\,
	datac => \spi_comp|ALT_INV_r_counter_data\(0),
	datad => \spi_comp|ALT_INV_r_counter_data\(1),
	datae => \spi_comp|ALT_INV_r_counter_data\(3),
	dataf => \spi_comp|ALT_INV_r_counter_data[2]~DUPLICATE_q\,
	combout => \spi_comp|r_counter_data[0]~3_combout\);

-- Location: FF_X67_Y4_N50
\spi_comp|r_counter_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	asdata => \spi_comp|r_counter_data[0]~3_combout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_comp|r_counter_data\(0));

-- Location: FF_X67_Y4_N56
\spi_comp|r_counter_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	asdata => \spi_comp|r_counter_data[2]~1_combout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_comp|r_counter_data\(2));

-- Location: LABCELL_X67_Y4_N51
\spi_comp|p_comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi_comp|p_comb~0_combout\ = ( \spi_comp|r_counter_data[3]~DUPLICATE_q\ & ( \spi_comp|r_sclk_rise~DUPLICATE_q\ & ( (\spi_comp|r_counter_data\(0) & (\spi_comp|r_counter_data\(1) & \spi_comp|r_counter_data\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi_comp|ALT_INV_r_counter_data\(0),
	datac => \spi_comp|ALT_INV_r_counter_data\(1),
	datad => \spi_comp|ALT_INV_r_counter_data\(2),
	datae => \spi_comp|ALT_INV_r_counter_data[3]~DUPLICATE_q\,
	dataf => \spi_comp|ALT_INV_r_sclk_rise~DUPLICATE_q\,
	combout => \spi_comp|p_comb~0_combout\);

-- Location: LABCELL_X67_Y6_N30
\dc_preparator|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_preparator|Add0~25_sumout\ = SUM(( \dc_preparator|wait_cnt[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \dc_preparator|Add0~26\ = CARRY(( \dc_preparator|wait_cnt[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \dc_preparator|ALT_INV_wait_cnt[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \dc_preparator|Add0~25_sumout\,
	cout => \dc_preparator|Add0~26\);

-- Location: MLABCELL_X65_Y6_N51
\spi_comp|Selector0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi_comp|Selector0~1_combout\ = (\spi_comp|r_st_present.ST_END~q\ & \spi_comp|r_sclk_fall~DUPLICATE_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi_comp|ALT_INV_r_st_present.ST_END~q\,
	datad => \spi_comp|ALT_INV_r_sclk_fall~DUPLICATE_q\,
	combout => \spi_comp|Selector0~1_combout\);

-- Location: FF_X65_Y6_N53
\spi_comp|o_tx_end\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	d => \spi_comp|Selector0~1_combout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_comp|o_tx_end~q\);

-- Location: LABCELL_X67_Y6_N0
\dc_preparator|cnt_en~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_preparator|cnt_en~0_combout\ = ( \dc_preparator|wait_cnt\(6) & ( (!\dc_preparator|cnt_en~q\ & ((\spi_comp|o_tx_end~q\))) # (\dc_preparator|cnt_en~q\ & (!\dc_preparator|Equal2~0_combout\)) ) ) # ( !\dc_preparator|wait_cnt\(6) & ( 
-- (\dc_preparator|cnt_en~q\) # (\spi_comp|o_tx_end~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100001111101010100000111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_preparator|ALT_INV_Equal2~0_combout\,
	datac => \spi_comp|ALT_INV_o_tx_end~q\,
	datad => \dc_preparator|ALT_INV_cnt_en~q\,
	dataf => \dc_preparator|ALT_INV_wait_cnt\(6),
	combout => \dc_preparator|cnt_en~0_combout\);

-- Location: FF_X65_Y6_N50
\dc_preparator|cnt_en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	asdata => \dc_preparator|cnt_en~0_combout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_preparator|cnt_en~q\);

-- Location: FF_X67_Y6_N53
\dc_preparator|wait_cnt[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	asdata => \dc_preparator|wait_cnt~0_combout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \dc_preparator|cnt_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_preparator|wait_cnt[6]~DUPLICATE_q\);

-- Location: LABCELL_X67_Y6_N3
\dc_preparator|wait_cnt~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_preparator|wait_cnt~1_combout\ = (\dc_preparator|Add0~25_sumout\ & ((!\dc_preparator|Equal2~0_combout\) # (!\dc_preparator|wait_cnt[6]~DUPLICATE_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001100000011110000110000001111000011000000111100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dc_preparator|ALT_INV_Equal2~0_combout\,
	datac => \dc_preparator|ALT_INV_Add0~25_sumout\,
	datad => \dc_preparator|ALT_INV_wait_cnt[6]~DUPLICATE_q\,
	combout => \dc_preparator|wait_cnt~1_combout\);

-- Location: FF_X67_Y6_N5
\dc_preparator|wait_cnt[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	d => \dc_preparator|wait_cnt~1_combout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	ena => \dc_preparator|cnt_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_preparator|wait_cnt[0]~DUPLICATE_q\);

-- Location: LABCELL_X67_Y6_N33
\dc_preparator|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_preparator|Add0~21_sumout\ = SUM(( \dc_preparator|wait_cnt\(1) ) + ( GND ) + ( \dc_preparator|Add0~26\ ))
-- \dc_preparator|Add0~22\ = CARRY(( \dc_preparator|wait_cnt\(1) ) + ( GND ) + ( \dc_preparator|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \dc_preparator|ALT_INV_wait_cnt\(1),
	cin => \dc_preparator|Add0~26\,
	sumout => \dc_preparator|Add0~21_sumout\,
	cout => \dc_preparator|Add0~22\);

-- Location: FF_X67_Y6_N2
\dc_preparator|wait_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	asdata => \dc_preparator|Add0~21_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \dc_preparator|cnt_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_preparator|wait_cnt\(1));

-- Location: FF_X67_Y6_N4
\dc_preparator|wait_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	d => \dc_preparator|wait_cnt~1_combout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	ena => \dc_preparator|cnt_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_preparator|wait_cnt\(0));

-- Location: LABCELL_X67_Y6_N36
\dc_preparator|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_preparator|Add0~17_sumout\ = SUM(( \dc_preparator|wait_cnt\(2) ) + ( GND ) + ( \dc_preparator|Add0~22\ ))
-- \dc_preparator|Add0~18\ = CARRY(( \dc_preparator|wait_cnt\(2) ) + ( GND ) + ( \dc_preparator|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dc_preparator|ALT_INV_wait_cnt\(2),
	cin => \dc_preparator|Add0~22\,
	sumout => \dc_preparator|Add0~17_sumout\,
	cout => \dc_preparator|Add0~18\);

-- Location: FF_X67_Y6_N20
\dc_preparator|wait_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	asdata => \dc_preparator|Add0~17_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \dc_preparator|cnt_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_preparator|wait_cnt\(2));

-- Location: LABCELL_X67_Y6_N39
\dc_preparator|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_preparator|Add0~13_sumout\ = SUM(( \dc_preparator|wait_cnt\(3) ) + ( GND ) + ( \dc_preparator|Add0~18\ ))
-- \dc_preparator|Add0~14\ = CARRY(( \dc_preparator|wait_cnt\(3) ) + ( GND ) + ( \dc_preparator|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dc_preparator|ALT_INV_wait_cnt\(3),
	cin => \dc_preparator|Add0~18\,
	sumout => \dc_preparator|Add0~13_sumout\,
	cout => \dc_preparator|Add0~14\);

-- Location: LABCELL_X67_Y6_N24
\dc_preparator|wait_cnt[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_preparator|wait_cnt[3]~feeder_combout\ = \dc_preparator|Add0~13_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dc_preparator|ALT_INV_Add0~13_sumout\,
	combout => \dc_preparator|wait_cnt[3]~feeder_combout\);

-- Location: FF_X67_Y6_N25
\dc_preparator|wait_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	d => \dc_preparator|wait_cnt[3]~feeder_combout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	ena => \dc_preparator|cnt_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_preparator|wait_cnt\(3));

-- Location: LABCELL_X67_Y6_N42
\dc_preparator|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_preparator|Add0~9_sumout\ = SUM(( \dc_preparator|wait_cnt\(4) ) + ( GND ) + ( \dc_preparator|Add0~14\ ))
-- \dc_preparator|Add0~10\ = CARRY(( \dc_preparator|wait_cnt\(4) ) + ( GND ) + ( \dc_preparator|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dc_preparator|ALT_INV_wait_cnt\(4),
	cin => \dc_preparator|Add0~14\,
	sumout => \dc_preparator|Add0~9_sumout\,
	cout => \dc_preparator|Add0~10\);

-- Location: FF_X67_Y6_N23
\dc_preparator|wait_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	asdata => \dc_preparator|Add0~9_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \dc_preparator|cnt_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_preparator|wait_cnt\(4));

-- Location: FF_X67_Y6_N29
\dc_preparator|wait_cnt[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	asdata => \dc_preparator|Add0~5_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \dc_preparator|cnt_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_preparator|wait_cnt[5]~DUPLICATE_q\);

-- Location: LABCELL_X67_Y6_N45
\dc_preparator|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_preparator|Add0~5_sumout\ = SUM(( \dc_preparator|wait_cnt[5]~DUPLICATE_q\ ) + ( GND ) + ( \dc_preparator|Add0~10\ ))
-- \dc_preparator|Add0~6\ = CARRY(( \dc_preparator|wait_cnt[5]~DUPLICATE_q\ ) + ( GND ) + ( \dc_preparator|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \dc_preparator|ALT_INV_wait_cnt[5]~DUPLICATE_q\,
	cin => \dc_preparator|Add0~10\,
	sumout => \dc_preparator|Add0~5_sumout\,
	cout => \dc_preparator|Add0~6\);

-- Location: FF_X67_Y6_N28
\dc_preparator|wait_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	asdata => \dc_preparator|Add0~5_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \dc_preparator|cnt_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_preparator|wait_cnt\(5));

-- Location: LABCELL_X67_Y6_N18
\dc_preparator|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_preparator|Equal2~0_combout\ = ( !\dc_preparator|wait_cnt\(2) & ( !\dc_preparator|wait_cnt\(3) & ( (!\dc_preparator|wait_cnt\(1) & (!\dc_preparator|wait_cnt\(0) & (!\dc_preparator|wait_cnt\(4) & !\dc_preparator|wait_cnt\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_preparator|ALT_INV_wait_cnt\(1),
	datab => \dc_preparator|ALT_INV_wait_cnt\(0),
	datac => \dc_preparator|ALT_INV_wait_cnt\(4),
	datad => \dc_preparator|ALT_INV_wait_cnt\(5),
	datae => \dc_preparator|ALT_INV_wait_cnt\(2),
	dataf => \dc_preparator|ALT_INV_wait_cnt\(3),
	combout => \dc_preparator|Equal2~0_combout\);

-- Location: LABCELL_X67_Y6_N48
\dc_preparator|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_preparator|Add0~1_sumout\ = SUM(( \dc_preparator|wait_cnt[6]~DUPLICATE_q\ ) + ( GND ) + ( \dc_preparator|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dc_preparator|ALT_INV_wait_cnt[6]~DUPLICATE_q\,
	cin => \dc_preparator|Add0~6\,
	sumout => \dc_preparator|Add0~1_sumout\);

-- Location: LABCELL_X67_Y6_N9
\dc_preparator|wait_cnt~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_preparator|wait_cnt~0_combout\ = ( \dc_preparator|Add0~1_sumout\ & ( (!\dc_preparator|Equal2~0_combout\) # (!\dc_preparator|wait_cnt\(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dc_preparator|ALT_INV_Equal2~0_combout\,
	datad => \dc_preparator|ALT_INV_wait_cnt\(6),
	dataf => \dc_preparator|ALT_INV_Add0~1_sumout\,
	combout => \dc_preparator|wait_cnt~0_combout\);

-- Location: FF_X67_Y6_N52
\dc_preparator|wait_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	asdata => \dc_preparator|wait_cnt~0_combout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \dc_preparator|cnt_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_preparator|wait_cnt\(6));

-- Location: LABCELL_X60_Y5_N51
\dc_converter|state_reg.idle~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_converter|state_reg.idle~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \dc_converter|state_reg.idle~feeder_combout\);

-- Location: FF_X60_Y5_N52
\dc_converter|state_reg.idle~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	d => \dc_converter|state_reg.idle~feeder_combout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_converter|state_reg.idle~DUPLICATE_q\);

-- Location: MLABCELL_X65_Y4_N0
\dc_register|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_register|Add0~73_sumout\ = SUM(( \dc_register|counter\(0) ) + ( VCC ) + ( !VCC ))
-- \dc_register|Add0~74\ = CARRY(( \dc_register|counter\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dc_register|ALT_INV_counter\(0),
	cin => GND,
	sumout => \dc_register|Add0~73_sumout\,
	cout => \dc_register|Add0~74\);

-- Location: LABCELL_X64_Y4_N6
\dc_register|counter[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_register|counter[0]~feeder_combout\ = ( \dc_register|Add0~73_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \dc_register|ALT_INV_Add0~73_sumout\,
	combout => \dc_register|counter[0]~feeder_combout\);

-- Location: LABCELL_X64_Y6_N0
\dc_register|detector|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_register|detector|Add0~37_sumout\ = SUM(( \dc_register|detector|counter\(0) ) + ( VCC ) + ( !VCC ))
-- \dc_register|detector|Add0~38\ = CARRY(( \dc_register|detector|counter\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \dc_register|detector|ALT_INV_counter\(0),
	cin => GND,
	sumout => \dc_register|detector|Add0~37_sumout\,
	cout => \dc_register|detector|Add0~38\);

-- Location: LABCELL_X64_Y6_N18
\dc_register|detector|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_register|detector|Add0~13_sumout\ = SUM(( \dc_register|detector|counter[6]~DUPLICATE_q\ ) + ( GND ) + ( \dc_register|detector|Add0~10\ ))
-- \dc_register|detector|Add0~14\ = CARRY(( \dc_register|detector|counter[6]~DUPLICATE_q\ ) + ( GND ) + ( \dc_register|detector|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \dc_register|detector|ALT_INV_counter[6]~DUPLICATE_q\,
	cin => \dc_register|detector|Add0~10\,
	sumout => \dc_register|detector|Add0~13_sumout\,
	cout => \dc_register|detector|Add0~14\);

-- Location: LABCELL_X64_Y6_N21
\dc_register|detector|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_register|detector|Add0~17_sumout\ = SUM(( \dc_register|detector|counter[7]~DUPLICATE_q\ ) + ( GND ) + ( \dc_register|detector|Add0~14\ ))
-- \dc_register|detector|Add0~18\ = CARRY(( \dc_register|detector|counter[7]~DUPLICATE_q\ ) + ( GND ) + ( \dc_register|detector|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \dc_register|detector|ALT_INV_counter[7]~DUPLICATE_q\,
	cin => \dc_register|detector|Add0~14\,
	sumout => \dc_register|detector|Add0~17_sumout\,
	cout => \dc_register|detector|Add0~18\);

-- Location: FF_X64_Y6_N31
\dc_register|detector|counter[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	asdata => \dc_register|detector|Add0~17_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_register|detector|cross~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_register|detector|counter[7]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y6_N24
\dc_register|detector|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_register|detector|Add0~5_sumout\ = SUM(( \dc_register|detector|counter[8]~DUPLICATE_q\ ) + ( GND ) + ( \dc_register|detector|Add0~18\ ))
-- \dc_register|detector|Add0~6\ = CARRY(( \dc_register|detector|counter[8]~DUPLICATE_q\ ) + ( GND ) + ( \dc_register|detector|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_register|detector|ALT_INV_counter[8]~DUPLICATE_q\,
	cin => \dc_register|detector|Add0~18\,
	sumout => \dc_register|detector|Add0~5_sumout\,
	cout => \dc_register|detector|Add0~6\);

-- Location: LABCELL_X64_Y6_N36
\dc_register|detector|counter[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_register|detector|counter[8]~feeder_combout\ = ( \dc_register|detector|Add0~5_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \dc_register|detector|ALT_INV_Add0~5_sumout\,
	combout => \dc_register|detector|counter[8]~feeder_combout\);

-- Location: FF_X64_Y6_N38
\dc_register|detector|counter[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	d => \dc_register|detector|counter[8]~feeder_combout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_register|detector|cross~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_register|detector|counter[8]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y6_N27
\dc_register|detector|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_register|detector|Add0~1_sumout\ = SUM(( \dc_register|detector|counter\(9) ) + ( GND ) + ( \dc_register|detector|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dc_register|detector|ALT_INV_counter\(9),
	cin => \dc_register|detector|Add0~6\,
	sumout => \dc_register|detector|Add0~1_sumout\);

-- Location: FF_X64_Y6_N59
\dc_register|detector|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	asdata => \dc_register|detector|Add0~1_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_register|detector|cross~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_register|detector|counter\(9));

-- Location: FF_X64_Y6_N32
\dc_register|detector|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	asdata => \dc_register|detector|Add0~17_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_register|detector|cross~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_register|detector|counter\(7));

-- Location: IOIBUF_X36_Y0_N18
\i_ButtonInput~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ButtonInput,
	o => \i_ButtonInput~input_o\);

-- Location: LABCELL_X64_Y4_N24
\dc_register|detector|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_register|detector|Selector0~0_combout\ = ( \dc_register|detector|state_reg.s3~q\ ) # ( !\dc_register|detector|state_reg.s3~q\ & ( (\i_ButtonInput~input_o\) # (\dc_register|detector|state_reg.s1~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001111110011111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dc_register|detector|ALT_INV_state_reg.s1~q\,
	datac => \ALT_INV_i_ButtonInput~input_o\,
	dataf => \dc_register|detector|ALT_INV_state_reg.s3~q\,
	combout => \dc_register|detector|Selector0~0_combout\);

-- Location: FF_X64_Y4_N26
\dc_register|detector|state_reg.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	d => \dc_register|detector|Selector0~0_combout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_register|detector|state_reg.s0~q\);

-- Location: FF_X65_Y6_N14
\dc_register|detector|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	asdata => \dc_register|detector|Add0~13_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_register|detector|cross~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_register|detector|counter\(6));

-- Location: LABCELL_X64_Y6_N42
\dc_register|detector|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_register|detector|LessThan0~0_combout\ = ( \dc_register|detector|counter[8]~DUPLICATE_q\ & ( \dc_register|detector|counter\(6) & ( \dc_register|detector|counter\(9) ) ) ) # ( \dc_register|detector|counter[8]~DUPLICATE_q\ & ( 
-- !\dc_register|detector|counter\(6) & ( (\dc_register|detector|counter\(9) & ((\dc_register|detector|counter[5]~DUPLICATE_q\) # (\dc_register|detector|counter\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000011111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dc_register|detector|ALT_INV_counter\(7),
	datac => \dc_register|detector|ALT_INV_counter[5]~DUPLICATE_q\,
	datad => \dc_register|detector|ALT_INV_counter\(9),
	datae => \dc_register|detector|ALT_INV_counter[8]~DUPLICATE_q\,
	dataf => \dc_register|detector|ALT_INV_counter\(6),
	combout => \dc_register|detector|LessThan0~0_combout\);

-- Location: LABCELL_X64_Y4_N9
\dc_register|detector|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_register|detector|Selector1~0_combout\ = ( \dc_register|detector|LessThan0~0_combout\ & ( (!\dc_register|detector|state_reg.s0~q\ & \i_ButtonInput~input_o\) ) ) # ( !\dc_register|detector|LessThan0~0_combout\ & ( 
-- ((!\dc_register|detector|state_reg.s0~q\ & \i_ButtonInput~input_o\)) # (\dc_register|detector|state_reg.s1~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111110101111000011111010111100000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_register|detector|ALT_INV_state_reg.s0~q\,
	datac => \dc_register|detector|ALT_INV_state_reg.s1~q\,
	datad => \ALT_INV_i_ButtonInput~input_o\,
	dataf => \dc_register|detector|ALT_INV_LessThan0~0_combout\,
	combout => \dc_register|detector|Selector1~0_combout\);

-- Location: FF_X64_Y4_N23
\dc_register|detector|state_reg.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	asdata => \dc_register|detector|Selector1~0_combout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_register|detector|state_reg.s1~q\);

-- Location: FF_X64_Y6_N37
\dc_register|detector|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	d => \dc_register|detector|counter[8]~feeder_combout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_register|detector|cross~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_register|detector|counter\(8));

-- Location: LABCELL_X64_Y6_N33
\dc_register|detector|cross~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_register|detector|cross~0_combout\ = ( \dc_register|detector|state_reg.s1~q\ & ( \dc_register|detector|counter\(8) & ( (\dc_register|detector|counter\(9) & (((\dc_register|detector|counter[6]~DUPLICATE_q\) # (\dc_register|detector|counter\(7))) # 
-- (\dc_register|detector|counter[5]~DUPLICATE_q\))) ) ) ) # ( !\dc_register|detector|state_reg.s1~q\ & ( \dc_register|detector|counter\(8) ) ) # ( !\dc_register|detector|state_reg.s1~q\ & ( !\dc_register|detector|counter\(8) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110001001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_register|detector|ALT_INV_counter[5]~DUPLICATE_q\,
	datab => \dc_register|detector|ALT_INV_counter\(9),
	datac => \dc_register|detector|ALT_INV_counter\(7),
	datad => \dc_register|detector|ALT_INV_counter[6]~DUPLICATE_q\,
	datae => \dc_register|detector|ALT_INV_state_reg.s1~q\,
	dataf => \dc_register|detector|ALT_INV_counter\(8),
	combout => \dc_register|detector|cross~0_combout\);

-- Location: FF_X64_Y6_N47
\dc_register|detector|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	asdata => \dc_register|detector|Add0~37_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_register|detector|cross~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_register|detector|counter\(0));

-- Location: LABCELL_X64_Y6_N3
\dc_register|detector|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_register|detector|Add0~33_sumout\ = SUM(( \dc_register|detector|counter\(1) ) + ( GND ) + ( \dc_register|detector|Add0~38\ ))
-- \dc_register|detector|Add0~34\ = CARRY(( \dc_register|detector|counter\(1) ) + ( GND ) + ( \dc_register|detector|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \dc_register|detector|ALT_INV_counter\(1),
	cin => \dc_register|detector|Add0~38\,
	sumout => \dc_register|detector|Add0~33_sumout\,
	cout => \dc_register|detector|Add0~34\);

-- Location: FF_X65_Y6_N5
\dc_register|detector|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	asdata => \dc_register|detector|Add0~33_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_register|detector|cross~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_register|detector|counter\(1));

-- Location: LABCELL_X64_Y6_N6
\dc_register|detector|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_register|detector|Add0~29_sumout\ = SUM(( \dc_register|detector|counter\(2) ) + ( GND ) + ( \dc_register|detector|Add0~34\ ))
-- \dc_register|detector|Add0~30\ = CARRY(( \dc_register|detector|counter\(2) ) + ( GND ) + ( \dc_register|detector|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \dc_register|detector|ALT_INV_counter\(2),
	cin => \dc_register|detector|Add0~34\,
	sumout => \dc_register|detector|Add0~29_sumout\,
	cout => \dc_register|detector|Add0~30\);

-- Location: FF_X65_Y6_N11
\dc_register|detector|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	asdata => \dc_register|detector|Add0~29_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_register|detector|cross~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_register|detector|counter\(2));

-- Location: LABCELL_X64_Y6_N9
\dc_register|detector|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_register|detector|Add0~25_sumout\ = SUM(( \dc_register|detector|counter\(3) ) + ( GND ) + ( \dc_register|detector|Add0~30\ ))
-- \dc_register|detector|Add0~26\ = CARRY(( \dc_register|detector|counter\(3) ) + ( GND ) + ( \dc_register|detector|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_register|detector|ALT_INV_counter\(3),
	cin => \dc_register|detector|Add0~30\,
	sumout => \dc_register|detector|Add0~25_sumout\,
	cout => \dc_register|detector|Add0~26\);

-- Location: FF_X65_Y6_N47
\dc_register|detector|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	asdata => \dc_register|detector|Add0~25_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_register|detector|cross~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_register|detector|counter\(3));

-- Location: LABCELL_X64_Y6_N12
\dc_register|detector|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_register|detector|Add0~21_sumout\ = SUM(( \dc_register|detector|counter\(4) ) + ( GND ) + ( \dc_register|detector|Add0~26\ ))
-- \dc_register|detector|Add0~22\ = CARRY(( \dc_register|detector|counter\(4) ) + ( GND ) + ( \dc_register|detector|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \dc_register|detector|ALT_INV_counter\(4),
	cin => \dc_register|detector|Add0~26\,
	sumout => \dc_register|detector|Add0~21_sumout\,
	cout => \dc_register|detector|Add0~22\);

-- Location: FF_X65_Y6_N38
\dc_register|detector|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	asdata => \dc_register|detector|Add0~21_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_register|detector|cross~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_register|detector|counter\(4));

-- Location: LABCELL_X64_Y6_N15
\dc_register|detector|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_register|detector|Add0~9_sumout\ = SUM(( \dc_register|detector|counter[5]~DUPLICATE_q\ ) + ( GND ) + ( \dc_register|detector|Add0~22\ ))
-- \dc_register|detector|Add0~10\ = CARRY(( \dc_register|detector|counter[5]~DUPLICATE_q\ ) + ( GND ) + ( \dc_register|detector|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_register|detector|ALT_INV_counter[5]~DUPLICATE_q\,
	cin => \dc_register|detector|Add0~22\,
	sumout => \dc_register|detector|Add0~9_sumout\,
	cout => \dc_register|detector|Add0~10\);

-- Location: FF_X64_Y6_N53
\dc_register|detector|counter[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	asdata => \dc_register|detector|Add0~9_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_register|detector|cross~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_register|detector|counter[5]~DUPLICATE_q\);

-- Location: FF_X65_Y6_N13
\dc_register|detector|counter[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	asdata => \dc_register|detector|Add0~13_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_register|detector|cross~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_register|detector|counter[6]~DUPLICATE_q\);

-- Location: FF_X64_Y6_N58
\dc_register|detector|counter[9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	asdata => \dc_register|detector|Add0~1_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_register|detector|cross~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_register|detector|counter[9]~DUPLICATE_q\);

-- Location: FF_X64_Y6_N52
\dc_register|detector|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	asdata => \dc_register|detector|Add0~9_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_register|detector|cross~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_register|detector|counter\(5));

-- Location: LABCELL_X64_Y6_N54
\dc_register|detector|next_state.s2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_register|detector|next_state.s2~0_combout\ = ( \dc_register|detector|counter\(5) & ( \dc_register|detector|counter[8]~DUPLICATE_q\ & ( (\dc_register|detector|counter[9]~DUPLICATE_q\ & \dc_register|detector|state_reg.s1~q\) ) ) ) # ( 
-- !\dc_register|detector|counter\(5) & ( \dc_register|detector|counter[8]~DUPLICATE_q\ & ( (\dc_register|detector|counter[9]~DUPLICATE_q\ & (\dc_register|detector|state_reg.s1~q\ & ((\dc_register|detector|counter[7]~DUPLICATE_q\) # 
-- (\dc_register|detector|counter[6]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_register|detector|ALT_INV_counter[6]~DUPLICATE_q\,
	datab => \dc_register|detector|ALT_INV_counter[9]~DUPLICATE_q\,
	datac => \dc_register|detector|ALT_INV_state_reg.s1~q\,
	datad => \dc_register|detector|ALT_INV_counter[7]~DUPLICATE_q\,
	datae => \dc_register|detector|ALT_INV_counter\(5),
	dataf => \dc_register|detector|ALT_INV_counter[8]~DUPLICATE_q\,
	combout => \dc_register|detector|next_state.s2~0_combout\);

-- Location: FF_X64_Y6_N56
\dc_register|detector|state_reg.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	d => \dc_register|detector|next_state.s2~0_combout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_register|detector|state_reg.s2~q\);

-- Location: LABCELL_X64_Y4_N33
\dc_register|detector|next_state.s3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_register|detector|next_state.s3~0_combout\ = (\dc_register|detector|state_reg.s2~q\ & \i_ButtonInput~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dc_register|detector|ALT_INV_state_reg.s2~q\,
	datad => \ALT_INV_i_ButtonInput~input_o\,
	combout => \dc_register|detector|next_state.s3~0_combout\);

-- Location: FF_X64_Y4_N35
\dc_register|detector|state_reg.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	d => \dc_register|detector|next_state.s3~0_combout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_register|detector|state_reg.s3~q\);

-- Location: MLABCELL_X65_Y4_N42
\dc_register|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_register|Add0~1_sumout\ = SUM(( \dc_register|counter\(14) ) + ( GND ) + ( \dc_register|Add0~6\ ))
-- \dc_register|Add0~2\ = CARRY(( \dc_register|counter\(14) ) + ( GND ) + ( \dc_register|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dc_register|ALT_INV_counter\(14),
	cin => \dc_register|Add0~6\,
	sumout => \dc_register|Add0~1_sumout\,
	cout => \dc_register|Add0~2\);

-- Location: MLABCELL_X65_Y4_N45
\dc_register|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_register|Add0~53_sumout\ = SUM(( \dc_register|counter\(15) ) + ( GND ) + ( \dc_register|Add0~2\ ))
-- \dc_register|Add0~54\ = CARRY(( \dc_register|counter\(15) ) + ( GND ) + ( \dc_register|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_register|ALT_INV_counter\(15),
	cin => \dc_register|Add0~2\,
	sumout => \dc_register|Add0~53_sumout\,
	cout => \dc_register|Add0~54\);

-- Location: FF_X65_Y4_N47
\dc_register|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	d => \dc_register|Add0~53_sumout\,
	asdata => \~GND~combout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sload => \dc_register|cross~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_register|counter\(15));

-- Location: FF_X65_Y4_N55
\dc_register|counter[18]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	d => \dc_register|Add0~41_sumout\,
	asdata => \~GND~combout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sload => \dc_register|cross~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_register|counter[18]~DUPLICATE_q\);

-- Location: MLABCELL_X65_Y4_N48
\dc_register|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_register|Add0~49_sumout\ = SUM(( \dc_register|counter\(16) ) + ( GND ) + ( \dc_register|Add0~54\ ))
-- \dc_register|Add0~50\ = CARRY(( \dc_register|counter\(16) ) + ( GND ) + ( \dc_register|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dc_register|ALT_INV_counter\(16),
	cin => \dc_register|Add0~54\,
	sumout => \dc_register|Add0~49_sumout\,
	cout => \dc_register|Add0~50\);

-- Location: FF_X65_Y4_N49
\dc_register|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	d => \dc_register|Add0~49_sumout\,
	asdata => \~GND~combout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sload => \dc_register|cross~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_register|counter\(16));

-- Location: MLABCELL_X65_Y4_N51
\dc_register|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_register|Add0~45_sumout\ = SUM(( \dc_register|counter\(17) ) + ( GND ) + ( \dc_register|Add0~50\ ))
-- \dc_register|Add0~46\ = CARRY(( \dc_register|counter\(17) ) + ( GND ) + ( \dc_register|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_register|ALT_INV_counter\(17),
	cin => \dc_register|Add0~50\,
	sumout => \dc_register|Add0~45_sumout\,
	cout => \dc_register|Add0~46\);

-- Location: FF_X65_Y4_N52
\dc_register|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	d => \dc_register|Add0~45_sumout\,
	asdata => \~GND~combout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sload => \dc_register|cross~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_register|counter\(17));

-- Location: MLABCELL_X65_Y4_N54
\dc_register|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_register|Add0~41_sumout\ = SUM(( \dc_register|counter[18]~DUPLICATE_q\ ) + ( GND ) + ( \dc_register|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dc_register|ALT_INV_counter[18]~DUPLICATE_q\,
	cin => \dc_register|Add0~46\,
	sumout => \dc_register|Add0~41_sumout\);

-- Location: FF_X65_Y4_N56
\dc_register|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	d => \dc_register|Add0~41_sumout\,
	asdata => \~GND~combout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sload => \dc_register|cross~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_register|counter\(18));

-- Location: LABCELL_X64_Y4_N27
\dc_register|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_register|LessThan0~1_combout\ = ( \dc_register|counter\(17) & ( (\dc_register|counter\(15) & (\dc_register|counter\(18) & \dc_register|counter\(16))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_register|ALT_INV_counter\(15),
	datac => \dc_register|ALT_INV_counter\(18),
	datad => \dc_register|ALT_INV_counter\(16),
	dataf => \dc_register|ALT_INV_counter\(17),
	combout => \dc_register|LessThan0~1_combout\);

-- Location: LABCELL_X64_Y4_N15
\dc_register|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_register|Selector0~0_combout\ = ( \dc_register|LessThan0~1_combout\ & ( \dc_register|LessThan0~0_combout\ & ( ((\dc_register|detector|state_reg.s3~q\ & !\dc_register|state_reg.s0~q\)) # (\dc_register|state_reg.s2~DUPLICATE_q\) ) ) ) # ( 
-- !\dc_register|LessThan0~1_combout\ & ( \dc_register|LessThan0~0_combout\ & ( ((\dc_register|detector|state_reg.s3~q\ & !\dc_register|state_reg.s0~q\)) # (\dc_register|state_reg.s2~DUPLICATE_q\) ) ) ) # ( \dc_register|LessThan0~1_combout\ & ( 
-- !\dc_register|LessThan0~0_combout\ & ( (\dc_register|detector|state_reg.s3~q\ & !\dc_register|state_reg.s0~q\) ) ) ) # ( !\dc_register|LessThan0~1_combout\ & ( !\dc_register|LessThan0~0_combout\ & ( ((\dc_register|detector|state_reg.s3~q\ & 
-- !\dc_register|state_reg.s0~q\)) # (\dc_register|state_reg.s2~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101010101001100110000000001110111010101010111011101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_register|ALT_INV_state_reg.s2~DUPLICATE_q\,
	datab => \dc_register|detector|ALT_INV_state_reg.s3~q\,
	datad => \dc_register|ALT_INV_state_reg.s0~q\,
	datae => \dc_register|ALT_INV_LessThan0~1_combout\,
	dataf => \dc_register|ALT_INV_LessThan0~0_combout\,
	combout => \dc_register|Selector0~0_combout\);

-- Location: FF_X64_Y4_N38
\dc_register|state_reg.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	asdata => \dc_register|Selector0~0_combout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_register|state_reg.s0~q\);

-- Location: LABCELL_X64_Y4_N36
\dc_register|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_register|Selector1~0_combout\ = ( \dc_register|state_reg.s0~q\ & ( \dc_register|LessThan0~0_combout\ & ( (!\dc_register|detector|state_reg.s3~q\ & \dc_register|state_reg.s2~DUPLICATE_q\) ) ) ) # ( !\dc_register|state_reg.s0~q\ & ( 
-- \dc_register|LessThan0~0_combout\ & ( (\dc_register|state_reg.s2~DUPLICATE_q\) # (\dc_register|detector|state_reg.s3~q\) ) ) ) # ( \dc_register|state_reg.s0~q\ & ( !\dc_register|LessThan0~0_combout\ & ( (!\dc_register|detector|state_reg.s3~q\ & 
-- (\dc_register|state_reg.s2~DUPLICATE_q\ & !\dc_register|LessThan0~1_combout\)) ) ) ) # ( !\dc_register|state_reg.s0~q\ & ( !\dc_register|LessThan0~0_combout\ & ( ((\dc_register|state_reg.s2~DUPLICATE_q\ & !\dc_register|LessThan0~1_combout\)) # 
-- (\dc_register|detector|state_reg.s3~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101010101000010100000000001011111010111110000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_register|detector|ALT_INV_state_reg.s3~q\,
	datac => \dc_register|ALT_INV_state_reg.s2~DUPLICATE_q\,
	datad => \dc_register|ALT_INV_LessThan0~1_combout\,
	datae => \dc_register|ALT_INV_state_reg.s0~q\,
	dataf => \dc_register|ALT_INV_LessThan0~0_combout\,
	combout => \dc_register|Selector1~0_combout\);

-- Location: FF_X64_Y4_N50
\dc_register|state_reg.s2~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	asdata => \dc_register|Selector1~0_combout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_register|state_reg.s2~DUPLICATE_q\);

-- Location: FF_X65_Y4_N32
\dc_register|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	d => \dc_register|Add0~33_sumout\,
	asdata => \~GND~combout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sload => \dc_register|cross~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_register|counter\(10));

-- Location: FF_X65_Y4_N37
\dc_register|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	d => \dc_register|Add0~25_sumout\,
	asdata => \~GND~combout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sload => \dc_register|cross~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_register|counter\(12));

-- Location: LABCELL_X64_Y4_N30
\dc_register|cross~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_register|cross~1_combout\ = ( \dc_register|counter[13]~DUPLICATE_q\ & ( (!\dc_register|counter\(10) & (!\dc_register|counter\(14) & (!\dc_register|counter\(11) & !\dc_register|counter\(12)))) ) ) # ( !\dc_register|counter[13]~DUPLICATE_q\ & ( 
-- !\dc_register|counter\(14) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_register|ALT_INV_counter\(10),
	datab => \dc_register|ALT_INV_counter\(14),
	datac => \dc_register|ALT_INV_counter\(11),
	datad => \dc_register|ALT_INV_counter\(12),
	dataf => \dc_register|ALT_INV_counter[13]~DUPLICATE_q\,
	combout => \dc_register|cross~1_combout\);

-- Location: LABCELL_X64_Y4_N54
\dc_register|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_register|LessThan0~2_combout\ = ( !\dc_register|counter\(5) & ( \dc_register|counter\(8) & ( (!\dc_register|counter\(7) & (!\dc_register|counter\(9) & !\dc_register|counter\(6))) ) ) ) # ( \dc_register|counter\(5) & ( !\dc_register|counter\(8) & ( 
-- !\dc_register|counter\(9) ) ) ) # ( !\dc_register|counter\(5) & ( !\dc_register|counter\(8) & ( !\dc_register|counter\(9) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000010100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_register|ALT_INV_counter\(7),
	datac => \dc_register|ALT_INV_counter\(9),
	datad => \dc_register|ALT_INV_counter\(6),
	datae => \dc_register|ALT_INV_counter\(5),
	dataf => \dc_register|ALT_INV_counter\(8),
	combout => \dc_register|LessThan0~2_combout\);

-- Location: LABCELL_X64_Y4_N51
\dc_register|cross~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_register|cross~0_combout\ = ( \dc_register|LessThan0~2_combout\ & ( \dc_register|counter[13]~DUPLICATE_q\ & ( (!\dc_register|state_reg.s2~DUPLICATE_q\) # (((!\dc_register|cross~1_combout\ & \dc_register|LessThan0~1_combout\)) # 
-- (\dc_register|detector|state_reg.s3~q\)) ) ) ) # ( !\dc_register|LessThan0~2_combout\ & ( \dc_register|counter[13]~DUPLICATE_q\ & ( (!\dc_register|state_reg.s2~DUPLICATE_q\) # ((\dc_register|LessThan0~1_combout\) # (\dc_register|detector|state_reg.s3~q\)) 
-- ) ) ) # ( \dc_register|LessThan0~2_combout\ & ( !\dc_register|counter[13]~DUPLICATE_q\ & ( (!\dc_register|state_reg.s2~DUPLICATE_q\) # (((!\dc_register|cross~1_combout\ & \dc_register|LessThan0~1_combout\)) # (\dc_register|detector|state_reg.s3~q\)) ) ) ) 
-- # ( !\dc_register|LessThan0~2_combout\ & ( !\dc_register|counter[13]~DUPLICATE_q\ & ( (!\dc_register|state_reg.s2~DUPLICATE_q\) # (((!\dc_register|cross~1_combout\ & \dc_register|LessThan0~1_combout\)) # (\dc_register|detector|state_reg.s3~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111111101111101011111110111110101111111111111010111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_register|ALT_INV_state_reg.s2~DUPLICATE_q\,
	datab => \dc_register|ALT_INV_cross~1_combout\,
	datac => \dc_register|detector|ALT_INV_state_reg.s3~q\,
	datad => \dc_register|ALT_INV_LessThan0~1_combout\,
	datae => \dc_register|ALT_INV_LessThan0~2_combout\,
	dataf => \dc_register|ALT_INV_counter[13]~DUPLICATE_q\,
	combout => \dc_register|cross~0_combout\);

-- Location: FF_X64_Y4_N7
\dc_register|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	d => \dc_register|counter[0]~feeder_combout\,
	asdata => VCC,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sload => \dc_register|cross~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_register|counter\(0));

-- Location: MLABCELL_X65_Y4_N3
\dc_register|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_register|Add0~69_sumout\ = SUM(( \dc_register|counter\(1) ) + ( GND ) + ( \dc_register|Add0~74\ ))
-- \dc_register|Add0~70\ = CARRY(( \dc_register|counter\(1) ) + ( GND ) + ( \dc_register|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_register|ALT_INV_counter\(1),
	cin => \dc_register|Add0~74\,
	sumout => \dc_register|Add0~69_sumout\,
	cout => \dc_register|Add0~70\);

-- Location: FF_X65_Y4_N5
\dc_register|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	d => \dc_register|Add0~69_sumout\,
	asdata => \~GND~combout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sload => \dc_register|cross~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_register|counter\(1));

-- Location: MLABCELL_X65_Y4_N6
\dc_register|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_register|Add0~65_sumout\ = SUM(( \dc_register|counter\(2) ) + ( GND ) + ( \dc_register|Add0~70\ ))
-- \dc_register|Add0~66\ = CARRY(( \dc_register|counter\(2) ) + ( GND ) + ( \dc_register|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dc_register|ALT_INV_counter\(2),
	cin => \dc_register|Add0~70\,
	sumout => \dc_register|Add0~65_sumout\,
	cout => \dc_register|Add0~66\);

-- Location: FF_X65_Y4_N7
\dc_register|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	d => \dc_register|Add0~65_sumout\,
	asdata => \~GND~combout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sload => \dc_register|cross~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_register|counter\(2));

-- Location: MLABCELL_X65_Y4_N9
\dc_register|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_register|Add0~61_sumout\ = SUM(( \dc_register|counter\(3) ) + ( GND ) + ( \dc_register|Add0~66\ ))
-- \dc_register|Add0~62\ = CARRY(( \dc_register|counter\(3) ) + ( GND ) + ( \dc_register|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_register|ALT_INV_counter\(3),
	cin => \dc_register|Add0~66\,
	sumout => \dc_register|Add0~61_sumout\,
	cout => \dc_register|Add0~62\);

-- Location: FF_X65_Y4_N10
\dc_register|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	d => \dc_register|Add0~61_sumout\,
	asdata => \~GND~combout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sload => \dc_register|cross~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_register|counter\(3));

-- Location: MLABCELL_X65_Y4_N12
\dc_register|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_register|Add0~57_sumout\ = SUM(( \dc_register|counter\(4) ) + ( GND ) + ( \dc_register|Add0~62\ ))
-- \dc_register|Add0~58\ = CARRY(( \dc_register|counter\(4) ) + ( GND ) + ( \dc_register|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dc_register|ALT_INV_counter\(4),
	cin => \dc_register|Add0~62\,
	sumout => \dc_register|Add0~57_sumout\,
	cout => \dc_register|Add0~58\);

-- Location: FF_X65_Y4_N13
\dc_register|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	d => \dc_register|Add0~57_sumout\,
	asdata => \~GND~combout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sload => \dc_register|cross~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_register|counter\(4));

-- Location: MLABCELL_X65_Y4_N15
\dc_register|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_register|Add0~21_sumout\ = SUM(( \dc_register|counter\(5) ) + ( GND ) + ( \dc_register|Add0~58\ ))
-- \dc_register|Add0~22\ = CARRY(( \dc_register|counter\(5) ) + ( GND ) + ( \dc_register|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_register|ALT_INV_counter\(5),
	cin => \dc_register|Add0~58\,
	sumout => \dc_register|Add0~21_sumout\,
	cout => \dc_register|Add0~22\);

-- Location: FF_X65_Y4_N17
\dc_register|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	d => \dc_register|Add0~21_sumout\,
	asdata => \~GND~combout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sload => \dc_register|cross~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_register|counter\(5));

-- Location: MLABCELL_X65_Y4_N18
\dc_register|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_register|Add0~17_sumout\ = SUM(( \dc_register|counter\(6) ) + ( GND ) + ( \dc_register|Add0~22\ ))
-- \dc_register|Add0~18\ = CARRY(( \dc_register|counter\(6) ) + ( GND ) + ( \dc_register|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dc_register|ALT_INV_counter\(6),
	cin => \dc_register|Add0~22\,
	sumout => \dc_register|Add0~17_sumout\,
	cout => \dc_register|Add0~18\);

-- Location: FF_X65_Y4_N20
\dc_register|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	d => \dc_register|Add0~17_sumout\,
	asdata => \~GND~combout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sload => \dc_register|cross~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_register|counter\(6));

-- Location: MLABCELL_X65_Y4_N21
\dc_register|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_register|Add0~13_sumout\ = SUM(( \dc_register|counter\(7) ) + ( GND ) + ( \dc_register|Add0~18\ ))
-- \dc_register|Add0~14\ = CARRY(( \dc_register|counter\(7) ) + ( GND ) + ( \dc_register|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_register|ALT_INV_counter\(7),
	cin => \dc_register|Add0~18\,
	sumout => \dc_register|Add0~13_sumout\,
	cout => \dc_register|Add0~14\);

-- Location: FF_X65_Y4_N23
\dc_register|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	d => \dc_register|Add0~13_sumout\,
	asdata => \~GND~combout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sload => \dc_register|cross~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_register|counter\(7));

-- Location: MLABCELL_X65_Y4_N24
\dc_register|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_register|Add0~9_sumout\ = SUM(( \dc_register|counter\(8) ) + ( GND ) + ( \dc_register|Add0~14\ ))
-- \dc_register|Add0~10\ = CARRY(( \dc_register|counter\(8) ) + ( GND ) + ( \dc_register|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_register|ALT_INV_counter\(8),
	cin => \dc_register|Add0~14\,
	sumout => \dc_register|Add0~9_sumout\,
	cout => \dc_register|Add0~10\);

-- Location: FF_X65_Y4_N26
\dc_register|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	d => \dc_register|Add0~9_sumout\,
	asdata => \~GND~combout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sload => \dc_register|cross~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_register|counter\(8));

-- Location: MLABCELL_X65_Y4_N27
\dc_register|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_register|Add0~37_sumout\ = SUM(( \dc_register|counter\(9) ) + ( GND ) + ( \dc_register|Add0~10\ ))
-- \dc_register|Add0~38\ = CARRY(( \dc_register|counter\(9) ) + ( GND ) + ( \dc_register|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dc_register|ALT_INV_counter\(9),
	cin => \dc_register|Add0~10\,
	sumout => \dc_register|Add0~37_sumout\,
	cout => \dc_register|Add0~38\);

-- Location: FF_X65_Y4_N29
\dc_register|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	d => \dc_register|Add0~37_sumout\,
	asdata => \~GND~combout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sload => \dc_register|cross~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_register|counter\(9));

-- Location: MLABCELL_X65_Y4_N30
\dc_register|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_register|Add0~33_sumout\ = SUM(( \dc_register|counter[10]~DUPLICATE_q\ ) + ( GND ) + ( \dc_register|Add0~38\ ))
-- \dc_register|Add0~34\ = CARRY(( \dc_register|counter[10]~DUPLICATE_q\ ) + ( GND ) + ( \dc_register|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dc_register|ALT_INV_counter[10]~DUPLICATE_q\,
	cin => \dc_register|Add0~38\,
	sumout => \dc_register|Add0~33_sumout\,
	cout => \dc_register|Add0~34\);

-- Location: FF_X65_Y4_N31
\dc_register|counter[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	d => \dc_register|Add0~33_sumout\,
	asdata => \~GND~combout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sload => \dc_register|cross~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_register|counter[10]~DUPLICATE_q\);

-- Location: MLABCELL_X65_Y4_N33
\dc_register|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_register|Add0~29_sumout\ = SUM(( \dc_register|counter\(11) ) + ( GND ) + ( \dc_register|Add0~34\ ))
-- \dc_register|Add0~30\ = CARRY(( \dc_register|counter\(11) ) + ( GND ) + ( \dc_register|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_register|ALT_INV_counter\(11),
	cin => \dc_register|Add0~34\,
	sumout => \dc_register|Add0~29_sumout\,
	cout => \dc_register|Add0~30\);

-- Location: FF_X65_Y4_N35
\dc_register|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	d => \dc_register|Add0~29_sumout\,
	asdata => \~GND~combout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sload => \dc_register|cross~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_register|counter\(11));

-- Location: MLABCELL_X65_Y4_N36
\dc_register|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_register|Add0~25_sumout\ = SUM(( \dc_register|counter[12]~DUPLICATE_q\ ) + ( GND ) + ( \dc_register|Add0~30\ ))
-- \dc_register|Add0~26\ = CARRY(( \dc_register|counter[12]~DUPLICATE_q\ ) + ( GND ) + ( \dc_register|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dc_register|ALT_INV_counter[12]~DUPLICATE_q\,
	cin => \dc_register|Add0~30\,
	sumout => \dc_register|Add0~25_sumout\,
	cout => \dc_register|Add0~26\);

-- Location: FF_X65_Y4_N38
\dc_register|counter[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	d => \dc_register|Add0~25_sumout\,
	asdata => \~GND~combout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sload => \dc_register|cross~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_register|counter[12]~DUPLICATE_q\);

-- Location: MLABCELL_X65_Y4_N39
\dc_register|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_register|Add0~5_sumout\ = SUM(( \dc_register|counter[13]~DUPLICATE_q\ ) + ( GND ) + ( \dc_register|Add0~26\ ))
-- \dc_register|Add0~6\ = CARRY(( \dc_register|counter[13]~DUPLICATE_q\ ) + ( GND ) + ( \dc_register|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_register|ALT_INV_counter[13]~DUPLICATE_q\,
	cin => \dc_register|Add0~26\,
	sumout => \dc_register|Add0~5_sumout\,
	cout => \dc_register|Add0~6\);

-- Location: FF_X65_Y4_N40
\dc_register|counter[13]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	d => \dc_register|Add0~5_sumout\,
	asdata => \~GND~combout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sload => \dc_register|cross~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_register|counter[13]~DUPLICATE_q\);

-- Location: FF_X65_Y4_N44
\dc_register|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	d => \dc_register|Add0~1_sumout\,
	asdata => \~GND~combout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sload => \dc_register|cross~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_register|counter\(14));

-- Location: FF_X65_Y4_N41
\dc_register|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	d => \dc_register|Add0~5_sumout\,
	asdata => \~GND~combout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sload => \dc_register|cross~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_register|counter\(13));

-- Location: LABCELL_X64_Y4_N18
\dc_register|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_register|LessThan0~0_combout\ = ( \dc_register|LessThan0~2_combout\ & ( \dc_register|counter[10]~DUPLICATE_q\ & ( (!\dc_register|counter\(14) & !\dc_register|counter\(13)) ) ) ) # ( !\dc_register|LessThan0~2_combout\ & ( 
-- \dc_register|counter[10]~DUPLICATE_q\ & ( (!\dc_register|counter\(14) & !\dc_register|counter\(13)) ) ) ) # ( \dc_register|LessThan0~2_combout\ & ( !\dc_register|counter[10]~DUPLICATE_q\ & ( (!\dc_register|counter\(14) & ((!\dc_register|counter\(13)) # 
-- ((!\dc_register|counter\(12) & !\dc_register|counter\(11))))) ) ) ) # ( !\dc_register|LessThan0~2_combout\ & ( !\dc_register|counter[10]~DUPLICATE_q\ & ( (!\dc_register|counter\(14) & !\dc_register|counter\(13)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010101000000010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_register|ALT_INV_counter\(14),
	datab => \dc_register|ALT_INV_counter\(12),
	datac => \dc_register|ALT_INV_counter\(11),
	datad => \dc_register|ALT_INV_counter\(13),
	datae => \dc_register|ALT_INV_LessThan0~2_combout\,
	dataf => \dc_register|ALT_INV_counter[10]~DUPLICATE_q\,
	combout => \dc_register|LessThan0~0_combout\);

-- Location: FF_X64_Y4_N49
\dc_register|state_reg.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	asdata => \dc_register|Selector1~0_combout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_register|state_reg.s2~q\);

-- Location: LABCELL_X64_Y4_N3
\dc_register|next_state.s3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_register|next_state.s3~0_combout\ = ( \dc_register|detector|state_reg.s3~q\ & ( \dc_register|state_reg.s2~q\ & ( (!\dc_register|LessThan0~1_combout\) # (\dc_register|LessThan0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_register|ALT_INV_LessThan0~0_combout\,
	datab => \dc_register|ALT_INV_LessThan0~1_combout\,
	datae => \dc_register|detector|ALT_INV_state_reg.s3~q\,
	dataf => \dc_register|ALT_INV_state_reg.s2~q\,
	combout => \dc_register|next_state.s3~0_combout\);

-- Location: FF_X64_Y4_N5
\dc_register|state_reg.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	d => \dc_register|next_state.s3~0_combout\,
	clrn => \i_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_register|state_reg.s3~q\);

-- Location: LABCELL_X63_Y4_N0
\dc_counter_ones|Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_counter_ones|Add0~125_sumout\ = SUM(( \dc_counter_ones|timer[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \dc_counter_ones|Add0~126\ = CARRY(( \dc_counter_ones|timer[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_counter_ones|ALT_INV_timer[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \dc_counter_ones|Add0~125_sumout\,
	cout => \dc_counter_ones|Add0~126\);

-- Location: FF_X63_Y4_N2
\dc_counter_ones|timer[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_register|state_reg.s3~q\,
	d => \dc_counter_ones|Add0~125_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_counter_ones|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_counter_ones|timer[0]~DUPLICATE_q\);

-- Location: LABCELL_X63_Y4_N3
\dc_counter_ones|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_counter_ones|Add0~121_sumout\ = SUM(( \dc_counter_ones|timer\(1) ) + ( GND ) + ( \dc_counter_ones|Add0~126\ ))
-- \dc_counter_ones|Add0~122\ = CARRY(( \dc_counter_ones|timer\(1) ) + ( GND ) + ( \dc_counter_ones|Add0~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \dc_counter_ones|ALT_INV_timer\(1),
	cin => \dc_counter_ones|Add0~126\,
	sumout => \dc_counter_ones|Add0~121_sumout\,
	cout => \dc_counter_ones|Add0~122\);

-- Location: FF_X63_Y4_N4
\dc_counter_ones|timer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_register|state_reg.s3~q\,
	d => \dc_counter_ones|Add0~121_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_counter_ones|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_counter_ones|timer\(1));

-- Location: LABCELL_X63_Y4_N6
\dc_counter_ones|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_counter_ones|Add0~1_sumout\ = SUM(( \dc_counter_ones|timer\(2) ) + ( GND ) + ( \dc_counter_ones|Add0~122\ ))
-- \dc_counter_ones|Add0~2\ = CARRY(( \dc_counter_ones|timer\(2) ) + ( GND ) + ( \dc_counter_ones|Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dc_counter_ones|ALT_INV_timer\(2),
	cin => \dc_counter_ones|Add0~122\,
	sumout => \dc_counter_ones|Add0~1_sumout\,
	cout => \dc_counter_ones|Add0~2\);

-- Location: FF_X63_Y4_N8
\dc_counter_ones|timer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_register|state_reg.s3~q\,
	d => \dc_counter_ones|Add0~1_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_counter_ones|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_counter_ones|timer\(2));

-- Location: FF_X63_Y4_N1
\dc_counter_ones|timer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_register|state_reg.s3~q\,
	d => \dc_counter_ones|Add0~125_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_counter_ones|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_counter_ones|timer\(0));

-- Location: LABCELL_X63_Y4_N9
\dc_counter_ones|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_counter_ones|Add0~5_sumout\ = SUM(( \dc_counter_ones|timer[3]~DUPLICATE_q\ ) + ( GND ) + ( \dc_counter_ones|Add0~2\ ))
-- \dc_counter_ones|Add0~6\ = CARRY(( \dc_counter_ones|timer[3]~DUPLICATE_q\ ) + ( GND ) + ( \dc_counter_ones|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \dc_counter_ones|ALT_INV_timer[3]~DUPLICATE_q\,
	cin => \dc_counter_ones|Add0~2\,
	sumout => \dc_counter_ones|Add0~5_sumout\,
	cout => \dc_counter_ones|Add0~6\);

-- Location: LABCELL_X63_Y4_N12
\dc_counter_ones|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_counter_ones|Add0~41_sumout\ = SUM(( \dc_counter_ones|timer\(4) ) + ( GND ) + ( \dc_counter_ones|Add0~6\ ))
-- \dc_counter_ones|Add0~42\ = CARRY(( \dc_counter_ones|timer\(4) ) + ( GND ) + ( \dc_counter_ones|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dc_counter_ones|ALT_INV_timer\(4),
	cin => \dc_counter_ones|Add0~6\,
	sumout => \dc_counter_ones|Add0~41_sumout\,
	cout => \dc_counter_ones|Add0~42\);

-- Location: FF_X63_Y4_N14
\dc_counter_ones|timer[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_register|state_reg.s3~q\,
	d => \dc_counter_ones|Add0~41_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_counter_ones|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_counter_ones|timer\(4));

-- Location: LABCELL_X63_Y4_N15
\dc_counter_ones|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_counter_ones|Add0~77_sumout\ = SUM(( \dc_counter_ones|timer\(5) ) + ( GND ) + ( \dc_counter_ones|Add0~42\ ))
-- \dc_counter_ones|Add0~78\ = CARRY(( \dc_counter_ones|timer\(5) ) + ( GND ) + ( \dc_counter_ones|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \dc_counter_ones|ALT_INV_timer\(5),
	cin => \dc_counter_ones|Add0~42\,
	sumout => \dc_counter_ones|Add0~77_sumout\,
	cout => \dc_counter_ones|Add0~78\);

-- Location: FF_X63_Y4_N17
\dc_counter_ones|timer[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_register|state_reg.s3~q\,
	d => \dc_counter_ones|Add0~77_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_counter_ones|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_counter_ones|timer\(5));

-- Location: LABCELL_X63_Y4_N18
\dc_counter_ones|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_counter_ones|Add0~45_sumout\ = SUM(( \dc_counter_ones|timer\(6) ) + ( GND ) + ( \dc_counter_ones|Add0~78\ ))
-- \dc_counter_ones|Add0~46\ = CARRY(( \dc_counter_ones|timer\(6) ) + ( GND ) + ( \dc_counter_ones|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dc_counter_ones|ALT_INV_timer\(6),
	cin => \dc_counter_ones|Add0~78\,
	sumout => \dc_counter_ones|Add0~45_sumout\,
	cout => \dc_counter_ones|Add0~46\);

-- Location: FF_X63_Y4_N19
\dc_counter_ones|timer[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_register|state_reg.s3~q\,
	d => \dc_counter_ones|Add0~45_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_counter_ones|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_counter_ones|timer\(6));

-- Location: LABCELL_X63_Y4_N21
\dc_counter_ones|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_counter_ones|Add0~49_sumout\ = SUM(( \dc_counter_ones|timer\(7) ) + ( GND ) + ( \dc_counter_ones|Add0~46\ ))
-- \dc_counter_ones|Add0~50\ = CARRY(( \dc_counter_ones|timer\(7) ) + ( GND ) + ( \dc_counter_ones|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_counter_ones|ALT_INV_timer\(7),
	cin => \dc_counter_ones|Add0~46\,
	sumout => \dc_counter_ones|Add0~49_sumout\,
	cout => \dc_counter_ones|Add0~50\);

-- Location: FF_X63_Y4_N23
\dc_counter_ones|timer[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_register|state_reg.s3~q\,
	d => \dc_counter_ones|Add0~49_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_counter_ones|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_counter_ones|timer\(7));

-- Location: LABCELL_X63_Y4_N24
\dc_counter_ones|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_counter_ones|Add0~13_sumout\ = SUM(( \dc_counter_ones|timer\(8) ) + ( GND ) + ( \dc_counter_ones|Add0~50\ ))
-- \dc_counter_ones|Add0~14\ = CARRY(( \dc_counter_ones|timer\(8) ) + ( GND ) + ( \dc_counter_ones|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \dc_counter_ones|ALT_INV_timer\(8),
	cin => \dc_counter_ones|Add0~50\,
	sumout => \dc_counter_ones|Add0~13_sumout\,
	cout => \dc_counter_ones|Add0~14\);

-- Location: FF_X63_Y4_N26
\dc_counter_ones|timer[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_register|state_reg.s3~q\,
	d => \dc_counter_ones|Add0~13_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_counter_ones|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_counter_ones|timer\(8));

-- Location: LABCELL_X63_Y4_N27
\dc_counter_ones|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_counter_ones|Add0~17_sumout\ = SUM(( \dc_counter_ones|timer\(9) ) + ( GND ) + ( \dc_counter_ones|Add0~14\ ))
-- \dc_counter_ones|Add0~18\ = CARRY(( \dc_counter_ones|timer\(9) ) + ( GND ) + ( \dc_counter_ones|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_counter_ones|ALT_INV_timer\(9),
	cin => \dc_counter_ones|Add0~14\,
	sumout => \dc_counter_ones|Add0~17_sumout\,
	cout => \dc_counter_ones|Add0~18\);

-- Location: FF_X63_Y4_N29
\dc_counter_ones|timer[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_register|state_reg.s3~q\,
	d => \dc_counter_ones|Add0~17_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_counter_ones|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_counter_ones|timer\(9));

-- Location: LABCELL_X63_Y4_N30
\dc_counter_ones|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_counter_ones|Add0~21_sumout\ = SUM(( \dc_counter_ones|timer\(10) ) + ( GND ) + ( \dc_counter_ones|Add0~18\ ))
-- \dc_counter_ones|Add0~22\ = CARRY(( \dc_counter_ones|timer\(10) ) + ( GND ) + ( \dc_counter_ones|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dc_counter_ones|ALT_INV_timer\(10),
	cin => \dc_counter_ones|Add0~18\,
	sumout => \dc_counter_ones|Add0~21_sumout\,
	cout => \dc_counter_ones|Add0~22\);

-- Location: FF_X63_Y4_N32
\dc_counter_ones|timer[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_register|state_reg.s3~q\,
	d => \dc_counter_ones|Add0~21_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_counter_ones|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_counter_ones|timer\(10));

-- Location: LABCELL_X63_Y4_N33
\dc_counter_ones|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_counter_ones|Add0~117_sumout\ = SUM(( \dc_counter_ones|timer\(11) ) + ( GND ) + ( \dc_counter_ones|Add0~22\ ))
-- \dc_counter_ones|Add0~118\ = CARRY(( \dc_counter_ones|timer\(11) ) + ( GND ) + ( \dc_counter_ones|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_counter_ones|ALT_INV_timer\(11),
	cin => \dc_counter_ones|Add0~22\,
	sumout => \dc_counter_ones|Add0~117_sumout\,
	cout => \dc_counter_ones|Add0~118\);

-- Location: FF_X63_Y4_N35
\dc_counter_ones|timer[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_register|state_reg.s3~q\,
	d => \dc_counter_ones|Add0~117_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_counter_ones|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_counter_ones|timer\(11));

-- Location: LABCELL_X63_Y4_N36
\dc_counter_ones|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_counter_ones|Add0~37_sumout\ = SUM(( \dc_counter_ones|timer[12]~DUPLICATE_q\ ) + ( GND ) + ( \dc_counter_ones|Add0~118\ ))
-- \dc_counter_ones|Add0~38\ = CARRY(( \dc_counter_ones|timer[12]~DUPLICATE_q\ ) + ( GND ) + ( \dc_counter_ones|Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dc_counter_ones|ALT_INV_timer[12]~DUPLICATE_q\,
	cin => \dc_counter_ones|Add0~118\,
	sumout => \dc_counter_ones|Add0~37_sumout\,
	cout => \dc_counter_ones|Add0~38\);

-- Location: FF_X63_Y4_N37
\dc_counter_ones|timer[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_register|state_reg.s3~q\,
	d => \dc_counter_ones|Add0~37_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_counter_ones|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_counter_ones|timer[12]~DUPLICATE_q\);

-- Location: LABCELL_X63_Y4_N39
\dc_counter_ones|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_counter_ones|Add0~33_sumout\ = SUM(( \dc_counter_ones|timer\(13) ) + ( GND ) + ( \dc_counter_ones|Add0~38\ ))
-- \dc_counter_ones|Add0~34\ = CARRY(( \dc_counter_ones|timer\(13) ) + ( GND ) + ( \dc_counter_ones|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \dc_counter_ones|ALT_INV_timer\(13),
	cin => \dc_counter_ones|Add0~38\,
	sumout => \dc_counter_ones|Add0~33_sumout\,
	cout => \dc_counter_ones|Add0~34\);

-- Location: FF_X63_Y4_N41
\dc_counter_ones|timer[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_register|state_reg.s3~q\,
	d => \dc_counter_ones|Add0~33_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_counter_ones|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_counter_ones|timer\(13));

-- Location: LABCELL_X63_Y4_N42
\dc_counter_ones|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_counter_ones|Add0~29_sumout\ = SUM(( \dc_counter_ones|timer\(14) ) + ( GND ) + ( \dc_counter_ones|Add0~34\ ))
-- \dc_counter_ones|Add0~30\ = CARRY(( \dc_counter_ones|timer\(14) ) + ( GND ) + ( \dc_counter_ones|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dc_counter_ones|ALT_INV_timer\(14),
	cin => \dc_counter_ones|Add0~34\,
	sumout => \dc_counter_ones|Add0~29_sumout\,
	cout => \dc_counter_ones|Add0~30\);

-- Location: FF_X63_Y4_N44
\dc_counter_ones|timer[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_register|state_reg.s3~q\,
	d => \dc_counter_ones|Add0~29_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_counter_ones|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_counter_ones|timer\(14));

-- Location: LABCELL_X63_Y4_N45
\dc_counter_ones|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_counter_ones|Add0~81_sumout\ = SUM(( \dc_counter_ones|timer\(15) ) + ( GND ) + ( \dc_counter_ones|Add0~30\ ))
-- \dc_counter_ones|Add0~82\ = CARRY(( \dc_counter_ones|timer\(15) ) + ( GND ) + ( \dc_counter_ones|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dc_counter_ones|ALT_INV_timer\(15),
	cin => \dc_counter_ones|Add0~30\,
	sumout => \dc_counter_ones|Add0~81_sumout\,
	cout => \dc_counter_ones|Add0~82\);

-- Location: FF_X63_Y4_N47
\dc_counter_ones|timer[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_register|state_reg.s3~q\,
	d => \dc_counter_ones|Add0~81_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_counter_ones|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_counter_ones|timer\(15));

-- Location: LABCELL_X63_Y4_N48
\dc_counter_ones|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_counter_ones|Add0~73_sumout\ = SUM(( \dc_counter_ones|timer\(16) ) + ( GND ) + ( \dc_counter_ones|Add0~82\ ))
-- \dc_counter_ones|Add0~74\ = CARRY(( \dc_counter_ones|timer\(16) ) + ( GND ) + ( \dc_counter_ones|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dc_counter_ones|ALT_INV_timer\(16),
	cin => \dc_counter_ones|Add0~82\,
	sumout => \dc_counter_ones|Add0~73_sumout\,
	cout => \dc_counter_ones|Add0~74\);

-- Location: FF_X63_Y4_N50
\dc_counter_ones|timer[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_register|state_reg.s3~q\,
	d => \dc_counter_ones|Add0~73_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_counter_ones|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_counter_ones|timer\(16));

-- Location: LABCELL_X63_Y4_N51
\dc_counter_ones|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_counter_ones|Add0~69_sumout\ = SUM(( \dc_counter_ones|timer\(17) ) + ( GND ) + ( \dc_counter_ones|Add0~74\ ))
-- \dc_counter_ones|Add0~70\ = CARRY(( \dc_counter_ones|timer\(17) ) + ( GND ) + ( \dc_counter_ones|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_counter_ones|ALT_INV_timer\(17),
	cin => \dc_counter_ones|Add0~74\,
	sumout => \dc_counter_ones|Add0~69_sumout\,
	cout => \dc_counter_ones|Add0~70\);

-- Location: FF_X63_Y4_N53
\dc_counter_ones|timer[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_register|state_reg.s3~q\,
	d => \dc_counter_ones|Add0~69_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_counter_ones|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_counter_ones|timer\(17));

-- Location: LABCELL_X63_Y4_N54
\dc_counter_ones|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_counter_ones|Add0~65_sumout\ = SUM(( \dc_counter_ones|timer\(18) ) + ( GND ) + ( \dc_counter_ones|Add0~70\ ))
-- \dc_counter_ones|Add0~66\ = CARRY(( \dc_counter_ones|timer\(18) ) + ( GND ) + ( \dc_counter_ones|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dc_counter_ones|ALT_INV_timer\(18),
	cin => \dc_counter_ones|Add0~70\,
	sumout => \dc_counter_ones|Add0~65_sumout\,
	cout => \dc_counter_ones|Add0~66\);

-- Location: FF_X63_Y4_N55
\dc_counter_ones|timer[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_register|state_reg.s3~q\,
	d => \dc_counter_ones|Add0~65_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_counter_ones|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_counter_ones|timer\(18));

-- Location: LABCELL_X63_Y4_N57
\dc_counter_ones|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_counter_ones|Add0~61_sumout\ = SUM(( \dc_counter_ones|timer\(19) ) + ( GND ) + ( \dc_counter_ones|Add0~66\ ))
-- \dc_counter_ones|Add0~62\ = CARRY(( \dc_counter_ones|timer\(19) ) + ( GND ) + ( \dc_counter_ones|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dc_counter_ones|ALT_INV_timer\(19),
	cin => \dc_counter_ones|Add0~66\,
	sumout => \dc_counter_ones|Add0~61_sumout\,
	cout => \dc_counter_ones|Add0~62\);

-- Location: FF_X63_Y4_N58
\dc_counter_ones|timer[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_register|state_reg.s3~q\,
	d => \dc_counter_ones|Add0~61_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_counter_ones|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_counter_ones|timer\(19));

-- Location: LABCELL_X63_Y3_N0
\dc_counter_ones|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_counter_ones|Add0~57_sumout\ = SUM(( \dc_counter_ones|timer\(20) ) + ( GND ) + ( \dc_counter_ones|Add0~62\ ))
-- \dc_counter_ones|Add0~58\ = CARRY(( \dc_counter_ones|timer\(20) ) + ( GND ) + ( \dc_counter_ones|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_counter_ones|ALT_INV_timer\(20),
	cin => \dc_counter_ones|Add0~62\,
	sumout => \dc_counter_ones|Add0~57_sumout\,
	cout => \dc_counter_ones|Add0~58\);

-- Location: FF_X63_Y3_N2
\dc_counter_ones|timer[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_register|state_reg.s3~q\,
	d => \dc_counter_ones|Add0~57_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_counter_ones|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_counter_ones|timer\(20));

-- Location: LABCELL_X63_Y3_N3
\dc_counter_ones|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_counter_ones|Add0~53_sumout\ = SUM(( \dc_counter_ones|timer\(21) ) + ( GND ) + ( \dc_counter_ones|Add0~58\ ))
-- \dc_counter_ones|Add0~54\ = CARRY(( \dc_counter_ones|timer\(21) ) + ( GND ) + ( \dc_counter_ones|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \dc_counter_ones|ALT_INV_timer\(21),
	cin => \dc_counter_ones|Add0~58\,
	sumout => \dc_counter_ones|Add0~53_sumout\,
	cout => \dc_counter_ones|Add0~54\);

-- Location: FF_X63_Y3_N5
\dc_counter_ones|timer[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_register|state_reg.s3~q\,
	d => \dc_counter_ones|Add0~53_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_counter_ones|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_counter_ones|timer\(21));

-- Location: LABCELL_X63_Y3_N6
\dc_counter_ones|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_counter_ones|Add0~25_sumout\ = SUM(( \dc_counter_ones|timer\(22) ) + ( GND ) + ( \dc_counter_ones|Add0~54\ ))
-- \dc_counter_ones|Add0~26\ = CARRY(( \dc_counter_ones|timer\(22) ) + ( GND ) + ( \dc_counter_ones|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dc_counter_ones|ALT_INV_timer\(22),
	cin => \dc_counter_ones|Add0~54\,
	sumout => \dc_counter_ones|Add0~25_sumout\,
	cout => \dc_counter_ones|Add0~26\);

-- Location: FF_X63_Y3_N8
\dc_counter_ones|timer[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_register|state_reg.s3~q\,
	d => \dc_counter_ones|Add0~25_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_counter_ones|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_counter_ones|timer\(22));

-- Location: LABCELL_X63_Y3_N9
\dc_counter_ones|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_counter_ones|Add0~85_sumout\ = SUM(( \dc_counter_ones|timer\(23) ) + ( GND ) + ( \dc_counter_ones|Add0~26\ ))
-- \dc_counter_ones|Add0~86\ = CARRY(( \dc_counter_ones|timer\(23) ) + ( GND ) + ( \dc_counter_ones|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_counter_ones|ALT_INV_timer\(23),
	cin => \dc_counter_ones|Add0~26\,
	sumout => \dc_counter_ones|Add0~85_sumout\,
	cout => \dc_counter_ones|Add0~86\);

-- Location: FF_X63_Y3_N10
\dc_counter_ones|timer[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_register|state_reg.s3~q\,
	d => \dc_counter_ones|Add0~85_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_counter_ones|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_counter_ones|timer\(23));

-- Location: LABCELL_X63_Y3_N12
\dc_counter_ones|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_counter_ones|Add0~113_sumout\ = SUM(( \dc_counter_ones|timer\(24) ) + ( GND ) + ( \dc_counter_ones|Add0~86\ ))
-- \dc_counter_ones|Add0~114\ = CARRY(( \dc_counter_ones|timer\(24) ) + ( GND ) + ( \dc_counter_ones|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dc_counter_ones|ALT_INV_timer\(24),
	cin => \dc_counter_ones|Add0~86\,
	sumout => \dc_counter_ones|Add0~113_sumout\,
	cout => \dc_counter_ones|Add0~114\);

-- Location: FF_X63_Y3_N14
\dc_counter_ones|timer[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_register|state_reg.s3~q\,
	d => \dc_counter_ones|Add0~113_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_counter_ones|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_counter_ones|timer\(24));

-- Location: LABCELL_X63_Y3_N15
\dc_counter_ones|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_counter_ones|Add0~109_sumout\ = SUM(( \dc_counter_ones|timer\(25) ) + ( GND ) + ( \dc_counter_ones|Add0~114\ ))
-- \dc_counter_ones|Add0~110\ = CARRY(( \dc_counter_ones|timer\(25) ) + ( GND ) + ( \dc_counter_ones|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dc_counter_ones|ALT_INV_timer\(25),
	cin => \dc_counter_ones|Add0~114\,
	sumout => \dc_counter_ones|Add0~109_sumout\,
	cout => \dc_counter_ones|Add0~110\);

-- Location: FF_X63_Y3_N16
\dc_counter_ones|timer[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_register|state_reg.s3~q\,
	d => \dc_counter_ones|Add0~109_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_counter_ones|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_counter_ones|timer\(25));

-- Location: LABCELL_X63_Y3_N18
\dc_counter_ones|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_counter_ones|Add0~105_sumout\ = SUM(( \dc_counter_ones|timer\(26) ) + ( GND ) + ( \dc_counter_ones|Add0~110\ ))
-- \dc_counter_ones|Add0~106\ = CARRY(( \dc_counter_ones|timer\(26) ) + ( GND ) + ( \dc_counter_ones|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dc_counter_ones|ALT_INV_timer\(26),
	cin => \dc_counter_ones|Add0~110\,
	sumout => \dc_counter_ones|Add0~105_sumout\,
	cout => \dc_counter_ones|Add0~106\);

-- Location: FF_X63_Y3_N19
\dc_counter_ones|timer[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_register|state_reg.s3~q\,
	d => \dc_counter_ones|Add0~105_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_counter_ones|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_counter_ones|timer\(26));

-- Location: LABCELL_X63_Y3_N21
\dc_counter_ones|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_counter_ones|Add0~101_sumout\ = SUM(( \dc_counter_ones|timer\(27) ) + ( GND ) + ( \dc_counter_ones|Add0~106\ ))
-- \dc_counter_ones|Add0~102\ = CARRY(( \dc_counter_ones|timer\(27) ) + ( GND ) + ( \dc_counter_ones|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_counter_ones|ALT_INV_timer\(27),
	cin => \dc_counter_ones|Add0~106\,
	sumout => \dc_counter_ones|Add0~101_sumout\,
	cout => \dc_counter_ones|Add0~102\);

-- Location: FF_X63_Y3_N23
\dc_counter_ones|timer[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_register|state_reg.s3~q\,
	d => \dc_counter_ones|Add0~101_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_counter_ones|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_counter_ones|timer\(27));

-- Location: LABCELL_X63_Y3_N24
\dc_counter_ones|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_counter_ones|Add0~97_sumout\ = SUM(( \dc_counter_ones|timer\(28) ) + ( GND ) + ( \dc_counter_ones|Add0~102\ ))
-- \dc_counter_ones|Add0~98\ = CARRY(( \dc_counter_ones|timer\(28) ) + ( GND ) + ( \dc_counter_ones|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dc_counter_ones|ALT_INV_timer\(28),
	cin => \dc_counter_ones|Add0~102\,
	sumout => \dc_counter_ones|Add0~97_sumout\,
	cout => \dc_counter_ones|Add0~98\);

-- Location: FF_X63_Y3_N25
\dc_counter_ones|timer[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_register|state_reg.s3~q\,
	d => \dc_counter_ones|Add0~97_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_counter_ones|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_counter_ones|timer\(28));

-- Location: LABCELL_X63_Y3_N27
\dc_counter_ones|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_counter_ones|Add0~93_sumout\ = SUM(( \dc_counter_ones|timer\(29) ) + ( GND ) + ( \dc_counter_ones|Add0~98\ ))
-- \dc_counter_ones|Add0~94\ = CARRY(( \dc_counter_ones|timer\(29) ) + ( GND ) + ( \dc_counter_ones|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_counter_ones|ALT_INV_timer\(29),
	cin => \dc_counter_ones|Add0~98\,
	sumout => \dc_counter_ones|Add0~93_sumout\,
	cout => \dc_counter_ones|Add0~94\);

-- Location: FF_X63_Y3_N29
\dc_counter_ones|timer[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_register|state_reg.s3~q\,
	d => \dc_counter_ones|Add0~93_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_counter_ones|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_counter_ones|timer\(29));

-- Location: LABCELL_X63_Y3_N30
\dc_counter_ones|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_counter_ones|Add0~89_sumout\ = SUM(( \dc_counter_ones|timer\(30) ) + ( GND ) + ( \dc_counter_ones|Add0~94\ ))
-- \dc_counter_ones|Add0~90\ = CARRY(( \dc_counter_ones|timer\(30) ) + ( GND ) + ( \dc_counter_ones|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dc_counter_ones|ALT_INV_timer\(30),
	cin => \dc_counter_ones|Add0~94\,
	sumout => \dc_counter_ones|Add0~89_sumout\,
	cout => \dc_counter_ones|Add0~90\);

-- Location: FF_X63_Y3_N32
\dc_counter_ones|timer[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_register|state_reg.s3~q\,
	d => \dc_counter_ones|Add0~89_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_counter_ones|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_counter_ones|timer\(30));

-- Location: FF_X63_Y3_N28
\dc_counter_ones|timer[29]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_register|state_reg.s3~q\,
	d => \dc_counter_ones|Add0~93_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_counter_ones|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_counter_ones|timer[29]~DUPLICATE_q\);

-- Location: LABCELL_X63_Y3_N48
\dc_counter_ones|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_counter_ones|Equal0~3_combout\ = ( !\dc_counter_ones|timer[29]~DUPLICATE_q\ & ( !\dc_counter_ones|timer\(28) & ( (!\dc_counter_ones|timer\(30) & (!\dc_counter_ones|timer\(5) & (!\dc_counter_ones|timer\(23) & !\dc_counter_ones|timer\(15)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_counter_ones|ALT_INV_timer\(30),
	datab => \dc_counter_ones|ALT_INV_timer\(5),
	datac => \dc_counter_ones|ALT_INV_timer\(23),
	datad => \dc_counter_ones|ALT_INV_timer\(15),
	datae => \dc_counter_ones|ALT_INV_timer[29]~DUPLICATE_q\,
	dataf => \dc_counter_ones|ALT_INV_timer\(28),
	combout => \dc_counter_ones|Equal0~3_combout\);

-- Location: FF_X63_Y4_N31
\dc_counter_ones|timer[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_register|state_reg.s3~q\,
	d => \dc_counter_ones|Add0~21_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_counter_ones|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_counter_ones|timer[10]~DUPLICATE_q\);

-- Location: FF_X63_Y3_N7
\dc_counter_ones|timer[22]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_register|state_reg.s3~q\,
	d => \dc_counter_ones|Add0~25_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_counter_ones|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_counter_ones|timer[22]~DUPLICATE_q\);

-- Location: LABCELL_X62_Y3_N15
\dc_counter_ones|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_counter_ones|Equal0~0_combout\ = ( !\dc_counter_ones|timer[22]~DUPLICATE_q\ & ( !\dc_counter_ones|timer\(9) & ( (!\dc_counter_ones|timer[10]~DUPLICATE_q\ & !\dc_counter_ones|timer\(8)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_counter_ones|ALT_INV_timer[10]~DUPLICATE_q\,
	datab => \dc_counter_ones|ALT_INV_timer\(8),
	datae => \dc_counter_ones|ALT_INV_timer[22]~DUPLICATE_q\,
	dataf => \dc_counter_ones|ALT_INV_timer\(9),
	combout => \dc_counter_ones|Equal0~0_combout\);

-- Location: FF_X63_Y4_N52
\dc_counter_ones|timer[17]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_register|state_reg.s3~q\,
	d => \dc_counter_ones|Add0~69_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_counter_ones|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_counter_ones|timer[17]~DUPLICATE_q\);

-- Location: FF_X63_Y3_N4
\dc_counter_ones|timer[21]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_register|state_reg.s3~q\,
	d => \dc_counter_ones|Add0~53_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_counter_ones|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_counter_ones|timer[21]~DUPLICATE_q\);

-- Location: LABCELL_X63_Y3_N42
\dc_counter_ones|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_counter_ones|Equal0~2_combout\ = ( !\dc_counter_ones|timer\(20) & ( !\dc_counter_ones|timer[21]~DUPLICATE_q\ & ( (!\dc_counter_ones|timer\(18) & (!\dc_counter_ones|timer\(16) & (!\dc_counter_ones|timer[17]~DUPLICATE_q\ & 
-- !\dc_counter_ones|timer\(19)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_counter_ones|ALT_INV_timer\(18),
	datab => \dc_counter_ones|ALT_INV_timer\(16),
	datac => \dc_counter_ones|ALT_INV_timer[17]~DUPLICATE_q\,
	datad => \dc_counter_ones|ALT_INV_timer\(19),
	datae => \dc_counter_ones|ALT_INV_timer\(20),
	dataf => \dc_counter_ones|ALT_INV_timer[21]~DUPLICATE_q\,
	combout => \dc_counter_ones|Equal0~2_combout\);

-- Location: FF_X63_Y4_N38
\dc_counter_ones|timer[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_register|state_reg.s3~q\,
	d => \dc_counter_ones|Add0~37_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_counter_ones|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_counter_ones|timer\(12));

-- Location: LABCELL_X62_Y4_N0
\dc_counter_ones|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_counter_ones|Equal0~1_combout\ = ( !\dc_counter_ones|timer\(4) & ( !\dc_counter_ones|timer\(13) & ( (!\dc_counter_ones|timer\(12) & (!\dc_counter_ones|timer\(7) & (!\dc_counter_ones|timer\(14) & !\dc_counter_ones|timer\(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_counter_ones|ALT_INV_timer\(12),
	datab => \dc_counter_ones|ALT_INV_timer\(7),
	datac => \dc_counter_ones|ALT_INV_timer\(14),
	datad => \dc_counter_ones|ALT_INV_timer\(6),
	datae => \dc_counter_ones|ALT_INV_timer\(4),
	dataf => \dc_counter_ones|ALT_INV_timer\(13),
	combout => \dc_counter_ones|Equal0~1_combout\);

-- Location: LABCELL_X63_Y3_N33
\dc_counter_ones|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_counter_ones|Add0~9_sumout\ = SUM(( \dc_counter_ones|timer\(31) ) + ( GND ) + ( \dc_counter_ones|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_counter_ones|ALT_INV_timer\(31),
	cin => \dc_counter_ones|Add0~90\,
	sumout => \dc_counter_ones|Add0~9_sumout\);

-- Location: FF_X63_Y3_N35
\dc_counter_ones|timer[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_register|state_reg.s3~q\,
	d => \dc_counter_ones|Add0~9_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_counter_ones|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_counter_ones|timer\(31));

-- Location: FF_X63_Y3_N22
\dc_counter_ones|timer[27]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_register|state_reg.s3~q\,
	d => \dc_counter_ones|Add0~101_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_counter_ones|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_counter_ones|timer[27]~DUPLICATE_q\);

-- Location: FF_X63_Y3_N20
\dc_counter_ones|timer[26]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_register|state_reg.s3~q\,
	d => \dc_counter_ones|Add0~105_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_counter_ones|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_counter_ones|timer[26]~DUPLICATE_q\);

-- Location: FF_X63_Y3_N13
\dc_counter_ones|timer[24]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_register|state_reg.s3~q\,
	d => \dc_counter_ones|Add0~113_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_counter_ones|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_counter_ones|timer[24]~DUPLICATE_q\);

-- Location: LABCELL_X62_Y3_N54
\dc_counter_ones|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_counter_ones|Equal0~4_combout\ = ( !\dc_counter_ones|timer\(25) & ( !\dc_counter_ones|timer[24]~DUPLICATE_q\ & ( (!\dc_counter_ones|timer[27]~DUPLICATE_q\ & (!\dc_counter_ones|timer[26]~DUPLICATE_q\ & !\dc_counter_ones|timer\(11))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_counter_ones|ALT_INV_timer[27]~DUPLICATE_q\,
	datab => \dc_counter_ones|ALT_INV_timer[26]~DUPLICATE_q\,
	datac => \dc_counter_ones|ALT_INV_timer\(11),
	datae => \dc_counter_ones|ALT_INV_timer\(25),
	dataf => \dc_counter_ones|ALT_INV_timer[24]~DUPLICATE_q\,
	combout => \dc_counter_ones|Equal0~4_combout\);

-- Location: LABCELL_X63_Y3_N36
\dc_counter_ones|Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_counter_ones|Equal0~5_combout\ = ( !\dc_counter_ones|timer\(31) & ( \dc_counter_ones|Equal0~4_combout\ & ( (\dc_counter_ones|Equal0~3_combout\ & (\dc_counter_ones|Equal0~0_combout\ & (\dc_counter_ones|Equal0~2_combout\ & 
-- \dc_counter_ones|Equal0~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_counter_ones|ALT_INV_Equal0~3_combout\,
	datab => \dc_counter_ones|ALT_INV_Equal0~0_combout\,
	datac => \dc_counter_ones|ALT_INV_Equal0~2_combout\,
	datad => \dc_counter_ones|ALT_INV_Equal0~1_combout\,
	datae => \dc_counter_ones|ALT_INV_timer\(31),
	dataf => \dc_counter_ones|ALT_INV_Equal0~4_combout\,
	combout => \dc_counter_ones|Equal0~5_combout\);

-- Location: LABCELL_X63_Y3_N54
\dc_counter_ones|WideOr0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_counter_ones|WideOr0~0_combout\ = ( \dc_counter_ones|timer\(1) & ( (!\dc_counter_ones|Equal0~5_combout\) # (\dc_counter_ones|timer\(3)) ) ) # ( !\dc_counter_ones|timer\(1) & ( (!\dc_counter_ones|Equal0~5_combout\) # ((\dc_counter_ones|timer\(3) & 
-- ((\dc_counter_ones|timer\(0)) # (\dc_counter_ones|timer\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100010101111111110001010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_counter_ones|ALT_INV_timer\(3),
	datab => \dc_counter_ones|ALT_INV_timer\(2),
	datac => \dc_counter_ones|ALT_INV_timer\(0),
	datad => \dc_counter_ones|ALT_INV_Equal0~5_combout\,
	dataf => \dc_counter_ones|ALT_INV_timer\(1),
	combout => \dc_counter_ones|WideOr0~0_combout\);

-- Location: FF_X63_Y4_N10
\dc_counter_ones|timer[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_register|state_reg.s3~q\,
	d => \dc_counter_ones|Add0~5_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_counter_ones|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_counter_ones|timer[3]~DUPLICATE_q\);

-- Location: FF_X63_Y4_N11
\dc_counter_ones|timer[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_register|state_reg.s3~q\,
	d => \dc_counter_ones|Add0~5_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_counter_ones|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_counter_ones|timer\(3));

-- Location: FF_X63_Y4_N5
\dc_counter_ones|timer[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_register|state_reg.s3~q\,
	d => \dc_counter_ones|Add0~121_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_counter_ones|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_counter_ones|timer[1]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y3_N42
\dc_counter_ones|WideNor0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_counter_ones|WideNor0~0_combout\ = ( \dc_counter_ones|timer[0]~DUPLICATE_q\ & ( \dc_counter_ones|timer\(2) & ( (!\dc_counter_ones|timer\(3) & \dc_counter_ones|Equal0~5_combout\) ) ) ) # ( \dc_counter_ones|timer[0]~DUPLICATE_q\ & ( 
-- !\dc_counter_ones|timer\(2) & ( (\dc_counter_ones|Equal0~5_combout\ & ((!\dc_counter_ones|timer\(3)) # (!\dc_counter_ones|timer[1]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001110111000000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_counter_ones|ALT_INV_timer\(3),
	datab => \dc_counter_ones|ALT_INV_timer[1]~DUPLICATE_q\,
	datad => \dc_counter_ones|ALT_INV_Equal0~5_combout\,
	datae => \dc_counter_ones|ALT_INV_timer[0]~DUPLICATE_q\,
	dataf => \dc_counter_ones|ALT_INV_timer\(2),
	combout => \dc_counter_ones|WideNor0~0_combout\);

-- Location: LABCELL_X64_Y3_N15
\dc_counter_ones|WideOr0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_counter_ones|WideOr0~combout\ = ( !\dc_counter_ones|timer\(3) & ( \dc_counter_ones|Equal0~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dc_counter_ones|ALT_INV_Equal0~5_combout\,
	dataf => \dc_counter_ones|ALT_INV_timer\(3),
	combout => \dc_counter_ones|WideOr0~combout\);

-- Location: LABCELL_X64_Y3_N3
\dc_counter_ones|WideOr1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_counter_ones|WideOr1~combout\ = ( !\dc_counter_ones|timer\(2) & ( (\dc_counter_ones|Equal0~5_combout\ & ((!\dc_counter_ones|timer[1]~DUPLICATE_q\) # (!\dc_counter_ones|timer\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001100000011110000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dc_counter_ones|ALT_INV_timer[1]~DUPLICATE_q\,
	datac => \dc_counter_ones|ALT_INV_Equal0~5_combout\,
	datad => \dc_counter_ones|ALT_INV_timer\(3),
	dataf => \dc_counter_ones|ALT_INV_timer\(2),
	combout => \dc_counter_ones|WideOr1~combout\);

-- Location: LABCELL_X63_Y3_N57
\dc_counter_ones|WideOr2\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_counter_ones|WideOr2~combout\ = ( \dc_counter_ones|Equal0~5_combout\ & ( (!\dc_counter_ones|timer[1]~DUPLICATE_q\ & ((!\dc_counter_ones|timer\(2)) # (!\dc_counter_ones|timer\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000110000001111000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dc_counter_ones|ALT_INV_timer\(2),
	datac => \dc_counter_ones|ALT_INV_timer[1]~DUPLICATE_q\,
	datad => \dc_counter_ones|ALT_INV_timer\(3),
	dataf => \dc_counter_ones|ALT_INV_Equal0~5_combout\,
	combout => \dc_counter_ones|WideOr2~combout\);

-- Location: LABCELL_X64_Y3_N24
\dc_converter|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_converter|Mux7~0_combout\ = ( \dc_counter_ones|WideOr1~combout\ & ( \dc_counter_ones|WideOr2~combout\ ) ) # ( !\dc_counter_ones|WideOr1~combout\ & ( \dc_counter_ones|WideOr2~combout\ & ( \dc_counter_ones|WideOr0~combout\ ) ) ) # ( 
-- \dc_counter_ones|WideOr1~combout\ & ( !\dc_counter_ones|WideOr2~combout\ & ( (\dc_counter_ones|WideNor0~0_combout\ & \dc_counter_ones|WideOr0~combout\) ) ) ) # ( !\dc_counter_ones|WideOr1~combout\ & ( !\dc_counter_ones|WideOr2~combout\ & ( 
-- \dc_counter_ones|WideOr0~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000100010001000100110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_counter_ones|ALT_INV_WideNor0~0_combout\,
	datab => \dc_counter_ones|ALT_INV_WideOr0~combout\,
	datae => \dc_counter_ones|ALT_INV_WideOr1~combout\,
	dataf => \dc_counter_ones|ALT_INV_WideOr2~combout\,
	combout => \dc_converter|Mux7~0_combout\);

-- Location: FF_X64_Y3_N26
\dc_converter|reg_ones[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	d => \dc_converter|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_converter|reg_ones[1][0]~q\);

-- Location: FF_X60_Y5_N53
\dc_converter|state_reg.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	d => \dc_converter|state_reg.idle~feeder_combout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_converter|state_reg.idle~q\);

-- Location: LABCELL_X60_Y5_N54
\dc_converter|Output30bit[3]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_converter|Output30bit[3]~11_combout\ = ( \dc_converter|reg_ones[1][0]~q\ & ( \dc_converter|state_reg.idle~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \dc_converter|ALT_INV_reg_ones[1][0]~q\,
	dataf => \dc_converter|ALT_INV_state_reg.idle~q\,
	combout => \dc_converter|Output30bit[3]~11_combout\);

-- Location: LABCELL_X61_Y5_N48
\dc_preparator|Selector16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_preparator|Selector16~0_combout\ = ( \dc_converter|state_reg.idle~q\ & ( \dc_preparator|state_reg.s3~q\ ) ) # ( !\dc_converter|state_reg.idle~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \dc_preparator|ALT_INV_state_reg.s3~q\,
	dataf => \dc_converter|ALT_INV_state_reg.idle~q\,
	combout => \dc_preparator|Selector16~0_combout\);

-- Location: FF_X62_Y5_N59
\dc_preparator|ex[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	asdata => \dc_converter|Output30bit[3]~11_combout\,
	sload => VCC,
	ena => \dc_preparator|Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_preparator|ex\(3));

-- Location: LABCELL_X64_Y3_N48
\dc_converter|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_converter|Mux6~0_combout\ = ( \dc_counter_ones|WideOr2~combout\ & ( (!\dc_counter_ones|WideNor0~0_combout\ & ((\dc_counter_ones|WideOr1~combout\))) # (\dc_counter_ones|WideNor0~0_combout\ & (!\dc_counter_ones|WideOr0~combout\ & 
-- !\dc_counter_ones|WideOr1~combout\)) ) ) # ( !\dc_counter_ones|WideOr2~combout\ & ( (!\dc_counter_ones|WideNor0~0_combout\ & ((!\dc_counter_ones|WideOr1~combout\) # (\dc_counter_ones|WideOr0~combout\))) # (\dc_counter_ones|WideNor0~0_combout\ & 
-- (!\dc_counter_ones|WideOr0~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110011011100110111001101110011001001010010010100100101001001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_counter_ones|ALT_INV_WideNor0~0_combout\,
	datab => \dc_counter_ones|ALT_INV_WideOr0~combout\,
	datac => \dc_counter_ones|ALT_INV_WideOr1~combout\,
	dataf => \dc_counter_ones|ALT_INV_WideOr2~combout\,
	combout => \dc_converter|Mux6~0_combout\);

-- Location: FF_X64_Y3_N50
\dc_converter|reg_ones[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	d => \dc_converter|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_converter|reg_ones[1][2]~q\);

-- Location: LABCELL_X63_Y5_N36
\dc_converter|Output30bit[5]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_converter|Output30bit[5]~12_combout\ = ( \dc_converter|reg_ones[1][2]~q\ & ( \dc_converter|state_reg.idle~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \dc_converter|ALT_INV_state_reg.idle~DUPLICATE_q\,
	dataf => \dc_converter|ALT_INV_reg_ones[1][2]~q\,
	combout => \dc_converter|Output30bit[5]~12_combout\);

-- Location: FF_X64_Y5_N22
\dc_preparator|ex[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	asdata => \dc_converter|Output30bit[5]~12_combout\,
	sload => VCC,
	ena => \dc_preparator|Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_preparator|ex\(5));

-- Location: LABCELL_X62_Y5_N0
\dc_preparator|Equal1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_preparator|Equal1~5_combout\ = ( \dc_converter|reg_ones[1][2]~q\ & ( (!\dc_converter|state_reg.idle~DUPLICATE_q\ & (!\dc_preparator|ex\(3) & ((!\dc_preparator|ex\(5))))) # (\dc_converter|state_reg.idle~DUPLICATE_q\ & (\dc_preparator|ex\(5) & 
-- (!\dc_preparator|ex\(3) $ (\dc_converter|reg_ones[1][0]~q\)))) ) ) # ( !\dc_converter|reg_ones[1][2]~q\ & ( (!\dc_preparator|ex\(5) & (!\dc_preparator|ex\(3) $ (((\dc_converter|state_reg.idle~DUPLICATE_q\ & \dc_converter|reg_ones[1][0]~q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100100100000000110010010000000010001000010000011000100001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_converter|ALT_INV_state_reg.idle~DUPLICATE_q\,
	datab => \dc_preparator|ALT_INV_ex\(3),
	datac => \dc_converter|ALT_INV_reg_ones[1][0]~q\,
	datad => \dc_preparator|ALT_INV_ex\(5),
	dataf => \dc_converter|ALT_INV_reg_ones[1][2]~q\,
	combout => \dc_preparator|Equal1~5_combout\);

-- Location: LABCELL_X64_Y5_N9
\dc_converter|reg_ones[0][0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_converter|reg_ones[0][0]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \dc_converter|reg_ones[0][0]~feeder_combout\);

-- Location: FF_X64_Y5_N10
\dc_converter|reg_ones[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	d => \dc_converter|reg_ones[0][0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_converter|reg_ones[0][0]~q\);

-- Location: LABCELL_X64_Y5_N24
\dc_converter|Output30bit[27]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_converter|Output30bit[27]~9_combout\ = (\dc_converter|reg_ones[0][0]~q\ & \dc_converter|state_reg.idle~DUPLICATE_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dc_converter|ALT_INV_reg_ones[0][0]~q\,
	datac => \dc_converter|ALT_INV_state_reg.idle~DUPLICATE_q\,
	combout => \dc_converter|Output30bit[27]~9_combout\);

-- Location: FF_X64_Y5_N25
\dc_preparator|ex[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	d => \dc_converter|Output30bit[27]~9_combout\,
	ena => \dc_preparator|Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_preparator|ex\(0));

-- Location: LABCELL_X64_Y3_N51
\dc_converter|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_converter|Mux8~0_combout\ = ( \dc_counter_ones|WideOr2~combout\ & ( (!\dc_counter_ones|WideOr0~combout\) # (!\dc_counter_ones|WideNor0~0_combout\ $ (!\dc_counter_ones|WideOr1~combout\)) ) ) # ( !\dc_counter_ones|WideOr2~combout\ & ( 
-- (!\dc_counter_ones|WideNor0~0_combout\) # ((!\dc_counter_ones|WideOr0~combout\) # (\dc_counter_ones|WideOr1~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111111101111111011111110111111011110110111101101111011011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_counter_ones|ALT_INV_WideNor0~0_combout\,
	datab => \dc_counter_ones|ALT_INV_WideOr0~combout\,
	datac => \dc_counter_ones|ALT_INV_WideOr1~combout\,
	dataf => \dc_counter_ones|ALT_INV_WideOr2~combout\,
	combout => \dc_converter|Mux8~0_combout\);

-- Location: FF_X64_Y3_N53
\dc_converter|reg_ones[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	d => \dc_converter|Mux8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_converter|reg_ones[0][1]~q\);

-- Location: LABCELL_X64_Y5_N39
\dc_converter|Output30bit[2]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_converter|Output30bit[2]~10_combout\ = ( \dc_converter|state_reg.idle~DUPLICATE_q\ & ( \dc_converter|reg_ones[0][1]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \dc_converter|ALT_INV_reg_ones[0][1]~q\,
	dataf => \dc_converter|ALT_INV_state_reg.idle~DUPLICATE_q\,
	combout => \dc_converter|Output30bit[2]~10_combout\);

-- Location: FF_X64_Y5_N40
\dc_preparator|ex[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	d => \dc_converter|Output30bit[2]~10_combout\,
	ena => \dc_preparator|Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_preparator|ex\(1));

-- Location: LABCELL_X61_Y5_N9
\dc_preparator|Equal1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_preparator|Equal1~4_combout\ = ( \dc_converter|reg_ones[0][1]~q\ & ( (!\dc_converter|state_reg.idle~DUPLICATE_q\ & (!\dc_preparator|ex\(0) & ((!\dc_preparator|ex\(1))))) # (\dc_converter|state_reg.idle~DUPLICATE_q\ & (\dc_preparator|ex\(1) & 
-- (!\dc_preparator|ex\(0) $ (\dc_converter|reg_ones[0][0]~q\)))) ) ) # ( !\dc_converter|reg_ones[0][1]~q\ & ( (!\dc_preparator|ex\(1) & (!\dc_preparator|ex\(0) $ (((\dc_converter|state_reg.idle~DUPLICATE_q\ & \dc_converter|reg_ones[0][0]~q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100100100000000110010010000000010001000010000011000100001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_converter|ALT_INV_state_reg.idle~DUPLICATE_q\,
	datab => \dc_preparator|ALT_INV_ex\(0),
	datac => \dc_converter|ALT_INV_reg_ones[0][0]~q\,
	datad => \dc_preparator|ALT_INV_ex\(1),
	dataf => \dc_converter|ALT_INV_reg_ones[0][1]~q\,
	combout => \dc_preparator|Equal1~4_combout\);

-- Location: LABCELL_X64_Y3_N9
\dc_converter|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_converter|Mux2~0_combout\ = ( \dc_counter_ones|WideOr2~combout\ & ( (!\dc_counter_ones|WideNor0~0_combout\) # ((!\dc_counter_ones|WideOr0~combout\) # (!\dc_counter_ones|WideOr1~combout\)) ) ) # ( !\dc_counter_ones|WideOr2~combout\ & ( 
-- (!\dc_counter_ones|WideOr0~combout\) # ((!\dc_counter_ones|WideNor0~0_combout\ & !\dc_counter_ones|WideOr1~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110110011101100111011001110110011111110111111101111111011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_counter_ones|ALT_INV_WideNor0~0_combout\,
	datab => \dc_counter_ones|ALT_INV_WideOr0~combout\,
	datac => \dc_counter_ones|ALT_INV_WideOr1~combout\,
	dataf => \dc_counter_ones|ALT_INV_WideOr2~combout\,
	combout => \dc_converter|Mux2~0_combout\);

-- Location: FF_X64_Y3_N11
\dc_converter|reg_ones[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	d => \dc_converter|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_converter|reg_ones[3][2]~q\);

-- Location: LABCELL_X64_Y5_N45
\dc_converter|Output30bit[11]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_converter|Output30bit[11]~6_combout\ = ( \dc_converter|reg_ones[3][2]~q\ & ( \dc_converter|state_reg.idle~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \dc_converter|ALT_INV_state_reg.idle~DUPLICATE_q\,
	dataf => \dc_converter|ALT_INV_reg_ones[3][2]~q\,
	combout => \dc_converter|Output30bit[11]~6_combout\);

-- Location: FF_X64_Y5_N46
\dc_preparator|ex[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	d => \dc_converter|Output30bit[11]~6_combout\,
	ena => \dc_preparator|Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_preparator|ex\(11));

-- Location: LABCELL_X64_Y3_N6
\dc_converter|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_converter|Mux3~0_combout\ = ( \dc_counter_ones|WideOr2~combout\ & ( ((!\dc_counter_ones|WideNor0~0_combout\ & \dc_counter_ones|WideOr0~combout\)) # (\dc_counter_ones|WideOr1~combout\) ) ) # ( !\dc_counter_ones|WideOr2~combout\ & ( 
-- (\dc_counter_ones|WideOr0~combout\ & ((\dc_counter_ones|WideOr1~combout\) # (\dc_counter_ones|WideNor0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100010011000100110001001100101111001011110010111100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_counter_ones|ALT_INV_WideNor0~0_combout\,
	datab => \dc_counter_ones|ALT_INV_WideOr0~combout\,
	datac => \dc_counter_ones|ALT_INV_WideOr1~combout\,
	dataf => \dc_counter_ones|ALT_INV_WideOr2~combout\,
	combout => \dc_converter|Mux3~0_combout\);

-- Location: FF_X64_Y3_N8
\dc_converter|reg_ones[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	d => \dc_converter|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_converter|reg_ones[3][0]~q\);

-- Location: LABCELL_X61_Y5_N12
\dc_converter|Output30bit[9]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_converter|Output30bit[9]~5_combout\ = ( \dc_converter|reg_ones[3][0]~q\ & ( \dc_converter|state_reg.idle~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_converter|ALT_INV_state_reg.idle~DUPLICATE_q\,
	dataf => \dc_converter|ALT_INV_reg_ones[3][0]~q\,
	combout => \dc_converter|Output30bit[9]~5_combout\);

-- Location: FF_X61_Y5_N32
\dc_preparator|ex[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	asdata => \dc_converter|Output30bit[9]~5_combout\,
	sload => VCC,
	ena => \dc_preparator|Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_preparator|ex\(9));

-- Location: LABCELL_X61_Y5_N42
\dc_preparator|Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_preparator|Equal1~2_combout\ = ( \dc_converter|reg_ones[3][0]~q\ & ( (!\dc_preparator|ex\(9) & (!\dc_preparator|ex\(11) & (!\dc_converter|state_reg.idle~DUPLICATE_q\))) # (\dc_preparator|ex\(9) & (\dc_converter|state_reg.idle~DUPLICATE_q\ & 
-- (!\dc_preparator|ex\(11) $ (\dc_converter|reg_ones[3][2]~q\)))) ) ) # ( !\dc_converter|reg_ones[3][0]~q\ & ( (!\dc_preparator|ex\(9) & (!\dc_preparator|ex\(11) $ (((\dc_converter|state_reg.idle~DUPLICATE_q\ & \dc_converter|reg_ones[3][2]~q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010000100100010001000010010000010100000011000001010000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_preparator|ALT_INV_ex\(11),
	datab => \dc_preparator|ALT_INV_ex\(9),
	datac => \dc_converter|ALT_INV_state_reg.idle~DUPLICATE_q\,
	datad => \dc_converter|ALT_INV_reg_ones[3][2]~q\,
	dataf => \dc_converter|ALT_INV_reg_ones[3][0]~q\,
	combout => \dc_preparator|Equal1~2_combout\);

-- Location: LABCELL_X64_Y3_N39
\dc_converter|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_converter|Mux4~0_combout\ = ( \dc_counter_ones|WideOr2~combout\ & ( (!\dc_counter_ones|WideNor0~0_combout\) # ((!\dc_counter_ones|WideOr1~combout\) # (!\dc_counter_ones|WideOr0~combout\)) ) ) # ( !\dc_counter_ones|WideOr2~combout\ & ( 
-- (!\dc_counter_ones|WideNor0~0_combout\) # ((!\dc_counter_ones|WideOr0~combout\) # (\dc_counter_ones|WideOr1~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101111111011111110111111101111111110111111101111111011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_counter_ones|ALT_INV_WideNor0~0_combout\,
	datab => \dc_counter_ones|ALT_INV_WideOr1~combout\,
	datac => \dc_counter_ones|ALT_INV_WideOr0~combout\,
	dataf => \dc_counter_ones|ALT_INV_WideOr2~combout\,
	combout => \dc_converter|Mux4~0_combout\);

-- Location: FF_X64_Y3_N41
\dc_converter|reg_ones[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	d => \dc_converter|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_converter|reg_ones[2][2]~q\);

-- Location: LABCELL_X61_Y5_N45
\dc_converter|Output30bit[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_converter|Output30bit[8]~8_combout\ = ( \dc_converter|state_reg.idle~q\ & ( \dc_converter|reg_ones[2][2]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dc_converter|ALT_INV_reg_ones[2][2]~q\,
	dataf => \dc_converter|ALT_INV_state_reg.idle~q\,
	combout => \dc_converter|Output30bit[8]~8_combout\);

-- Location: FF_X64_Y5_N31
\dc_preparator|ex[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	asdata => \dc_converter|Output30bit[8]~8_combout\,
	sload => VCC,
	ena => \dc_preparator|Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_preparator|ex\(8));

-- Location: LABCELL_X64_Y3_N36
\dc_converter|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_converter|Mux5~0_combout\ = ( \dc_counter_ones|WideOr2~combout\ & ( (!\dc_counter_ones|WideOr1~combout\) # (!\dc_counter_ones|WideOr0~combout\) ) ) # ( !\dc_counter_ones|WideOr2~combout\ & ( (!\dc_counter_ones|WideNor0~0_combout\) # 
-- ((!\dc_counter_ones|WideOr0~combout\) # (\dc_counter_ones|WideOr1~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101111111011111110111111101111111100111111001111110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_counter_ones|ALT_INV_WideNor0~0_combout\,
	datab => \dc_counter_ones|ALT_INV_WideOr1~combout\,
	datac => \dc_counter_ones|ALT_INV_WideOr0~combout\,
	dataf => \dc_counter_ones|ALT_INV_WideOr2~combout\,
	combout => \dc_converter|Mux5~0_combout\);

-- Location: FF_X64_Y3_N38
\dc_converter|reg_ones[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	d => \dc_converter|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_converter|reg_ones[2][1]~q\);

-- Location: LABCELL_X64_Y5_N3
\dc_converter|Output30bit[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_converter|Output30bit[7]~7_combout\ = ( \dc_converter|state_reg.idle~DUPLICATE_q\ & ( \dc_converter|reg_ones[2][1]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dc_converter|ALT_INV_reg_ones[2][1]~q\,
	dataf => \dc_converter|ALT_INV_state_reg.idle~DUPLICATE_q\,
	combout => \dc_converter|Output30bit[7]~7_combout\);

-- Location: FF_X64_Y5_N4
\dc_preparator|ex[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	d => \dc_converter|Output30bit[7]~7_combout\,
	ena => \dc_preparator|Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_preparator|ex\(7));

-- Location: LABCELL_X61_Y5_N0
\dc_preparator|Equal1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_preparator|Equal1~3_combout\ = ( \dc_converter|reg_ones[2][2]~q\ & ( (!\dc_converter|state_reg.idle~DUPLICATE_q\ & (!\dc_preparator|ex\(8) & (!\dc_preparator|ex\(7)))) # (\dc_converter|state_reg.idle~DUPLICATE_q\ & (\dc_preparator|ex\(8) & 
-- (!\dc_preparator|ex\(7) $ (\dc_converter|reg_ones[2][1]~q\)))) ) ) # ( !\dc_converter|reg_ones[2][2]~q\ & ( (!\dc_preparator|ex\(8) & (!\dc_preparator|ex\(7) $ (((\dc_converter|state_reg.idle~DUPLICATE_q\ & \dc_converter|reg_ones[2][1]~q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000010000100110000001000010010010000100000011001000010000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_converter|ALT_INV_state_reg.idle~DUPLICATE_q\,
	datab => \dc_preparator|ALT_INV_ex\(8),
	datac => \dc_preparator|ALT_INV_ex\(7),
	datad => \dc_converter|ALT_INV_reg_ones[2][1]~q\,
	dataf => \dc_converter|ALT_INV_reg_ones[2][2]~q\,
	combout => \dc_preparator|Equal1~3_combout\);

-- Location: LABCELL_X64_Y3_N12
\dc_converter|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_converter|Mux0~0_combout\ = ( \dc_counter_ones|Equal0~5_combout\ & ( (!\dc_counter_ones|timer[0]~DUPLICATE_q\) # (((\dc_counter_ones|timer[1]~DUPLICATE_q\) # (\dc_counter_ones|timer\(2))) # (\dc_counter_ones|timer\(3))) ) ) # ( 
-- !\dc_counter_ones|Equal0~5_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111110111111111111111011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_counter_ones|ALT_INV_timer[0]~DUPLICATE_q\,
	datab => \dc_counter_ones|ALT_INV_timer\(3),
	datac => \dc_counter_ones|ALT_INV_timer\(2),
	datad => \dc_counter_ones|ALT_INV_timer[1]~DUPLICATE_q\,
	dataf => \dc_counter_ones|ALT_INV_Equal0~5_combout\,
	combout => \dc_converter|Mux0~0_combout\);

-- Location: FF_X64_Y3_N14
\dc_converter|reg_ones[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	d => \dc_converter|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_converter|reg_ones[4][2]~q\);

-- Location: LABCELL_X64_Y3_N57
\dc_converter|Output30bit[14]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_converter|Output30bit[14]~4_combout\ = ( \dc_converter|reg_ones[4][2]~q\ & ( \dc_converter|state_reg.idle~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dc_converter|ALT_INV_state_reg.idle~q\,
	dataf => \dc_converter|ALT_INV_reg_ones[4][2]~q\,
	combout => \dc_converter|Output30bit[14]~4_combout\);

-- Location: FF_X64_Y3_N59
\dc_preparator|ex[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	d => \dc_converter|Output30bit[14]~4_combout\,
	ena => \dc_preparator|Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_preparator|ex\(14));

-- Location: LABCELL_X64_Y3_N0
\dc_converter|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_converter|Mux1~0_combout\ = ( \dc_counter_ones|WideOr1~combout\ & ( (!\dc_counter_ones|WideNor0~0_combout\) # ((!\dc_counter_ones|WideOr0~combout\) # (!\dc_counter_ones|WideOr2~combout\)) ) ) # ( !\dc_counter_ones|WideOr1~combout\ & ( 
-- ((!\dc_counter_ones|WideOr0~combout\) # (!\dc_counter_ones|WideOr2~combout\)) # (\dc_counter_ones|WideNor0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110101111111111111010111111111111110101111111111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_counter_ones|ALT_INV_WideNor0~0_combout\,
	datac => \dc_counter_ones|ALT_INV_WideOr0~combout\,
	datad => \dc_counter_ones|ALT_INV_WideOr2~combout\,
	dataf => \dc_counter_ones|ALT_INV_WideOr1~combout\,
	combout => \dc_converter|Mux1~0_combout\);

-- Location: FF_X64_Y3_N2
\dc_converter|reg_ones[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	d => \dc_converter|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_converter|reg_ones[4][1]~q\);

-- Location: LABCELL_X64_Y3_N33
\dc_converter|Output30bit[13]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_converter|Output30bit[13]~3_combout\ = ( \dc_converter|reg_ones[4][1]~q\ & ( \dc_converter|state_reg.idle~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_converter|ALT_INV_state_reg.idle~DUPLICATE_q\,
	dataf => \dc_converter|ALT_INV_reg_ones[4][1]~q\,
	combout => \dc_converter|Output30bit[13]~3_combout\);

-- Location: FF_X64_Y3_N35
\dc_preparator|ex[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	d => \dc_converter|Output30bit[13]~3_combout\,
	ena => \dc_preparator|Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_preparator|ex\(13));

-- Location: LABCELL_X64_Y3_N54
\dc_preparator|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_preparator|Equal1~1_combout\ = ( \dc_converter|state_reg.idle~q\ & ( (!\dc_converter|reg_ones[4][2]~q\ & (!\dc_preparator|ex\(14) & (!\dc_preparator|ex\(13) $ (\dc_converter|reg_ones[4][1]~q\)))) # (\dc_converter|reg_ones[4][2]~q\ & 
-- (\dc_preparator|ex\(14) & (!\dc_preparator|ex\(13) $ (\dc_converter|reg_ones[4][1]~q\)))) ) ) # ( !\dc_converter|state_reg.idle~q\ & ( (!\dc_preparator|ex\(14) & !\dc_preparator|ex\(13)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000010010000000010011001000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_converter|ALT_INV_reg_ones[4][2]~q\,
	datab => \dc_preparator|ALT_INV_ex\(14),
	datac => \dc_preparator|ALT_INV_ex\(13),
	datad => \dc_converter|ALT_INV_reg_ones[4][1]~q\,
	dataf => \dc_converter|ALT_INV_state_reg.idle~q\,
	combout => \dc_preparator|Equal1~1_combout\);

-- Location: LABCELL_X61_Y5_N33
\dc_preparator|Equal1~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_preparator|Equal1~6_combout\ = ( \dc_preparator|Equal1~1_combout\ & ( (\dc_preparator|Equal1~5_combout\ & (\dc_preparator|Equal1~4_combout\ & (\dc_preparator|Equal1~2_combout\ & \dc_preparator|Equal1~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_preparator|ALT_INV_Equal1~5_combout\,
	datab => \dc_preparator|ALT_INV_Equal1~4_combout\,
	datac => \dc_preparator|ALT_INV_Equal1~2_combout\,
	datad => \dc_preparator|ALT_INV_Equal1~3_combout\,
	dataf => \dc_preparator|ALT_INV_Equal1~1_combout\,
	combout => \dc_preparator|Equal1~6_combout\);

-- Location: FF_X63_Y3_N47
\dc_counter_ones|Carry\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_register|state_reg.s3~q\,
	asdata => \dc_counter_ones|WideOr0~0_combout\,
	sload => VCC,
	ena => \i_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_counter_ones|Carry~q\);

-- Location: FF_X63_Y6_N10
\dc_counter_tens|timer[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_counter_ones|Carry~q\,
	d => \dc_counter_tens|Add0~5_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_counter_tens|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_counter_tens|timer[3]~DUPLICATE_q\);

-- Location: LABCELL_X63_Y6_N0
\dc_counter_tens|Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_counter_tens|Add0~125_sumout\ = SUM(( \dc_counter_tens|timer[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \dc_counter_tens|Add0~126\ = CARRY(( \dc_counter_tens|timer[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \dc_counter_tens|ALT_INV_timer[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \dc_counter_tens|Add0~125_sumout\,
	cout => \dc_counter_tens|Add0~126\);

-- Location: FF_X63_Y6_N1
\dc_counter_tens|timer[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_counter_ones|Carry~q\,
	d => \dc_counter_tens|Add0~125_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_counter_tens|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_counter_tens|timer[0]~DUPLICATE_q\);

-- Location: LABCELL_X63_Y6_N3
\dc_counter_tens|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_counter_tens|Add0~121_sumout\ = SUM(( \dc_counter_tens|timer\(1) ) + ( GND ) + ( \dc_counter_tens|Add0~126\ ))
-- \dc_counter_tens|Add0~122\ = CARRY(( \dc_counter_tens|timer\(1) ) + ( GND ) + ( \dc_counter_tens|Add0~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_counter_tens|ALT_INV_timer\(1),
	cin => \dc_counter_tens|Add0~126\,
	sumout => \dc_counter_tens|Add0~121_sumout\,
	cout => \dc_counter_tens|Add0~122\);

-- Location: LABCELL_X63_Y6_N6
\dc_counter_tens|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_counter_tens|Add0~1_sumout\ = SUM(( \dc_counter_tens|timer[2]~DUPLICATE_q\ ) + ( GND ) + ( \dc_counter_tens|Add0~122\ ))
-- \dc_counter_tens|Add0~2\ = CARRY(( \dc_counter_tens|timer[2]~DUPLICATE_q\ ) + ( GND ) + ( \dc_counter_tens|Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dc_counter_tens|ALT_INV_timer[2]~DUPLICATE_q\,
	cin => \dc_counter_tens|Add0~122\,
	sumout => \dc_counter_tens|Add0~1_sumout\,
	cout => \dc_counter_tens|Add0~2\);

-- Location: FF_X63_Y6_N8
\dc_counter_tens|timer[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_counter_ones|Carry~q\,
	d => \dc_counter_tens|Add0~1_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_counter_tens|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_counter_tens|timer[2]~DUPLICATE_q\);

-- Location: LABCELL_X63_Y6_N9
\dc_counter_tens|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_counter_tens|Add0~5_sumout\ = SUM(( \dc_counter_tens|timer[3]~DUPLICATE_q\ ) + ( GND ) + ( \dc_counter_tens|Add0~2\ ))
-- \dc_counter_tens|Add0~6\ = CARRY(( \dc_counter_tens|timer[3]~DUPLICATE_q\ ) + ( GND ) + ( \dc_counter_tens|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \dc_counter_tens|ALT_INV_timer[3]~DUPLICATE_q\,
	cin => \dc_counter_tens|Add0~2\,
	sumout => \dc_counter_tens|Add0~5_sumout\,
	cout => \dc_counter_tens|Add0~6\);

-- Location: FF_X63_Y6_N11
\dc_counter_tens|timer[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_counter_ones|Carry~q\,
	d => \dc_counter_tens|Add0~5_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_counter_tens|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_counter_tens|timer\(3));

-- Location: FF_X63_Y6_N2
\dc_counter_tens|timer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_counter_ones|Carry~q\,
	d => \dc_counter_tens|Add0~125_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_counter_tens|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_counter_tens|timer\(0));

-- Location: FF_X63_Y6_N7
\dc_counter_tens|timer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_counter_ones|Carry~q\,
	d => \dc_counter_tens|Add0~1_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_counter_tens|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_counter_tens|timer\(2));

-- Location: LABCELL_X63_Y6_N12
\dc_counter_tens|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_counter_tens|Add0~25_sumout\ = SUM(( \dc_counter_tens|timer\(4) ) + ( GND ) + ( \dc_counter_tens|Add0~6\ ))
-- \dc_counter_tens|Add0~26\ = CARRY(( \dc_counter_tens|timer\(4) ) + ( GND ) + ( \dc_counter_tens|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \dc_counter_tens|ALT_INV_timer\(4),
	cin => \dc_counter_tens|Add0~6\,
	sumout => \dc_counter_tens|Add0~25_sumout\,
	cout => \dc_counter_tens|Add0~26\);

-- Location: FF_X63_Y6_N14
\dc_counter_tens|timer[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_counter_ones|Carry~q\,
	d => \dc_counter_tens|Add0~25_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_counter_tens|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_counter_tens|timer\(4));

-- Location: LABCELL_X63_Y6_N15
\dc_counter_tens|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_counter_tens|Add0~21_sumout\ = SUM(( \dc_counter_tens|timer[5]~DUPLICATE_q\ ) + ( GND ) + ( \dc_counter_tens|Add0~26\ ))
-- \dc_counter_tens|Add0~22\ = CARRY(( \dc_counter_tens|timer[5]~DUPLICATE_q\ ) + ( GND ) + ( \dc_counter_tens|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \dc_counter_tens|ALT_INV_timer[5]~DUPLICATE_q\,
	cin => \dc_counter_tens|Add0~26\,
	sumout => \dc_counter_tens|Add0~21_sumout\,
	cout => \dc_counter_tens|Add0~22\);

-- Location: FF_X63_Y6_N17
\dc_counter_tens|timer[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_counter_ones|Carry~q\,
	d => \dc_counter_tens|Add0~21_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_counter_tens|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_counter_tens|timer[5]~DUPLICATE_q\);

-- Location: LABCELL_X63_Y6_N18
\dc_counter_tens|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_counter_tens|Add0~37_sumout\ = SUM(( \dc_counter_tens|timer\(6) ) + ( GND ) + ( \dc_counter_tens|Add0~22\ ))
-- \dc_counter_tens|Add0~38\ = CARRY(( \dc_counter_tens|timer\(6) ) + ( GND ) + ( \dc_counter_tens|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dc_counter_tens|ALT_INV_timer\(6),
	cin => \dc_counter_tens|Add0~22\,
	sumout => \dc_counter_tens|Add0~37_sumout\,
	cout => \dc_counter_tens|Add0~38\);

-- Location: FF_X63_Y6_N19
\dc_counter_tens|timer[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_counter_ones|Carry~q\,
	d => \dc_counter_tens|Add0~37_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_counter_tens|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_counter_tens|timer\(6));

-- Location: LABCELL_X63_Y6_N21
\dc_counter_tens|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_counter_tens|Add0~33_sumout\ = SUM(( \dc_counter_tens|timer\(7) ) + ( GND ) + ( \dc_counter_tens|Add0~38\ ))
-- \dc_counter_tens|Add0~34\ = CARRY(( \dc_counter_tens|timer\(7) ) + ( GND ) + ( \dc_counter_tens|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_counter_tens|ALT_INV_timer\(7),
	cin => \dc_counter_tens|Add0~38\,
	sumout => \dc_counter_tens|Add0~33_sumout\,
	cout => \dc_counter_tens|Add0~34\);

-- Location: FF_X63_Y6_N23
\dc_counter_tens|timer[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_counter_ones|Carry~q\,
	d => \dc_counter_tens|Add0~33_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_counter_tens|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_counter_tens|timer\(7));

-- Location: LABCELL_X63_Y6_N24
\dc_counter_tens|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_counter_tens|Add0~29_sumout\ = SUM(( \dc_counter_tens|timer\(8) ) + ( GND ) + ( \dc_counter_tens|Add0~34\ ))
-- \dc_counter_tens|Add0~30\ = CARRY(( \dc_counter_tens|timer\(8) ) + ( GND ) + ( \dc_counter_tens|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \dc_counter_tens|ALT_INV_timer\(8),
	cin => \dc_counter_tens|Add0~34\,
	sumout => \dc_counter_tens|Add0~29_sumout\,
	cout => \dc_counter_tens|Add0~30\);

-- Location: FF_X63_Y6_N26
\dc_counter_tens|timer[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_counter_ones|Carry~q\,
	d => \dc_counter_tens|Add0~29_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_counter_tens|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_counter_tens|timer\(8));

-- Location: LABCELL_X63_Y6_N27
\dc_counter_tens|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_counter_tens|Add0~45_sumout\ = SUM(( \dc_counter_tens|timer\(9) ) + ( GND ) + ( \dc_counter_tens|Add0~30\ ))
-- \dc_counter_tens|Add0~46\ = CARRY(( \dc_counter_tens|timer\(9) ) + ( GND ) + ( \dc_counter_tens|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_counter_tens|ALT_INV_timer\(9),
	cin => \dc_counter_tens|Add0~30\,
	sumout => \dc_counter_tens|Add0~45_sumout\,
	cout => \dc_counter_tens|Add0~46\);

-- Location: FF_X63_Y6_N29
\dc_counter_tens|timer[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_counter_ones|Carry~q\,
	d => \dc_counter_tens|Add0~45_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_counter_tens|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_counter_tens|timer\(9));

-- Location: LABCELL_X63_Y6_N30
\dc_counter_tens|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_counter_tens|Add0~69_sumout\ = SUM(( \dc_counter_tens|timer\(10) ) + ( GND ) + ( \dc_counter_tens|Add0~46\ ))
-- \dc_counter_tens|Add0~70\ = CARRY(( \dc_counter_tens|timer\(10) ) + ( GND ) + ( \dc_counter_tens|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dc_counter_tens|ALT_INV_timer\(10),
	cin => \dc_counter_tens|Add0~46\,
	sumout => \dc_counter_tens|Add0~69_sumout\,
	cout => \dc_counter_tens|Add0~70\);

-- Location: FF_X63_Y6_N32
\dc_counter_tens|timer[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_counter_ones|Carry~q\,
	d => \dc_counter_tens|Add0~69_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_counter_tens|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_counter_tens|timer\(10));

-- Location: LABCELL_X63_Y6_N33
\dc_counter_tens|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_counter_tens|Add0~65_sumout\ = SUM(( \dc_counter_tens|timer\(11) ) + ( GND ) + ( \dc_counter_tens|Add0~70\ ))
-- \dc_counter_tens|Add0~66\ = CARRY(( \dc_counter_tens|timer\(11) ) + ( GND ) + ( \dc_counter_tens|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_counter_tens|ALT_INV_timer\(11),
	cin => \dc_counter_tens|Add0~70\,
	sumout => \dc_counter_tens|Add0~65_sumout\,
	cout => \dc_counter_tens|Add0~66\);

-- Location: FF_X63_Y6_N35
\dc_counter_tens|timer[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_counter_ones|Carry~q\,
	d => \dc_counter_tens|Add0~65_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_counter_tens|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_counter_tens|timer\(11));

-- Location: LABCELL_X63_Y6_N36
\dc_counter_tens|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_counter_tens|Add0~61_sumout\ = SUM(( \dc_counter_tens|timer\(12) ) + ( GND ) + ( \dc_counter_tens|Add0~66\ ))
-- \dc_counter_tens|Add0~62\ = CARRY(( \dc_counter_tens|timer\(12) ) + ( GND ) + ( \dc_counter_tens|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dc_counter_tens|ALT_INV_timer\(12),
	cin => \dc_counter_tens|Add0~66\,
	sumout => \dc_counter_tens|Add0~61_sumout\,
	cout => \dc_counter_tens|Add0~62\);

-- Location: FF_X63_Y6_N37
\dc_counter_tens|timer[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_counter_ones|Carry~q\,
	d => \dc_counter_tens|Add0~61_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_counter_tens|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_counter_tens|timer\(12));

-- Location: LABCELL_X63_Y6_N39
\dc_counter_tens|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_counter_tens|Add0~57_sumout\ = SUM(( \dc_counter_tens|timer[13]~DUPLICATE_q\ ) + ( GND ) + ( \dc_counter_tens|Add0~62\ ))
-- \dc_counter_tens|Add0~58\ = CARRY(( \dc_counter_tens|timer[13]~DUPLICATE_q\ ) + ( GND ) + ( \dc_counter_tens|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \dc_counter_tens|ALT_INV_timer[13]~DUPLICATE_q\,
	cin => \dc_counter_tens|Add0~62\,
	sumout => \dc_counter_tens|Add0~57_sumout\,
	cout => \dc_counter_tens|Add0~58\);

-- Location: FF_X63_Y6_N41
\dc_counter_tens|timer[13]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_counter_ones|Carry~q\,
	d => \dc_counter_tens|Add0~57_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_counter_tens|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_counter_tens|timer[13]~DUPLICATE_q\);

-- Location: LABCELL_X63_Y6_N42
\dc_counter_tens|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_counter_tens|Add0~53_sumout\ = SUM(( \dc_counter_tens|timer\(14) ) + ( GND ) + ( \dc_counter_tens|Add0~58\ ))
-- \dc_counter_tens|Add0~54\ = CARRY(( \dc_counter_tens|timer\(14) ) + ( GND ) + ( \dc_counter_tens|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \dc_counter_tens|ALT_INV_timer\(14),
	cin => \dc_counter_tens|Add0~58\,
	sumout => \dc_counter_tens|Add0~53_sumout\,
	cout => \dc_counter_tens|Add0~54\);

-- Location: FF_X63_Y6_N43
\dc_counter_tens|timer[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_counter_ones|Carry~q\,
	d => \dc_counter_tens|Add0~53_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_counter_tens|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_counter_tens|timer\(14));

-- Location: LABCELL_X63_Y6_N45
\dc_counter_tens|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_counter_tens|Add0~9_sumout\ = SUM(( \dc_counter_tens|timer\(15) ) + ( GND ) + ( \dc_counter_tens|Add0~54\ ))
-- \dc_counter_tens|Add0~10\ = CARRY(( \dc_counter_tens|timer\(15) ) + ( GND ) + ( \dc_counter_tens|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dc_counter_tens|ALT_INV_timer\(15),
	cin => \dc_counter_tens|Add0~54\,
	sumout => \dc_counter_tens|Add0~9_sumout\,
	cout => \dc_counter_tens|Add0~10\);

-- Location: FF_X63_Y6_N47
\dc_counter_tens|timer[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_counter_ones|Carry~q\,
	d => \dc_counter_tens|Add0~9_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_counter_tens|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_counter_tens|timer\(15));

-- Location: LABCELL_X63_Y6_N48
\dc_counter_tens|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_counter_tens|Add0~117_sumout\ = SUM(( \dc_counter_tens|timer\(16) ) + ( GND ) + ( \dc_counter_tens|Add0~10\ ))
-- \dc_counter_tens|Add0~118\ = CARRY(( \dc_counter_tens|timer\(16) ) + ( GND ) + ( \dc_counter_tens|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dc_counter_tens|ALT_INV_timer\(16),
	cin => \dc_counter_tens|Add0~10\,
	sumout => \dc_counter_tens|Add0~117_sumout\,
	cout => \dc_counter_tens|Add0~118\);

-- Location: FF_X63_Y6_N50
\dc_counter_tens|timer[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_counter_ones|Carry~q\,
	d => \dc_counter_tens|Add0~117_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_counter_tens|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_counter_tens|timer\(16));

-- Location: LABCELL_X63_Y6_N51
\dc_counter_tens|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_counter_tens|Add0~113_sumout\ = SUM(( \dc_counter_tens|timer\(17) ) + ( GND ) + ( \dc_counter_tens|Add0~118\ ))
-- \dc_counter_tens|Add0~114\ = CARRY(( \dc_counter_tens|timer\(17) ) + ( GND ) + ( \dc_counter_tens|Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dc_counter_tens|ALT_INV_timer\(17),
	cin => \dc_counter_tens|Add0~118\,
	sumout => \dc_counter_tens|Add0~113_sumout\,
	cout => \dc_counter_tens|Add0~114\);

-- Location: FF_X63_Y6_N52
\dc_counter_tens|timer[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_counter_ones|Carry~q\,
	d => \dc_counter_tens|Add0~113_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_counter_tens|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_counter_tens|timer\(17));

-- Location: LABCELL_X63_Y6_N54
\dc_counter_tens|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_counter_tens|Add0~109_sumout\ = SUM(( \dc_counter_tens|timer\(18) ) + ( GND ) + ( \dc_counter_tens|Add0~114\ ))
-- \dc_counter_tens|Add0~110\ = CARRY(( \dc_counter_tens|timer\(18) ) + ( GND ) + ( \dc_counter_tens|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_counter_tens|ALT_INV_timer\(18),
	cin => \dc_counter_tens|Add0~114\,
	sumout => \dc_counter_tens|Add0~109_sumout\,
	cout => \dc_counter_tens|Add0~110\);

-- Location: FF_X63_Y6_N56
\dc_counter_tens|timer[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_counter_ones|Carry~q\,
	d => \dc_counter_tens|Add0~109_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_counter_tens|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_counter_tens|timer\(18));

-- Location: LABCELL_X63_Y6_N57
\dc_counter_tens|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_counter_tens|Add0~105_sumout\ = SUM(( \dc_counter_tens|timer\(19) ) + ( GND ) + ( \dc_counter_tens|Add0~110\ ))
-- \dc_counter_tens|Add0~106\ = CARRY(( \dc_counter_tens|timer\(19) ) + ( GND ) + ( \dc_counter_tens|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dc_counter_tens|ALT_INV_timer\(19),
	cin => \dc_counter_tens|Add0~110\,
	sumout => \dc_counter_tens|Add0~105_sumout\,
	cout => \dc_counter_tens|Add0~106\);

-- Location: FF_X63_Y6_N59
\dc_counter_tens|timer[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_counter_ones|Carry~q\,
	d => \dc_counter_tens|Add0~105_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_counter_tens|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_counter_tens|timer\(19));

-- Location: LABCELL_X63_Y5_N0
\dc_counter_tens|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_counter_tens|Add0~41_sumout\ = SUM(( \dc_counter_tens|timer\(20) ) + ( GND ) + ( \dc_counter_tens|Add0~106\ ))
-- \dc_counter_tens|Add0~42\ = CARRY(( \dc_counter_tens|timer\(20) ) + ( GND ) + ( \dc_counter_tens|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_counter_tens|ALT_INV_timer\(20),
	cin => \dc_counter_tens|Add0~106\,
	sumout => \dc_counter_tens|Add0~41_sumout\,
	cout => \dc_counter_tens|Add0~42\);

-- Location: FF_X63_Y5_N2
\dc_counter_tens|timer[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_counter_ones|Carry~q\,
	d => \dc_counter_tens|Add0~41_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_counter_tens|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_counter_tens|timer\(20));

-- Location: LABCELL_X63_Y5_N3
\dc_counter_tens|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_counter_tens|Add0~101_sumout\ = SUM(( \dc_counter_tens|timer[21]~DUPLICATE_q\ ) + ( GND ) + ( \dc_counter_tens|Add0~42\ ))
-- \dc_counter_tens|Add0~102\ = CARRY(( \dc_counter_tens|timer[21]~DUPLICATE_q\ ) + ( GND ) + ( \dc_counter_tens|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \dc_counter_tens|ALT_INV_timer[21]~DUPLICATE_q\,
	cin => \dc_counter_tens|Add0~42\,
	sumout => \dc_counter_tens|Add0~101_sumout\,
	cout => \dc_counter_tens|Add0~102\);

-- Location: FF_X63_Y5_N5
\dc_counter_tens|timer[21]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_counter_ones|Carry~q\,
	d => \dc_counter_tens|Add0~101_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_counter_tens|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_counter_tens|timer[21]~DUPLICATE_q\);

-- Location: LABCELL_X63_Y5_N6
\dc_counter_tens|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_counter_tens|Add0~97_sumout\ = SUM(( \dc_counter_tens|timer\(22) ) + ( GND ) + ( \dc_counter_tens|Add0~102\ ))
-- \dc_counter_tens|Add0~98\ = CARRY(( \dc_counter_tens|timer\(22) ) + ( GND ) + ( \dc_counter_tens|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dc_counter_tens|ALT_INV_timer\(22),
	cin => \dc_counter_tens|Add0~102\,
	sumout => \dc_counter_tens|Add0~97_sumout\,
	cout => \dc_counter_tens|Add0~98\);

-- Location: FF_X63_Y5_N8
\dc_counter_tens|timer[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_counter_ones|Carry~q\,
	d => \dc_counter_tens|Add0~97_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_counter_tens|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_counter_tens|timer\(22));

-- Location: LABCELL_X63_Y5_N9
\dc_counter_tens|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_counter_tens|Add0~93_sumout\ = SUM(( \dc_counter_tens|timer\(23) ) + ( GND ) + ( \dc_counter_tens|Add0~98\ ))
-- \dc_counter_tens|Add0~94\ = CARRY(( \dc_counter_tens|timer\(23) ) + ( GND ) + ( \dc_counter_tens|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \dc_counter_tens|ALT_INV_timer\(23),
	cin => \dc_counter_tens|Add0~98\,
	sumout => \dc_counter_tens|Add0~93_sumout\,
	cout => \dc_counter_tens|Add0~94\);

-- Location: FF_X63_Y5_N10
\dc_counter_tens|timer[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_counter_ones|Carry~q\,
	d => \dc_counter_tens|Add0~93_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_counter_tens|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_counter_tens|timer\(23));

-- Location: LABCELL_X63_Y5_N12
\dc_counter_tens|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_counter_tens|Add0~89_sumout\ = SUM(( \dc_counter_tens|timer\(24) ) + ( GND ) + ( \dc_counter_tens|Add0~94\ ))
-- \dc_counter_tens|Add0~90\ = CARRY(( \dc_counter_tens|timer\(24) ) + ( GND ) + ( \dc_counter_tens|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dc_counter_tens|ALT_INV_timer\(24),
	cin => \dc_counter_tens|Add0~94\,
	sumout => \dc_counter_tens|Add0~89_sumout\,
	cout => \dc_counter_tens|Add0~90\);

-- Location: FF_X63_Y5_N14
\dc_counter_tens|timer[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_counter_ones|Carry~q\,
	d => \dc_counter_tens|Add0~89_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_counter_tens|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_counter_tens|timer\(24));

-- Location: LABCELL_X63_Y5_N15
\dc_counter_tens|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_counter_tens|Add0~85_sumout\ = SUM(( \dc_counter_tens|timer\(25) ) + ( GND ) + ( \dc_counter_tens|Add0~90\ ))
-- \dc_counter_tens|Add0~86\ = CARRY(( \dc_counter_tens|timer\(25) ) + ( GND ) + ( \dc_counter_tens|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dc_counter_tens|ALT_INV_timer\(25),
	cin => \dc_counter_tens|Add0~90\,
	sumout => \dc_counter_tens|Add0~85_sumout\,
	cout => \dc_counter_tens|Add0~86\);

-- Location: FF_X63_Y5_N17
\dc_counter_tens|timer[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_counter_ones|Carry~q\,
	d => \dc_counter_tens|Add0~85_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_counter_tens|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_counter_tens|timer\(25));

-- Location: LABCELL_X63_Y5_N18
\dc_counter_tens|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_counter_tens|Add0~81_sumout\ = SUM(( \dc_counter_tens|timer\(26) ) + ( GND ) + ( \dc_counter_tens|Add0~86\ ))
-- \dc_counter_tens|Add0~82\ = CARRY(( \dc_counter_tens|timer\(26) ) + ( GND ) + ( \dc_counter_tens|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dc_counter_tens|ALT_INV_timer\(26),
	cin => \dc_counter_tens|Add0~86\,
	sumout => \dc_counter_tens|Add0~81_sumout\,
	cout => \dc_counter_tens|Add0~82\);

-- Location: FF_X63_Y5_N19
\dc_counter_tens|timer[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_counter_ones|Carry~q\,
	d => \dc_counter_tens|Add0~81_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_counter_tens|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_counter_tens|timer\(26));

-- Location: LABCELL_X63_Y5_N21
\dc_counter_tens|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_counter_tens|Add0~77_sumout\ = SUM(( \dc_counter_tens|timer\(27) ) + ( GND ) + ( \dc_counter_tens|Add0~82\ ))
-- \dc_counter_tens|Add0~78\ = CARRY(( \dc_counter_tens|timer\(27) ) + ( GND ) + ( \dc_counter_tens|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_counter_tens|ALT_INV_timer\(27),
	cin => \dc_counter_tens|Add0~82\,
	sumout => \dc_counter_tens|Add0~77_sumout\,
	cout => \dc_counter_tens|Add0~78\);

-- Location: FF_X63_Y5_N23
\dc_counter_tens|timer[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_counter_ones|Carry~q\,
	d => \dc_counter_tens|Add0~77_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_counter_tens|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_counter_tens|timer\(27));

-- Location: LABCELL_X63_Y5_N24
\dc_counter_tens|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_counter_tens|Add0~17_sumout\ = SUM(( \dc_counter_tens|timer\(28) ) + ( GND ) + ( \dc_counter_tens|Add0~78\ ))
-- \dc_counter_tens|Add0~18\ = CARRY(( \dc_counter_tens|timer\(28) ) + ( GND ) + ( \dc_counter_tens|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dc_counter_tens|ALT_INV_timer\(28),
	cin => \dc_counter_tens|Add0~78\,
	sumout => \dc_counter_tens|Add0~17_sumout\,
	cout => \dc_counter_tens|Add0~18\);

-- Location: FF_X63_Y5_N25
\dc_counter_tens|timer[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_counter_ones|Carry~q\,
	d => \dc_counter_tens|Add0~17_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_counter_tens|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_counter_tens|timer\(28));

-- Location: FF_X63_Y6_N16
\dc_counter_tens|timer[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_counter_ones|Carry~q\,
	d => \dc_counter_tens|Add0~21_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_counter_tens|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_counter_tens|timer\(5));

-- Location: FF_X63_Y5_N29
\dc_counter_tens|timer[29]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_counter_ones|Carry~q\,
	d => \dc_counter_tens|Add0~13_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_counter_tens|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_counter_tens|timer[29]~DUPLICATE_q\);

-- Location: LABCELL_X63_Y5_N27
\dc_counter_tens|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_counter_tens|Add0~13_sumout\ = SUM(( \dc_counter_tens|timer[29]~DUPLICATE_q\ ) + ( GND ) + ( \dc_counter_tens|Add0~18\ ))
-- \dc_counter_tens|Add0~14\ = CARRY(( \dc_counter_tens|timer[29]~DUPLICATE_q\ ) + ( GND ) + ( \dc_counter_tens|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \dc_counter_tens|ALT_INV_timer[29]~DUPLICATE_q\,
	cin => \dc_counter_tens|Add0~18\,
	sumout => \dc_counter_tens|Add0~13_sumout\,
	cout => \dc_counter_tens|Add0~14\);

-- Location: FF_X63_Y5_N28
\dc_counter_tens|timer[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_counter_ones|Carry~q\,
	d => \dc_counter_tens|Add0~13_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_counter_tens|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_counter_tens|timer\(29));

-- Location: LABCELL_X64_Y5_N15
\dc_counter_tens|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_counter_tens|Equal0~0_combout\ = ( !\dc_counter_tens|timer\(29) & ( (!\dc_counter_tens|timer\(28) & (!\dc_counter_tens|timer\(5) & !\dc_counter_tens|timer\(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100000000000100010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_counter_tens|ALT_INV_timer\(28),
	datab => \dc_counter_tens|ALT_INV_timer\(5),
	datad => \dc_counter_tens|ALT_INV_timer\(4),
	dataf => \dc_counter_tens|ALT_INV_timer\(29),
	combout => \dc_counter_tens|Equal0~0_combout\);

-- Location: FF_X63_Y6_N22
\dc_counter_tens|timer[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_counter_ones|Carry~q\,
	d => \dc_counter_tens|Add0~33_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_counter_tens|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_counter_tens|timer[7]~DUPLICATE_q\);

-- Location: LABCELL_X63_Y5_N30
\dc_counter_tens|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_counter_tens|Add0~49_sumout\ = SUM(( \dc_counter_tens|timer\(30) ) + ( GND ) + ( \dc_counter_tens|Add0~14\ ))
-- \dc_counter_tens|Add0~50\ = CARRY(( \dc_counter_tens|timer\(30) ) + ( GND ) + ( \dc_counter_tens|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dc_counter_tens|ALT_INV_timer\(30),
	cin => \dc_counter_tens|Add0~14\,
	sumout => \dc_counter_tens|Add0~49_sumout\,
	cout => \dc_counter_tens|Add0~50\);

-- Location: FF_X63_Y5_N32
\dc_counter_tens|timer[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_counter_ones|Carry~q\,
	d => \dc_counter_tens|Add0~49_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_counter_tens|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_counter_tens|timer\(30));

-- Location: LABCELL_X62_Y5_N48
\dc_counter_tens|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_counter_tens|Equal0~1_combout\ = ( !\dc_counter_tens|timer\(20) & ( !\dc_counter_tens|timer\(30) & ( (!\dc_counter_tens|timer[7]~DUPLICATE_q\ & (!\dc_counter_tens|timer\(8) & (!\dc_counter_tens|timer\(9) & !\dc_counter_tens|timer\(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_counter_tens|ALT_INV_timer[7]~DUPLICATE_q\,
	datab => \dc_counter_tens|ALT_INV_timer\(8),
	datac => \dc_counter_tens|ALT_INV_timer\(9),
	datad => \dc_counter_tens|ALT_INV_timer\(6),
	datae => \dc_counter_tens|ALT_INV_timer\(20),
	dataf => \dc_counter_tens|ALT_INV_timer\(30),
	combout => \dc_counter_tens|Equal0~1_combout\);

-- Location: FF_X63_Y5_N16
\dc_counter_tens|timer[25]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_counter_ones|Carry~q\,
	d => \dc_counter_tens|Add0~85_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_counter_tens|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_counter_tens|timer[25]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y5_N54
\dc_counter_tens|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_counter_tens|Equal0~3_combout\ = ( !\dc_counter_tens|timer[25]~DUPLICATE_q\ & ( !\dc_counter_tens|timer\(26) & ( (!\dc_counter_tens|timer\(27) & (!\dc_counter_tens|timer\(23) & (!\dc_counter_tens|timer\(22) & !\dc_counter_tens|timer\(24)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_counter_tens|ALT_INV_timer\(27),
	datab => \dc_counter_tens|ALT_INV_timer\(23),
	datac => \dc_counter_tens|ALT_INV_timer\(22),
	datad => \dc_counter_tens|ALT_INV_timer\(24),
	datae => \dc_counter_tens|ALT_INV_timer[25]~DUPLICATE_q\,
	dataf => \dc_counter_tens|ALT_INV_timer\(26),
	combout => \dc_counter_tens|Equal0~3_combout\);

-- Location: FF_X63_Y6_N49
\dc_counter_tens|timer[16]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_counter_ones|Carry~q\,
	d => \dc_counter_tens|Add0~117_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_counter_tens|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_counter_tens|timer[16]~DUPLICATE_q\);

-- Location: FF_X63_Y5_N4
\dc_counter_tens|timer[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_counter_ones|Carry~q\,
	d => \dc_counter_tens|Add0~101_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_counter_tens|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_counter_tens|timer\(21));

-- Location: FF_X63_Y6_N53
\dc_counter_tens|timer[17]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_counter_ones|Carry~q\,
	d => \dc_counter_tens|Add0~113_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_counter_tens|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_counter_tens|timer[17]~DUPLICATE_q\);

-- Location: FF_X63_Y6_N58
\dc_counter_tens|timer[19]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_counter_ones|Carry~q\,
	d => \dc_counter_tens|Add0~105_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_counter_tens|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_counter_tens|timer[19]~DUPLICATE_q\);

-- Location: LABCELL_X63_Y5_N39
\dc_counter_tens|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_counter_tens|Equal0~4_combout\ = ( !\dc_counter_tens|timer\(18) & ( (!\dc_counter_tens|timer[16]~DUPLICATE_q\ & (!\dc_counter_tens|timer\(21) & (!\dc_counter_tens|timer[17]~DUPLICATE_q\ & !\dc_counter_tens|timer[19]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_counter_tens|ALT_INV_timer[16]~DUPLICATE_q\,
	datab => \dc_counter_tens|ALT_INV_timer\(21),
	datac => \dc_counter_tens|ALT_INV_timer[17]~DUPLICATE_q\,
	datad => \dc_counter_tens|ALT_INV_timer[19]~DUPLICATE_q\,
	dataf => \dc_counter_tens|ALT_INV_timer\(18),
	combout => \dc_counter_tens|Equal0~4_combout\);

-- Location: FF_X63_Y6_N40
\dc_counter_tens|timer[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_counter_ones|Carry~q\,
	d => \dc_counter_tens|Add0~57_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_counter_tens|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_counter_tens|timer\(13));

-- Location: LABCELL_X63_Y5_N33
\dc_counter_tens|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_counter_tens|Add0~73_sumout\ = SUM(( \dc_counter_tens|timer\(31) ) + ( GND ) + ( \dc_counter_tens|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_counter_tens|ALT_INV_timer\(31),
	cin => \dc_counter_tens|Add0~50\,
	sumout => \dc_counter_tens|Add0~73_sumout\);

-- Location: FF_X63_Y5_N35
\dc_counter_tens|timer[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_counter_ones|Carry~q\,
	d => \dc_counter_tens|Add0~73_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_counter_tens|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_counter_tens|timer\(31));

-- Location: FF_X63_Y6_N31
\dc_counter_tens|timer[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_counter_ones|Carry~q\,
	d => \dc_counter_tens|Add0~69_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_counter_tens|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_counter_tens|timer[10]~DUPLICATE_q\);

-- Location: LABCELL_X63_Y5_N54
\dc_counter_tens|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_counter_tens|Equal0~2_combout\ = ( !\dc_counter_tens|timer\(31) & ( !\dc_counter_tens|timer[10]~DUPLICATE_q\ & ( (!\dc_counter_tens|timer\(14) & (!\dc_counter_tens|timer\(13) & (!\dc_counter_tens|timer\(12) & !\dc_counter_tens|timer\(11)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_counter_tens|ALT_INV_timer\(14),
	datab => \dc_counter_tens|ALT_INV_timer\(13),
	datac => \dc_counter_tens|ALT_INV_timer\(12),
	datad => \dc_counter_tens|ALT_INV_timer\(11),
	datae => \dc_counter_tens|ALT_INV_timer\(31),
	dataf => \dc_counter_tens|ALT_INV_timer[10]~DUPLICATE_q\,
	combout => \dc_counter_tens|Equal0~2_combout\);

-- Location: LABCELL_X63_Y5_N42
\dc_counter_tens|Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_counter_tens|Equal0~5_combout\ = ( \dc_counter_tens|Equal0~2_combout\ & ( !\dc_counter_tens|timer\(15) & ( (\dc_counter_tens|Equal0~0_combout\ & (\dc_counter_tens|Equal0~1_combout\ & (\dc_counter_tens|Equal0~3_combout\ & 
-- \dc_counter_tens|Equal0~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_counter_tens|ALT_INV_Equal0~0_combout\,
	datab => \dc_counter_tens|ALT_INV_Equal0~1_combout\,
	datac => \dc_counter_tens|ALT_INV_Equal0~3_combout\,
	datad => \dc_counter_tens|ALT_INV_Equal0~4_combout\,
	datae => \dc_counter_tens|ALT_INV_Equal0~2_combout\,
	dataf => \dc_counter_tens|ALT_INV_timer\(15),
	combout => \dc_counter_tens|Equal0~5_combout\);

-- Location: LABCELL_X63_Y5_N48
\dc_counter_tens|WideOr0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_counter_tens|WideOr0~0_combout\ = ( \dc_counter_tens|Equal0~5_combout\ & ( (\dc_counter_tens|timer\(3) & (((\dc_counter_tens|timer\(2)) # (\dc_counter_tens|timer\(0))) # (\dc_counter_tens|timer[1]~DUPLICATE_q\))) ) ) # ( 
-- !\dc_counter_tens|Equal0~5_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100010101010101010001010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_counter_tens|ALT_INV_timer\(3),
	datab => \dc_counter_tens|ALT_INV_timer[1]~DUPLICATE_q\,
	datac => \dc_counter_tens|ALT_INV_timer\(0),
	datad => \dc_counter_tens|ALT_INV_timer\(2),
	dataf => \dc_counter_tens|ALT_INV_Equal0~5_combout\,
	combout => \dc_counter_tens|WideOr0~0_combout\);

-- Location: FF_X63_Y6_N5
\dc_counter_tens|timer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_counter_ones|Carry~q\,
	d => \dc_counter_tens|Add0~121_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_counter_tens|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_counter_tens|timer\(1));

-- Location: FF_X63_Y6_N4
\dc_counter_tens|timer[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_counter_ones|Carry~q\,
	d => \dc_counter_tens|Add0~121_sumout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sclr => \dc_counter_tens|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_counter_tens|timer[1]~DUPLICATE_q\);

-- Location: LABCELL_X62_Y5_N21
\dc_counter_tens|WideNor0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_counter_tens|WideNor0~0_combout\ = ( \dc_counter_tens|timer[2]~DUPLICATE_q\ & ( (\dc_counter_tens|timer[0]~DUPLICATE_q\ & (\dc_counter_tens|Equal0~5_combout\ & !\dc_counter_tens|timer\(3))) ) ) # ( !\dc_counter_tens|timer[2]~DUPLICATE_q\ & ( 
-- (\dc_counter_tens|timer[0]~DUPLICATE_q\ & (\dc_counter_tens|Equal0~5_combout\ & ((!\dc_counter_tens|timer[1]~DUPLICATE_q\) # (!\dc_counter_tens|timer\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000010000000110000001000000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_counter_tens|ALT_INV_timer[1]~DUPLICATE_q\,
	datab => \dc_counter_tens|ALT_INV_timer[0]~DUPLICATE_q\,
	datac => \dc_counter_tens|ALT_INV_Equal0~5_combout\,
	datad => \dc_counter_tens|ALT_INV_timer\(3),
	dataf => \dc_counter_tens|ALT_INV_timer[2]~DUPLICATE_q\,
	combout => \dc_counter_tens|WideNor0~0_combout\);

-- Location: LABCELL_X62_Y5_N27
\dc_counter_tens|WideOr0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_counter_tens|WideOr0~combout\ = ( !\dc_counter_tens|timer\(3) & ( \dc_counter_tens|Equal0~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dc_counter_tens|ALT_INV_Equal0~5_combout\,
	dataf => \dc_counter_tens|ALT_INV_timer\(3),
	combout => \dc_counter_tens|WideOr0~combout\);

-- Location: LABCELL_X62_Y5_N15
\dc_counter_tens|WideOr1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_counter_tens|WideOr1~combout\ = ( !\dc_counter_tens|timer[2]~DUPLICATE_q\ & ( (\dc_counter_tens|Equal0~5_combout\ & ((!\dc_counter_tens|timer[1]~DUPLICATE_q\) # (!\dc_counter_tens|timer\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001010000011110000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_counter_tens|ALT_INV_timer[1]~DUPLICATE_q\,
	datac => \dc_counter_tens|ALT_INV_Equal0~5_combout\,
	datad => \dc_counter_tens|ALT_INV_timer\(3),
	dataf => \dc_counter_tens|ALT_INV_timer[2]~DUPLICATE_q\,
	combout => \dc_counter_tens|WideOr1~combout\);

-- Location: LABCELL_X63_Y5_N51
\dc_counter_tens|WideOr2\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_counter_tens|WideOr2~combout\ = ( \dc_counter_tens|timer[2]~DUPLICATE_q\ & ( (!\dc_counter_tens|timer\(3) & (\dc_counter_tens|Equal0~5_combout\ & !\dc_counter_tens|timer[1]~DUPLICATE_q\)) ) ) # ( !\dc_counter_tens|timer[2]~DUPLICATE_q\ & ( 
-- (\dc_counter_tens|Equal0~5_combout\ & !\dc_counter_tens|timer[1]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_counter_tens|ALT_INV_timer\(3),
	datac => \dc_counter_tens|ALT_INV_Equal0~5_combout\,
	datad => \dc_counter_tens|ALT_INV_timer[1]~DUPLICATE_q\,
	dataf => \dc_counter_tens|ALT_INV_timer[2]~DUPLICATE_q\,
	combout => \dc_counter_tens|WideOr2~combout\);

-- Location: LABCELL_X62_Y5_N12
\dc_converter|Mux16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_converter|Mux16~0_combout\ = ( \dc_counter_tens|WideOr2~combout\ & ( (\dc_counter_tens|WideOr1~combout\) # (\dc_counter_tens|WideOr0~combout\) ) ) # ( !\dc_counter_tens|WideOr2~combout\ & ( (\dc_counter_tens|WideOr0~combout\ & 
-- ((!\dc_counter_tens|WideOr1~combout\) # (\dc_counter_tens|WideNor0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000011000011110000001100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dc_counter_tens|ALT_INV_WideNor0~0_combout\,
	datac => \dc_counter_tens|ALT_INV_WideOr0~combout\,
	datad => \dc_counter_tens|ALT_INV_WideOr1~combout\,
	dataf => \dc_counter_tens|ALT_INV_WideOr2~combout\,
	combout => \dc_converter|Mux16~0_combout\);

-- Location: FF_X62_Y5_N14
\dc_converter|reg_tens[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	d => \dc_converter|Mux16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_converter|reg_tens[1][0]~q\);

-- Location: LABCELL_X62_Y5_N42
\dc_converter|Mux17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_converter|Mux17~0_combout\ = ( \dc_counter_tens|WideOr2~combout\ & ( (!\dc_counter_tens|WideOr0~combout\) # (!\dc_counter_tens|WideNor0~0_combout\ $ (!\dc_counter_tens|WideOr1~combout\)) ) ) # ( !\dc_counter_tens|WideOr2~combout\ & ( 
-- (!\dc_counter_tens|WideNor0~0_combout\) # ((!\dc_counter_tens|WideOr0~combout\) # (\dc_counter_tens|WideOr1~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111111111110101111111111110101111110101111010111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_counter_tens|ALT_INV_WideNor0~0_combout\,
	datac => \dc_counter_tens|ALT_INV_WideOr0~combout\,
	datad => \dc_counter_tens|ALT_INV_WideOr1~combout\,
	dataf => \dc_counter_tens|ALT_INV_WideOr2~combout\,
	combout => \dc_converter|Mux17~0_combout\);

-- Location: FF_X62_Y5_N44
\dc_converter|reg_tens[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	d => \dc_converter|Mux17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_converter|reg_tens[0][1]~q\);

-- Location: LABCELL_X64_Y5_N0
\dc_converter|Output30bit[17]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_converter|Output30bit[17]~1_combout\ = ( \dc_converter|state_reg.idle~q\ & ( \dc_converter|reg_tens[0][1]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \dc_converter|ALT_INV_reg_tens[0][1]~q\,
	dataf => \dc_converter|ALT_INV_state_reg.idle~q\,
	combout => \dc_converter|Output30bit[17]~1_combout\);

-- Location: FF_X64_Y5_N53
\dc_preparator|ex[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	asdata => \dc_converter|Output30bit[17]~1_combout\,
	sload => VCC,
	ena => \dc_preparator|Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_preparator|ex\(16));

-- Location: LABCELL_X64_Y5_N48
\dc_converter|Output30bit[18]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_converter|Output30bit[18]~2_combout\ = ( \dc_converter|state_reg.idle~DUPLICATE_q\ & ( \dc_converter|reg_tens[1][0]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dc_converter|ALT_INV_reg_tens[1][0]~q\,
	dataf => \dc_converter|ALT_INV_state_reg.idle~DUPLICATE_q\,
	combout => \dc_converter|Output30bit[18]~2_combout\);

-- Location: FF_X64_Y5_N50
\dc_preparator|ex[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	d => \dc_converter|Output30bit[18]~2_combout\,
	ena => \dc_preparator|Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_preparator|ex\(18));

-- Location: LABCELL_X64_Y5_N51
\dc_preparator|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_preparator|Equal1~0_combout\ = ( \dc_preparator|ex\(18) & ( (\dc_converter|state_reg.idle~q\ & (\dc_converter|reg_tens[1][0]~q\ & (!\dc_converter|reg_tens[0][1]~q\ $ (\dc_preparator|ex\(16))))) ) ) # ( !\dc_preparator|ex\(18) & ( 
-- (!\dc_converter|state_reg.idle~q\ & (((!\dc_preparator|ex\(16))))) # (\dc_converter|state_reg.idle~q\ & (!\dc_converter|reg_tens[1][0]~q\ & (!\dc_converter|reg_tens[0][1]~q\ $ (\dc_preparator|ex\(16))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110101000000100111010100000010000010000000000010001000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_converter|ALT_INV_state_reg.idle~q\,
	datab => \dc_converter|ALT_INV_reg_tens[1][0]~q\,
	datac => \dc_converter|ALT_INV_reg_tens[0][1]~q\,
	datad => \dc_preparator|ALT_INV_ex\(16),
	dataf => \dc_preparator|ALT_INV_ex\(18),
	combout => \dc_preparator|Equal1~0_combout\);

-- Location: LABCELL_X62_Y5_N45
\dc_converter|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_converter|Mux12~0_combout\ = (!\dc_counter_tens|WideOr0~combout\ & (((\dc_counter_tens|WideOr2~combout\ & \dc_counter_tens|WideOr1~combout\)))) # (\dc_counter_tens|WideOr0~combout\ & ((!\dc_counter_tens|WideNor0~0_combout\ $ 
-- (!\dc_counter_tens|WideOr2~combout\)) # (\dc_counter_tens|WideOr1~combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000111111000001100011111100000110001111110000011000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_counter_tens|ALT_INV_WideNor0~0_combout\,
	datab => \dc_counter_tens|ALT_INV_WideOr2~combout\,
	datac => \dc_counter_tens|ALT_INV_WideOr0~combout\,
	datad => \dc_counter_tens|ALT_INV_WideOr1~combout\,
	combout => \dc_converter|Mux12~0_combout\);

-- Location: FF_X62_Y5_N47
\dc_converter|reg_tens[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	d => \dc_converter|Mux12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_converter|reg_tens[3][0]~q\);

-- Location: LABCELL_X62_Y5_N6
\dc_converter|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_converter|Mux13~0_combout\ = (!\dc_counter_tens|WideNor0~0_combout\) # ((!\dc_counter_tens|WideOr0~combout\) # (!\dc_counter_tens|WideOr2~combout\ $ (!\dc_counter_tens|WideOr1~combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101111111110111110111111111011111011111111101111101111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_counter_tens|ALT_INV_WideNor0~0_combout\,
	datab => \dc_counter_tens|ALT_INV_WideOr2~combout\,
	datac => \dc_counter_tens|ALT_INV_WideOr0~combout\,
	datad => \dc_counter_tens|ALT_INV_WideOr1~combout\,
	combout => \dc_converter|Mux13~0_combout\);

-- Location: FF_X62_Y5_N8
\dc_converter|reg_tens[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	d => \dc_converter|Mux13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_converter|reg_tens[2][2]~q\);

-- Location: LABCELL_X62_Y5_N57
\dc_converter|Output30bit[23]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_converter|Output30bit[23]~17_combout\ = (\dc_converter|state_reg.idle~q\ & \dc_converter|reg_tens[2][2]~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dc_converter|ALT_INV_state_reg.idle~q\,
	datac => \dc_converter|ALT_INV_reg_tens[2][2]~q\,
	combout => \dc_converter|Output30bit[23]~17_combout\);

-- Location: FF_X63_Y5_N46
\dc_preparator|ex[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	asdata => \dc_converter|Output30bit[23]~17_combout\,
	sload => VCC,
	ena => \dc_preparator|Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_preparator|ex\(23));

-- Location: LABCELL_X61_Y5_N30
\dc_converter|Output30bit[24]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_converter|Output30bit[24]~18_combout\ = ( \dc_converter|reg_tens[3][0]~q\ & ( \dc_converter|state_reg.idle~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dc_converter|ALT_INV_state_reg.idle~DUPLICATE_q\,
	dataf => \dc_converter|ALT_INV_reg_tens[3][0]~q\,
	combout => \dc_converter|Output30bit[24]~18_combout\);

-- Location: FF_X61_Y5_N47
\dc_preparator|ex[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	asdata => \dc_converter|Output30bit[24]~18_combout\,
	sload => VCC,
	ena => \dc_preparator|Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_preparator|ex\(24));

-- Location: LABCELL_X61_Y5_N36
\dc_preparator|Equal1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_preparator|Equal1~9_combout\ = ( \dc_converter|state_reg.idle~q\ & ( (!\dc_converter|reg_tens[3][0]~q\ & (!\dc_preparator|ex\(24) & (!\dc_preparator|ex\(23) $ (\dc_converter|reg_tens[2][2]~q\)))) # (\dc_converter|reg_tens[3][0]~q\ & 
-- (\dc_preparator|ex\(24) & (!\dc_preparator|ex\(23) $ (\dc_converter|reg_tens[2][2]~q\)))) ) ) # ( !\dc_converter|state_reg.idle~q\ & ( (!\dc_preparator|ex\(23) & !\dc_preparator|ex\(24)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000010000010010000011000001001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_converter|ALT_INV_reg_tens[3][0]~q\,
	datab => \dc_preparator|ALT_INV_ex\(23),
	datac => \dc_converter|ALT_INV_reg_tens[2][2]~q\,
	datad => \dc_preparator|ALT_INV_ex\(24),
	dataf => \dc_converter|ALT_INV_state_reg.idle~q\,
	combout => \dc_preparator|Equal1~9_combout\);

-- Location: LABCELL_X62_Y5_N24
\dc_converter|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_converter|Mux9~0_combout\ = ( \dc_counter_tens|timer[0]~DUPLICATE_q\ & ( (((!\dc_counter_tens|Equal0~5_combout\) # (\dc_counter_tens|timer[1]~DUPLICATE_q\)) # (\dc_counter_tens|timer[2]~DUPLICATE_q\)) # (\dc_counter_tens|timer\(3)) ) ) # ( 
-- !\dc_counter_tens|timer[0]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111110111111111111111011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_counter_tens|ALT_INV_timer\(3),
	datab => \dc_counter_tens|ALT_INV_timer[2]~DUPLICATE_q\,
	datac => \dc_counter_tens|ALT_INV_Equal0~5_combout\,
	datad => \dc_counter_tens|ALT_INV_timer[1]~DUPLICATE_q\,
	dataf => \dc_counter_tens|ALT_INV_timer[0]~DUPLICATE_q\,
	combout => \dc_converter|Mux9~0_combout\);

-- Location: FF_X62_Y5_N26
\dc_converter|reg_tens[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	d => \dc_converter|Mux9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_converter|reg_tens[4][2]~q\);

-- Location: LABCELL_X61_Y5_N27
\dc_converter|Output30bit[29]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_converter|Output30bit[29]~0_combout\ = ( \dc_converter|state_reg.idle~q\ & ( \dc_converter|reg_tens[4][2]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dc_converter|ALT_INV_reg_tens[4][2]~q\,
	dataf => \dc_converter|ALT_INV_state_reg.idle~q\,
	combout => \dc_converter|Output30bit[29]~0_combout\);

-- Location: FF_X63_Y5_N59
\dc_preparator|ex[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	asdata => \dc_converter|Output30bit[29]~0_combout\,
	sload => VCC,
	ena => \dc_preparator|Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_preparator|ex\(29));

-- Location: LABCELL_X62_Y5_N33
\dc_converter|Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_converter|Mux14~0_combout\ = ( \dc_counter_tens|WideOr2~combout\ & ( (!\dc_counter_tens|WideOr0~combout\) # (!\dc_counter_tens|WideOr1~combout\) ) ) # ( !\dc_counter_tens|WideOr2~combout\ & ( (!\dc_counter_tens|WideNor0~0_combout\) # 
-- ((!\dc_counter_tens|WideOr0~combout\) # (\dc_counter_tens|WideOr1~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111111101111111011111110111111111100111111001111110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_counter_tens|ALT_INV_WideNor0~0_combout\,
	datab => \dc_counter_tens|ALT_INV_WideOr0~combout\,
	datac => \dc_counter_tens|ALT_INV_WideOr1~combout\,
	dataf => \dc_counter_tens|ALT_INV_WideOr2~combout\,
	combout => \dc_converter|Mux14~0_combout\);

-- Location: FF_X62_Y5_N35
\dc_converter|reg_tens[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	d => \dc_converter|Mux14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_converter|reg_tens[2][1]~q\);

-- Location: LABCELL_X62_Y5_N30
\dc_converter|Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_converter|Mux15~0_combout\ = ( \dc_counter_tens|WideOr2~combout\ & ( (!\dc_counter_tens|WideNor0~0_combout\ & ((\dc_counter_tens|WideOr1~combout\))) # (\dc_counter_tens|WideNor0~0_combout\ & (!\dc_counter_tens|WideOr0~combout\ & 
-- !\dc_counter_tens|WideOr1~combout\)) ) ) # ( !\dc_counter_tens|WideOr2~combout\ & ( (!\dc_counter_tens|WideNor0~0_combout\ & ((!\dc_counter_tens|WideOr1~combout\) # (\dc_counter_tens|WideOr0~combout\))) # (\dc_counter_tens|WideNor0~0_combout\ & 
-- (!\dc_counter_tens|WideOr0~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110011011100110111001101110011001001010010010100100101001001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_counter_tens|ALT_INV_WideNor0~0_combout\,
	datab => \dc_counter_tens|ALT_INV_WideOr0~combout\,
	datac => \dc_counter_tens|ALT_INV_WideOr1~combout\,
	dataf => \dc_counter_tens|ALT_INV_WideOr2~combout\,
	combout => \dc_converter|Mux15~0_combout\);

-- Location: FF_X62_Y5_N32
\dc_converter|reg_tens[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	d => \dc_converter|Mux15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_converter|reg_tens[1][2]~q\);

-- Location: LABCELL_X62_Y5_N3
\dc_converter|Output30bit[20]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_converter|Output30bit[20]~15_combout\ = (\dc_converter|state_reg.idle~DUPLICATE_q\ & \dc_converter|reg_tens[1][2]~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dc_converter|ALT_INV_state_reg.idle~DUPLICATE_q\,
	datad => \dc_converter|ALT_INV_reg_tens[1][2]~q\,
	combout => \dc_converter|Output30bit[20]~15_combout\);

-- Location: FF_X62_Y5_N5
\dc_preparator|ex[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	d => \dc_converter|Output30bit[20]~15_combout\,
	ena => \dc_preparator|Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_preparator|ex\(20));

-- Location: LABCELL_X62_Y5_N18
\dc_converter|Output30bit[22]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_converter|Output30bit[22]~16_combout\ = ( \dc_converter|state_reg.idle~q\ & ( \dc_converter|reg_tens[2][1]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dc_converter|ALT_INV_reg_tens[2][1]~q\,
	dataf => \dc_converter|ALT_INV_state_reg.idle~q\,
	combout => \dc_converter|Output30bit[22]~16_combout\);

-- Location: FF_X62_Y5_N2
\dc_preparator|ex[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	asdata => \dc_converter|Output30bit[22]~16_combout\,
	sload => VCC,
	ena => \dc_preparator|Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_preparator|ex\(22));

-- Location: LABCELL_X62_Y5_N54
\dc_preparator|Equal1~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_preparator|Equal1~8_combout\ = ( \dc_converter|reg_tens[1][2]~q\ & ( (!\dc_converter|state_reg.idle~q\ & (((!\dc_preparator|ex\(20) & !\dc_preparator|ex\(22))))) # (\dc_converter|state_reg.idle~q\ & (\dc_preparator|ex\(20) & 
-- (!\dc_converter|reg_tens[2][1]~q\ $ (\dc_preparator|ex\(22))))) ) ) # ( !\dc_converter|reg_tens[1][2]~q\ & ( (!\dc_preparator|ex\(20) & (!\dc_preparator|ex\(22) $ (((\dc_converter|reg_tens[2][1]~q\ & \dc_converter|state_reg.idle~q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000000010000111000000001000011000010000000011100001000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_converter|ALT_INV_reg_tens[2][1]~q\,
	datab => \dc_converter|ALT_INV_state_reg.idle~q\,
	datac => \dc_preparator|ALT_INV_ex\(20),
	datad => \dc_preparator|ALT_INV_ex\(22),
	dataf => \dc_converter|ALT_INV_reg_tens[1][2]~q\,
	combout => \dc_preparator|Equal1~8_combout\);

-- Location: LABCELL_X62_Y5_N36
\dc_converter|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_converter|Mux11~0_combout\ = ( \dc_counter_tens|WideOr2~combout\ & ( (!\dc_counter_tens|WideNor0~0_combout\) # ((!\dc_counter_tens|WideOr1~combout\) # (!\dc_counter_tens|WideOr0~combout\)) ) ) # ( !\dc_counter_tens|WideOr2~combout\ & ( 
-- (!\dc_counter_tens|WideOr0~combout\) # ((!\dc_counter_tens|WideNor0~0_combout\ & !\dc_counter_tens|WideOr1~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100011111000111110001111100011111110111111101111111011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_counter_tens|ALT_INV_WideNor0~0_combout\,
	datab => \dc_counter_tens|ALT_INV_WideOr1~combout\,
	datac => \dc_counter_tens|ALT_INV_WideOr0~combout\,
	dataf => \dc_counter_tens|ALT_INV_WideOr2~combout\,
	combout => \dc_converter|Mux11~0_combout\);

-- Location: FF_X62_Y5_N38
\dc_converter|reg_tens[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	d => \dc_converter|Mux11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_converter|reg_tens[3][2]~q\);

-- Location: LABCELL_X61_Y5_N6
\dc_converter|Output30bit[26]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_converter|Output30bit[26]~13_combout\ = ( \dc_converter|state_reg.idle~q\ & ( \dc_converter|reg_tens[3][2]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dc_converter|ALT_INV_reg_tens[3][2]~q\,
	dataf => \dc_converter|ALT_INV_state_reg.idle~q\,
	combout => \dc_converter|Output30bit[26]~13_combout\);

-- Location: FF_X62_Y5_N19
\dc_preparator|ex[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	asdata => \dc_converter|Output30bit[26]~13_combout\,
	sload => VCC,
	ena => \dc_preparator|Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_preparator|ex\(26));

-- Location: LABCELL_X62_Y5_N9
\dc_converter|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_converter|Mux10~0_combout\ = (!\dc_counter_tens|WideOr2~combout\) # ((!\dc_counter_tens|WideOr0~combout\) # (!\dc_counter_tens|WideNor0~0_combout\ $ (!\dc_counter_tens|WideOr1~combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110111111110111111011111111011111101111111101111110111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_counter_tens|ALT_INV_WideNor0~0_combout\,
	datab => \dc_counter_tens|ALT_INV_WideOr2~combout\,
	datac => \dc_counter_tens|ALT_INV_WideOr0~combout\,
	datad => \dc_counter_tens|ALT_INV_WideOr1~combout\,
	combout => \dc_converter|Mux10~0_combout\);

-- Location: FF_X62_Y5_N11
\dc_converter|reg_tens[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	d => \dc_converter|Mux10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_converter|reg_tens[4][1]~q\);

-- Location: LABCELL_X61_Y5_N39
\dc_converter|Output30bit[28]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_converter|Output30bit[28]~14_combout\ = ( \dc_converter|reg_tens[4][1]~q\ & ( \dc_converter|state_reg.idle~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \dc_converter|ALT_INV_state_reg.idle~q\,
	dataf => \dc_converter|ALT_INV_reg_tens[4][1]~q\,
	combout => \dc_converter|Output30bit[28]~14_combout\);

-- Location: FF_X61_Y5_N52
\dc_preparator|ex[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	asdata => \dc_converter|Output30bit[28]~14_combout\,
	sload => VCC,
	ena => \dc_preparator|Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_preparator|ex\(28));

-- Location: LABCELL_X64_Y5_N42
\dc_preparator|Equal1~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_preparator|Equal1~7_combout\ = ( \dc_converter|state_reg.idle~q\ & ( (!\dc_converter|reg_tens[3][2]~q\ & (!\dc_preparator|ex\(26) & (!\dc_converter|reg_tens[4][1]~q\ $ (\dc_preparator|ex\(28))))) # (\dc_converter|reg_tens[3][2]~q\ & 
-- (\dc_preparator|ex\(26) & (!\dc_converter|reg_tens[4][1]~q\ $ (\dc_preparator|ex\(28))))) ) ) # ( !\dc_converter|state_reg.idle~q\ & ( (!\dc_preparator|ex\(26) & !\dc_preparator|ex\(28)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000010010000000010011001000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_converter|ALT_INV_reg_tens[3][2]~q\,
	datab => \dc_preparator|ALT_INV_ex\(26),
	datac => \dc_converter|ALT_INV_reg_tens[4][1]~q\,
	datad => \dc_preparator|ALT_INV_ex\(28),
	dataf => \dc_converter|ALT_INV_state_reg.idle~q\,
	combout => \dc_preparator|Equal1~7_combout\);

-- Location: LABCELL_X61_Y5_N24
\dc_preparator|Equal1~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_preparator|Equal1~10_combout\ = ( \dc_preparator|Equal1~7_combout\ & ( (\dc_preparator|Equal1~9_combout\ & (\dc_preparator|Equal1~8_combout\ & (!\dc_preparator|ex\(29) $ (\dc_converter|Output30bit[29]~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010000010000000001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_preparator|ALT_INV_Equal1~9_combout\,
	datab => \dc_preparator|ALT_INV_ex\(29),
	datac => \dc_converter|ALT_INV_Output30bit[29]~0_combout\,
	datad => \dc_preparator|ALT_INV_Equal1~8_combout\,
	dataf => \dc_preparator|ALT_INV_Equal1~7_combout\,
	combout => \dc_preparator|Equal1~10_combout\);

-- Location: LABCELL_X61_Y5_N21
\dc_preparator|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_preparator|Selector0~0_combout\ = ( \dc_preparator|Equal1~0_combout\ & ( \dc_preparator|Equal1~10_combout\ & ( (!\spi_comp|o_tx_end~q\ & (((\dc_preparator|state_reg.check_if_new~q\ & !\dc_preparator|Equal1~6_combout\)) # 
-- (\dc_preparator|state_reg.s7~q\))) # (\spi_comp|o_tx_end~q\ & (\dc_preparator|state_reg.check_if_new~q\ & ((!\dc_preparator|Equal1~6_combout\)))) ) ) ) # ( !\dc_preparator|Equal1~0_combout\ & ( \dc_preparator|Equal1~10_combout\ & ( 
-- ((!\spi_comp|o_tx_end~q\ & \dc_preparator|state_reg.s7~q\)) # (\dc_preparator|state_reg.check_if_new~q\) ) ) ) # ( \dc_preparator|Equal1~0_combout\ & ( !\dc_preparator|Equal1~10_combout\ & ( ((!\spi_comp|o_tx_end~q\ & \dc_preparator|state_reg.s7~q\)) # 
-- (\dc_preparator|state_reg.check_if_new~q\) ) ) ) # ( !\dc_preparator|Equal1~0_combout\ & ( !\dc_preparator|Equal1~10_combout\ & ( ((!\spi_comp|o_tx_end~q\ & \dc_preparator|state_reg.s7~q\)) # (\dc_preparator|state_reg.check_if_new~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101100111011001110110011101100111011001110110011101100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi_comp|ALT_INV_o_tx_end~q\,
	datab => \dc_preparator|ALT_INV_state_reg.check_if_new~q\,
	datac => \dc_preparator|ALT_INV_state_reg.s7~q\,
	datad => \dc_preparator|ALT_INV_Equal1~6_combout\,
	datae => \dc_preparator|ALT_INV_Equal1~0_combout\,
	dataf => \dc_preparator|ALT_INV_Equal1~10_combout\,
	combout => \dc_preparator|Selector0~0_combout\);

-- Location: FF_X61_Y5_N14
\dc_preparator|state_reg.s7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	asdata => \dc_preparator|Selector0~0_combout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_preparator|state_reg.s7~q\);

-- Location: FF_X65_Y5_N25
\dc_preparator|state_reg.s6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	asdata => \dc_preparator|state_reg.s7~q\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \spi_comp|o_tx_end~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_preparator|state_reg.s6~q\);

-- Location: FF_X67_Y5_N10
\dc_preparator|state_reg.s5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	asdata => \dc_preparator|state_reg.s6~q\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \spi_comp|o_tx_end~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_preparator|state_reg.s5~q\);

-- Location: FF_X65_Y6_N59
\dc_preparator|state_reg.s4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	asdata => \dc_preparator|state_reg.s5~q\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \spi_comp|o_tx_end~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_preparator|state_reg.s4~q\);

-- Location: FF_X65_Y6_N25
\dc_preparator|state_reg.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	asdata => \dc_preparator|state_reg.s4~q\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \spi_comp|o_tx_end~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_preparator|state_reg.s3~q\);

-- Location: LABCELL_X61_Y5_N3
\dc_preparator|Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_preparator|Selector8~0_combout\ = ( \dc_converter|state_reg.idle~q\ & ( (!\spi_comp|o_tx_end~q\ & \dc_preparator|state_reg.idleplus~q\) ) ) # ( !\dc_converter|state_reg.idle~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi_comp|ALT_INV_o_tx_end~q\,
	datad => \dc_preparator|ALT_INV_state_reg.idleplus~q\,
	dataf => \dc_converter|ALT_INV_state_reg.idle~q\,
	combout => \dc_preparator|Selector8~0_combout\);

-- Location: FF_X62_Y5_N52
\dc_preparator|state_reg.idleplus\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	asdata => \dc_preparator|Selector8~0_combout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_preparator|state_reg.idleplus~q\);

-- Location: FF_X66_Y5_N58
\dc_preparator|state_reg.idleplusplus\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	asdata => \dc_preparator|state_reg.idleplus~q\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \spi_comp|o_tx_end~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_preparator|state_reg.idleplusplus~q\);

-- Location: FF_X66_Y5_N56
\dc_preparator|state_reg.idle1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	asdata => \dc_preparator|state_reg.idleplusplus~q\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \spi_comp|o_tx_end~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_preparator|state_reg.idle1~q\);

-- Location: MLABCELL_X65_Y5_N45
\dc_preparator|state_reg.idle2~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_preparator|state_reg.idle2~feeder_combout\ = ( \dc_preparator|state_reg.idle1~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \dc_preparator|ALT_INV_state_reg.idle1~q\,
	combout => \dc_preparator|state_reg.idle2~feeder_combout\);

-- Location: FF_X65_Y5_N46
\dc_preparator|state_reg.idle2~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	d => \dc_preparator|state_reg.idle2~feeder_combout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	ena => \spi_comp|o_tx_end~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_preparator|state_reg.idle2~DUPLICATE_q\);

-- Location: FF_X67_Y5_N58
\dc_preparator|state_reg.idle3~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	asdata => \dc_preparator|state_reg.idle2~DUPLICATE_q\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \spi_comp|o_tx_end~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_preparator|state_reg.idle3~DUPLICATE_q\);

-- Location: FF_X67_Y5_N16
\dc_preparator|state_reg.zero1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	asdata => \dc_preparator|state_reg.idle3~DUPLICATE_q\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \spi_comp|o_tx_end~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_preparator|state_reg.zero1~q\);

-- Location: FF_X66_Y5_N43
\dc_preparator|state_reg.zero7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	asdata => \dc_preparator|state_reg.zero1~q\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \spi_comp|o_tx_end~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_preparator|state_reg.zero7~q\);

-- Location: FF_X66_Y5_N38
\dc_preparator|state_reg.zero8~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	asdata => \dc_preparator|state_reg.zero7~q\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \spi_comp|o_tx_end~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_preparator|state_reg.zero8~DUPLICATE_q\);

-- Location: LABCELL_X66_Y5_N39
\dc_preparator|Selector13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_preparator|Selector13~0_combout\ = ( \dc_preparator|state_reg.zero8~DUPLICATE_q\ & ( \spi_comp|o_tx_end~q\ ) ) # ( !\dc_preparator|state_reg.zero8~DUPLICATE_q\ & ( (\dc_preparator|state_reg.s3~q\ & \spi_comp|o_tx_end~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000001111111100000000000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dc_preparator|ALT_INV_state_reg.s3~q\,
	datad => \spi_comp|ALT_INV_o_tx_end~q\,
	datae => \dc_preparator|ALT_INV_state_reg.zero8~DUPLICATE_q\,
	combout => \dc_preparator|Selector13~0_combout\);

-- Location: LABCELL_X61_Y5_N57
\dc_preparator|Selector13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_preparator|Selector13~1_combout\ = ( \dc_preparator|Equal1~0_combout\ & ( \dc_preparator|Equal1~10_combout\ & ( ((\dc_preparator|state_reg.check_if_new~q\ & \dc_preparator|Equal1~6_combout\)) # (\dc_preparator|Selector13~0_combout\) ) ) ) # ( 
-- !\dc_preparator|Equal1~0_combout\ & ( \dc_preparator|Equal1~10_combout\ & ( \dc_preparator|Selector13~0_combout\ ) ) ) # ( \dc_preparator|Equal1~0_combout\ & ( !\dc_preparator|Equal1~10_combout\ & ( \dc_preparator|Selector13~0_combout\ ) ) ) # ( 
-- !\dc_preparator|Equal1~0_combout\ & ( !\dc_preparator|Equal1~10_combout\ & ( \dc_preparator|Selector13~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_preparator|ALT_INV_Selector13~0_combout\,
	datac => \dc_preparator|ALT_INV_state_reg.check_if_new~q\,
	datad => \dc_preparator|ALT_INV_Equal1~6_combout\,
	datae => \dc_preparator|ALT_INV_Equal1~0_combout\,
	dataf => \dc_preparator|ALT_INV_Equal1~10_combout\,
	combout => \dc_preparator|Selector13~1_combout\);

-- Location: FF_X61_Y5_N8
\dc_preparator|state_reg.check_if_new\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	asdata => \dc_preparator|Selector13~1_combout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_preparator|state_reg.check_if_new~q\);

-- Location: LABCELL_X67_Y5_N0
\dc_preparator|Selector46~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_preparator|Selector46~0_combout\ = ( !\dc_preparator|state_reg.check_if_new~q\ & ( \dc_preparator|Equal2~0_combout\ & ( !\dc_preparator|wait_cnt\(6) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dc_preparator|ALT_INV_wait_cnt\(6),
	datae => \dc_preparator|ALT_INV_state_reg.check_if_new~q\,
	dataf => \dc_preparator|ALT_INV_Equal2~0_combout\,
	combout => \dc_preparator|Selector46~0_combout\);

-- Location: FF_X66_Y4_N20
\spi_comp|r_tx_start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	asdata => \dc_preparator|Selector46~0_combout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_comp|r_tx_start~q\);

-- Location: LABCELL_X66_Y4_N9
\spi_comp|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi_comp|Selector1~0_combout\ = ( \spi_comp|Equal0~0_combout\ & ( \spi_comp|r_tx_start~q\ & ( (!\spi_comp|r_st_present.ST_TX_RX~q\ & (!\spi_comp|r_st_present.ST_RESET~q\ & (!\spi_comp|cnt_reset\(0)))) # (\spi_comp|r_st_present.ST_TX_RX~q\ & 
-- ((!\spi_comp|p_comb~0_combout\) # ((!\spi_comp|r_st_present.ST_RESET~q\ & !\spi_comp|cnt_reset\(0))))) ) ) ) # ( !\spi_comp|Equal0~0_combout\ & ( \spi_comp|r_tx_start~q\ & ( (\spi_comp|r_st_present.ST_TX_RX~q\ & !\spi_comp|p_comb~0_combout\) ) ) ) # ( 
-- \spi_comp|Equal0~0_combout\ & ( !\spi_comp|r_tx_start~q\ & ( (\spi_comp|r_st_present.ST_TX_RX~q\ & !\spi_comp|p_comb~0_combout\) ) ) ) # ( !\spi_comp|Equal0~0_combout\ & ( !\spi_comp|r_tx_start~q\ & ( (\spi_comp|r_st_present.ST_TX_RX~q\ & 
-- !\spi_comp|p_comb~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101000000001101010111000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi_comp|ALT_INV_r_st_present.ST_TX_RX~q\,
	datab => \spi_comp|ALT_INV_r_st_present.ST_RESET~q\,
	datac => \spi_comp|ALT_INV_cnt_reset\(0),
	datad => \spi_comp|ALT_INV_p_comb~0_combout\,
	datae => \spi_comp|ALT_INV_Equal0~0_combout\,
	dataf => \spi_comp|ALT_INV_r_tx_start~q\,
	combout => \spi_comp|Selector1~0_combout\);

-- Location: FF_X67_Y4_N47
\spi_comp|r_st_present.ST_TX_RX\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	asdata => \spi_comp|Selector1~0_combout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_comp|r_st_present.ST_TX_RX~q\);

-- Location: LABCELL_X66_Y4_N30
\spi_comp|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi_comp|Selector2~0_combout\ = ( \spi_comp|r_st_present.ST_END~q\ & ( \spi_comp|p_comb~0_combout\ & ( (!\spi_comp|r_sclk_fall~DUPLICATE_q\) # (\spi_comp|r_st_present.ST_TX_RX~q\) ) ) ) # ( !\spi_comp|r_st_present.ST_END~q\ & ( 
-- \spi_comp|p_comb~0_combout\ & ( \spi_comp|r_st_present.ST_TX_RX~q\ ) ) ) # ( \spi_comp|r_st_present.ST_END~q\ & ( !\spi_comp|p_comb~0_combout\ & ( !\spi_comp|r_sclk_fall~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000001111000011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi_comp|ALT_INV_r_sclk_fall~DUPLICATE_q\,
	datac => \spi_comp|ALT_INV_r_st_present.ST_TX_RX~q\,
	datae => \spi_comp|ALT_INV_r_st_present.ST_END~q\,
	dataf => \spi_comp|ALT_INV_p_comb~0_combout\,
	combout => \spi_comp|Selector2~0_combout\);

-- Location: FF_X66_Y4_N38
\spi_comp|r_st_present.ST_END\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	asdata => \spi_comp|Selector2~0_combout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_comp|r_st_present.ST_END~q\);

-- Location: LABCELL_X66_Y4_N51
\spi_comp|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi_comp|Selector0~0_combout\ = ( \spi_comp|Equal0~0_combout\ & ( \spi_comp|r_tx_start~q\ & ( (!\spi_comp|r_st_present.ST_END~q\ & ((!\spi_comp|cnt_reset\(0)) # ((\spi_comp|r_st_present.ST_RESET~q\)))) # (\spi_comp|r_st_present.ST_END~q\ & 
-- (!\spi_comp|r_sclk_fall~DUPLICATE_q\ & ((!\spi_comp|cnt_reset\(0)) # (\spi_comp|r_st_present.ST_RESET~q\)))) ) ) ) # ( !\spi_comp|Equal0~0_combout\ & ( \spi_comp|r_tx_start~q\ & ( (\spi_comp|r_st_present.ST_RESET~q\ & ((!\spi_comp|r_st_present.ST_END~q\) 
-- # (!\spi_comp|r_sclk_fall~DUPLICATE_q\))) ) ) ) # ( \spi_comp|Equal0~0_combout\ & ( !\spi_comp|r_tx_start~q\ & ( (\spi_comp|r_st_present.ST_RESET~q\ & ((!\spi_comp|r_st_present.ST_END~q\) # (!\spi_comp|r_sclk_fall~DUPLICATE_q\))) ) ) ) # ( 
-- !\spi_comp|Equal0~0_combout\ & ( !\spi_comp|r_tx_start~q\ & ( (\spi_comp|r_st_present.ST_RESET~q\ & ((!\spi_comp|r_st_present.ST_END~q\) # (!\spi_comp|r_sclk_fall~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111010000000001111101000000000111110101100100011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi_comp|ALT_INV_r_st_present.ST_END~q\,
	datab => \spi_comp|ALT_INV_cnt_reset\(0),
	datac => \spi_comp|ALT_INV_r_sclk_fall~DUPLICATE_q\,
	datad => \spi_comp|ALT_INV_r_st_present.ST_RESET~q\,
	datae => \spi_comp|ALT_INV_Equal0~0_combout\,
	dataf => \spi_comp|ALT_INV_r_tx_start~q\,
	combout => \spi_comp|Selector0~0_combout\);

-- Location: FF_X66_Y4_N23
\spi_comp|r_st_present.ST_RESET\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	asdata => \spi_comp|Selector0~0_combout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_comp|r_st_present.ST_RESET~q\);

-- Location: FF_X66_Y4_N41
\spi_comp|r_counter_clock_ena~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	asdata => \spi_comp|r_st_present.ST_RESET~q\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_comp|r_counter_clock_ena~DUPLICATE_q\);

-- Location: LABCELL_X66_Y4_N15
\spi_comp|r_counter_clock~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi_comp|r_counter_clock~2_combout\ = (!\spi_comp|r_counter_clock[0]~DUPLICATE_q\ & \spi_comp|r_counter_clock_ena~DUPLICATE_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi_comp|ALT_INV_r_counter_clock[0]~DUPLICATE_q\,
	datab => \spi_comp|ALT_INV_r_counter_clock_ena~DUPLICATE_q\,
	combout => \spi_comp|r_counter_clock~2_combout\);

-- Location: FF_X66_Y4_N5
\spi_comp|r_counter_clock[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	asdata => \spi_comp|r_counter_clock~2_combout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_comp|r_counter_clock[0]~DUPLICATE_q\);

-- Location: LABCELL_X66_Y4_N57
\spi_comp|r_sclk_fall~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi_comp|r_sclk_fall~0_combout\ = ( \spi_comp|r_counter_clock\(1) & ( (\spi_comp|r_counter_clock[0]~DUPLICATE_q\ & (\spi_comp|r_counter_clock_ena~q\ & !\spi_comp|r_counter_clock\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi_comp|ALT_INV_r_counter_clock[0]~DUPLICATE_q\,
	datab => \spi_comp|ALT_INV_r_counter_clock_ena~q\,
	datac => \spi_comp|ALT_INV_r_counter_clock\(2),
	dataf => \spi_comp|ALT_INV_r_counter_clock\(1),
	combout => \spi_comp|r_sclk_fall~0_combout\);

-- Location: FF_X66_Y4_N58
\spi_comp|r_sclk_fall~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	d => \spi_comp|r_sclk_fall~0_combout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_comp|r_sclk_fall~DUPLICATE_q\);

-- Location: LABCELL_X66_Y4_N27
\spi_comp|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi_comp|Selector3~0_combout\ = ( \spi_comp|o_sclk~q\ & ( ((!\spi_comp|r_sclk_rise~DUPLICATE_q\ & \spi_comp|r_st_present.ST_TX_RX~q\)) # (\spi_comp|r_st_present.ST_END~q\) ) ) # ( !\spi_comp|o_sclk~q\ & ( (\spi_comp|r_sclk_fall~DUPLICATE_q\ & 
-- (!\spi_comp|r_sclk_rise~DUPLICATE_q\ & \spi_comp|r_st_present.ST_TX_RX~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010000001111110011110000111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi_comp|ALT_INV_r_sclk_fall~DUPLICATE_q\,
	datab => \spi_comp|ALT_INV_r_sclk_rise~DUPLICATE_q\,
	datac => \spi_comp|ALT_INV_r_st_present.ST_END~q\,
	datad => \spi_comp|ALT_INV_r_st_present.ST_TX_RX~q\,
	dataf => \spi_comp|ALT_INV_o_sclk~q\,
	combout => \spi_comp|Selector3~0_combout\);

-- Location: FF_X66_Y4_N35
\spi_comp|o_sclk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	asdata => \spi_comp|Selector3~0_combout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_comp|o_sclk~q\);

-- Location: FF_X65_Y4_N58
\spi_comp|o_ss\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	asdata => \spi_comp|r_st_present.ST_RESET~q\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_comp|o_ss~q\);

-- Location: LABCELL_X66_Y4_N24
\spi_comp|r_tx_data[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi_comp|r_tx_data[15]~feeder_combout\ = ( \dc_preparator|Selector46~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \dc_preparator|ALT_INV_Selector46~0_combout\,
	combout => \spi_comp|r_tx_data[15]~feeder_combout\);

-- Location: FF_X66_Y4_N59
\spi_comp|r_sclk_fall\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	d => \spi_comp|r_sclk_fall~0_combout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_comp|r_sclk_fall~q\);

-- Location: FF_X65_Y5_N47
\dc_preparator|state_reg.idle2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	d => \dc_preparator|state_reg.idle2~feeder_combout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	ena => \spi_comp|o_tx_end~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_preparator|state_reg.idle2~q\);

-- Location: FF_X66_Y5_N37
\dc_preparator|state_reg.zero8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	asdata => \dc_preparator|state_reg.zero7~q\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \spi_comp|o_tx_end~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_preparator|state_reg.zero8~q\);

-- Location: LABCELL_X67_Y5_N51
\dc_preparator|Selector47~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_preparator|Selector47~0_combout\ = (!\dc_preparator|state_reg.idle3~DUPLICATE_q\ & (!\dc_preparator|state_reg.idle2~q\ & (!\dc_preparator|state_reg.zero8~q\ & !\dc_preparator|state_reg.idleplusplus~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_preparator|ALT_INV_state_reg.idle3~DUPLICATE_q\,
	datab => \dc_preparator|ALT_INV_state_reg.idle2~q\,
	datac => \dc_preparator|ALT_INV_state_reg.zero8~q\,
	datad => \dc_preparator|ALT_INV_state_reg.idleplusplus~q\,
	combout => \dc_preparator|Selector47~0_combout\);

-- Location: LABCELL_X67_Y5_N36
\dc_preparator|Selector47~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_preparator|Selector47~1_combout\ = ( !\dc_preparator|wait_cnt[6]~DUPLICATE_q\ & ( \dc_preparator|Selector47~0_combout\ & ( (\dc_preparator|Equal2~0_combout\ & !\dc_converter|state_reg.idle~DUPLICATE_q\) ) ) ) # ( 
-- !\dc_preparator|wait_cnt[6]~DUPLICATE_q\ & ( !\dc_preparator|Selector47~0_combout\ & ( \dc_preparator|Equal2~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000110011000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dc_preparator|ALT_INV_Equal2~0_combout\,
	datad => \dc_converter|ALT_INV_state_reg.idle~DUPLICATE_q\,
	datae => \dc_preparator|ALT_INV_wait_cnt[6]~DUPLICATE_q\,
	dataf => \dc_preparator|ALT_INV_Selector47~0_combout\,
	combout => \dc_preparator|Selector47~1_combout\);

-- Location: LABCELL_X67_Y5_N6
\dc_preparator|Selector48~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_preparator|Selector48~0_combout\ = ( !\dc_preparator|state_reg.s4~q\ & ( (!\dc_preparator|state_reg.s5~q\ & (!\dc_preparator|state_reg.zero7~q\ & !\dc_preparator|state_reg.idle2~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100000000000100010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_preparator|ALT_INV_state_reg.s5~q\,
	datab => \dc_preparator|ALT_INV_state_reg.zero7~q\,
	datad => \dc_preparator|ALT_INV_state_reg.idle2~q\,
	dataf => \dc_preparator|ALT_INV_state_reg.s4~q\,
	combout => \dc_preparator|Selector48~0_combout\);

-- Location: LABCELL_X67_Y5_N33
\dc_preparator|Selector48~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_preparator|Selector48~1_combout\ = ( \dc_preparator|Selector48~0_combout\ & ( (\dc_preparator|Selector16~0_combout\ & (\dc_preparator|Equal2~0_combout\ & !\dc_preparator|wait_cnt[6]~DUPLICATE_q\)) ) ) # ( !\dc_preparator|Selector48~0_combout\ & ( 
-- (\dc_preparator|Equal2~0_combout\ & !\dc_preparator|wait_cnt[6]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_preparator|ALT_INV_Selector16~0_combout\,
	datab => \dc_preparator|ALT_INV_Equal2~0_combout\,
	datac => \dc_preparator|ALT_INV_wait_cnt[6]~DUPLICATE_q\,
	dataf => \dc_preparator|ALT_INV_Selector48~0_combout\,
	combout => \dc_preparator|Selector48~1_combout\);

-- Location: FF_X67_Y5_N59
\dc_preparator|state_reg.idle3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	asdata => \dc_preparator|state_reg.idle2~DUPLICATE_q\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \spi_comp|o_tx_end~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_preparator|state_reg.idle3~q\);

-- Location: LABCELL_X66_Y5_N51
\dc_preparator|Selector49~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_preparator|Selector49~0_combout\ = ( !\dc_preparator|state_reg.idle3~q\ & ( (!\dc_preparator|state_reg.s6~q\ & !\dc_preparator|state_reg.zero7~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dc_preparator|ALT_INV_state_reg.s6~q\,
	datad => \dc_preparator|ALT_INV_state_reg.zero7~q\,
	dataf => \dc_preparator|ALT_INV_state_reg.idle3~q\,
	combout => \dc_preparator|Selector49~0_combout\);

-- Location: LABCELL_X67_Y5_N24
\dc_preparator|Selector49~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_preparator|Selector49~1_combout\ = ( \dc_preparator|state_reg.s3~q\ & ( \dc_preparator|state_reg.idleplusplus~q\ & ( (\dc_preparator|Equal2~0_combout\ & !\dc_preparator|wait_cnt[6]~DUPLICATE_q\) ) ) ) # ( !\dc_preparator|state_reg.s3~q\ & ( 
-- \dc_preparator|state_reg.idleplusplus~q\ & ( (\dc_preparator|Equal2~0_combout\ & !\dc_preparator|wait_cnt[6]~DUPLICATE_q\) ) ) ) # ( \dc_preparator|state_reg.s3~q\ & ( !\dc_preparator|state_reg.idleplusplus~q\ & ( (\dc_preparator|Equal2~0_combout\ & 
-- !\dc_preparator|wait_cnt[6]~DUPLICATE_q\) ) ) ) # ( !\dc_preparator|state_reg.s3~q\ & ( !\dc_preparator|state_reg.idleplusplus~q\ & ( (\dc_preparator|Equal2~0_combout\ & (!\dc_preparator|wait_cnt[6]~DUPLICATE_q\ & ((!\dc_preparator|Selector49~0_combout\) 
-- # (\dc_preparator|state_reg.s7~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000100000000001100110000000000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_preparator|ALT_INV_state_reg.s7~q\,
	datab => \dc_preparator|ALT_INV_Equal2~0_combout\,
	datac => \dc_preparator|ALT_INV_Selector49~0_combout\,
	datad => \dc_preparator|ALT_INV_wait_cnt[6]~DUPLICATE_q\,
	datae => \dc_preparator|ALT_INV_state_reg.s3~q\,
	dataf => \dc_preparator|ALT_INV_state_reg.idleplusplus~q\,
	combout => \dc_preparator|Selector49~1_combout\);

-- Location: LABCELL_X67_Y5_N18
\dc_preparator|Selector50~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_preparator|Selector50~0_combout\ = ( \dc_preparator|Selector49~0_combout\ & ( \dc_preparator|state_reg.zero1~q\ & ( (\dc_preparator|Equal2~0_combout\ & !\dc_preparator|wait_cnt[6]~DUPLICATE_q\) ) ) ) # ( !\dc_preparator|Selector49~0_combout\ & ( 
-- \dc_preparator|state_reg.zero1~q\ & ( (\dc_preparator|Equal2~0_combout\ & !\dc_preparator|wait_cnt[6]~DUPLICATE_q\) ) ) ) # ( \dc_preparator|Selector49~0_combout\ & ( !\dc_preparator|state_reg.zero1~q\ & ( (\dc_preparator|state_reg.s4~q\ & 
-- (\dc_preparator|Equal2~0_combout\ & !\dc_preparator|wait_cnt[6]~DUPLICATE_q\)) ) ) ) # ( !\dc_preparator|Selector49~0_combout\ & ( !\dc_preparator|state_reg.zero1~q\ & ( (\dc_preparator|Equal2~0_combout\ & !\dc_preparator|wait_cnt[6]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000000100010000000000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_preparator|ALT_INV_state_reg.s4~q\,
	datab => \dc_preparator|ALT_INV_Equal2~0_combout\,
	datad => \dc_preparator|ALT_INV_wait_cnt[6]~DUPLICATE_q\,
	datae => \dc_preparator|ALT_INV_Selector49~0_combout\,
	dataf => \dc_preparator|ALT_INV_state_reg.zero1~q\,
	combout => \dc_preparator|Selector50~0_combout\);

-- Location: FF_X67_Y5_N11
\dc_preparator|state_reg.s5~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	asdata => \dc_preparator|state_reg.s6~q\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \spi_comp|o_tx_end~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_preparator|state_reg.s5~DUPLICATE_q\);

-- Location: LABCELL_X64_Y5_N36
\dc_preparator|Selector51~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_preparator|Selector51~0_combout\ = ( \dc_converter|reg_tens[1][2]~q\ & ( (\dc_converter|state_reg.idle~q\ & (((\dc_preparator|state_reg.s5~DUPLICATE_q\ & \dc_converter|reg_tens[2][2]~q\)) # (\dc_preparator|state_reg.s4~q\))) ) ) # ( 
-- !\dc_converter|reg_tens[1][2]~q\ & ( (\dc_converter|state_reg.idle~q\ & (\dc_preparator|state_reg.s5~DUPLICATE_q\ & \dc_converter|reg_tens[2][2]~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100000101000101010000010100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_converter|ALT_INV_state_reg.idle~q\,
	datab => \dc_preparator|ALT_INV_state_reg.s5~DUPLICATE_q\,
	datac => \dc_preparator|ALT_INV_state_reg.s4~q\,
	datad => \dc_converter|ALT_INV_reg_tens[2][2]~q\,
	dataf => \dc_converter|ALT_INV_reg_tens[1][2]~q\,
	combout => \dc_preparator|Selector51~0_combout\);

-- Location: LABCELL_X61_Y5_N15
\dc_preparator|Selector51~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_preparator|Selector51~1_combout\ = ( \dc_converter|reg_tens[3][2]~q\ & ( (\dc_converter|state_reg.idle~DUPLICATE_q\ & (((\dc_preparator|state_reg.s7~q\ & \dc_converter|reg_tens[4][2]~q\)) # (\dc_preparator|state_reg.s6~q\))) ) ) # ( 
-- !\dc_converter|reg_tens[3][2]~q\ & ( (\dc_converter|state_reg.idle~DUPLICATE_q\ & (\dc_preparator|state_reg.s7~q\ & \dc_converter|reg_tens[4][2]~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001010101010000000101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_converter|ALT_INV_state_reg.idle~DUPLICATE_q\,
	datab => \dc_preparator|ALT_INV_state_reg.s7~q\,
	datac => \dc_converter|ALT_INV_reg_tens[4][2]~q\,
	datad => \dc_preparator|ALT_INV_state_reg.s6~q\,
	dataf => \dc_converter|ALT_INV_reg_tens[3][2]~q\,
	combout => \dc_preparator|Selector51~1_combout\);

-- Location: LABCELL_X67_Y6_N12
\dc_preparator|Selector51~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_preparator|Selector51~2_combout\ = ( \dc_converter|Output30bit[17]~1_combout\ & ( !\dc_preparator|wait_cnt[6]~DUPLICATE_q\ & ( (\dc_preparator|Equal2~0_combout\ & (((\dc_preparator|Selector51~1_combout\) # (\dc_preparator|Selector51~0_combout\)) # 
-- (\dc_preparator|state_reg.s3~q\))) ) ) ) # ( !\dc_converter|Output30bit[17]~1_combout\ & ( !\dc_preparator|wait_cnt[6]~DUPLICATE_q\ & ( (\dc_preparator|Equal2~0_combout\ & ((\dc_preparator|Selector51~1_combout\) # (\dc_preparator|Selector51~0_combout\))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110011000100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_preparator|ALT_INV_state_reg.s3~q\,
	datab => \dc_preparator|ALT_INV_Equal2~0_combout\,
	datac => \dc_preparator|ALT_INV_Selector51~0_combout\,
	datad => \dc_preparator|ALT_INV_Selector51~1_combout\,
	datae => \dc_converter|ALT_INV_Output30bit[17]~1_combout\,
	dataf => \dc_preparator|ALT_INV_wait_cnt[6]~DUPLICATE_q\,
	combout => \dc_preparator|Selector51~2_combout\);

-- Location: LABCELL_X66_Y5_N54
\dc_preparator|Selector52~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_preparator|Selector52~0_combout\ = ( !\dc_preparator|state_reg.idle1~q\ & ( \dc_converter|reg_tens[0][1]~q\ & ( (!\dc_converter|state_reg.idle~q\) # ((!\dc_preparator|state_reg.s3~q\ & ((!\dc_preparator|state_reg.s5~DUPLICATE_q\) # 
-- (!\dc_converter|reg_tens[2][1]~q\)))) ) ) ) # ( !\dc_preparator|state_reg.idle1~q\ & ( !\dc_converter|reg_tens[0][1]~q\ & ( (!\dc_converter|state_reg.idle~q\) # ((!\dc_preparator|state_reg.s5~DUPLICATE_q\) # (!\dc_converter|reg_tens[2][1]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111011111110000000000000000011111110101010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_converter|ALT_INV_state_reg.idle~q\,
	datab => \dc_preparator|ALT_INV_state_reg.s5~DUPLICATE_q\,
	datac => \dc_converter|ALT_INV_reg_tens[2][1]~q\,
	datad => \dc_preparator|ALT_INV_state_reg.s3~q\,
	datae => \dc_preparator|ALT_INV_state_reg.idle1~q\,
	dataf => \dc_converter|ALT_INV_reg_tens[0][1]~q\,
	combout => \dc_preparator|Selector52~0_combout\);

-- Location: LABCELL_X67_Y6_N57
\dc_preparator|Selector52~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_preparator|Selector52~1_combout\ = ( !\dc_preparator|wait_cnt[6]~DUPLICATE_q\ & ( (\dc_preparator|Equal2~0_combout\ & ((!\dc_preparator|Selector52~0_combout\) # ((\dc_preparator|state_reg.s7~q\ & \dc_converter|Output30bit[28]~14_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000001001100110000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_preparator|ALT_INV_state_reg.s7~q\,
	datab => \dc_preparator|ALT_INV_Equal2~0_combout\,
	datac => \dc_converter|ALT_INV_Output30bit[28]~14_combout\,
	datad => \dc_preparator|ALT_INV_Selector52~0_combout\,
	dataf => \dc_preparator|ALT_INV_wait_cnt[6]~DUPLICATE_q\,
	combout => \dc_preparator|Selector52~1_combout\);

-- Location: LABCELL_X67_Y5_N42
\dc_preparator|Selector53~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_preparator|Selector53~1_combout\ = ( \dc_converter|reg_tens[1][0]~q\ & ( \dc_converter|state_reg.idle~DUPLICATE_q\ & ( ((\dc_preparator|state_reg.s6~q\ & \dc_converter|reg_tens[3][0]~q\)) # (\dc_preparator|state_reg.s4~q\) ) ) ) # ( 
-- !\dc_converter|reg_tens[1][0]~q\ & ( \dc_converter|state_reg.idle~DUPLICATE_q\ & ( (\dc_preparator|state_reg.s6~q\ & \dc_converter|reg_tens[3][0]~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110011001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dc_preparator|ALT_INV_state_reg.s4~q\,
	datac => \dc_preparator|ALT_INV_state_reg.s6~q\,
	datad => \dc_converter|ALT_INV_reg_tens[3][0]~q\,
	datae => \dc_converter|ALT_INV_reg_tens[1][0]~q\,
	dataf => \dc_converter|ALT_INV_state_reg.idle~DUPLICATE_q\,
	combout => \dc_preparator|Selector53~1_combout\);

-- Location: LABCELL_X67_Y5_N12
\dc_preparator|Selector53~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_preparator|Selector53~0_combout\ = ( \dc_preparator|state_reg.s7~q\ & ( \dc_converter|state_reg.idle~DUPLICATE_q\ & ( \dc_converter|reg_ones[0][0]~q\ ) ) ) # ( !\dc_preparator|state_reg.s7~q\ & ( \dc_converter|state_reg.idle~DUPLICATE_q\ & ( 
-- (\dc_converter|reg_ones[0][0]~q\ & ((\dc_preparator|state_reg.s3~q\) # (\dc_preparator|state_reg.s5~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010101000101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_converter|ALT_INV_reg_ones[0][0]~q\,
	datab => \dc_preparator|ALT_INV_state_reg.s5~DUPLICATE_q\,
	datac => \dc_preparator|ALT_INV_state_reg.s3~q\,
	datae => \dc_preparator|ALT_INV_state_reg.s7~q\,
	dataf => \dc_converter|ALT_INV_state_reg.idle~DUPLICATE_q\,
	combout => \dc_preparator|Selector53~0_combout\);

-- Location: LABCELL_X67_Y4_N39
\dc_preparator|Selector53~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_preparator|Selector53~2_combout\ = ( \dc_preparator|Selector53~0_combout\ & ( (\dc_preparator|Equal2~0_combout\ & !\dc_preparator|wait_cnt[6]~DUPLICATE_q\) ) ) # ( !\dc_preparator|Selector53~0_combout\ & ( (\dc_preparator|Equal2~0_combout\ & 
-- (!\dc_preparator|wait_cnt[6]~DUPLICATE_q\ & \dc_preparator|Selector53~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_preparator|ALT_INV_Equal2~0_combout\,
	datab => \dc_preparator|ALT_INV_wait_cnt[6]~DUPLICATE_q\,
	datac => \dc_preparator|ALT_INV_Selector53~1_combout\,
	dataf => \dc_preparator|ALT_INV_Selector53~0_combout\,
	combout => \dc_preparator|Selector53~2_combout\);

-- Location: LABCELL_X64_Y5_N18
\dc_preparator|Selector54~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_preparator|Selector54~1_combout\ = ( \dc_converter|reg_ones[1][2]~q\ & ( \dc_converter|reg_ones[2][2]~q\ & ( (\dc_converter|state_reg.idle~q\ & ((\dc_preparator|state_reg.s5~DUPLICATE_q\) # (\dc_preparator|state_reg.s4~q\))) ) ) ) # ( 
-- !\dc_converter|reg_ones[1][2]~q\ & ( \dc_converter|reg_ones[2][2]~q\ & ( (\dc_preparator|state_reg.s5~DUPLICATE_q\ & \dc_converter|state_reg.idle~q\) ) ) ) # ( \dc_converter|reg_ones[1][2]~q\ & ( !\dc_converter|reg_ones[2][2]~q\ & ( 
-- (\dc_preparator|state_reg.s4~q\ & \dc_converter|state_reg.idle~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000011000000110000011100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_preparator|ALT_INV_state_reg.s4~q\,
	datab => \dc_preparator|ALT_INV_state_reg.s5~DUPLICATE_q\,
	datac => \dc_converter|ALT_INV_state_reg.idle~q\,
	datae => \dc_converter|ALT_INV_reg_ones[1][2]~q\,
	dataf => \dc_converter|ALT_INV_reg_ones[2][2]~q\,
	combout => \dc_preparator|Selector54~1_combout\);

-- Location: LABCELL_X67_Y5_N48
\dc_preparator|Selector54~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_preparator|Selector54~0_combout\ = ( \dc_converter|reg_ones[0][1]~q\ & ( (!\dc_preparator|state_reg.idle2~q\ & ((!\dc_preparator|state_reg.s3~q\) # (!\dc_converter|state_reg.idle~q\))) ) ) # ( !\dc_converter|reg_ones[0][1]~q\ & ( 
-- !\dc_preparator|state_reg.idle2~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110000001100110011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dc_preparator|ALT_INV_state_reg.idle2~q\,
	datac => \dc_preparator|ALT_INV_state_reg.s3~q\,
	datad => \dc_converter|ALT_INV_state_reg.idle~q\,
	dataf => \dc_converter|ALT_INV_reg_ones[0][1]~q\,
	combout => \dc_preparator|Selector54~0_combout\);

-- Location: LABCELL_X67_Y5_N54
\dc_preparator|Selector54~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_preparator|Selector54~2_combout\ = ( \dc_preparator|state_reg.s7~q\ & ( \dc_converter|reg_ones[4][2]~q\ & ( \dc_converter|state_reg.idle~DUPLICATE_q\ ) ) ) # ( !\dc_preparator|state_reg.s7~q\ & ( \dc_converter|reg_ones[4][2]~q\ & ( 
-- (\dc_preparator|state_reg.s6~q\ & (\dc_converter|reg_ones[3][2]~q\ & \dc_converter|state_reg.idle~DUPLICATE_q\)) ) ) ) # ( \dc_preparator|state_reg.s7~q\ & ( !\dc_converter|reg_ones[4][2]~q\ & ( (\dc_preparator|state_reg.s6~q\ & 
-- (\dc_converter|reg_ones[3][2]~q\ & \dc_converter|state_reg.idle~DUPLICATE_q\)) ) ) ) # ( !\dc_preparator|state_reg.s7~q\ & ( !\dc_converter|reg_ones[4][2]~q\ & ( (\dc_preparator|state_reg.s6~q\ & (\dc_converter|reg_ones[3][2]~q\ & 
-- \dc_converter|state_reg.idle~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100000000000100010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_preparator|ALT_INV_state_reg.s6~q\,
	datab => \dc_converter|ALT_INV_reg_ones[3][2]~q\,
	datad => \dc_converter|ALT_INV_state_reg.idle~DUPLICATE_q\,
	datae => \dc_preparator|ALT_INV_state_reg.s7~q\,
	dataf => \dc_converter|ALT_INV_reg_ones[4][2]~q\,
	combout => \dc_preparator|Selector54~2_combout\);

-- Location: LABCELL_X67_Y4_N30
\dc_preparator|Selector54~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_preparator|Selector54~3_combout\ = ( \dc_preparator|Selector54~2_combout\ & ( (\dc_preparator|Equal2~0_combout\ & !\dc_preparator|wait_cnt[6]~DUPLICATE_q\) ) ) # ( !\dc_preparator|Selector54~2_combout\ & ( (\dc_preparator|Equal2~0_combout\ & 
-- (!\dc_preparator|wait_cnt[6]~DUPLICATE_q\ & ((!\dc_preparator|Selector54~0_combout\) # (\dc_preparator|Selector54~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000010000010100000101000001010000000100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_preparator|ALT_INV_Equal2~0_combout\,
	datab => \dc_preparator|ALT_INV_Selector54~1_combout\,
	datac => \dc_preparator|ALT_INV_wait_cnt[6]~DUPLICATE_q\,
	datad => \dc_preparator|ALT_INV_Selector54~0_combout\,
	datae => \dc_preparator|ALT_INV_Selector54~2_combout\,
	combout => \dc_preparator|Selector54~3_combout\);

-- Location: LABCELL_X64_Y3_N18
\dc_preparator|Selector55~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_preparator|Selector55~0_combout\ = ( \dc_preparator|state_reg.s7~q\ & ( \dc_converter|reg_ones[2][1]~q\ & ( (\dc_converter|state_reg.idle~q\ & ((\dc_preparator|state_reg.s5~q\) # (\dc_converter|reg_ones[4][1]~q\))) ) ) ) # ( 
-- !\dc_preparator|state_reg.s7~q\ & ( \dc_converter|reg_ones[2][1]~q\ & ( (\dc_converter|state_reg.idle~q\ & \dc_preparator|state_reg.s5~q\) ) ) ) # ( \dc_preparator|state_reg.s7~q\ & ( !\dc_converter|reg_ones[2][1]~q\ & ( (\dc_converter|reg_ones[4][1]~q\ & 
-- \dc_converter|state_reg.idle~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000000000011110000010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_converter|ALT_INV_reg_ones[4][1]~q\,
	datac => \dc_converter|ALT_INV_state_reg.idle~q\,
	datad => \dc_preparator|ALT_INV_state_reg.s5~q\,
	datae => \dc_preparator|ALT_INV_state_reg.s7~q\,
	dataf => \dc_converter|ALT_INV_reg_ones[2][1]~q\,
	combout => \dc_preparator|Selector55~0_combout\);

-- Location: LABCELL_X67_Y4_N36
\dc_preparator|Selector55~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_preparator|Selector55~1_combout\ = ( \dc_preparator|Selector55~0_combout\ & ( (\dc_preparator|Equal2~0_combout\ & !\dc_preparator|wait_cnt[6]~DUPLICATE_q\) ) ) # ( !\dc_preparator|Selector55~0_combout\ & ( (\dc_preparator|Equal2~0_combout\ & 
-- (!\dc_preparator|wait_cnt[6]~DUPLICATE_q\ & !\dc_preparator|Selector54~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_preparator|ALT_INV_Equal2~0_combout\,
	datab => \dc_preparator|ALT_INV_wait_cnt[6]~DUPLICATE_q\,
	datac => \dc_preparator|ALT_INV_Selector54~0_combout\,
	dataf => \dc_preparator|ALT_INV_Selector55~0_combout\,
	combout => \dc_preparator|Selector55~1_combout\);

-- Location: LABCELL_X66_Y5_N45
\dc_preparator|Selector56~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_preparator|Selector56~0_combout\ = ( \dc_converter|reg_ones[1][0]~q\ & ( \dc_converter|reg_ones[3][0]~q\ & ( (!\dc_preparator|state_reg.idle2~DUPLICATE_q\ & ((!\dc_converter|state_reg.idle~q\) # ((!\dc_preparator|state_reg.s6~q\ & 
-- !\dc_preparator|state_reg.s4~q\)))) ) ) ) # ( !\dc_converter|reg_ones[1][0]~q\ & ( \dc_converter|reg_ones[3][0]~q\ & ( (!\dc_preparator|state_reg.idle2~DUPLICATE_q\ & ((!\dc_preparator|state_reg.s6~q\) # (!\dc_converter|state_reg.idle~q\))) ) ) ) # ( 
-- \dc_converter|reg_ones[1][0]~q\ & ( !\dc_converter|reg_ones[3][0]~q\ & ( (!\dc_preparator|state_reg.idle2~DUPLICATE_q\ & ((!\dc_preparator|state_reg.s4~q\) # (!\dc_converter|state_reg.idle~q\))) ) ) ) # ( !\dc_converter|reg_ones[1][0]~q\ & ( 
-- !\dc_converter|reg_ones[3][0]~q\ & ( !\dc_preparator|state_reg.idle2~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010000010101010100010001010101010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_preparator|ALT_INV_state_reg.idle2~DUPLICATE_q\,
	datab => \dc_preparator|ALT_INV_state_reg.s6~q\,
	datac => \dc_preparator|ALT_INV_state_reg.s4~q\,
	datad => \dc_converter|ALT_INV_state_reg.idle~q\,
	datae => \dc_converter|ALT_INV_reg_ones[1][0]~q\,
	dataf => \dc_converter|ALT_INV_reg_ones[3][0]~q\,
	combout => \dc_preparator|Selector56~0_combout\);

-- Location: LABCELL_X67_Y4_N12
\dc_preparator|Selector56~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc_preparator|Selector56~1_combout\ = ( \dc_preparator|Selector56~0_combout\ & ( (\dc_preparator|Equal2~0_combout\ & (!\dc_preparator|wait_cnt[6]~DUPLICATE_q\ & \dc_preparator|Selector53~0_combout\)) ) ) # ( !\dc_preparator|Selector56~0_combout\ & ( 
-- (\dc_preparator|Equal2~0_combout\ & !\dc_preparator|wait_cnt[6]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_preparator|ALT_INV_Equal2~0_combout\,
	datab => \dc_preparator|ALT_INV_wait_cnt[6]~DUPLICATE_q\,
	datac => \dc_preparator|ALT_INV_Selector53~0_combout\,
	dataf => \dc_preparator|ALT_INV_Selector56~0_combout\,
	combout => \dc_preparator|Selector56~1_combout\);

-- Location: FF_X67_Y5_N17
\dc_preparator|state_reg.zero1~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	asdata => \dc_preparator|state_reg.idle3~DUPLICATE_q\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \spi_comp|o_tx_end~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dc_preparator|state_reg.zero1~DUPLICATE_q\);

-- Location: LABCELL_X67_Y5_N30
\spi_comp|r_tx_data~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi_comp|r_tx_data~2_combout\ = ( !\dc_preparator|state_reg.zero1~DUPLICATE_q\ & ( (!\dc_preparator|state_reg.idle1~q\ & !\dc_preparator|state_reg.zero7~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dc_preparator|ALT_INV_state_reg.idle1~q\,
	datad => \dc_preparator|ALT_INV_state_reg.zero7~q\,
	dataf => \dc_preparator|ALT_INV_state_reg.zero1~DUPLICATE_q\,
	combout => \spi_comp|r_tx_data~2_combout\);

-- Location: LABCELL_X67_Y6_N6
\spi_comp|r_tx_data~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi_comp|r_tx_data~3_combout\ = ( \dc_preparator|Selector47~0_combout\ & ( ((!\dc_preparator|wait_cnt[6]~DUPLICATE_q\ & (\dc_preparator|Equal2~0_combout\ & !\spi_comp|r_tx_data~2_combout\))) # (\spi_comp|r_st_present.ST_TX_RX~q\) ) ) # ( 
-- !\dc_preparator|Selector47~0_combout\ & ( ((!\dc_preparator|wait_cnt[6]~DUPLICATE_q\ & \dc_preparator|Equal2~0_combout\)) # (\spi_comp|r_st_present.ST_TX_RX~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111100101111001011110010111100101111000011110010111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_preparator|ALT_INV_wait_cnt[6]~DUPLICATE_q\,
	datab => \dc_preparator|ALT_INV_Equal2~0_combout\,
	datac => \spi_comp|ALT_INV_r_st_present.ST_TX_RX~q\,
	datad => \spi_comp|ALT_INV_r_tx_data~2_combout\,
	dataf => \dc_preparator|ALT_INV_Selector47~0_combout\,
	combout => \spi_comp|r_tx_data~3_combout\);

-- Location: LABCELL_X67_Y4_N21
\spi_comp|Selector13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi_comp|Selector13~0_combout\ = ( \spi_comp|r_sclk_fall~DUPLICATE_q\ & ( \spi_comp|r_sclk_rise~DUPLICATE_q\ & ( (!\spi_comp|r_st_present.ST_TX_RX~q\ & !\spi_comp|r_st_present.ST_RESET~q\) ) ) ) # ( !\spi_comp|r_sclk_fall~DUPLICATE_q\ & ( 
-- \spi_comp|r_sclk_rise~DUPLICATE_q\ & ( (!\spi_comp|r_st_present.ST_TX_RX~q\ & !\spi_comp|r_st_present.ST_RESET~q\) ) ) ) # ( \spi_comp|r_sclk_fall~DUPLICATE_q\ & ( !\spi_comp|r_sclk_rise~DUPLICATE_q\ & ( (!\spi_comp|r_st_present.ST_RESET~q\) # 
-- (\spi_comp|r_st_present.ST_TX_RX~q\) ) ) ) # ( !\spi_comp|r_sclk_fall~DUPLICATE_q\ & ( !\spi_comp|r_sclk_rise~DUPLICATE_q\ & ( (!\spi_comp|r_st_present.ST_TX_RX~q\ & !\spi_comp|r_st_present.ST_RESET~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111111110000111111110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi_comp|ALT_INV_r_st_present.ST_TX_RX~q\,
	datad => \spi_comp|ALT_INV_r_st_present.ST_RESET~q\,
	datae => \spi_comp|ALT_INV_r_sclk_fall~DUPLICATE_q\,
	dataf => \spi_comp|ALT_INV_r_sclk_rise~DUPLICATE_q\,
	combout => \spi_comp|Selector13~0_combout\);

-- Location: FF_X67_Y6_N7
\spi_comp|r_tx_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	d => \spi_comp|r_tx_data~3_combout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	ena => \spi_comp|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_comp|r_tx_data\(0));

-- Location: FF_X67_Y4_N13
\spi_comp|r_tx_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	d => \dc_preparator|Selector56~1_combout\,
	asdata => \spi_comp|r_tx_data\(0),
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sload => \spi_comp|r_st_present.ST_TX_RX~q\,
	ena => \spi_comp|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_comp|r_tx_data\(1));

-- Location: FF_X67_Y4_N37
\spi_comp|r_tx_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	d => \dc_preparator|Selector55~1_combout\,
	asdata => \spi_comp|r_tx_data\(1),
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sload => \spi_comp|r_st_present.ST_TX_RX~q\,
	ena => \spi_comp|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_comp|r_tx_data\(2));

-- Location: FF_X67_Y4_N31
\spi_comp|r_tx_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	d => \dc_preparator|Selector54~3_combout\,
	asdata => \spi_comp|r_tx_data\(2),
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sload => \spi_comp|r_st_present.ST_TX_RX~q\,
	ena => \spi_comp|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_comp|r_tx_data\(3));

-- Location: LABCELL_X67_Y4_N15
\spi_comp|r_tx_data~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi_comp|r_tx_data~1_combout\ = ( \spi_comp|r_st_present.ST_TX_RX~q\ & ( \spi_comp|r_tx_data\(3) ) ) # ( !\spi_comp|r_st_present.ST_TX_RX~q\ & ( (\dc_preparator|Equal2~0_combout\ & (!\dc_preparator|wait_cnt[6]~DUPLICATE_q\ & 
-- \dc_preparator|state_reg.idle1~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc_preparator|ALT_INV_Equal2~0_combout\,
	datab => \dc_preparator|ALT_INV_wait_cnt[6]~DUPLICATE_q\,
	datac => \spi_comp|ALT_INV_r_tx_data\(3),
	datad => \dc_preparator|ALT_INV_state_reg.idle1~q\,
	dataf => \spi_comp|ALT_INV_r_st_present.ST_TX_RX~q\,
	combout => \spi_comp|r_tx_data~1_combout\);

-- Location: FF_X67_Y4_N16
\spi_comp|r_tx_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	d => \spi_comp|r_tx_data~1_combout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	ena => \spi_comp|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_comp|r_tx_data\(4));

-- Location: FF_X67_Y4_N40
\spi_comp|r_tx_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	d => \dc_preparator|Selector53~2_combout\,
	asdata => \spi_comp|r_tx_data\(4),
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sload => \spi_comp|r_st_present.ST_TX_RX~q\,
	ena => \spi_comp|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_comp|r_tx_data\(5));

-- Location: FF_X67_Y6_N58
\spi_comp|r_tx_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	d => \dc_preparator|Selector52~1_combout\,
	asdata => \spi_comp|r_tx_data\(5),
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sload => \spi_comp|r_st_present.ST_TX_RX~q\,
	ena => \spi_comp|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_comp|r_tx_data\(6));

-- Location: FF_X67_Y6_N13
\spi_comp|r_tx_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	d => \dc_preparator|Selector51~2_combout\,
	asdata => \spi_comp|r_tx_data\(6),
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sload => \spi_comp|r_st_present.ST_TX_RX~q\,
	ena => \spi_comp|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_comp|r_tx_data\(7));

-- Location: FF_X66_Y4_N56
\spi_comp|r_sclk_rise\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	d => \spi_comp|r_sclk_rise~0_combout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_comp|r_sclk_rise~q\);

-- Location: LABCELL_X66_Y4_N36
\spi_comp|r_tx_data[15]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi_comp|r_tx_data[15]~0_combout\ = ( !\spi_comp|r_st_present.ST_END~q\ & ( \spi_comp|r_sclk_fall~DUPLICATE_q\ & ( (!\spi_comp|r_sclk_rise~q\) # (!\spi_comp|r_st_present.ST_TX_RX~q\) ) ) ) # ( !\spi_comp|r_st_present.ST_END~q\ & ( 
-- !\spi_comp|r_sclk_fall~DUPLICATE_q\ & ( !\spi_comp|r_st_present.ST_TX_RX~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000000000000000011111010111110100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi_comp|ALT_INV_r_sclk_rise~q\,
	datac => \spi_comp|ALT_INV_r_st_present.ST_TX_RX~q\,
	datae => \spi_comp|ALT_INV_r_st_present.ST_END~q\,
	dataf => \spi_comp|ALT_INV_r_sclk_fall~DUPLICATE_q\,
	combout => \spi_comp|r_tx_data[15]~0_combout\);

-- Location: FF_X67_Y5_N19
\spi_comp|r_tx_data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	d => \dc_preparator|Selector50~0_combout\,
	asdata => \spi_comp|r_tx_data\(7),
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sload => \spi_comp|r_st_present.ST_RESET~q\,
	ena => \spi_comp|r_tx_data[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_comp|r_tx_data\(8));

-- Location: FF_X67_Y5_N25
\spi_comp|r_tx_data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	d => \dc_preparator|Selector49~1_combout\,
	asdata => \spi_comp|r_tx_data\(8),
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sload => \spi_comp|r_st_present.ST_RESET~q\,
	ena => \spi_comp|r_tx_data[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_comp|r_tx_data\(9));

-- Location: FF_X67_Y5_N34
\spi_comp|r_tx_data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	d => \dc_preparator|Selector48~1_combout\,
	asdata => \spi_comp|r_tx_data\(9),
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sload => \spi_comp|r_st_present.ST_RESET~q\,
	ena => \spi_comp|r_tx_data[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_comp|r_tx_data\(10));

-- Location: FF_X67_Y5_N37
\spi_comp|r_tx_data[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	d => \dc_preparator|Selector47~1_combout\,
	asdata => \spi_comp|r_tx_data\(10),
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sload => \spi_comp|r_st_present.ST_RESET~q\,
	ena => \spi_comp|r_tx_data[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_comp|r_tx_data\(11));

-- Location: LABCELL_X66_Y4_N18
\spi_comp|Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi_comp|Selector8~0_combout\ = ( \spi_comp|r_tx_data\(12) & ( \spi_comp|r_sclk_rise~DUPLICATE_q\ & ( (\spi_comp|r_st_present.ST_TX_RX~q\) # (\spi_comp|r_st_present.ST_END~q\) ) ) ) # ( \spi_comp|r_tx_data\(12) & ( !\spi_comp|r_sclk_rise~DUPLICATE_q\ & ( 
-- ((\spi_comp|r_st_present.ST_TX_RX~q\ & ((!\spi_comp|r_sclk_fall~q\) # (\spi_comp|r_tx_data\(11))))) # (\spi_comp|r_st_present.ST_END~q\) ) ) ) # ( !\spi_comp|r_tx_data\(12) & ( !\spi_comp|r_sclk_rise~DUPLICATE_q\ & ( (\spi_comp|r_sclk_fall~q\ & 
-- (\spi_comp|r_st_present.ST_TX_RX~q\ & \spi_comp|r_tx_data\(11))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011010111010101111100000000000000000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi_comp|ALT_INV_r_st_present.ST_END~q\,
	datab => \spi_comp|ALT_INV_r_sclk_fall~q\,
	datac => \spi_comp|ALT_INV_r_st_present.ST_TX_RX~q\,
	datad => \spi_comp|ALT_INV_r_tx_data\(11),
	datae => \spi_comp|ALT_INV_r_tx_data\(12),
	dataf => \spi_comp|ALT_INV_r_sclk_rise~DUPLICATE_q\,
	combout => \spi_comp|Selector8~0_combout\);

-- Location: FF_X66_Y4_N47
\spi_comp|r_tx_data[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	asdata => \spi_comp|Selector8~0_combout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_comp|r_tx_data\(12));

-- Location: LABCELL_X66_Y4_N45
\spi_comp|Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi_comp|Selector7~0_combout\ = ( \spi_comp|r_tx_data\(12) & ( \spi_comp|r_tx_data\(13) & ( (\spi_comp|r_st_present.ST_TX_RX~q\) # (\spi_comp|r_st_present.ST_END~q\) ) ) ) # ( !\spi_comp|r_tx_data\(12) & ( \spi_comp|r_tx_data\(13) & ( 
-- ((\spi_comp|r_st_present.ST_TX_RX~q\ & ((!\spi_comp|r_sclk_fall~q\) # (\spi_comp|r_sclk_rise~DUPLICATE_q\)))) # (\spi_comp|r_st_present.ST_END~q\) ) ) ) # ( \spi_comp|r_tx_data\(12) & ( !\spi_comp|r_tx_data\(13) & ( (\spi_comp|r_sclk_fall~q\ & 
-- (!\spi_comp|r_sclk_rise~DUPLICATE_q\ & \spi_comp|r_st_present.ST_TX_RX~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000011000001010101110111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi_comp|ALT_INV_r_st_present.ST_END~q\,
	datab => \spi_comp|ALT_INV_r_sclk_fall~q\,
	datac => \spi_comp|ALT_INV_r_sclk_rise~DUPLICATE_q\,
	datad => \spi_comp|ALT_INV_r_st_present.ST_TX_RX~q\,
	datae => \spi_comp|ALT_INV_r_tx_data\(12),
	dataf => \spi_comp|ALT_INV_r_tx_data\(13),
	combout => \spi_comp|Selector7~0_combout\);

-- Location: FF_X66_Y4_N44
\spi_comp|r_tx_data[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	asdata => \spi_comp|Selector7~0_combout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_comp|r_tx_data\(13));

-- Location: LABCELL_X66_Y4_N42
\spi_comp|Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi_comp|Selector6~0_combout\ = ( \spi_comp|r_tx_data\(13) & ( \spi_comp|r_tx_data\(14) & ( (\spi_comp|r_st_present.ST_TX_RX~q\) # (\spi_comp|r_st_present.ST_END~q\) ) ) ) # ( !\spi_comp|r_tx_data\(13) & ( \spi_comp|r_tx_data\(14) & ( 
-- ((\spi_comp|r_st_present.ST_TX_RX~q\ & ((!\spi_comp|r_sclk_fall~q\) # (\spi_comp|r_sclk_rise~DUPLICATE_q\)))) # (\spi_comp|r_st_present.ST_END~q\) ) ) ) # ( \spi_comp|r_tx_data\(13) & ( !\spi_comp|r_tx_data\(14) & ( (\spi_comp|r_sclk_fall~q\ & 
-- (\spi_comp|r_st_present.ST_TX_RX~q\ & !\spi_comp|r_sclk_rise~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000000001011101010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi_comp|ALT_INV_r_st_present.ST_END~q\,
	datab => \spi_comp|ALT_INV_r_sclk_fall~q\,
	datac => \spi_comp|ALT_INV_r_st_present.ST_TX_RX~q\,
	datad => \spi_comp|ALT_INV_r_sclk_rise~DUPLICATE_q\,
	datae => \spi_comp|ALT_INV_r_tx_data\(13),
	dataf => \spi_comp|ALT_INV_r_tx_data\(14),
	combout => \spi_comp|Selector6~0_combout\);

-- Location: FF_X65_Y6_N41
\spi_comp|r_tx_data[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	asdata => \spi_comp|Selector6~0_combout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_comp|r_tx_data\(14));

-- Location: FF_X66_Y4_N25
\spi_comp|r_tx_data[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	d => \spi_comp|r_tx_data[15]~feeder_combout\,
	asdata => \spi_comp|r_tx_data\(14),
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sload => \spi_comp|r_st_present.ST_RESET~q\,
	ena => \spi_comp|r_tx_data[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_comp|r_tx_data\(15));

-- Location: FF_X66_Y4_N50
\spi_comp|o_mosi\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	asdata => \spi_comp|Selector4~0_combout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_comp|o_mosi~q\);

-- Location: LABCELL_X66_Y4_N0
\spi_comp|Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi_comp|Selector4~0_combout\ = ( \spi_comp|r_sclk_fall~DUPLICATE_q\ & ( \spi_comp|o_mosi~q\ & ( ((\spi_comp|r_st_present.ST_TX_RX~q\ & ((!\spi_comp|r_tx_data\(15)) # (\spi_comp|r_sclk_rise~DUPLICATE_q\)))) # (\spi_comp|r_st_present.ST_END~q\) ) ) ) # ( 
-- !\spi_comp|r_sclk_fall~DUPLICATE_q\ & ( \spi_comp|o_mosi~q\ & ( (\spi_comp|r_st_present.ST_TX_RX~q\) # (\spi_comp|r_st_present.ST_END~q\) ) ) ) # ( \spi_comp|r_sclk_fall~DUPLICATE_q\ & ( !\spi_comp|o_mosi~q\ & ( (!\spi_comp|r_sclk_rise~DUPLICATE_q\ & 
-- (\spi_comp|r_st_present.ST_TX_RX~q\ & !\spi_comp|r_tx_data\(15))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000000001011111010111110101111101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi_comp|ALT_INV_r_st_present.ST_END~q\,
	datab => \spi_comp|ALT_INV_r_sclk_rise~DUPLICATE_q\,
	datac => \spi_comp|ALT_INV_r_st_present.ST_TX_RX~q\,
	datad => \spi_comp|ALT_INV_r_tx_data\(15),
	datae => \spi_comp|ALT_INV_r_sclk_fall~DUPLICATE_q\,
	dataf => \spi_comp|ALT_INV_o_mosi~q\,
	combout => \spi_comp|Selector4~0_combout\);

-- Location: FF_X66_Y4_N49
\spi_comp|o_mosi~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dc_time|o_Clock~combout\,
	asdata => \spi_comp|Selector4~0_combout\,
	clrn => \i_Reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_comp|o_mosi~DUPLICATE_q\);

-- Location: IOIBUF_X72_Y0_N1
\i_miso_dc~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_miso_dc,
	o => \i_miso_dc~input_o\);
END structure;


