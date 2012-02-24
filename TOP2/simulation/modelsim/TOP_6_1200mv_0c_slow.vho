-- Copyright (C) 1991-2011 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 11.1 Build 216 11/23/2011 Service Pack 1 SJ Web Edition"

-- DATE "02/14/2012 22:43:35"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	TOP IS
    PORT (
	aluOut : OUT std_logic_vector(17 DOWNTO 0);
	clk : IN std_logic;
	rst : IN std_logic
	);
END TOP;

-- Design Ports Information
-- aluOut[0]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluOut[1]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluOut[2]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluOut[3]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluOut[4]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluOut[5]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluOut[6]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluOut[7]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluOut[8]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluOut[9]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluOut[10]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluOut[11]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluOut[12]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluOut[13]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluOut[14]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluOut[15]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluOut[16]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluOut[17]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF TOP IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_aluOut : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL \alu1|out[17]~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \alu1|Add0~30_combout\ : std_logic;
SIGNAL \cb|ir_write~q\ : std_logic;
SIGNAL \mux1|PC[9]~33_combout\ : std_logic;
SIGNAL \mux1|PC[11]~38\ : std_logic;
SIGNAL \mux1|PC[12]~39_combout\ : std_logic;
SIGNAL \output2[0]~0_combout\ : std_logic;
SIGNAL \output2[5]~5_combout\ : std_logic;
SIGNAL \alu1|Add0~32_combout\ : std_logic;
SIGNAL \alu1|Add0~33_combout\ : std_logic;
SIGNAL \output2[7]~7_combout\ : std_logic;
SIGNAL \stack1|Stack~18_q\ : std_logic;
SIGNAL \stack1|Stack~54_q\ : std_logic;
SIGNAL \stack1|Stack~36_q\ : std_logic;
SIGNAL \stack1|Stack~72_combout\ : std_logic;
SIGNAL \stack1|Stack~0_q\ : std_logic;
SIGNAL \stack1|Stack~73_combout\ : std_logic;
SIGNAL \mux1|out_data~0_combout\ : std_logic;
SIGNAL \cb|aluop[2]~5_combout\ : std_logic;
SIGNAL \cb|aluop[2]~6_combout\ : std_logic;
SIGNAL \cb|aluop~15_combout\ : std_logic;
SIGNAL \stack1|Stack~37_q\ : std_logic;
SIGNAL \stack1|Stack~55_q\ : std_logic;
SIGNAL \stack1|Stack~2_q\ : std_logic;
SIGNAL \stack1|Stack~57_q\ : std_logic;
SIGNAL \stack1|Stack~3_q\ : std_logic;
SIGNAL \stack1|Stack~58_q\ : std_logic;
SIGNAL \stack1|Stack~40_q\ : std_logic;
SIGNAL \stack1|Stack~80_combout\ : std_logic;
SIGNAL \stack1|Stack~41_q\ : std_logic;
SIGNAL \stack1|Stack~59_q\ : std_logic;
SIGNAL \stack1|Stack~23_q\ : std_logic;
SIGNAL \stack1|Stack~82_combout\ : std_logic;
SIGNAL \stack1|Stack~5_q\ : std_logic;
SIGNAL \stack1|Stack~83_combout\ : std_logic;
SIGNAL \mux1|out_data~7_combout\ : std_logic;
SIGNAL \mux|out_data~7_combout\ : std_logic;
SIGNAL \stack1|Stack~43_q\ : std_logic;
SIGNAL \stack1|Stack~61_q\ : std_logic;
SIGNAL \stack1|Stack~25_q\ : std_logic;
SIGNAL \stack1|Stack~86_combout\ : std_logic;
SIGNAL \stack1|Stack~7_q\ : std_logic;
SIGNAL \stack1|Stack~87_combout\ : std_logic;
SIGNAL \mux1|out_data~9_combout\ : std_logic;
SIGNAL \stack1|Stack~8_q\ : std_logic;
SIGNAL \stack1|Stack~9_q\ : std_logic;
SIGNAL \stack1|Stack~10_q\ : std_logic;
SIGNAL \mux|out_data~11_combout\ : std_logic;
SIGNAL \stack1|Stack~65_q\ : std_logic;
SIGNAL \stack1|Stack~47_q\ : std_logic;
SIGNAL \stack1|Stack~94_combout\ : std_logic;
SIGNAL \stack1|Stack~30_q\ : std_logic;
SIGNAL \stack1|Stack~66_q\ : std_logic;
SIGNAL \stack1|Stack~48_q\ : std_logic;
SIGNAL \stack1|Stack~96_combout\ : std_logic;
SIGNAL \stack1|Stack~12_q\ : std_logic;
SIGNAL \stack1|Stack~97_combout\ : std_logic;
SIGNAL \stack1|Stack~31_q\ : std_logic;
SIGNAL \stack1|Stack~14_q\ : std_logic;
SIGNAL \stack1|Stack~33_q\ : std_logic;
SIGNAL \stack1|Stack~70_q\ : std_logic;
SIGNAL \stack1|Stack~52_q\ : std_logic;
SIGNAL \stack1|Stack~104_combout\ : std_logic;
SIGNAL \mux1|out_data~18_combout\ : std_logic;
SIGNAL \stack1|Stack~35_q\ : std_logic;
SIGNAL \stack1|Stack~71_q\ : std_logic;
SIGNAL \stack1|Stack~53_q\ : std_logic;
SIGNAL \stack1|Stack~106_combout\ : std_logic;
SIGNAL \stack1|Stack~17_q\ : std_logic;
SIGNAL \stack1|Stack~107_combout\ : std_logic;
SIGNAL \cb|Mux6~2_combout\ : std_logic;
SIGNAL \cb|md_write_mem~1_combout\ : std_logic;
SIGNAL \cb|Mux0~1_combout\ : std_logic;
SIGNAL \cb|Mux0~2_combout\ : std_logic;
SIGNAL \mux1|MD~0_combout\ : std_logic;
SIGNAL \cb|Mux2~3_combout\ : std_logic;
SIGNAL \cb|Mux5~4_combout\ : std_logic;
SIGNAL \mux1|MD~2_combout\ : std_logic;
SIGNAL \mux1|MD~3_combout\ : std_logic;
SIGNAL \mux1|MD~6_combout\ : std_logic;
SIGNAL \mux1|MD~7_combout\ : std_logic;
SIGNAL \mux|IR~8_combout\ : std_logic;
SIGNAL \mux1|MD~8_combout\ : std_logic;
SIGNAL \mux1|MD~11_combout\ : std_logic;
SIGNAL \mux|IR~12_combout\ : std_logic;
SIGNAL \mux1|MD~12_combout\ : std_logic;
SIGNAL \mux1|MD~14_combout\ : std_logic;
SIGNAL \mux1|MD~17_combout\ : std_logic;
SIGNAL \mux1|MD~18_combout\ : std_logic;
SIGNAL \cb|Selector4~1_combout\ : std_logic;
SIGNAL \cb|Selector4~2_combout\ : std_logic;
SIGNAL \cb|stack_write~0_combout\ : std_logic;
SIGNAL \mem|Mem[6][0]~q\ : std_logic;
SIGNAL \mem|Mem[5][0]~q\ : std_logic;
SIGNAL \mem|Mem[4][0]~q\ : std_logic;
SIGNAL \mem|out_dat_add~0_combout\ : std_logic;
SIGNAL \mem|Mem[7][0]~q\ : std_logic;
SIGNAL \mem|out_dat_add~1_combout\ : std_logic;
SIGNAL \mem|Mem[9][0]~q\ : std_logic;
SIGNAL \mem|Mem[10][0]~q\ : std_logic;
SIGNAL \mem|Mem[8][0]~q\ : std_logic;
SIGNAL \mem|out_dat_add~2_combout\ : std_logic;
SIGNAL \mem|Mem[11][0]~q\ : std_logic;
SIGNAL \mem|out_dat_add~3_combout\ : std_logic;
SIGNAL \mem|Mem[1][0]~q\ : std_logic;
SIGNAL \mem|Mem[2][0]~q\ : std_logic;
SIGNAL \mem|Mem[0][0]~q\ : std_logic;
SIGNAL \mem|out_dat_add~4_combout\ : std_logic;
SIGNAL \mem|Mem[3][0]~q\ : std_logic;
SIGNAL \mem|out_dat_add~5_combout\ : std_logic;
SIGNAL \mem|out_dat_add~6_combout\ : std_logic;
SIGNAL \mem|Mem[12][0]~q\ : std_logic;
SIGNAL \mem|out_dat_add~7_combout\ : std_logic;
SIGNAL \cb|Mux1~2_combout\ : std_logic;
SIGNAL \mem|Mem[10][1]~q\ : std_logic;
SIGNAL \mem|Mem[9][1]~q\ : std_logic;
SIGNAL \mem|Mem[8][1]~q\ : std_logic;
SIGNAL \mem|out_dat_add~9_combout\ : std_logic;
SIGNAL \mem|Mem[11][1]~q\ : std_logic;
SIGNAL \mem|out_dat_add~10_combout\ : std_logic;
SIGNAL \mem|Mem[5][1]~q\ : std_logic;
SIGNAL \mem|Mem[6][1]~q\ : std_logic;
SIGNAL \mem|Mem[4][1]~q\ : std_logic;
SIGNAL \mem|out_dat_add~11_combout\ : std_logic;
SIGNAL \mem|Mem[7][1]~q\ : std_logic;
SIGNAL \mem|out_dat_add~12_combout\ : std_logic;
SIGNAL \mem|Mem[2][1]~q\ : std_logic;
SIGNAL \mem|Mem[1][1]~q\ : std_logic;
SIGNAL \mem|Mem[0][1]~q\ : std_logic;
SIGNAL \mem|out_dat_add~13_combout\ : std_logic;
SIGNAL \mem|Mem[3][1]~q\ : std_logic;
SIGNAL \mem|out_dat_add~14_combout\ : std_logic;
SIGNAL \mem|out_dat_add~15_combout\ : std_logic;
SIGNAL \mem|Mem[12][1]~q\ : std_logic;
SIGNAL \mem|out_dat_add~16_combout\ : std_logic;
SIGNAL \mem|Mem[6][2]~q\ : std_logic;
SIGNAL \mem|Mem[5][2]~q\ : std_logic;
SIGNAL \mem|Mem[4][2]~q\ : std_logic;
SIGNAL \mem|out_dat_add~17_combout\ : std_logic;
SIGNAL \mem|Mem[7][2]~q\ : std_logic;
SIGNAL \mem|out_dat_add~18_combout\ : std_logic;
SIGNAL \mem|Mem[9][2]~q\ : std_logic;
SIGNAL \mem|Mem[10][2]~q\ : std_logic;
SIGNAL \mem|Mem[8][2]~q\ : std_logic;
SIGNAL \mem|out_dat_add~19_combout\ : std_logic;
SIGNAL \mem|Mem[11][2]~q\ : std_logic;
SIGNAL \mem|out_dat_add~20_combout\ : std_logic;
SIGNAL \mem|Mem[1][2]~q\ : std_logic;
SIGNAL \mem|Mem[2][2]~q\ : std_logic;
SIGNAL \mem|Mem[0][2]~q\ : std_logic;
SIGNAL \mem|out_dat_add~21_combout\ : std_logic;
SIGNAL \mem|Mem[3][2]~q\ : std_logic;
SIGNAL \mem|out_dat_add~22_combout\ : std_logic;
SIGNAL \mem|out_dat_add~23_combout\ : std_logic;
SIGNAL \mem|Mem[12][2]~q\ : std_logic;
SIGNAL \mem|out_dat_add~24_combout\ : std_logic;
SIGNAL \mem|Mem[10][3]~q\ : std_logic;
SIGNAL \mem|Mem[9][3]~q\ : std_logic;
SIGNAL \mem|Mem[8][3]~q\ : std_logic;
SIGNAL \mem|out_dat_add~25_combout\ : std_logic;
SIGNAL \mem|Mem[11][3]~q\ : std_logic;
SIGNAL \mem|out_dat_add~26_combout\ : std_logic;
SIGNAL \mem|Mem[5][4]~q\ : std_logic;
SIGNAL \mem|Mem[4][4]~q\ : std_logic;
SIGNAL \mem|out_dat_add~33_combout\ : std_logic;
SIGNAL \mem|Mem[1][4]~q\ : std_logic;
SIGNAL \mem|Mem[12][4]~q\ : std_logic;
SIGNAL \mem|Mem[10][5]~q\ : std_logic;
SIGNAL \mem|Mem[9][5]~q\ : std_logic;
SIGNAL \mem|Mem[8][5]~q\ : std_logic;
SIGNAL \mem|out_dat_add~41_combout\ : std_logic;
SIGNAL \mem|Mem[11][5]~q\ : std_logic;
SIGNAL \mem|out_dat_add~42_combout\ : std_logic;
SIGNAL \mem|Mem[5][5]~q\ : std_logic;
SIGNAL \mem|Mem[6][5]~q\ : std_logic;
SIGNAL \mem|Mem[4][5]~q\ : std_logic;
SIGNAL \mem|out_dat_add~43_combout\ : std_logic;
SIGNAL \mem|Mem[7][5]~q\ : std_logic;
SIGNAL \mem|out_dat_add~44_combout\ : std_logic;
SIGNAL \mem|Mem[2][5]~q\ : std_logic;
SIGNAL \mem|Mem[1][5]~q\ : std_logic;
SIGNAL \mem|Mem[0][5]~q\ : std_logic;
SIGNAL \mem|out_dat_add~45_combout\ : std_logic;
SIGNAL \mem|Mem[3][5]~q\ : std_logic;
SIGNAL \mem|out_dat_add~46_combout\ : std_logic;
SIGNAL \mem|out_dat_add~47_combout\ : std_logic;
SIGNAL \mem|Mem[12][5]~q\ : std_logic;
SIGNAL \mem|out_dat_add~48_combout\ : std_logic;
SIGNAL \mem|Mem[6][6]~q\ : std_logic;
SIGNAL \mem|Mem[5][6]~q\ : std_logic;
SIGNAL \mem|Mem[4][6]~q\ : std_logic;
SIGNAL \mem|out_dat_add~49_combout\ : std_logic;
SIGNAL \mem|Mem[7][6]~q\ : std_logic;
SIGNAL \mem|out_dat_add~50_combout\ : std_logic;
SIGNAL \mem|Mem[9][6]~q\ : std_logic;
SIGNAL \mem|Mem[10][6]~q\ : std_logic;
SIGNAL \mem|Mem[8][6]~q\ : std_logic;
SIGNAL \mem|out_dat_add~51_combout\ : std_logic;
SIGNAL \mem|Mem[11][6]~q\ : std_logic;
SIGNAL \mem|out_dat_add~52_combout\ : std_logic;
SIGNAL \mem|Mem[1][6]~q\ : std_logic;
SIGNAL \mem|Mem[2][6]~q\ : std_logic;
SIGNAL \mem|Mem[0][6]~q\ : std_logic;
SIGNAL \mem|out_dat_add~53_combout\ : std_logic;
SIGNAL \mem|Mem[3][6]~q\ : std_logic;
SIGNAL \mem|out_dat_add~54_combout\ : std_logic;
SIGNAL \mem|out_dat_add~55_combout\ : std_logic;
SIGNAL \mem|Mem[12][6]~q\ : std_logic;
SIGNAL \mem|out_dat_add~56_combout\ : std_logic;
SIGNAL \mem|Mem[10][7]~q\ : std_logic;
SIGNAL \mem|Mem[9][7]~q\ : std_logic;
SIGNAL \mem|Mem[8][7]~q\ : std_logic;
SIGNAL \mem|out_dat_add~57_combout\ : std_logic;
SIGNAL \mem|Mem[11][7]~q\ : std_logic;
SIGNAL \mem|out_dat_add~58_combout\ : std_logic;
SIGNAL \mem|Mem[5][7]~q\ : std_logic;
SIGNAL \mem|Mem[6][7]~q\ : std_logic;
SIGNAL \mem|Mem[4][7]~q\ : std_logic;
SIGNAL \mem|out_dat_add~59_combout\ : std_logic;
SIGNAL \mem|Mem[7][7]~q\ : std_logic;
SIGNAL \mem|out_dat_add~60_combout\ : std_logic;
SIGNAL \mem|Mem[2][7]~q\ : std_logic;
SIGNAL \mem|Mem[1][7]~q\ : std_logic;
SIGNAL \mem|Mem[0][7]~q\ : std_logic;
SIGNAL \mem|out_dat_add~61_combout\ : std_logic;
SIGNAL \mem|Mem[3][7]~q\ : std_logic;
SIGNAL \mem|out_dat_add~62_combout\ : std_logic;
SIGNAL \mem|out_dat_add~63_combout\ : std_logic;
SIGNAL \mem|Mem[12][7]~q\ : std_logic;
SIGNAL \mem|out_dat_add~64_combout\ : std_logic;
SIGNAL \mem|Mem[6][8]~q\ : std_logic;
SIGNAL \mem|Mem[5][8]~q\ : std_logic;
SIGNAL \mem|Mem[4][8]~q\ : std_logic;
SIGNAL \mem|out_dat_add~65_combout\ : std_logic;
SIGNAL \mem|Mem[7][8]~q\ : std_logic;
SIGNAL \mem|out_dat_add~66_combout\ : std_logic;
SIGNAL \mem|Mem[10][8]~q\ : std_logic;
SIGNAL \mem|Mem[10][9]~q\ : std_logic;
SIGNAL \mem|Mem[9][9]~q\ : std_logic;
SIGNAL \mem|Mem[8][9]~q\ : std_logic;
SIGNAL \mem|out_dat_add~73_combout\ : std_logic;
SIGNAL \mem|Mem[11][9]~q\ : std_logic;
SIGNAL \mem|out_dat_add~74_combout\ : std_logic;
SIGNAL \mem|Mem[5][9]~q\ : std_logic;
SIGNAL \mem|Mem[3][9]~q\ : std_logic;
SIGNAL \mem|Mem[6][10]~q\ : std_logic;
SIGNAL \mem|Mem[5][10]~q\ : std_logic;
SIGNAL \mem|Mem[4][10]~q\ : std_logic;
SIGNAL \mem|out_dat_add~81_combout\ : std_logic;
SIGNAL \mem|Mem[7][10]~q\ : std_logic;
SIGNAL \mem|out_dat_add~82_combout\ : std_logic;
SIGNAL \mem|Mem[9][10]~q\ : std_logic;
SIGNAL \mem|Mem[10][10]~q\ : std_logic;
SIGNAL \mem|Mem[8][10]~q\ : std_logic;
SIGNAL \mem|out_dat_add~83_combout\ : std_logic;
SIGNAL \mem|Mem[11][10]~q\ : std_logic;
SIGNAL \mem|out_dat_add~84_combout\ : std_logic;
SIGNAL \mem|Mem[1][10]~q\ : std_logic;
SIGNAL \mem|Mem[2][10]~q\ : std_logic;
SIGNAL \mem|Mem[0][10]~q\ : std_logic;
SIGNAL \mem|out_dat_add~85_combout\ : std_logic;
SIGNAL \mem|Mem[3][10]~q\ : std_logic;
SIGNAL \mem|out_dat_add~86_combout\ : std_logic;
SIGNAL \mem|out_dat_add~87_combout\ : std_logic;
SIGNAL \mem|Mem[12][10]~q\ : std_logic;
SIGNAL \mem|out_dat_add~88_combout\ : std_logic;
SIGNAL \mem|Mem[10][11]~q\ : std_logic;
SIGNAL \mem|Mem[9][11]~q\ : std_logic;
SIGNAL \mem|Mem[8][11]~q\ : std_logic;
SIGNAL \mem|out_dat_add~89_combout\ : std_logic;
SIGNAL \mem|Mem[11][11]~q\ : std_logic;
SIGNAL \mem|out_dat_add~90_combout\ : std_logic;
SIGNAL \mem|Mem[5][11]~q\ : std_logic;
SIGNAL \mem|Mem[6][11]~q\ : std_logic;
SIGNAL \mem|Mem[4][11]~q\ : std_logic;
SIGNAL \mem|out_dat_add~91_combout\ : std_logic;
SIGNAL \mem|Mem[7][11]~q\ : std_logic;
SIGNAL \mem|out_dat_add~92_combout\ : std_logic;
SIGNAL \mem|Mem[2][11]~q\ : std_logic;
SIGNAL \mem|Mem[1][11]~q\ : std_logic;
SIGNAL \mem|Mem[0][11]~q\ : std_logic;
SIGNAL \mem|out_dat_add~93_combout\ : std_logic;
SIGNAL \mem|Mem[3][11]~q\ : std_logic;
SIGNAL \mem|out_dat_add~94_combout\ : std_logic;
SIGNAL \mem|out_dat_add~95_combout\ : std_logic;
SIGNAL \mem|Mem[12][11]~q\ : std_logic;
SIGNAL \mem|out_dat_add~96_combout\ : std_logic;
SIGNAL \mem|Mem[7][12]~q\ : std_logic;
SIGNAL \mem|Mem[9][12]~q\ : std_logic;
SIGNAL \mem|Mem[10][12]~q\ : std_logic;
SIGNAL \mem|Mem[3][12]~q\ : std_logic;
SIGNAL \mem|Mem[10][13]~q\ : std_logic;
SIGNAL \mem|Mem[9][13]~q\ : std_logic;
SIGNAL \mem|Mem[8][13]~q\ : std_logic;
SIGNAL \mem|out_dat_add~105_combout\ : std_logic;
SIGNAL \mem|Mem[11][13]~q\ : std_logic;
SIGNAL \mem|out_dat_add~106_combout\ : std_logic;
SIGNAL \mem|Mem[5][13]~q\ : std_logic;
SIGNAL \mem|Mem[6][13]~q\ : std_logic;
SIGNAL \mem|Mem[4][13]~q\ : std_logic;
SIGNAL \mem|out_dat_add~107_combout\ : std_logic;
SIGNAL \mem|Mem[7][13]~q\ : std_logic;
SIGNAL \mem|out_dat_add~108_combout\ : std_logic;
SIGNAL \mem|Mem[2][13]~q\ : std_logic;
SIGNAL \mem|Mem[1][13]~q\ : std_logic;
SIGNAL \mem|Mem[0][13]~q\ : std_logic;
SIGNAL \mem|out_dat_add~109_combout\ : std_logic;
SIGNAL \mem|Mem[3][13]~q\ : std_logic;
SIGNAL \mem|out_dat_add~110_combout\ : std_logic;
SIGNAL \mem|out_dat_add~111_combout\ : std_logic;
SIGNAL \mem|Mem[12][13]~q\ : std_logic;
SIGNAL \mem|out_dat_add~112_combout\ : std_logic;
SIGNAL \mem|Mem[7][14]~q\ : std_logic;
SIGNAL \mem|Mem[10][15]~q\ : std_logic;
SIGNAL \mem|Mem[9][15]~q\ : std_logic;
SIGNAL \mem|Mem[8][15]~q\ : std_logic;
SIGNAL \mem|out_dat_add~121_combout\ : std_logic;
SIGNAL \mem|Mem[11][15]~q\ : std_logic;
SIGNAL \mem|out_dat_add~122_combout\ : std_logic;
SIGNAL \mem|Mem[5][15]~q\ : std_logic;
SIGNAL \mem|Mem[1][15]~q\ : std_logic;
SIGNAL \mem|Mem[6][16]~q\ : std_logic;
SIGNAL \mem|Mem[5][16]~q\ : std_logic;
SIGNAL \mem|Mem[4][16]~q\ : std_logic;
SIGNAL \mem|out_dat_add~129_combout\ : std_logic;
SIGNAL \mem|Mem[7][16]~q\ : std_logic;
SIGNAL \mem|out_dat_add~130_combout\ : std_logic;
SIGNAL \mem|Mem[9][16]~q\ : std_logic;
SIGNAL \mem|Mem[10][16]~q\ : std_logic;
SIGNAL \mem|Mem[8][16]~q\ : std_logic;
SIGNAL \mem|out_dat_add~131_combout\ : std_logic;
SIGNAL \mem|Mem[11][16]~q\ : std_logic;
SIGNAL \mem|out_dat_add~132_combout\ : std_logic;
SIGNAL \mem|Mem[1][16]~q\ : std_logic;
SIGNAL \mem|Mem[2][16]~q\ : std_logic;
SIGNAL \mem|Mem[0][16]~q\ : std_logic;
SIGNAL \mem|out_dat_add~133_combout\ : std_logic;
SIGNAL \mem|Mem[3][16]~q\ : std_logic;
SIGNAL \mem|out_dat_add~134_combout\ : std_logic;
SIGNAL \mem|out_dat_add~135_combout\ : std_logic;
SIGNAL \mem|Mem[12][16]~q\ : std_logic;
SIGNAL \mem|out_dat_add~136_combout\ : std_logic;
SIGNAL \mem|Mem[10][17]~q\ : std_logic;
SIGNAL \mem|Mem[9][17]~q\ : std_logic;
SIGNAL \mem|Mem[8][17]~q\ : std_logic;
SIGNAL \mem|out_dat_add~137_combout\ : std_logic;
SIGNAL \mem|Mem[11][17]~q\ : std_logic;
SIGNAL \mem|out_dat_add~138_combout\ : std_logic;
SIGNAL \mem|Mem[5][17]~q\ : std_logic;
SIGNAL \mem|Mem[6][17]~q\ : std_logic;
SIGNAL \mem|Mem[4][17]~q\ : std_logic;
SIGNAL \mem|out_dat_add~139_combout\ : std_logic;
SIGNAL \mem|Mem[7][17]~q\ : std_logic;
SIGNAL \mem|out_dat_add~140_combout\ : std_logic;
SIGNAL \mem|Mem[2][17]~q\ : std_logic;
SIGNAL \mem|Mem[1][17]~q\ : std_logic;
SIGNAL \mem|Mem[0][17]~q\ : std_logic;
SIGNAL \mem|out_dat_add~141_combout\ : std_logic;
SIGNAL \mem|Mem[3][17]~q\ : std_logic;
SIGNAL \mem|out_dat_add~142_combout\ : std_logic;
SIGNAL \mem|out_dat_add~143_combout\ : std_logic;
SIGNAL \mem|Mem[12][17]~q\ : std_logic;
SIGNAL \mem|out_dat_add~144_combout\ : std_logic;
SIGNAL \mem|Mem~0_combout\ : std_logic;
SIGNAL \mem|Mem~28_combout\ : std_logic;
SIGNAL \mem|Mem~29_combout\ : std_logic;
SIGNAL \mem|Mem~31_combout\ : std_logic;
SIGNAL \mem|Mem~34_combout\ : std_logic;
SIGNAL \mem|Mem~35_combout\ : std_logic;
SIGNAL \mar1|MAR_out~7_combout\ : std_logic;
SIGNAL \mar1|MAR_out~9_combout\ : std_logic;
SIGNAL \cb|Mux5~7_combout\ : std_logic;
SIGNAL \cb|Mux8~7_combout\ : std_logic;
SIGNAL \cb|Mux13~5_combout\ : std_logic;
SIGNAL \mem|Mem[8][1]~feeder_combout\ : std_logic;
SIGNAL \mem|Mem[1][1]~feeder_combout\ : std_logic;
SIGNAL \mem|Mem[9][1]~feeder_combout\ : std_logic;
SIGNAL \mem|Mem[5][1]~feeder_combout\ : std_logic;
SIGNAL \mem|Mem[6][1]~feeder_combout\ : std_logic;
SIGNAL \mem|Mem[2][2]~feeder_combout\ : std_logic;
SIGNAL \mem|Mem[1][2]~feeder_combout\ : std_logic;
SIGNAL \mem|Mem[7][2]~feeder_combout\ : std_logic;
SIGNAL \mem|Mem[9][2]~feeder_combout\ : std_logic;
SIGNAL \mem|Mem[4][2]~feeder_combout\ : std_logic;
SIGNAL \mux|IR[4]~feeder_combout\ : std_logic;
SIGNAL \mem|Mem[1][4]~feeder_combout\ : std_logic;
SIGNAL \mem|Mem[6][5]~feeder_combout\ : std_logic;
SIGNAL \mem|Mem[1][5]~feeder_combout\ : std_logic;
SIGNAL \mem|Mem[2][5]~feeder_combout\ : std_logic;
SIGNAL \mem|Mem[5][5]~feeder_combout\ : std_logic;
SIGNAL \mem|Mem[9][5]~feeder_combout\ : std_logic;
SIGNAL \mem|Mem[2][6]~feeder_combout\ : std_logic;
SIGNAL \mux|IR[6]~feeder_combout\ : std_logic;
SIGNAL \mem|Mem[1][6]~feeder_combout\ : std_logic;
SIGNAL \mem|Mem[4][7]~feeder_combout\ : std_logic;
SIGNAL \mem|Mem[2][7]~feeder_combout\ : std_logic;
SIGNAL \mem|Mem[9][7]~feeder_combout\ : std_logic;
SIGNAL \mem|Mem[1][7]~feeder_combout\ : std_logic;
SIGNAL \mem|Mem[5][7]~feeder_combout\ : std_logic;
SIGNAL \mem|Mem[5][8]~feeder_combout\ : std_logic;
SIGNAL \mux|IR[8]~feeder_combout\ : std_logic;
SIGNAL \mem|Mem[9][9]~feeder_combout\ : std_logic;
SIGNAL \mem|Mem[2][10]~feeder_combout\ : std_logic;
SIGNAL \mem|Mem[5][10]~feeder_combout\ : std_logic;
SIGNAL \mem|Mem[7][10]~feeder_combout\ : std_logic;
SIGNAL \mem|Mem[9][10]~feeder_combout\ : std_logic;
SIGNAL \mem|Mem[1][10]~feeder_combout\ : std_logic;
SIGNAL \mux|IR[10]~feeder_combout\ : std_logic;
SIGNAL \mux|AC[10]~feeder_combout\ : std_logic;
SIGNAL \mem|Mem[6][11]~feeder_combout\ : std_logic;
SIGNAL \mem|Mem[1][11]~feeder_combout\ : std_logic;
SIGNAL \mem|Mem[9][11]~feeder_combout\ : std_logic;
SIGNAL \mem|Mem[9][12]~feeder_combout\ : std_logic;
SIGNAL \mem|Mem[7][12]~feeder_combout\ : std_logic;
SIGNAL \mem|Mem[9][13]~feeder_combout\ : std_logic;
SIGNAL \mem|Mem[5][13]~feeder_combout\ : std_logic;
SIGNAL \mem|Mem[2][13]~feeder_combout\ : std_logic;
SIGNAL \mem|Mem[1][13]~feeder_combout\ : std_logic;
SIGNAL \mem|Mem[7][14]~feeder_combout\ : std_logic;
SIGNAL \mem|Mem[9][15]~feeder_combout\ : std_logic;
SIGNAL \mem|Mem[5][15]~feeder_combout\ : std_logic;
SIGNAL \mem|Mem[5][16]~feeder_combout\ : std_logic;
SIGNAL \mem|Mem[1][16]~feeder_combout\ : std_logic;
SIGNAL \mem|Mem[9][16]~feeder_combout\ : std_logic;
SIGNAL \mem|Mem[7][16]~feeder_combout\ : std_logic;
SIGNAL \mem|Mem[9][17]~feeder_combout\ : std_logic;
SIGNAL \mem|Mem[1][17]~feeder_combout\ : std_logic;
SIGNAL \mem|Mem[5][17]~feeder_combout\ : std_logic;
SIGNAL \mem|Mem[2][0]~feeder_combout\ : std_logic;
SIGNAL \mem|Mem[5][0]~feeder_combout\ : std_logic;
SIGNAL \mem|Mem[1][0]~feeder_combout\ : std_logic;
SIGNAL \mem|Mem[1][15]~feeder_combout\ : std_logic;
SIGNAL \mem|Mem[2][16]~feeder_combout\ : std_logic;
SIGNAL \mem|Mem[10][0]~feeder_combout\ : std_logic;
SIGNAL \stack1|Stack~18feeder_combout\ : std_logic;
SIGNAL \stack1|Stack~0feeder_combout\ : std_logic;
SIGNAL \stack1|Stack~54feeder_combout\ : std_logic;
SIGNAL \mem|Mem[12][0]~feeder_combout\ : std_logic;
SIGNAL \mem|Mem[11][1]~feeder_combout\ : std_logic;
SIGNAL \mem|Mem[12][1]~feeder_combout\ : std_logic;
SIGNAL \stack1|Stack~37feeder_combout\ : std_logic;
SIGNAL \stack1|Stack~55feeder_combout\ : std_logic;
SIGNAL \mem|Mem[10][2]~feeder_combout\ : std_logic;
SIGNAL \stack1|Stack~2feeder_combout\ : std_logic;
SIGNAL \mem|Mem[12][2]~feeder_combout\ : std_logic;
SIGNAL \mem|Mem[11][3]~feeder_combout\ : std_logic;
SIGNAL \stack1|Stack~57feeder_combout\ : std_logic;
SIGNAL \stack1|Stack~3feeder_combout\ : std_logic;
SIGNAL \mem|Mem[12][4]~feeder_combout\ : std_logic;
SIGNAL \stack1|Stack~58feeder_combout\ : std_logic;
SIGNAL \stack1|Stack~41feeder_combout\ : std_logic;
SIGNAL \stack1|Stack~59feeder_combout\ : std_logic;
SIGNAL \stack1|Stack~5feeder_combout\ : std_logic;
SIGNAL \mem|Mem[12][5]~feeder_combout\ : std_logic;
SIGNAL \mem|Mem[11][5]~feeder_combout\ : std_logic;
SIGNAL \mem|Mem[10][6]~feeder_combout\ : std_logic;
SIGNAL \mem|Mem[12][6]~feeder_combout\ : std_logic;
SIGNAL \mem|Mem[12][7]~feeder_combout\ : std_logic;
SIGNAL \mem|Mem[11][7]~feeder_combout\ : std_logic;
SIGNAL \stack1|Stack~43feeder_combout\ : std_logic;
SIGNAL \stack1|Stack~61feeder_combout\ : std_logic;
SIGNAL \stack1|Stack~7feeder_combout\ : std_logic;
SIGNAL \mem|Mem[10][8]~feeder_combout\ : std_logic;
SIGNAL \stack1|Stack~8feeder_combout\ : std_logic;
SIGNAL \mem|Mem[11][9]~feeder_combout\ : std_logic;
SIGNAL \stack1|Stack~9feeder_combout\ : std_logic;
SIGNAL \mem|Mem[10][10]~feeder_combout\ : std_logic;
SIGNAL \stack1|Stack~10feeder_combout\ : std_logic;
SIGNAL \mem|Mem[12][10]~feeder_combout\ : std_logic;
SIGNAL \stack1|Stack~65feeder_combout\ : std_logic;
SIGNAL \mem|Mem[11][11]~feeder_combout\ : std_logic;
SIGNAL \mem|Mem[12][11]~feeder_combout\ : std_logic;
SIGNAL \stack1|Stack~66feeder_combout\ : std_logic;
SIGNAL \stack1|Stack~12feeder_combout\ : std_logic;
SIGNAL \stack1|Stack~30feeder_combout\ : std_logic;
SIGNAL \mem|Mem[10][12]~feeder_combout\ : std_logic;
SIGNAL \mem|Mem[11][13]~feeder_combout\ : std_logic;
SIGNAL \stack1|Stack~31feeder_combout\ : std_logic;
SIGNAL \stack1|Stack~14feeder_combout\ : std_logic;
SIGNAL \mem|Mem[11][15]~feeder_combout\ : std_logic;
SIGNAL \stack1|Stack~33feeder_combout\ : std_logic;
SIGNAL \stack1|Stack~70feeder_combout\ : std_logic;
SIGNAL \mem|Mem[10][16]~feeder_combout\ : std_logic;
SIGNAL \stack1|Stack~17feeder_combout\ : std_logic;
SIGNAL \stack1|Stack~35feeder_combout\ : std_logic;
SIGNAL \stack1|Stack~71feeder_combout\ : std_logic;
SIGNAL \mem|Mem[11][17]~feeder_combout\ : std_logic;
SIGNAL \aluOut[0]~output_o\ : std_logic;
SIGNAL \aluOut[1]~output_o\ : std_logic;
SIGNAL \aluOut[2]~output_o\ : std_logic;
SIGNAL \aluOut[3]~output_o\ : std_logic;
SIGNAL \aluOut[4]~output_o\ : std_logic;
SIGNAL \aluOut[5]~output_o\ : std_logic;
SIGNAL \aluOut[6]~output_o\ : std_logic;
SIGNAL \aluOut[7]~output_o\ : std_logic;
SIGNAL \aluOut[8]~output_o\ : std_logic;
SIGNAL \aluOut[9]~output_o\ : std_logic;
SIGNAL \aluOut[10]~output_o\ : std_logic;
SIGNAL \aluOut[11]~output_o\ : std_logic;
SIGNAL \aluOut[12]~output_o\ : std_logic;
SIGNAL \aluOut[13]~output_o\ : std_logic;
SIGNAL \aluOut[14]~output_o\ : std_logic;
SIGNAL \aluOut[15]~output_o\ : std_logic;
SIGNAL \aluOut[16]~output_o\ : std_logic;
SIGNAL \aluOut[17]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \cb|md_write_mem~0_combout\ : std_logic;
SIGNAL \cb|Mux6~0_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \mux|IR~17_combout\ : std_logic;
SIGNAL \mux|IR[15]~feeder_combout\ : std_logic;
SIGNAL \cb|aluop~3_combout\ : std_logic;
SIGNAL \cb|aluop[2]~4_combout\ : std_logic;
SIGNAL \cb|aluop[2]~7_combout\ : std_logic;
SIGNAL \cb|aluop[2]~19_combout\ : std_logic;
SIGNAL \cb|aluop[2]~8_combout\ : std_logic;
SIGNAL \cb|aluop[0]~9_combout\ : std_logic;
SIGNAL \stack1|Stack~16feeder_combout\ : std_logic;
SIGNAL \cb|stack_write~1_combout\ : std_logic;
SIGNAL \cb|stack_write~q\ : std_logic;
SIGNAL \stack1|Add1~0_combout\ : std_logic;
SIGNAL \stack1|SP[0]~_wirecell_combout\ : std_logic;
SIGNAL \cb|Equal1~0_combout\ : std_logic;
SIGNAL \cb|Mux12~1_combout\ : std_logic;
SIGNAL \cb|Mux12~2_combout\ : std_logic;
SIGNAL \cb|stack_read~q\ : std_logic;
SIGNAL \stack1|SP~0_combout\ : std_logic;
SIGNAL \stack1|Stack~111_combout\ : std_logic;
SIGNAL \stack1|Stack~16_q\ : std_logic;
SIGNAL \stack1|Stack~34feeder_combout\ : std_logic;
SIGNAL \stack1|Stack~108_combout\ : std_logic;
SIGNAL \stack1|Stack~34_q\ : std_logic;
SIGNAL \stack1|Add0~0_combout\ : std_logic;
SIGNAL \stack1|Stack~105_combout\ : std_logic;
SIGNAL \stack1|out_stack_data[12]~0_combout\ : std_logic;
SIGNAL \output2[16]~16_combout\ : std_logic;
SIGNAL \alu1|Add0~82_combout\ : std_logic;
SIGNAL \cb|Selector0~0_combout\ : std_logic;
SIGNAL \cb|Selector0~1_combout\ : std_logic;
SIGNAL \cb|ac_write~q\ : std_logic;
SIGNAL \mux|AC[3]~0_combout\ : std_logic;
SIGNAL \mux|out_data~17_combout\ : std_logic;
SIGNAL \mux|out_data[0]~1_combout\ : std_logic;
SIGNAL \alu1|Add0~11_combout\ : std_logic;
SIGNAL \mux|out_data~16_combout\ : std_logic;
SIGNAL \alu1|Add0~72_combout\ : std_logic;
SIGNAL \cb|Decoder0~1_combout\ : std_logic;
SIGNAL \cb|alu_enable~4_combout\ : std_logic;
SIGNAL \cb|alu_enable~q\ : std_logic;
SIGNAL \alu1|out[17]~0_combout\ : std_logic;
SIGNAL \alu1|out[17]~0clkctrl_outclk\ : std_logic;
SIGNAL \stack1|Stack~110_combout\ : std_logic;
SIGNAL \stack1|Stack~50_q\ : std_logic;
SIGNAL \stack1|Stack~68feeder_combout\ : std_logic;
SIGNAL \stack1|Stack~109_combout\ : std_logic;
SIGNAL \stack1|Stack~68_q\ : std_logic;
SIGNAL \stack1|Stack~100_combout\ : std_logic;
SIGNAL \stack1|Stack~32feeder_combout\ : std_logic;
SIGNAL \stack1|Stack~32_q\ : std_logic;
SIGNAL \stack1|Stack~101_combout\ : std_logic;
SIGNAL \stack1|Stack~19_q\ : std_logic;
SIGNAL \stack1|Stack~74_combout\ : std_logic;
SIGNAL \stack1|Stack~1feeder_combout\ : std_logic;
SIGNAL \stack1|Stack~1_q\ : std_logic;
SIGNAL \stack1|Stack~75_combout\ : std_logic;
SIGNAL \mux1|PC[0]~13_combout\ : std_logic;
SIGNAL \cb|Decoder0~0_combout\ : std_logic;
SIGNAL \cb|Selector6~0_combout\ : std_logic;
SIGNAL \cb|Selector6~1_combout\ : std_logic;
SIGNAL \cb|inc_pc~q\ : std_logic;
SIGNAL \cb|Mux1~0_combout\ : std_logic;
SIGNAL \cb|Mux1~1_combout\ : std_logic;
SIGNAL \cb|Mux1~3_combout\ : std_logic;
SIGNAL \cb|pc_write~q\ : std_logic;
SIGNAL \cb|Selector5~0_combout\ : std_logic;
SIGNAL \cb|Selector5~1_combout\ : std_logic;
SIGNAL \cb|md_read~q\ : std_logic;
SIGNAL \cb|md_write_mem~2_combout\ : std_logic;
SIGNAL \cb|Mux7~0_combout\ : std_logic;
SIGNAL \cb|md_write_mem~3_combout\ : std_logic;
SIGNAL \cb|md_write_mem~4_combout\ : std_logic;
SIGNAL \cb|md_write_mem~5_combout\ : std_logic;
SIGNAL \cb|md_write_mem~6_combout\ : std_logic;
SIGNAL \cb|md_write_mem~q\ : std_logic;
SIGNAL \cb|Selector2~0_combout\ : std_logic;
SIGNAL \cb|Selector2~1_combout\ : std_logic;
SIGNAL \cb|md_write~q\ : std_logic;
SIGNAL \mux1|PC[8]~15_combout\ : std_logic;
SIGNAL \mux1|PC[8]~16_combout\ : std_logic;
SIGNAL \mux1|PC[0]~14\ : std_logic;
SIGNAL \mux1|PC[1]~17_combout\ : std_logic;
SIGNAL \mux1|out_data~3_combout\ : std_logic;
SIGNAL \cb|Mux14~0_combout\ : std_logic;
SIGNAL \cb|Mux14~1_combout\ : std_logic;
SIGNAL \cb|Mux14~2_combout\ : std_logic;
SIGNAL \cb|Mux14~3_combout\ : std_logic;
SIGNAL \cb|pc_read~q\ : std_logic;
SIGNAL \mux1|out_data[14]~1_combout\ : std_logic;
SIGNAL \mux1|out_data[14]~2_combout\ : std_logic;
SIGNAL \output2[1]~1_combout\ : std_logic;
SIGNAL \mux|IR~3_combout\ : std_logic;
SIGNAL \mux|IR[1]~feeder_combout\ : std_logic;
SIGNAL \mux|AC~1_combout\ : std_logic;
SIGNAL \mux|AC[1]~feeder_combout\ : std_logic;
SIGNAL \mux|out_data~2_combout\ : std_logic;
SIGNAL \mux|IR~0_combout\ : std_logic;
SIGNAL \mux|AC[0]~feeder_combout\ : std_logic;
SIGNAL \mux|IR[0]~feeder_combout\ : std_logic;
SIGNAL \mux|out_data~0_combout\ : std_logic;
SIGNAL \alu1|Add0~9\ : std_logic;
SIGNAL \alu1|Add0~14_combout\ : std_logic;
SIGNAL \alu1|Add0~10_combout\ : std_logic;
SIGNAL \alu1|Add0~16_combout\ : std_logic;
SIGNAL \alu1|Add0~17_combout\ : std_logic;
SIGNAL \cb|Mux15~1_combout\ : std_logic;
SIGNAL \cb|Mux15~0_combout\ : std_logic;
SIGNAL \cb|Mux15~2_combout\ : std_logic;
SIGNAL \cb|ma_write~q\ : std_logic;
SIGNAL \cb|Mux13~4_combout\ : std_logic;
SIGNAL \cb|Mux13~6_combout\ : std_logic;
SIGNAL \cb|ma_read~q\ : std_logic;
SIGNAL \mar1|MAR[3]~1_combout\ : std_logic;
SIGNAL \mar1|MAR_out~0_combout\ : std_logic;
SIGNAL \mar1|MAR[3]~0_combout\ : std_logic;
SIGNAL \mar1|MAR_out~1_combout\ : std_logic;
SIGNAL \mem|Mem[12][17]~9_combout\ : std_logic;
SIGNAL \cb|Equal1~2_combout\ : std_logic;
SIGNAL \cb|Selector1~0_combout\ : std_logic;
SIGNAL \cb|mem_write~q\ : std_logic;
SIGNAL \cb|Mux8~5_combout\ : std_logic;
SIGNAL \cb|Mux8~2_combout\ : std_logic;
SIGNAL \cb|Mux8~3_combout\ : std_logic;
SIGNAL \cb|Mux8~4_combout\ : std_logic;
SIGNAL \cb|Mux8~6_combout\ : std_logic;
SIGNAL \cb|mem_read~q\ : std_logic;
SIGNAL \mar1|MAR_out~12_combout\ : std_logic;
SIGNAL \mem|Mem[10][17]~3_combout\ : std_logic;
SIGNAL \mar1|MAR_out~5_combout\ : std_logic;
SIGNAL \mux|AC~3_combout\ : std_logic;
SIGNAL \mux|AC[4]~feeder_combout\ : std_logic;
SIGNAL \mux|out_data~5_combout\ : std_logic;
SIGNAL \stack1|Stack~22feeder_combout\ : std_logic;
SIGNAL \stack1|Stack~22_q\ : std_logic;
SIGNAL \stack1|Stack~4feeder_combout\ : std_logic;
SIGNAL \stack1|Stack~4_q\ : std_logic;
SIGNAL \stack1|Stack~81_combout\ : std_logic;
SIGNAL \mem|Mem[6][2]~5_combout\ : std_logic;
SIGNAL \mem|Mem[6][2]~6_combout\ : std_logic;
SIGNAL \mem|Mem[6][4]~q\ : std_logic;
SIGNAL \stack1|Stack~39feeder_combout\ : std_logic;
SIGNAL \stack1|Stack~39_q\ : std_logic;
SIGNAL \stack1|Stack~21_q\ : std_logic;
SIGNAL \stack1|Stack~78_combout\ : std_logic;
SIGNAL \stack1|Stack~79_combout\ : std_logic;
SIGNAL \mux1|PC[1]~18\ : std_logic;
SIGNAL \mux1|PC[2]~19_combout\ : std_logic;
SIGNAL \stack1|Stack~20feeder_combout\ : std_logic;
SIGNAL \stack1|Stack~20_q\ : std_logic;
SIGNAL \stack1|Stack~38_q\ : std_logic;
SIGNAL \stack1|Stack~56feeder_combout\ : std_logic;
SIGNAL \stack1|Stack~56_q\ : std_logic;
SIGNAL \stack1|Stack~76_combout\ : std_logic;
SIGNAL \stack1|Stack~77_combout\ : std_logic;
SIGNAL \mux1|out_data~4_combout\ : std_logic;
SIGNAL \output2[2]~2_combout\ : std_logic;
SIGNAL \mux|IR~4_combout\ : std_logic;
SIGNAL \mux|IR[2]~feeder_combout\ : std_logic;
SIGNAL \mux|AC~2_combout\ : std_logic;
SIGNAL \mux|AC[2]~feeder_combout\ : std_logic;
SIGNAL \mux|out_data~3_combout\ : std_logic;
SIGNAL \alu1|Add0~15\ : std_logic;
SIGNAL \alu1|Add0~18_combout\ : std_logic;
SIGNAL \alu1|Add0~20_combout\ : std_logic;
SIGNAL \alu1|Add0~21_combout\ : std_logic;
SIGNAL \mux1|PC[2]~20\ : std_logic;
SIGNAL \mux1|PC[3]~21_combout\ : std_logic;
SIGNAL \mem|Mem[12][3]~feeder_combout\ : std_logic;
SIGNAL \mem|Mem[12][3]~q\ : std_logic;
SIGNAL \mar1|MAR_out~2_combout\ : std_logic;
SIGNAL \mux|IR~5_combout\ : std_logic;
SIGNAL \mem|Mem[5][9]~7_combout\ : std_logic;
SIGNAL \mem|Mem[5][9]~8_combout\ : std_logic;
SIGNAL \mem|Mem[5][3]~q\ : std_logic;
SIGNAL \mem|Mem[7][3]~q\ : std_logic;
SIGNAL \mem|Mem[4][8]~10_combout\ : std_logic;
SIGNAL \mem|Mem[4][3]~q\ : std_logic;
SIGNAL \mem|Mem~27_combout\ : std_logic;
SIGNAL \mem|Mem[6][3]~feeder_combout\ : std_logic;
SIGNAL \mem|Mem[6][3]~q\ : std_logic;
SIGNAL \mem|out_dat_add~27_combout\ : std_logic;
SIGNAL \mem|out_dat_add~28_combout\ : std_logic;
SIGNAL \mux|IR~13_combout\ : std_logic;
SIGNAL \mux|AC[11]~feeder_combout\ : std_logic;
SIGNAL \mux|IR[11]~feeder_combout\ : std_logic;
SIGNAL \mux|out_data~12_combout\ : std_logic;
SIGNAL \alu1|Add0~56_combout\ : std_logic;
SIGNAL \stack1|Stack~11feeder_combout\ : std_logic;
SIGNAL \stack1|Stack~11_q\ : std_logic;
SIGNAL \stack1|Stack~29feeder_combout\ : std_logic;
SIGNAL \stack1|Stack~29_q\ : std_logic;
SIGNAL \stack1|Stack~95_combout\ : std_logic;
SIGNAL \mux1|PC[3]~22\ : std_logic;
SIGNAL \mux1|PC[4]~24\ : std_logic;
SIGNAL \mux1|PC[5]~25_combout\ : std_logic;
SIGNAL \mux1|PC[5]~26\ : std_logic;
SIGNAL \mux1|PC[6]~27_combout\ : std_logic;
SIGNAL \mux1|out_data~8_combout\ : std_logic;
SIGNAL \stack1|Stack~6feeder_combout\ : std_logic;
SIGNAL \stack1|Stack~6_q\ : std_logic;
SIGNAL \stack1|Stack~24feeder_combout\ : std_logic;
SIGNAL \stack1|Stack~24_q\ : std_logic;
SIGNAL \stack1|Stack~42_q\ : std_logic;
SIGNAL \stack1|Stack~60feeder_combout\ : std_logic;
SIGNAL \stack1|Stack~60_q\ : std_logic;
SIGNAL \stack1|Stack~84_combout\ : std_logic;
SIGNAL \stack1|Stack~85_combout\ : std_logic;
SIGNAL \output2[6]~6_combout\ : std_logic;
SIGNAL \alu1|Add0~36_combout\ : std_logic;
SIGNAL \mux|IR~7_combout\ : std_logic;
SIGNAL \mux|IR[5]~feeder_combout\ : std_logic;
SIGNAL \mux|AC~4_combout\ : std_logic;
SIGNAL \mux|out_data~6_combout\ : std_logic;
SIGNAL \mux|IR[3]~feeder_combout\ : std_logic;
SIGNAL \mux|AC[3]~feeder_combout\ : std_logic;
SIGNAL \mux|out_data~4_combout\ : std_logic;
SIGNAL \alu1|Add0~19\ : std_logic;
SIGNAL \alu1|Add0~23\ : std_logic;
SIGNAL \alu1|Add0~27\ : std_logic;
SIGNAL \alu1|Add0~31\ : std_logic;
SIGNAL \alu1|Add0~34_combout\ : std_logic;
SIGNAL \alu1|Add0~37_combout\ : std_logic;
SIGNAL \mux1|PC[6]~28\ : std_logic;
SIGNAL \mux1|PC[7]~29_combout\ : std_logic;
SIGNAL \mux|IR~9_combout\ : std_logic;
SIGNAL \mux|IR[7]~feeder_combout\ : std_logic;
SIGNAL \mux|out_data~8_combout\ : std_logic;
SIGNAL \alu1|Add0~35\ : std_logic;
SIGNAL \alu1|Add0~38_combout\ : std_logic;
SIGNAL \alu1|Add0~40_combout\ : std_logic;
SIGNAL \alu1|Add0~41_combout\ : std_logic;
SIGNAL \mux1|PC[7]~30\ : std_logic;
SIGNAL \mux1|PC[8]~31_combout\ : std_logic;
SIGNAL \stack1|Stack~26feeder_combout\ : std_logic;
SIGNAL \stack1|Stack~26_q\ : std_logic;
SIGNAL \stack1|Stack~44_q\ : std_logic;
SIGNAL \stack1|Stack~62feeder_combout\ : std_logic;
SIGNAL \stack1|Stack~62_q\ : std_logic;
SIGNAL \stack1|Stack~88_combout\ : std_logic;
SIGNAL \stack1|Stack~89_combout\ : std_logic;
SIGNAL \mem|Mem[12][8]~feeder_combout\ : std_logic;
SIGNAL \mem|Mem[12][8]~q\ : std_logic;
SIGNAL \mux|IR~10_combout\ : std_logic;
SIGNAL \mem|Mem[8][17]~18_combout\ : std_logic;
SIGNAL \mem|Mem[8][8]~q\ : std_logic;
SIGNAL \mem|out_dat_add~67_combout\ : std_logic;
SIGNAL \mem|Mem[10][17]~16_combout\ : std_logic;
SIGNAL \mem|Mem[11][17]~19_combout\ : std_logic;
SIGNAL \mem|Mem[11][8]~q\ : std_logic;
SIGNAL \mem|Mem[9][9]~14_combout\ : std_logic;
SIGNAL \mem|Mem[9][9]~15_combout\ : std_logic;
SIGNAL \mem|Mem[9][8]~q\ : std_logic;
SIGNAL \mem|out_dat_add~68_combout\ : std_logic;
SIGNAL \mem|Mem[1][8]~feeder_combout\ : std_logic;
SIGNAL \mem|Mem[1][14]~20_combout\ : std_logic;
SIGNAL \mem|Mem[1][14]~21_combout\ : std_logic;
SIGNAL \mem|Mem[1][8]~q\ : std_logic;
SIGNAL \mem|Mem[3][8]~q\ : std_logic;
SIGNAL \mem|Mem[0][4]~23_combout\ : std_logic;
SIGNAL \mem|Mem[0][8]~q\ : std_logic;
SIGNAL \mem|Mem[2][8]~feeder_combout\ : std_logic;
SIGNAL \mem|Mem[2][16]~22_combout\ : std_logic;
SIGNAL \mem|Mem[2][8]~q\ : std_logic;
SIGNAL \mem|out_dat_add~69_combout\ : std_logic;
SIGNAL \mem|out_dat_add~70_combout\ : std_logic;
SIGNAL \mem|out_dat_add~71_combout\ : std_logic;
SIGNAL \mem|out_dat_add~72_combout\ : std_logic;
SIGNAL \mem|out_dat_add[2]~8_combout\ : std_logic;
SIGNAL \mux1|MD~9_combout\ : std_logic;
SIGNAL \mux1|MD[13]~1_combout\ : std_logic;
SIGNAL \mux1|out_data~10_combout\ : std_logic;
SIGNAL \output2[8]~8_combout\ : std_logic;
SIGNAL \alu1|Add0~44_combout\ : std_logic;
SIGNAL \mux|AC[8]~feeder_combout\ : std_logic;
SIGNAL \mux|out_data~9_combout\ : std_logic;
SIGNAL \alu1|Add0~39\ : std_logic;
SIGNAL \alu1|Add0~42_combout\ : std_logic;
SIGNAL \alu1|Add0~45_combout\ : std_logic;
SIGNAL \mux1|PC[8]~32\ : std_logic;
SIGNAL \mux1|PC[9]~34\ : std_logic;
SIGNAL \mux1|PC[10]~35_combout\ : std_logic;
SIGNAL \mux1|out_data~12_combout\ : std_logic;
SIGNAL \stack1|Stack~28feeder_combout\ : std_logic;
SIGNAL \stack1|Stack~28_q\ : std_logic;
SIGNAL \stack1|Stack~46_q\ : std_logic;
SIGNAL \stack1|Stack~64feeder_combout\ : std_logic;
SIGNAL \stack1|Stack~64_q\ : std_logic;
SIGNAL \stack1|Stack~92_combout\ : std_logic;
SIGNAL \stack1|Stack~93_combout\ : std_logic;
SIGNAL \output2[10]~10_combout\ : std_logic;
SIGNAL \alu1|Add0~52_combout\ : std_logic;
SIGNAL \alu1|Add0~43\ : std_logic;
SIGNAL \alu1|Add0~46_combout\ : std_logic;
SIGNAL \mux|IR~11_combout\ : std_logic;
SIGNAL \mux|IR[9]~feeder_combout\ : std_logic;
SIGNAL \mux|AC[9]~feeder_combout\ : std_logic;
SIGNAL \mux|out_data~10_combout\ : std_logic;
SIGNAL \alu1|Add0~48_combout\ : std_logic;
SIGNAL \alu1|Add0~49_combout\ : std_logic;
SIGNAL \mem|Mem[12][9]~feeder_combout\ : std_logic;
SIGNAL \mem|Mem[12][9]~q\ : std_logic;
SIGNAL \mem|Mem[2][9]~q\ : std_logic;
SIGNAL \mem|Mem[0][9]~q\ : std_logic;
SIGNAL \mem|Mem[1][9]~feeder_combout\ : std_logic;
SIGNAL \mem|Mem[1][9]~q\ : std_logic;
SIGNAL \mem|out_dat_add~77_combout\ : std_logic;
SIGNAL \mem|out_dat_add~78_combout\ : std_logic;
SIGNAL \mem|Mem[7][9]~q\ : std_logic;
SIGNAL \mem|Mem[4][9]~q\ : std_logic;
SIGNAL \mem|Mem[6][9]~feeder_combout\ : std_logic;
SIGNAL \mem|Mem[6][9]~q\ : std_logic;
SIGNAL \mem|out_dat_add~75_combout\ : std_logic;
SIGNAL \mem|out_dat_add~76_combout\ : std_logic;
SIGNAL \mem|out_dat_add~79_combout\ : std_logic;
SIGNAL \mem|out_dat_add~80_combout\ : std_logic;
SIGNAL \mux1|MD~10_combout\ : std_logic;
SIGNAL \mux1|out_data~11_combout\ : std_logic;
SIGNAL \stack1|Stack~27feeder_combout\ : std_logic;
SIGNAL \stack1|Stack~27_q\ : std_logic;
SIGNAL \stack1|Stack~45_q\ : std_logic;
SIGNAL \stack1|Stack~63feeder_combout\ : std_logic;
SIGNAL \stack1|Stack~63_q\ : std_logic;
SIGNAL \stack1|Stack~90_combout\ : std_logic;
SIGNAL \stack1|Stack~91_combout\ : std_logic;
SIGNAL \output2[9]~9_combout\ : std_logic;
SIGNAL \alu1|Add0~47\ : std_logic;
SIGNAL \alu1|Add0~50_combout\ : std_logic;
SIGNAL \alu1|Add0~53_combout\ : std_logic;
SIGNAL \mux1|PC[10]~36\ : std_logic;
SIGNAL \mux1|PC[11]~37_combout\ : std_logic;
SIGNAL \mux1|out_data~13_combout\ : std_logic;
SIGNAL \output2[11]~11_combout\ : std_logic;
SIGNAL \alu1|Add0~51\ : std_logic;
SIGNAL \alu1|Add0~54_combout\ : std_logic;
SIGNAL \alu1|Add0~57_combout\ : std_logic;
SIGNAL \mar1|MAR_out~11_combout\ : std_logic;
SIGNAL \mar1|MAR_out~10_combout\ : std_logic;
SIGNAL \mar1|MAR[8]~feeder_combout\ : std_logic;
SIGNAL \mar1|MAR_out~8_combout\ : std_logic;
SIGNAL \mem|Mem[10][17]~2_combout\ : std_logic;
SIGNAL \mem|Mem[10][17]~13_combout\ : std_logic;
SIGNAL \mem|Mem[3][11]~24_combout\ : std_logic;
SIGNAL \mem|Mem[3][11]~25_combout\ : std_logic;
SIGNAL \mem|Mem[3][3]~q\ : std_logic;
SIGNAL \mem|Mem[2][3]~q\ : std_logic;
SIGNAL \mem|Mem[0][3]~q\ : std_logic;
SIGNAL \mem|Mem[1][3]~feeder_combout\ : std_logic;
SIGNAL \mem|Mem[1][3]~q\ : std_logic;
SIGNAL \mem|out_dat_add~29_combout\ : std_logic;
SIGNAL \mem|out_dat_add~30_combout\ : std_logic;
SIGNAL \mem|out_dat_add~31_combout\ : std_logic;
SIGNAL \mem|out_dat_add~32_combout\ : std_logic;
SIGNAL \mux1|MD~4_combout\ : std_logic;
SIGNAL \mux1|out_data~5_combout\ : std_logic;
SIGNAL \output2[3]~3_combout\ : std_logic;
SIGNAL \alu1|Add0~22_combout\ : std_logic;
SIGNAL \alu1|Add0~24_combout\ : std_logic;
SIGNAL \alu1|Add0~25_combout\ : std_logic;
SIGNAL \mar1|MAR_out~3_combout\ : std_logic;
SIGNAL \mem|Mem[7][3]~11_combout\ : std_logic;
SIGNAL \mem|Mem[7][3]~12_combout\ : std_logic;
SIGNAL \mem|Mem[7][4]~q\ : std_logic;
SIGNAL \mem|out_dat_add~34_combout\ : std_logic;
SIGNAL \mux|IR~6_combout\ : std_logic;
SIGNAL \mem|Mem[3][4]~q\ : std_logic;
SIGNAL \mem|Mem[0][4]~q\ : std_logic;
SIGNAL \mem|Mem[2][4]~feeder_combout\ : std_logic;
SIGNAL \mem|Mem[2][4]~q\ : std_logic;
SIGNAL \mem|out_dat_add~37_combout\ : std_logic;
SIGNAL \mem|out_dat_add~38_combout\ : std_logic;
SIGNAL \mem|Mem[9][4]~feeder_combout\ : std_logic;
SIGNAL \mem|Mem[9][4]~q\ : std_logic;
SIGNAL \mem|Mem[11][4]~q\ : std_logic;
SIGNAL \mem|Mem[8][4]~q\ : std_logic;
SIGNAL \mem|Mem[10][4]~feeder_combout\ : std_logic;
SIGNAL \mem|Mem[10][17]~17_combout\ : std_logic;
SIGNAL \mem|Mem[10][4]~q\ : std_logic;
SIGNAL \mem|out_dat_add~35_combout\ : std_logic;
SIGNAL \mem|out_dat_add~36_combout\ : std_logic;
SIGNAL \mem|out_dat_add~39_combout\ : std_logic;
SIGNAL \mem|out_dat_add~40_combout\ : std_logic;
SIGNAL \mux1|MD~5_combout\ : std_logic;
SIGNAL \mux1|PC[4]~23_combout\ : std_logic;
SIGNAL \mux1|out_data~6_combout\ : std_logic;
SIGNAL \output2[4]~4_combout\ : std_logic;
SIGNAL \alu1|Add0~26_combout\ : std_logic;
SIGNAL \alu1|Add0~28_combout\ : std_logic;
SIGNAL \alu1|Add0~29_combout\ : std_logic;
SIGNAL \mar1|MAR_out~4_combout\ : std_logic;
SIGNAL \mar1|MAR_out~6_combout\ : std_logic;
SIGNAL \mem|Mem[10][17]~1_combout\ : std_logic;
SIGNAL \mem|Mem[12][17]~4_combout\ : std_logic;
SIGNAL \mem|Mem[12][17]~26_combout\ : std_logic;
SIGNAL \mem|Mem[12][14]~q\ : std_logic;
SIGNAL \mem|Mem[6][14]~q\ : std_logic;
SIGNAL \mem|Mem[4][14]~q\ : std_logic;
SIGNAL \mem|Mem~32_combout\ : std_logic;
SIGNAL \mem|Mem[5][14]~q\ : std_logic;
SIGNAL \mem|out_dat_add~113_combout\ : std_logic;
SIGNAL \mem|out_dat_add~114_combout\ : std_logic;
SIGNAL \mem|Mem[9][14]~feeder_combout\ : std_logic;
SIGNAL \mem|Mem[9][14]~q\ : std_logic;
SIGNAL \mem|Mem[11][14]~q\ : std_logic;
SIGNAL \mem|Mem[10][14]~feeder_combout\ : std_logic;
SIGNAL \mem|Mem[10][14]~q\ : std_logic;
SIGNAL \mem|Mem[8][14]~q\ : std_logic;
SIGNAL \mem|out_dat_add~115_combout\ : std_logic;
SIGNAL \mem|out_dat_add~116_combout\ : std_logic;
SIGNAL \mem|Mem[1][14]~feeder_combout\ : std_logic;
SIGNAL \mem|Mem[1][14]~q\ : std_logic;
SIGNAL \mem|Mem[3][14]~q\ : std_logic;
SIGNAL \mem|Mem[0][14]~q\ : std_logic;
SIGNAL \mem|Mem[2][14]~feeder_combout\ : std_logic;
SIGNAL \mem|Mem[2][14]~q\ : std_logic;
SIGNAL \mem|out_dat_add~117_combout\ : std_logic;
SIGNAL \mem|out_dat_add~118_combout\ : std_logic;
SIGNAL \mem|out_dat_add~119_combout\ : std_logic;
SIGNAL \mem|out_dat_add~120_combout\ : std_logic;
SIGNAL \mux1|MD~15_combout\ : std_logic;
SIGNAL \mux1|out_data~16_combout\ : std_logic;
SIGNAL \output2[14]~14_combout\ : std_logic;
SIGNAL \alu1|Add0~68_combout\ : std_logic;
SIGNAL \mux|IR~14_combout\ : std_logic;
SIGNAL \mux|AC[12]~feeder_combout\ : std_logic;
SIGNAL \mux|IR[12]~feeder_combout\ : std_logic;
SIGNAL \mux|out_data~13_combout\ : std_logic;
SIGNAL \alu1|Add0~60_combout\ : std_logic;
SIGNAL \alu1|Add0~55\ : std_logic;
SIGNAL \alu1|Add0~58_combout\ : std_logic;
SIGNAL \alu1|Add0~61_combout\ : std_logic;
SIGNAL \mem|Mem[12][12]~feeder_combout\ : std_logic;
SIGNAL \mem|Mem[12][12]~q\ : std_logic;
SIGNAL \mem|Mem[1][12]~q\ : std_logic;
SIGNAL \mem|Mem[0][12]~q\ : std_logic;
SIGNAL \mem|Mem[2][12]~feeder_combout\ : std_logic;
SIGNAL \mem|Mem[2][12]~q\ : std_logic;
SIGNAL \mem|out_dat_add~101_combout\ : std_logic;
SIGNAL \mem|out_dat_add~102_combout\ : std_logic;
SIGNAL \mem|Mem[8][12]~q\ : std_logic;
SIGNAL \mem|out_dat_add~99_combout\ : std_logic;
SIGNAL \mem|Mem[11][12]~q\ : std_logic;
SIGNAL \mem|out_dat_add~100_combout\ : std_logic;
SIGNAL \mem|out_dat_add~103_combout\ : std_logic;
SIGNAL \mem|Mem[6][12]~q\ : std_logic;
SIGNAL \mem|Mem[4][12]~q\ : std_logic;
SIGNAL \mem|Mem~30_combout\ : std_logic;
SIGNAL \mem|Mem[5][12]~q\ : std_logic;
SIGNAL \mem|out_dat_add~97_combout\ : std_logic;
SIGNAL \mem|out_dat_add~98_combout\ : std_logic;
SIGNAL \mem|out_dat_add~104_combout\ : std_logic;
SIGNAL \mux1|MD~13_combout\ : std_logic;
SIGNAL \mux1|out_data~14_combout\ : std_logic;
SIGNAL \output2[12]~12_combout\ : std_logic;
SIGNAL \alu1|Add0~59\ : std_logic;
SIGNAL \alu1|Add0~62_combout\ : std_logic;
SIGNAL \mux|IR~15_combout\ : std_logic;
SIGNAL \mux|IR[13]~feeder_combout\ : std_logic;
SIGNAL \mux|out_data~14_combout\ : std_logic;
SIGNAL \alu1|Add0~64_combout\ : std_logic;
SIGNAL \alu1|Add0~65_combout\ : std_logic;
SIGNAL \stack1|Stack~49_q\ : std_logic;
SIGNAL \stack1|Stack~67feeder_combout\ : std_logic;
SIGNAL \stack1|Stack~67_q\ : std_logic;
SIGNAL \stack1|Stack~98_combout\ : std_logic;
SIGNAL \stack1|Stack~13feeder_combout\ : std_logic;
SIGNAL \stack1|Stack~13_q\ : std_logic;
SIGNAL \stack1|Stack~99_combout\ : std_logic;
SIGNAL \mux1|out_data~15_combout\ : std_logic;
SIGNAL \output2[13]~13_combout\ : std_logic;
SIGNAL \alu1|Add0~63\ : std_logic;
SIGNAL \alu1|Add0~66_combout\ : std_logic;
SIGNAL \alu1|Add0~69_combout\ : std_logic;
SIGNAL \mux|IR~16_combout\ : std_logic;
SIGNAL \mux|IR[14]~feeder_combout\ : std_logic;
SIGNAL \mux|out_data~15_combout\ : std_logic;
SIGNAL \alu1|Add0~67\ : std_logic;
SIGNAL \alu1|Add0~70_combout\ : std_logic;
SIGNAL \alu1|Add0~73_combout\ : std_logic;
SIGNAL \stack1|Stack~69feeder_combout\ : std_logic;
SIGNAL \stack1|Stack~69_q\ : std_logic;
SIGNAL \stack1|Stack~51_q\ : std_logic;
SIGNAL \stack1|Stack~102_combout\ : std_logic;
SIGNAL \stack1|Stack~15feeder_combout\ : std_logic;
SIGNAL \stack1|Stack~15_q\ : std_logic;
SIGNAL \stack1|Stack~103_combout\ : std_logic;
SIGNAL \mem|Mem[12][15]~q\ : std_logic;
SIGNAL \mem|Mem~33_combout\ : std_logic;
SIGNAL \mem|Mem[7][15]~q\ : std_logic;
SIGNAL \mem|Mem[4][15]~q\ : std_logic;
SIGNAL \mem|Mem[6][15]~feeder_combout\ : std_logic;
SIGNAL \mem|Mem[6][15]~q\ : std_logic;
SIGNAL \mem|out_dat_add~123_combout\ : std_logic;
SIGNAL \mem|out_dat_add~124_combout\ : std_logic;
SIGNAL \mem|Mem[3][15]~q\ : std_logic;
SIGNAL \mem|Mem[2][15]~q\ : std_logic;
SIGNAL \mem|Mem[0][15]~q\ : std_logic;
SIGNAL \mem|out_dat_add~125_combout\ : std_logic;
SIGNAL \mem|out_dat_add~126_combout\ : std_logic;
SIGNAL \mem|out_dat_add~127_combout\ : std_logic;
SIGNAL \mem|out_dat_add~128_combout\ : std_logic;
SIGNAL \mux1|MD~16_combout\ : std_logic;
SIGNAL \mux1|out_data~17_combout\ : std_logic;
SIGNAL \output2[15]~15_combout\ : std_logic;
SIGNAL \alu1|Add0~71\ : std_logic;
SIGNAL \alu1|Add0~75_combout\ : std_logic;
SIGNAL \cb|aluop[0]~12_combout\ : std_logic;
SIGNAL \cb|aluop[0]~10_combout\ : std_logic;
SIGNAL \cb|aluop[0]~11_combout\ : std_logic;
SIGNAL \cb|aluop[0]~13_combout\ : std_logic;
SIGNAL \cb|aluop[0]~14_combout\ : std_logic;
SIGNAL \alu1|Add0~74_combout\ : std_logic;
SIGNAL \alu1|Add0~77_combout\ : std_logic;
SIGNAL \mux|IR~18_combout\ : std_logic;
SIGNAL \mux|IR[16]~feeder_combout\ : std_logic;
SIGNAL \cb|Equal1~1_combout\ : std_logic;
SIGNAL \cb|Mux0~3_combout\ : std_logic;
SIGNAL \cb|Mux0~4_combout\ : std_logic;
SIGNAL \cb|Mux0~5_combout\ : std_logic;
SIGNAL \cb|Mux0~0_combout\ : std_logic;
SIGNAL \cb|Mux0~6_combout\ : std_logic;
SIGNAL \cb|ir_read~q\ : std_logic;
SIGNAL \mux|IR[16]~1_combout\ : std_logic;
SIGNAL \mux|IR[16]~2_combout\ : std_logic;
SIGNAL \cb|Mux6~1_combout\ : std_logic;
SIGNAL \cb|Mux6~3_combout\ : std_logic;
SIGNAL \cb|ac_read~q\ : std_logic;
SIGNAL \mux|AC[17]~feeder_combout\ : std_logic;
SIGNAL \mux|out_data~18_combout\ : std_logic;
SIGNAL \alu1|Add0~78_combout\ : std_logic;
SIGNAL \mux1|out_data~19_combout\ : std_logic;
SIGNAL \output2[17]~17_combout\ : std_logic;
SIGNAL \alu1|Add0~83_combout\ : std_logic;
SIGNAL \alu1|Add0~76\ : std_logic;
SIGNAL \alu1|Add0~79_combout\ : std_logic;
SIGNAL \alu1|Add0~81_combout\ : std_logic;
SIGNAL \mux|IR~19_combout\ : std_logic;
SIGNAL \mux|IR[17]~feeder_combout\ : std_logic;
SIGNAL \cb|Mux3~1_combout\ : std_logic;
SIGNAL \cb|Mux3~0_combout\ : std_logic;
SIGNAL \cb|Mux3~2_combout\ : std_logic;
SIGNAL \cb|Mux5~8_combout\ : std_logic;
SIGNAL \cb|Mux4~0_combout\ : std_logic;
SIGNAL \cb|Mux5~5_combout\ : std_logic;
SIGNAL \cb|Mux5~6_combout\ : std_logic;
SIGNAL \cb|Mux2~2_combout\ : std_logic;
SIGNAL \cb|Mux2~5_combout\ : std_logic;
SIGNAL \cb|Mux2~4_combout\ : std_logic;
SIGNAL \cb|Mux4~1_combout\ : std_logic;
SIGNAL \cb|Mux4~2_combout\ : std_logic;
SIGNAL \cb|Mux12~0_combout\ : std_logic;
SIGNAL \cb|aluop[1]~16_combout\ : std_logic;
SIGNAL \cb|aluop[1]~17_combout\ : std_logic;
SIGNAL \cb|aluop[1]~0_combout\ : std_logic;
SIGNAL \cb|Selector4~0_combout\ : std_logic;
SIGNAL \cb|aluop[1]~18_combout\ : std_logic;
SIGNAL \alu1|Mux1~0_combout\ : std_logic;
SIGNAL \alu1|Add0~8_combout\ : std_logic;
SIGNAL \alu1|Add0~12_combout\ : std_logic;
SIGNAL \alu1|Add0~13_combout\ : std_logic;
SIGNAL \aluOut[0]~reg0feeder_combout\ : std_logic;
SIGNAL \aluOut[0]~reg0_q\ : std_logic;
SIGNAL \aluOut[1]~reg0feeder_combout\ : std_logic;
SIGNAL \aluOut[1]~reg0_q\ : std_logic;
SIGNAL \aluOut[2]~reg0feeder_combout\ : std_logic;
SIGNAL \aluOut[2]~reg0_q\ : std_logic;
SIGNAL \aluOut[3]~reg0feeder_combout\ : std_logic;
SIGNAL \aluOut[3]~reg0_q\ : std_logic;
SIGNAL \aluOut[4]~reg0feeder_combout\ : std_logic;
SIGNAL \aluOut[4]~reg0_q\ : std_logic;
SIGNAL \aluOut[5]~reg0feeder_combout\ : std_logic;
SIGNAL \aluOut[5]~reg0_q\ : std_logic;
SIGNAL \aluOut[6]~reg0feeder_combout\ : std_logic;
SIGNAL \aluOut[6]~reg0_q\ : std_logic;
SIGNAL \aluOut[7]~reg0feeder_combout\ : std_logic;
SIGNAL \aluOut[7]~reg0_q\ : std_logic;
SIGNAL \aluOut[8]~reg0feeder_combout\ : std_logic;
SIGNAL \aluOut[8]~reg0_q\ : std_logic;
SIGNAL \aluOut[9]~reg0feeder_combout\ : std_logic;
SIGNAL \aluOut[9]~reg0_q\ : std_logic;
SIGNAL \aluOut[10]~reg0feeder_combout\ : std_logic;
SIGNAL \aluOut[10]~reg0_q\ : std_logic;
SIGNAL \aluOut[11]~reg0feeder_combout\ : std_logic;
SIGNAL \aluOut[11]~reg0_q\ : std_logic;
SIGNAL \aluOut[12]~reg0feeder_combout\ : std_logic;
SIGNAL \aluOut[12]~reg0_q\ : std_logic;
SIGNAL \aluOut[13]~reg0feeder_combout\ : std_logic;
SIGNAL \aluOut[13]~reg0_q\ : std_logic;
SIGNAL \aluOut[14]~reg0feeder_combout\ : std_logic;
SIGNAL \aluOut[14]~reg0_q\ : std_logic;
SIGNAL \aluOut[15]~reg0feeder_combout\ : std_logic;
SIGNAL \aluOut[15]~reg0_q\ : std_logic;
SIGNAL \aluOut[16]~reg0feeder_combout\ : std_logic;
SIGNAL \aluOut[16]~reg0_q\ : std_logic;
SIGNAL \aluOut[17]~reg0feeder_combout\ : std_logic;
SIGNAL \aluOut[17]~reg0_q\ : std_logic;
SIGNAL \stack1|SP\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \stack1|out_stack_data\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \cb|aluop\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \cb|count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \alu1|out\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \mem|out_dat_add\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \mux|AC\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \mux|IR\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \mux|opcode\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \mux|out_data\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \mar1|MAR\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mar1|MAR_out\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mux1|MD\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \mux1|PC\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mux1|out_data\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \cb|ALT_INV_count\ : std_logic_vector(3 DOWNTO 3);
SIGNAL \cb|ALT_INV_inc_pc~q\ : std_logic;
SIGNAL \ALT_INV_rst~input_o\ : std_logic;

BEGIN

aluOut <= ww_aluOut;
ww_clk <= clk;
ww_rst <= rst;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\alu1|out[17]~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \alu1|out[17]~0_combout\);
\cb|ALT_INV_count\(3) <= NOT \cb|count\(3);
\cb|ALT_INV_inc_pc~q\ <= NOT \cb|inc_pc~q\;
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;

-- Location: FF_X16_Y18_N25
\stack1|out_stack_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \stack1|Stack~73_combout\,
	sclr => \rst~input_o\,
	ena => \stack1|out_stack_data[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack1|out_stack_data\(0));

-- Location: FF_X20_Y18_N1
\mux1|out_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux1|out_data~0_combout\,
	sclr => \rst~input_o\,
	ena => \mux1|out_data[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux1|out_data\(0));

-- Location: FF_X16_Y18_N11
\stack1|out_stack_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \stack1|Stack~83_combout\,
	sclr => \rst~input_o\,
	ena => \stack1|out_stack_data[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack1|out_stack_data\(5));

-- Location: FF_X19_Y18_N25
\mux1|out_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux1|out_data~7_combout\,
	sclr => \rst~input_o\,
	ena => \mux1|out_data[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux1|out_data\(5));

-- Location: LCCOMB_X20_Y18_N24
\alu1|Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alu1|Add0~30_combout\ = (\output2[5]~5_combout\ & ((\mux|out_data\(5) & (\alu1|Add0~27\ & VCC)) # (!\mux|out_data\(5) & (!\alu1|Add0~27\)))) # (!\output2[5]~5_combout\ & ((\mux|out_data\(5) & (!\alu1|Add0~27\)) # (!\mux|out_data\(5) & ((\alu1|Add0~27\) # 
-- (GND)))))
-- \alu1|Add0~31\ = CARRY((\output2[5]~5_combout\ & (!\mux|out_data\(5) & !\alu1|Add0~27\)) # (!\output2[5]~5_combout\ & ((!\alu1|Add0~27\) # (!\mux|out_data\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \output2[5]~5_combout\,
	datab => \mux|out_data\(5),
	datad => VCC,
	cin => \alu1|Add0~27\,
	combout => \alu1|Add0~30_combout\,
	cout => \alu1|Add0~31\);

-- Location: FF_X19_Y14_N5
\mux|out_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux|out_data~7_combout\,
	sclr => \rst~input_o\,
	ena => \mux|out_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|out_data\(6));

-- Location: FF_X16_Y18_N23
\stack1|out_stack_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \stack1|Stack~87_combout\,
	sclr => \rst~input_o\,
	ena => \stack1|out_stack_data[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack1|out_stack_data\(7));

-- Location: FF_X19_Y18_N21
\mux1|out_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux1|out_data~9_combout\,
	sclr => \rst~input_o\,
	ena => \mux1|out_data[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux1|out_data\(7));

-- Location: FF_X19_Y14_N29
\mux|out_data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux|out_data~11_combout\,
	sclr => \rst~input_o\,
	ena => \mux|out_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|out_data\(10));

-- Location: FF_X19_Y19_N7
\stack1|out_stack_data[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \stack1|Stack~97_combout\,
	sclr => \rst~input_o\,
	ena => \stack1|out_stack_data[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack1|out_stack_data\(12));

-- Location: FF_X19_Y19_N13
\stack1|out_stack_data[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \stack1|Stack~107_combout\,
	sclr => \rst~input_o\,
	ena => \stack1|out_stack_data[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack1|out_stack_data\(17));

-- Location: FF_X19_Y17_N17
\mux1|MD[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux1|MD~0_combout\,
	sclr => \rst~input_o\,
	ena => \mux1|MD[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux1|MD\(0));

-- Location: FF_X19_Y17_N3
\mux1|MD[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux1|MD~2_combout\,
	sclr => \rst~input_o\,
	ena => \mux1|MD[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux1|MD\(1));

-- Location: FF_X19_Y17_N13
\mux1|MD[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux1|MD~3_combout\,
	sclr => \rst~input_o\,
	ena => \mux1|MD[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux1|MD\(2));

-- Location: FF_X19_Y17_N27
\mux1|MD[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux1|MD~6_combout\,
	sclr => \rst~input_o\,
	ena => \mux1|MD[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux1|MD\(5));

-- Location: FF_X19_Y17_N29
\mux1|MD[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux1|MD~7_combout\,
	sclr => \rst~input_o\,
	ena => \mux1|MD[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux1|MD\(6));

-- Location: FF_X19_Y17_N31
\mux1|MD[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux1|MD~8_combout\,
	sclr => \rst~input_o\,
	ena => \mux1|MD[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux1|MD\(7));

-- Location: FF_X17_Y17_N23
\mux1|PC[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux1|PC[9]~33_combout\,
	asdata => \alu1|out\(9),
	sclr => \rst~input_o\,
	sload => \cb|ALT_INV_inc_pc~q\,
	ena => \mux1|PC[8]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux1|PC\(9));

-- Location: FF_X19_Y17_N5
\mux1|MD[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux1|MD~11_combout\,
	sclr => \rst~input_o\,
	ena => \mux1|MD[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux1|MD\(10));

-- Location: FF_X19_Y17_N15
\mux1|MD[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux1|MD~12_combout\,
	sclr => \rst~input_o\,
	ena => \mux1|MD[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux1|MD\(11));

-- Location: FF_X17_Y17_N29
\mux1|PC[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux1|PC[12]~39_combout\,
	asdata => \alu1|out\(12),
	sclr => \rst~input_o\,
	sload => \cb|ALT_INV_inc_pc~q\,
	ena => \mux1|PC[8]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux1|PC\(12));

-- Location: FF_X19_Y17_N11
\mux1|MD[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux1|MD~14_combout\,
	sclr => \rst~input_o\,
	ena => \mux1|MD[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux1|MD\(13));

-- Location: FF_X20_Y20_N31
\mux1|MD[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux1|MD~17_combout\,
	sclr => \rst~input_o\,
	ena => \mux1|MD[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux1|MD\(16));

-- Location: FF_X20_Y20_N1
\mux1|MD[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux1|MD~18_combout\,
	sclr => \rst~input_o\,
	ena => \mux1|MD[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux1|MD\(17));

-- Location: FF_X21_Y20_N13
\cb|ir_write\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \cb|Selector4~2_combout\,
	sclr => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cb|ir_write~q\);

-- Location: FF_X23_Y13_N9
\mem|out_dat_add[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|out_dat_add~7_combout\,
	sclr => \rst~input_o\,
	ena => \mem|out_dat_add[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|out_dat_add\(0));

-- Location: FF_X23_Y13_N19
\mem|out_dat_add[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|out_dat_add~16_combout\,
	sclr => \rst~input_o\,
	ena => \mem|out_dat_add[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|out_dat_add\(1));

-- Location: FF_X23_Y13_N29
\mem|out_dat_add[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|out_dat_add~24_combout\,
	sclr => \rst~input_o\,
	ena => \mem|out_dat_add[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|out_dat_add\(2));

-- Location: FF_X23_Y13_N11
\mem|out_dat_add[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|out_dat_add~48_combout\,
	sclr => \rst~input_o\,
	ena => \mem|out_dat_add[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|out_dat_add\(5));

-- Location: FF_X23_Y13_N13
\mem|out_dat_add[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|out_dat_add~56_combout\,
	sclr => \rst~input_o\,
	ena => \mem|out_dat_add[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|out_dat_add\(6));

-- Location: FF_X23_Y13_N23
\mem|out_dat_add[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|out_dat_add~64_combout\,
	sclr => \rst~input_o\,
	ena => \mem|out_dat_add[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|out_dat_add\(7));

-- Location: LCCOMB_X17_Y17_N22
\mux1|PC[9]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux1|PC[9]~33_combout\ = (\mux1|PC\(9) & (!\mux1|PC[8]~32\)) # (!\mux1|PC\(9) & ((\mux1|PC[8]~32\) # (GND)))
-- \mux1|PC[9]~34\ = CARRY((!\mux1|PC[8]~32\) # (!\mux1|PC\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|PC\(9),
	datad => VCC,
	cin => \mux1|PC[8]~32\,
	combout => \mux1|PC[9]~33_combout\,
	cout => \mux1|PC[9]~34\);

-- Location: FF_X19_Y16_N11
\mem|out_dat_add[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|out_dat_add~88_combout\,
	sclr => \rst~input_o\,
	ena => \mem|out_dat_add[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|out_dat_add\(10));

-- Location: FF_X19_Y16_N13
\mem|out_dat_add[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|out_dat_add~96_combout\,
	sclr => \rst~input_o\,
	ena => \mem|out_dat_add[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|out_dat_add\(11));

-- Location: LCCOMB_X17_Y17_N26
\mux1|PC[11]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux1|PC[11]~37_combout\ = (\mux1|PC\(11) & (!\mux1|PC[10]~36\)) # (!\mux1|PC\(11) & ((\mux1|PC[10]~36\) # (GND)))
-- \mux1|PC[11]~38\ = CARRY((!\mux1|PC[10]~36\) # (!\mux1|PC\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|PC\(11),
	datad => VCC,
	cin => \mux1|PC[10]~36\,
	combout => \mux1|PC[11]~37_combout\,
	cout => \mux1|PC[11]~38\);

-- Location: LCCOMB_X17_Y17_N28
\mux1|PC[12]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux1|PC[12]~39_combout\ = \mux1|PC[11]~38\ $ (!\mux1|PC\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \mux1|PC\(12),
	cin => \mux1|PC[11]~38\,
	combout => \mux1|PC[12]~39_combout\);

-- Location: FF_X19_Y16_N17
\mem|out_dat_add[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|out_dat_add~112_combout\,
	sclr => \rst~input_o\,
	ena => \mem|out_dat_add[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|out_dat_add\(13));

-- Location: FF_X19_Y16_N15
\mem|out_dat_add[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|out_dat_add~136_combout\,
	sclr => \rst~input_o\,
	ena => \mem|out_dat_add[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|out_dat_add\(16));

-- Location: FF_X19_Y16_N25
\mem|out_dat_add[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|out_dat_add~144_combout\,
	sclr => \rst~input_o\,
	ena => \mem|out_dat_add[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|out_dat_add\(17));

-- Location: LCCOMB_X20_Y18_N12
\output2[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \output2[0]~0_combout\ = (\cb|stack_read~q\ & (\stack1|out_stack_data\(0))) # (!\cb|stack_read~q\ & ((\mux1|out_data\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cb|stack_read~q\,
	datac => \stack1|out_stack_data\(0),
	datad => \mux1|out_data\(0),
	combout => \output2[0]~0_combout\);

-- Location: LCCOMB_X19_Y18_N12
\output2[5]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \output2[5]~5_combout\ = (\cb|stack_read~q\ & ((\stack1|out_stack_data\(5)))) # (!\cb|stack_read~q\ & (\mux1|out_data\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux1|out_data\(5),
	datac => \stack1|out_stack_data\(5),
	datad => \cb|stack_read~q\,
	combout => \output2[5]~5_combout\);

-- Location: LCCOMB_X19_Y15_N4
\alu1|Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alu1|Add0~32_combout\ = (\output2[5]~5_combout\ & ((\alu1|Mux1~0_combout\) # ((\mux|out_data\(5) & \alu1|Add0~11_combout\)))) # (!\output2[5]~5_combout\ & (((\mux|out_data\(5) & \alu1|Add0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \output2[5]~5_combout\,
	datab => \alu1|Mux1~0_combout\,
	datac => \mux|out_data\(5),
	datad => \alu1|Add0~11_combout\,
	combout => \alu1|Add0~32_combout\);

-- Location: LCCOMB_X19_Y15_N22
\alu1|Add0~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alu1|Add0~33_combout\ = (\alu1|Add0~32_combout\) # ((\alu1|Add0~10_combout\ & \alu1|Add0~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu1|Add0~32_combout\,
	datac => \alu1|Add0~10_combout\,
	datad => \alu1|Add0~30_combout\,
	combout => \alu1|Add0~33_combout\);

-- Location: LCCOMB_X19_Y18_N16
\output2[7]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \output2[7]~7_combout\ = (\cb|stack_read~q\ & ((\stack1|out_stack_data\(7)))) # (!\cb|stack_read~q\ & (\mux1|out_data\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux1|out_data\(7),
	datac => \stack1|out_stack_data\(7),
	datad => \cb|stack_read~q\,
	combout => \output2[7]~7_combout\);

-- Location: FF_X17_Y19_N3
\mux1|out_data[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux1|out_data~18_combout\,
	ena => \mux1|out_data[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux1|out_data\(16));

-- Location: FF_X17_Y18_N25
\stack1|Stack~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \stack1|Stack~18feeder_combout\,
	ena => \stack1|Stack~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack1|Stack~18_q\);

-- Location: FF_X16_Y16_N17
\stack1|Stack~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \stack1|Stack~54feeder_combout\,
	ena => \stack1|Stack~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack1|Stack~54_q\);

-- Location: FF_X16_Y16_N27
\stack1|Stack~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \alu1|out\(0),
	sload => VCC,
	ena => \stack1|Stack~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack1|Stack~36_q\);

-- Location: LCCOMB_X16_Y16_N26
\stack1|Stack~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stack1|Stack~72_combout\ = (\stack1|SP\(1) & (\stack1|SP\(0) & (\stack1|Stack~36_q\))) # (!\stack1|SP\(1) & ((\stack1|SP\(0)) # ((\stack1|Stack~54_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack1|SP\(1),
	datab => \stack1|SP\(0),
	datac => \stack1|Stack~36_q\,
	datad => \stack1|Stack~54_q\,
	combout => \stack1|Stack~72_combout\);

-- Location: FF_X17_Y18_N3
\stack1|Stack~0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \stack1|Stack~0feeder_combout\,
	ena => \stack1|Stack~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack1|Stack~0_q\);

-- Location: LCCOMB_X16_Y18_N24
\stack1|Stack~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stack1|Stack~73_combout\ = (\stack1|Stack~72_combout\ & ((\stack1|Stack~0_q\) # ((!\stack1|Add0~0_combout\)))) # (!\stack1|Stack~72_combout\ & (((\stack1|Add0~0_combout\ & \stack1|Stack~18_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack1|Stack~0_q\,
	datab => \stack1|Stack~72_combout\,
	datac => \stack1|Add0~0_combout\,
	datad => \stack1|Stack~18_q\,
	combout => \stack1|Stack~73_combout\);

-- Location: LCCOMB_X20_Y18_N0
\mux1|out_data~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux1|out_data~0_combout\ = (\cb|md_read~q\ & ((\mux1|MD\(0)))) # (!\cb|md_read~q\ & (\mux1|PC\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|PC\(0),
	datac => \mux1|MD\(0),
	datad => \cb|md_read~q\,
	combout => \mux1|out_data~0_combout\);

-- Location: LCCOMB_X21_Y21_N2
\cb|aluop[2]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb|aluop[2]~5_combout\ = (!\mux|opcode\(0) & (!\mux|opcode\(1) & (\mux|opcode\(2) $ (\cb|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|opcode\(2),
	datab => \cb|count\(0),
	datac => \mux|opcode\(0),
	datad => \mux|opcode\(1),
	combout => \cb|aluop[2]~5_combout\);

-- Location: LCCOMB_X21_Y21_N26
\cb|aluop[2]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb|aluop[2]~6_combout\ = (\cb|count\(1) & (((!\cb|aluop[2]~5_combout\)))) # (!\cb|count\(1) & (!\cb|Equal1~0_combout\ & (\cb|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb|Equal1~0_combout\,
	datab => \cb|count\(1),
	datac => \cb|count\(0),
	datad => \cb|aluop[2]~5_combout\,
	combout => \cb|aluop[2]~6_combout\);

-- Location: LCCOMB_X22_Y21_N24
\cb|aluop~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb|aluop~15_combout\ = (\cb|aluop\(1)) # ((\mux|opcode\(1) & (!\mux|opcode\(2) & \mux|opcode\(0))) # (!\mux|opcode\(1) & (\mux|opcode\(2) & !\mux|opcode\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb|aluop\(1),
	datab => \mux|opcode\(1),
	datac => \mux|opcode\(2),
	datad => \mux|opcode\(0),
	combout => \cb|aluop~15_combout\);

-- Location: FF_X16_Y16_N5
\stack1|Stack~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \stack1|Stack~37feeder_combout\,
	ena => \stack1|Stack~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack1|Stack~37_q\);

-- Location: FF_X16_Y16_N7
\stack1|Stack~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \stack1|Stack~55feeder_combout\,
	ena => \stack1|Stack~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack1|Stack~55_q\);

-- Location: FF_X17_Y18_N27
\stack1|Stack~2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \stack1|Stack~2feeder_combout\,
	ena => \stack1|Stack~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack1|Stack~2_q\);

-- Location: FF_X16_Y16_N3
\stack1|Stack~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \stack1|Stack~57feeder_combout\,
	ena => \stack1|Stack~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack1|Stack~57_q\);

-- Location: FF_X17_Y18_N23
\stack1|Stack~3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \stack1|Stack~3feeder_combout\,
	ena => \stack1|Stack~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack1|Stack~3_q\);

-- Location: FF_X16_Y16_N13
\stack1|Stack~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \stack1|Stack~58feeder_combout\,
	ena => \stack1|Stack~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack1|Stack~58_q\);

-- Location: FF_X16_Y16_N31
\stack1|Stack~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \alu1|out\(4),
	sload => VCC,
	ena => \stack1|Stack~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack1|Stack~40_q\);

-- Location: LCCOMB_X16_Y16_N30
\stack1|Stack~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stack1|Stack~80_combout\ = (\stack1|SP\(1) & (\stack1|SP\(0) & (\stack1|Stack~40_q\))) # (!\stack1|SP\(1) & ((\stack1|SP\(0)) # ((\stack1|Stack~58_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack1|SP\(1),
	datab => \stack1|SP\(0),
	datac => \stack1|Stack~40_q\,
	datad => \stack1|Stack~58_q\,
	combout => \stack1|Stack~80_combout\);

-- Location: FF_X22_Y12_N9
\mux|IR[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux|IR[4]~feeder_combout\,
	ena => \mux|IR[16]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|IR\(4));

-- Location: FF_X16_Y16_N1
\stack1|Stack~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \stack1|Stack~41feeder_combout\,
	ena => \stack1|Stack~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack1|Stack~41_q\);

-- Location: FF_X16_Y16_N11
\stack1|Stack~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \stack1|Stack~59feeder_combout\,
	ena => \stack1|Stack~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack1|Stack~59_q\);

-- Location: FF_X17_Y18_N5
\stack1|Stack~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \alu1|out\(5),
	sload => VCC,
	ena => \stack1|Stack~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack1|Stack~23_q\);

-- Location: LCCOMB_X17_Y18_N4
\stack1|Stack~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stack1|Stack~82_combout\ = (\stack1|SP\(0) & (((!\stack1|SP\(1))))) # (!\stack1|SP\(0) & ((\stack1|SP\(1) & ((\stack1|Stack~23_q\))) # (!\stack1|SP\(1) & (\stack1|Stack~59_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack1|Stack~59_q\,
	datab => \stack1|SP\(0),
	datac => \stack1|Stack~23_q\,
	datad => \stack1|SP\(1),
	combout => \stack1|Stack~82_combout\);

-- Location: FF_X17_Y18_N31
\stack1|Stack~5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \stack1|Stack~5feeder_combout\,
	ena => \stack1|Stack~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack1|Stack~5_q\);

-- Location: LCCOMB_X16_Y18_N10
\stack1|Stack~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stack1|Stack~83_combout\ = (\stack1|SP\(0) & ((\stack1|Stack~82_combout\ & (\stack1|Stack~5_q\)) # (!\stack1|Stack~82_combout\ & ((\stack1|Stack~41_q\))))) # (!\stack1|SP\(0) & (((\stack1|Stack~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack1|Stack~5_q\,
	datab => \stack1|SP\(0),
	datac => \stack1|Stack~41_q\,
	datad => \stack1|Stack~82_combout\,
	combout => \stack1|Stack~83_combout\);

-- Location: LCCOMB_X19_Y18_N24
\mux1|out_data~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux1|out_data~7_combout\ = (\cb|md_read~q\ & ((\mux1|MD\(5)))) # (!\cb|md_read~q\ & (\mux1|PC\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux1|PC\(5),
	datac => \mux1|MD\(5),
	datad => \cb|md_read~q\,
	combout => \mux1|out_data~7_combout\);

-- Location: FF_X21_Y15_N17
\mux|AC[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mux|IR~8_combout\,
	sload => VCC,
	ena => \mux|AC[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|AC\(6));

-- Location: FF_X22_Y12_N13
\mux|IR[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux|IR[6]~feeder_combout\,
	ena => \mux|IR[16]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|IR\(6));

-- Location: LCCOMB_X19_Y14_N4
\mux|out_data~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux|out_data~7_combout\ = (\cb|ac_read~q\ & ((\mux|AC\(6)))) # (!\cb|ac_read~q\ & (\mux|IR\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux|IR\(6),
	datac => \cb|ac_read~q\,
	datad => \mux|AC\(6),
	combout => \mux|out_data~7_combout\);

-- Location: FF_X16_Y16_N9
\stack1|Stack~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \stack1|Stack~43feeder_combout\,
	ena => \stack1|Stack~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack1|Stack~43_q\);

-- Location: FF_X16_Y16_N19
\stack1|Stack~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \stack1|Stack~61feeder_combout\,
	ena => \stack1|Stack~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack1|Stack~61_q\);

-- Location: FF_X17_Y18_N29
\stack1|Stack~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \alu1|out\(7),
	sload => VCC,
	ena => \stack1|Stack~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack1|Stack~25_q\);

-- Location: LCCOMB_X17_Y18_N28
\stack1|Stack~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stack1|Stack~86_combout\ = (\stack1|SP\(0) & (((!\stack1|SP\(1))))) # (!\stack1|SP\(0) & ((\stack1|SP\(1) & ((\stack1|Stack~25_q\))) # (!\stack1|SP\(1) & (\stack1|Stack~61_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack1|Stack~61_q\,
	datab => \stack1|SP\(0),
	datac => \stack1|Stack~25_q\,
	datad => \stack1|SP\(1),
	combout => \stack1|Stack~86_combout\);

-- Location: FF_X17_Y18_N15
\stack1|Stack~7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \stack1|Stack~7feeder_combout\,
	ena => \stack1|Stack~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack1|Stack~7_q\);

-- Location: LCCOMB_X16_Y18_N22
\stack1|Stack~87\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stack1|Stack~87_combout\ = (\stack1|Stack~86_combout\ & (((\stack1|Stack~7_q\) # (!\stack1|SP\(0))))) # (!\stack1|Stack~86_combout\ & (\stack1|Stack~43_q\ & ((\stack1|SP\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack1|Stack~43_q\,
	datab => \stack1|Stack~86_combout\,
	datac => \stack1|Stack~7_q\,
	datad => \stack1|SP\(0),
	combout => \stack1|Stack~87_combout\);

-- Location: LCCOMB_X19_Y18_N20
\mux1|out_data~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux1|out_data~9_combout\ = (\cb|md_read~q\ & (\mux1|MD\(7))) # (!\cb|md_read~q\ & ((\mux1|PC\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|MD\(7),
	datac => \mux1|PC\(7),
	datad => \cb|md_read~q\,
	combout => \mux1|out_data~9_combout\);

-- Location: FF_X21_Y19_N1
\stack1|Stack~8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \stack1|Stack~8feeder_combout\,
	ena => \stack1|Stack~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack1|Stack~8_q\);

-- Location: FF_X22_Y12_N17
\mux|IR[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux|IR[8]~feeder_combout\,
	ena => \mux|IR[16]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|IR\(8));

-- Location: FF_X21_Y19_N27
\stack1|Stack~9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \stack1|Stack~9feeder_combout\,
	ena => \stack1|Stack~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack1|Stack~9_q\);

-- Location: FF_X21_Y19_N13
\stack1|Stack~10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \stack1|Stack~10feeder_combout\,
	ena => \stack1|Stack~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack1|Stack~10_q\);

-- Location: FF_X20_Y15_N9
\mux|AC[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux|AC[10]~feeder_combout\,
	ena => \mux|AC[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|AC\(10));

-- Location: FF_X20_Y15_N19
\mux|IR[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux|IR[10]~feeder_combout\,
	ena => \mux|IR[16]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|IR\(10));

-- Location: LCCOMB_X19_Y14_N28
\mux|out_data~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux|out_data~11_combout\ = (\cb|ac_read~q\ & ((\mux|AC\(10)))) # (!\cb|ac_read~q\ & (\mux|IR\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb|ac_read~q\,
	datac => \mux|IR\(10),
	datad => \mux|AC\(10),
	combout => \mux|out_data~11_combout\);

-- Location: FF_X23_Y19_N13
\stack1|Stack~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \stack1|Stack~65feeder_combout\,
	ena => \stack1|Stack~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack1|Stack~65_q\);

-- Location: FF_X22_Y19_N1
\stack1|Stack~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \alu1|out\(11),
	sload => VCC,
	ena => \stack1|Stack~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack1|Stack~47_q\);

-- Location: LCCOMB_X22_Y19_N0
\stack1|Stack~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stack1|Stack~94_combout\ = (\stack1|SP\(1) & (((\stack1|Stack~47_q\ & \stack1|SP\(0))))) # (!\stack1|SP\(1) & ((\stack1|Stack~65_q\) # ((\stack1|SP\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack1|Stack~65_q\,
	datab => \stack1|SP\(1),
	datac => \stack1|Stack~47_q\,
	datad => \stack1|SP\(0),
	combout => \stack1|Stack~94_combout\);

-- Location: FF_X22_Y19_N19
\stack1|Stack~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \stack1|Stack~30feeder_combout\,
	ena => \stack1|Stack~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack1|Stack~30_q\);

-- Location: FF_X23_Y19_N23
\stack1|Stack~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \stack1|Stack~66feeder_combout\,
	ena => \stack1|Stack~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack1|Stack~66_q\);

-- Location: FF_X22_Y19_N29
\stack1|Stack~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \alu1|out\(12),
	sload => VCC,
	ena => \stack1|Stack~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack1|Stack~48_q\);

-- Location: LCCOMB_X22_Y19_N28
\stack1|Stack~96\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stack1|Stack~96_combout\ = (\stack1|SP\(0) & (((\stack1|Stack~48_q\)) # (!\stack1|SP\(1)))) # (!\stack1|SP\(0) & (!\stack1|SP\(1) & ((\stack1|Stack~66_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack1|SP\(0),
	datab => \stack1|SP\(1),
	datac => \stack1|Stack~48_q\,
	datad => \stack1|Stack~66_q\,
	combout => \stack1|Stack~96_combout\);

-- Location: FF_X21_Y19_N25
\stack1|Stack~12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \stack1|Stack~12feeder_combout\,
	ena => \stack1|Stack~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack1|Stack~12_q\);

-- Location: LCCOMB_X19_Y19_N6
\stack1|Stack~97\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stack1|Stack~97_combout\ = (\stack1|Add0~0_combout\ & ((\stack1|Stack~96_combout\ & (\stack1|Stack~12_q\)) # (!\stack1|Stack~96_combout\ & ((\stack1|Stack~30_q\))))) # (!\stack1|Add0~0_combout\ & (\stack1|Stack~96_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack1|Add0~0_combout\,
	datab => \stack1|Stack~96_combout\,
	datac => \stack1|Stack~12_q\,
	datad => \stack1|Stack~30_q\,
	combout => \stack1|Stack~97_combout\);

-- Location: FF_X22_Y19_N15
\stack1|Stack~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \stack1|Stack~31feeder_combout\,
	ena => \stack1|Stack~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack1|Stack~31_q\);

-- Location: FF_X21_Y19_N23
\stack1|Stack~14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \stack1|Stack~14feeder_combout\,
	ena => \stack1|Stack~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack1|Stack~14_q\);

-- Location: FF_X22_Y19_N3
\stack1|Stack~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \stack1|Stack~33feeder_combout\,
	ena => \stack1|Stack~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack1|Stack~33_q\);

-- Location: FF_X23_Y19_N21
\stack1|Stack~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \stack1|Stack~70feeder_combout\,
	ena => \stack1|Stack~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack1|Stack~70_q\);

-- Location: FF_X22_Y19_N23
\stack1|Stack~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \alu1|out\(16),
	sload => VCC,
	ena => \stack1|Stack~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack1|Stack~52_q\);

-- Location: LCCOMB_X22_Y19_N22
\stack1|Stack~104\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stack1|Stack~104_combout\ = (\stack1|SP\(1) & (((\stack1|Stack~52_q\ & \stack1|SP\(0))))) # (!\stack1|SP\(1) & ((\stack1|Stack~70_q\) # ((\stack1|SP\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack1|SP\(1),
	datab => \stack1|Stack~70_q\,
	datac => \stack1|Stack~52_q\,
	datad => \stack1|SP\(0),
	combout => \stack1|Stack~104_combout\);

-- Location: LCCOMB_X17_Y19_N2
\mux1|out_data~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux1|out_data~18_combout\ = (!\rst~input_o\ & (\mux1|MD\(16) & \cb|md_read~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datac => \mux1|MD\(16),
	datad => \cb|md_read~q\,
	combout => \mux1|out_data~18_combout\);

-- Location: FF_X21_Y19_N7
\stack1|Stack~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \stack1|Stack~35feeder_combout\,
	ena => \stack1|Stack~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack1|Stack~35_q\);

-- Location: FF_X23_Y19_N7
\stack1|Stack~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \stack1|Stack~71feeder_combout\,
	ena => \stack1|Stack~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack1|Stack~71_q\);

-- Location: FF_X23_Y19_N1
\stack1|Stack~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \alu1|out\(17),
	sload => VCC,
	ena => \stack1|Stack~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack1|Stack~53_q\);

-- Location: LCCOMB_X23_Y19_N0
\stack1|Stack~106\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stack1|Stack~106_combout\ = (\stack1|SP\(0) & (((\stack1|Stack~53_q\)) # (!\stack1|SP\(1)))) # (!\stack1|SP\(0) & (!\stack1|SP\(1) & ((\stack1|Stack~71_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack1|SP\(0),
	datab => \stack1|SP\(1),
	datac => \stack1|Stack~53_q\,
	datad => \stack1|Stack~71_q\,
	combout => \stack1|Stack~106_combout\);

-- Location: FF_X21_Y19_N17
\stack1|Stack~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \stack1|Stack~17feeder_combout\,
	ena => \stack1|Stack~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack1|Stack~17_q\);

-- Location: LCCOMB_X19_Y19_N12
\stack1|Stack~107\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stack1|Stack~107_combout\ = (\stack1|Add0~0_combout\ & ((\stack1|Stack~106_combout\ & (\stack1|Stack~17_q\)) # (!\stack1|Stack~106_combout\ & ((\stack1|Stack~35_q\))))) # (!\stack1|Add0~0_combout\ & (((\stack1|Stack~106_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack1|Stack~17_q\,
	datab => \stack1|Stack~35_q\,
	datac => \stack1|Add0~0_combout\,
	datad => \stack1|Stack~106_combout\,
	combout => \stack1|Stack~107_combout\);

-- Location: LCCOMB_X22_Y21_N28
\cb|Mux6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb|Mux6~2_combout\ = (!\mux|opcode\(2) & (!\mux|opcode\(0) & (\mux|opcode\(1) $ (\cb|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|opcode\(1),
	datab => \mux|opcode\(2),
	datac => \mux|opcode\(0),
	datad => \cb|count\(0),
	combout => \cb|Mux6~2_combout\);

-- Location: LCCOMB_X23_Y21_N12
\cb|md_write_mem~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb|md_write_mem~1_combout\ = (\mux|opcode\(1)) # (\mux|opcode\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux|opcode\(1),
	datad => \mux|opcode\(2),
	combout => \cb|md_write_mem~1_combout\);

-- Location: LCCOMB_X21_Y21_N10
\cb|Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb|Mux0~1_combout\ = (\cb|count\(3) & ((\cb|count\(2) & ((\cb|ir_read~q\))) # (!\cb|count\(2) & (\cb|count\(1))))) # (!\cb|count\(3) & (((\cb|ir_read~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb|count\(3),
	datab => \cb|count\(1),
	datac => \cb|ir_read~q\,
	datad => \cb|count\(2),
	combout => \cb|Mux0~1_combout\);

-- Location: LCCOMB_X22_Y21_N20
\cb|Mux0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb|Mux0~2_combout\ = (\mux|opcode\(2) & (((!\mux|opcode\(0) & !\mux|opcode\(1))) # (!\cb|count\(0)))) # (!\mux|opcode\(2) & (((\mux|opcode\(0) & \mux|opcode\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb|count\(0),
	datab => \mux|opcode\(0),
	datac => \mux|opcode\(1),
	datad => \mux|opcode\(2),
	combout => \cb|Mux0~2_combout\);

-- Location: LCCOMB_X19_Y17_N16
\mux1|MD~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux1|MD~0_combout\ = (\cb|md_write_mem~q\ & ((\mem|out_dat_add\(0)))) # (!\cb|md_write_mem~q\ & (\alu1|out\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|out\(0),
	datac => \cb|md_write_mem~q\,
	datad => \mem|out_dat_add\(0),
	combout => \mux1|MD~0_combout\);

-- Location: LCCOMB_X22_Y20_N26
\cb|Mux2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb|Mux2~3_combout\ = ((!\mux|opcode\(1) & !\mux|opcode\(0))) # (!\mux|opcode\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux|opcode\(1),
	datac => \mux|opcode\(0),
	datad => \mux|opcode\(2),
	combout => \cb|Mux2~3_combout\);

-- Location: LCCOMB_X22_Y20_N28
\cb|Mux5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb|Mux5~4_combout\ = (\cb|count\(3) & \cb|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cb|count\(3),
	datac => \cb|count\(0),
	combout => \cb|Mux5~4_combout\);

-- Location: LCCOMB_X19_Y17_N2
\mux1|MD~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux1|MD~2_combout\ = (\cb|md_write_mem~q\ & (\mem|out_dat_add\(1))) # (!\cb|md_write_mem~q\ & ((\alu1|out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|out_dat_add\(1),
	datab => \alu1|out\(1),
	datac => \cb|md_write_mem~q\,
	combout => \mux1|MD~2_combout\);

-- Location: LCCOMB_X19_Y17_N12
\mux1|MD~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux1|MD~3_combout\ = (\cb|md_write_mem~q\ & ((\mem|out_dat_add\(2)))) # (!\cb|md_write_mem~q\ & (\alu1|out\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu1|out\(2),
	datac => \cb|md_write_mem~q\,
	datad => \mem|out_dat_add\(2),
	combout => \mux1|MD~3_combout\);

-- Location: LCCOMB_X19_Y17_N26
\mux1|MD~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux1|MD~6_combout\ = (\cb|md_write_mem~q\ & ((\mem|out_dat_add\(5)))) # (!\cb|md_write_mem~q\ & (\alu1|out\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu1|out\(5),
	datac => \cb|md_write_mem~q\,
	datad => \mem|out_dat_add\(5),
	combout => \mux1|MD~6_combout\);

-- Location: LCCOMB_X19_Y17_N28
\mux1|MD~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux1|MD~7_combout\ = (\cb|md_write_mem~q\ & ((\mem|out_dat_add\(6)))) # (!\cb|md_write_mem~q\ & (\alu1|out\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|out\(6),
	datab => \mem|out_dat_add\(6),
	datac => \cb|md_write_mem~q\,
	combout => \mux1|MD~7_combout\);

-- Location: LCCOMB_X21_Y15_N28
\mux|IR~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux|IR~8_combout\ = (\alu1|out\(6) & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|out\(6),
	datad => \rst~input_o\,
	combout => \mux|IR~8_combout\);

-- Location: LCCOMB_X19_Y17_N30
\mux1|MD~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux1|MD~8_combout\ = (\cb|md_write_mem~q\ & (\mem|out_dat_add\(7))) # (!\cb|md_write_mem~q\ & ((\alu1|out\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|out_dat_add\(7),
	datab => \alu1|out\(7),
	datac => \cb|md_write_mem~q\,
	combout => \mux1|MD~8_combout\);

-- Location: LCCOMB_X19_Y17_N4
\mux1|MD~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux1|MD~11_combout\ = (\cb|md_write_mem~q\ & ((\mem|out_dat_add\(10)))) # (!\cb|md_write_mem~q\ & (\alu1|out\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|out\(10),
	datab => \mem|out_dat_add\(10),
	datac => \cb|md_write_mem~q\,
	combout => \mux1|MD~11_combout\);

-- Location: LCCOMB_X23_Y14_N8
\mux|IR~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux|IR~12_combout\ = (!\rst~input_o\ & \alu1|out\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datad => \alu1|out\(10),
	combout => \mux|IR~12_combout\);

-- Location: LCCOMB_X19_Y17_N14
\mux1|MD~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux1|MD~12_combout\ = (\cb|md_write_mem~q\ & ((\mem|out_dat_add\(11)))) # (!\cb|md_write_mem~q\ & (\alu1|out\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|out\(11),
	datac => \cb|md_write_mem~q\,
	datad => \mem|out_dat_add\(11),
	combout => \mux1|MD~12_combout\);

-- Location: LCCOMB_X19_Y17_N10
\mux1|MD~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux1|MD~14_combout\ = (\cb|md_write_mem~q\ & (\mem|out_dat_add\(13))) # (!\cb|md_write_mem~q\ & ((\alu1|out\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|out_dat_add\(13),
	datac => \cb|md_write_mem~q\,
	datad => \alu1|out\(13),
	combout => \mux1|MD~14_combout\);

-- Location: LCCOMB_X20_Y20_N30
\mux1|MD~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux1|MD~17_combout\ = (\cb|md_write_mem~q\ & (\mem|out_dat_add\(16))) # (!\cb|md_write_mem~q\ & ((\alu1|out\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb|md_write_mem~q\,
	datac => \mem|out_dat_add\(16),
	datad => \alu1|out\(16),
	combout => \mux1|MD~17_combout\);

-- Location: LCCOMB_X20_Y20_N0
\mux1|MD~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux1|MD~18_combout\ = (\cb|md_write_mem~q\ & ((\mem|out_dat_add\(17)))) # (!\cb|md_write_mem~q\ & (\alu1|out\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb|md_write_mem~q\,
	datab => \alu1|out\(17),
	datac => \mem|out_dat_add\(17),
	combout => \mux1|MD~18_combout\);

-- Location: LCCOMB_X21_Y20_N14
\cb|Selector4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb|Selector4~1_combout\ = (\cb|count\(3)) # ((\mux|opcode\(2) & ((\mux|opcode\(0)) # (\mux|opcode\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|opcode\(0),
	datab => \mux|opcode\(1),
	datac => \cb|count\(3),
	datad => \mux|opcode\(2),
	combout => \cb|Selector4~1_combout\);

-- Location: LCCOMB_X21_Y20_N12
\cb|Selector4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb|Selector4~2_combout\ = (\cb|Selector4~0_combout\ & ((\cb|Decoder0~0_combout\) # ((\cb|Selector4~1_combout\ & \cb|ir_write~q\)))) # (!\cb|Selector4~0_combout\ & (((\cb|ir_write~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb|Selector4~0_combout\,
	datab => \cb|Selector4~1_combout\,
	datac => \cb|ir_write~q\,
	datad => \cb|Decoder0~0_combout\,
	combout => \cb|Selector4~2_combout\);

-- Location: LCCOMB_X23_Y21_N30
\cb|stack_write~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb|stack_write~0_combout\ = (\mux|opcode\(1) & (!\mux|opcode\(2) & (!\rst~input_o\ & \mux|opcode\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|opcode\(1),
	datab => \mux|opcode\(2),
	datac => \rst~input_o\,
	datad => \mux|opcode\(0),
	combout => \cb|stack_write~0_combout\);

-- Location: FF_X22_Y14_N11
\mem|Mem[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem~0_combout\,
	ena => \mem|Mem[6][2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[6][0]~q\);

-- Location: FF_X21_Y14_N3
\mem|Mem[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem[5][0]~feeder_combout\,
	ena => \mem|Mem[5][9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[5][0]~q\);

-- Location: FF_X21_Y15_N15
\mem|Mem[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mux|IR~0_combout\,
	sload => VCC,
	ena => \mem|Mem[4][8]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[4][0]~q\);

-- Location: LCCOMB_X21_Y15_N14
\mem|out_dat_add~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~0_combout\ = (\mar1|MAR_out\(1) & (\mar1|MAR_out\(0))) # (!\mar1|MAR_out\(1) & ((\mar1|MAR_out\(0) & ((\mem|Mem[5][0]~q\))) # (!\mar1|MAR_out\(0) & (\mem|Mem[4][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(1),
	datab => \mar1|MAR_out\(0),
	datac => \mem|Mem[4][0]~q\,
	datad => \mem|Mem[5][0]~q\,
	combout => \mem|out_dat_add~0_combout\);

-- Location: FF_X22_Y13_N1
\mem|Mem[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux|IR~0_combout\,
	ena => \mem|Mem[7][3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[7][0]~q\);

-- Location: LCCOMB_X22_Y13_N18
\mem|out_dat_add~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~1_combout\ = (\mar1|MAR_out\(1) & ((\mem|out_dat_add~0_combout\ & ((\mem|Mem[7][0]~q\))) # (!\mem|out_dat_add~0_combout\ & (\mem|Mem[6][0]~q\)))) # (!\mar1|MAR_out\(1) & (((\mem|out_dat_add~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(1),
	datab => \mem|Mem[6][0]~q\,
	datac => \mem|out_dat_add~0_combout\,
	datad => \mem|Mem[7][0]~q\,
	combout => \mem|out_dat_add~1_combout\);

-- Location: FF_X22_Y15_N1
\mem|Mem[9][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mem|Mem~0_combout\,
	sload => VCC,
	ena => \mem|Mem[9][9]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[9][0]~q\);

-- Location: FF_X24_Y18_N9
\mem|Mem[10][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem[10][0]~feeder_combout\,
	ena => \mem|Mem[10][17]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[10][0]~q\);

-- Location: FF_X22_Y15_N23
\mem|Mem[8][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mux|IR~0_combout\,
	sload => VCC,
	ena => \mem|Mem[8][17]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[8][0]~q\);

-- Location: LCCOMB_X22_Y15_N22
\mem|out_dat_add~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~2_combout\ = (\mar1|MAR_out\(0) & (\mar1|MAR_out\(1))) # (!\mar1|MAR_out\(0) & ((\mar1|MAR_out\(1) & ((\mem|Mem[10][0]~q\))) # (!\mar1|MAR_out\(1) & (\mem|Mem[8][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(0),
	datab => \mar1|MAR_out\(1),
	datac => \mem|Mem[8][0]~q\,
	datad => \mem|Mem[10][0]~q\,
	combout => \mem|out_dat_add~2_combout\);

-- Location: FF_X21_Y18_N9
\mem|Mem[11][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \alu1|out\(0),
	sload => VCC,
	ena => \mem|Mem[11][17]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[11][0]~q\);

-- Location: LCCOMB_X21_Y18_N8
\mem|out_dat_add~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~3_combout\ = (\mar1|MAR_out\(0) & ((\mem|out_dat_add~2_combout\ & ((\mem|Mem[11][0]~q\))) # (!\mem|out_dat_add~2_combout\ & (\mem|Mem[9][0]~q\)))) # (!\mar1|MAR_out\(0) & (((\mem|out_dat_add~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mem[9][0]~q\,
	datab => \mar1|MAR_out\(0),
	datac => \mem|Mem[11][0]~q\,
	datad => \mem|out_dat_add~2_combout\,
	combout => \mem|out_dat_add~3_combout\);

-- Location: FF_X22_Y14_N5
\mem|Mem[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem[1][0]~feeder_combout\,
	ena => \mem|Mem[1][14]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[1][0]~q\);

-- Location: FF_X23_Y14_N19
\mem|Mem[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem[2][0]~feeder_combout\,
	ena => \mem|Mem[2][16]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[2][0]~q\);

-- Location: FF_X22_Y13_N5
\mem|Mem[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mux|IR~0_combout\,
	sload => VCC,
	ena => \mem|Mem[0][4]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[0][0]~q\);

-- Location: LCCOMB_X22_Y13_N4
\mem|out_dat_add~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~4_combout\ = (\mar1|MAR_out\(0) & (\mar1|MAR_out\(1))) # (!\mar1|MAR_out\(0) & ((\mar1|MAR_out\(1) & ((\mem|Mem[2][0]~q\))) # (!\mar1|MAR_out\(1) & (\mem|Mem[0][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(0),
	datab => \mar1|MAR_out\(1),
	datac => \mem|Mem[0][0]~q\,
	datad => \mem|Mem[2][0]~q\,
	combout => \mem|out_dat_add~4_combout\);

-- Location: FF_X22_Y17_N23
\mem|Mem[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mux|IR~0_combout\,
	sload => VCC,
	ena => \mem|Mem[3][11]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[3][0]~q\);

-- Location: LCCOMB_X22_Y17_N22
\mem|out_dat_add~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~5_combout\ = (\mar1|MAR_out\(0) & ((\mem|out_dat_add~4_combout\ & ((\mem|Mem[3][0]~q\))) # (!\mem|out_dat_add~4_combout\ & (\mem|Mem[1][0]~q\)))) # (!\mar1|MAR_out\(0) & (((\mem|out_dat_add~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(0),
	datab => \mem|Mem[1][0]~q\,
	datac => \mem|Mem[3][0]~q\,
	datad => \mem|out_dat_add~4_combout\,
	combout => \mem|out_dat_add~5_combout\);

-- Location: LCCOMB_X22_Y17_N16
\mem|out_dat_add~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~6_combout\ = (\mar1|MAR_out\(2) & (\mar1|MAR_out\(3))) # (!\mar1|MAR_out\(2) & ((\mar1|MAR_out\(3) & ((\mem|out_dat_add~3_combout\))) # (!\mar1|MAR_out\(3) & (\mem|out_dat_add~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(2),
	datab => \mar1|MAR_out\(3),
	datac => \mem|out_dat_add~5_combout\,
	datad => \mem|out_dat_add~3_combout\,
	combout => \mem|out_dat_add~6_combout\);

-- Location: FF_X20_Y16_N13
\mem|Mem[12][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem[12][0]~feeder_combout\,
	ena => \mem|Mem[12][17]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[12][0]~q\);

-- Location: LCCOMB_X23_Y13_N8
\mem|out_dat_add~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~7_combout\ = (\mar1|MAR_out\(2) & ((\mem|out_dat_add~6_combout\ & (\mem|Mem[12][0]~q\)) # (!\mem|out_dat_add~6_combout\ & ((\mem|out_dat_add~1_combout\))))) # (!\mar1|MAR_out\(2) & (((\mem|out_dat_add~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(2),
	datab => \mem|Mem[12][0]~q\,
	datac => \mem|out_dat_add~6_combout\,
	datad => \mem|out_dat_add~1_combout\,
	combout => \mem|out_dat_add~7_combout\);

-- Location: LCCOMB_X22_Y20_N30
\cb|Mux1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb|Mux1~2_combout\ = ((\cb|count\(2) & (\cb|count\(1))) # (!\cb|count\(2) & ((!\cb|Equal1~0_combout\) # (!\cb|count\(1))))) # (!\cb|Mux5~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb|count\(2),
	datab => \cb|count\(1),
	datac => \cb|Equal1~0_combout\,
	datad => \cb|Mux5~4_combout\,
	combout => \cb|Mux1~2_combout\);

-- Location: FF_X24_Y18_N19
\mem|Mem[10][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \alu1|out\(1),
	sload => VCC,
	ena => \mem|Mem[10][17]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[10][1]~q\);

-- Location: FF_X22_Y15_N9
\mem|Mem[9][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem[9][1]~feeder_combout\,
	ena => \mem|Mem[9][9]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[9][1]~q\);

-- Location: FF_X22_Y15_N11
\mem|Mem[8][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem[8][1]~feeder_combout\,
	ena => \mem|Mem[8][17]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[8][1]~q\);

-- Location: LCCOMB_X22_Y15_N12
\mem|out_dat_add~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~9_combout\ = (\mar1|MAR_out\(0) & ((\mar1|MAR_out\(1)) # ((\mem|Mem[9][1]~q\)))) # (!\mar1|MAR_out\(0) & (!\mar1|MAR_out\(1) & ((\mem|Mem[8][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(0),
	datab => \mar1|MAR_out\(1),
	datac => \mem|Mem[9][1]~q\,
	datad => \mem|Mem[8][1]~q\,
	combout => \mem|out_dat_add~9_combout\);

-- Location: FF_X21_Y18_N11
\mem|Mem[11][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem[11][1]~feeder_combout\,
	ena => \mem|Mem[11][17]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[11][1]~q\);

-- Location: LCCOMB_X24_Y18_N18
\mem|out_dat_add~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~10_combout\ = (\mar1|MAR_out\(1) & ((\mem|out_dat_add~9_combout\ & (\mem|Mem[11][1]~q\)) # (!\mem|out_dat_add~9_combout\ & ((\mem|Mem[10][1]~q\))))) # (!\mar1|MAR_out\(1) & (((\mem|out_dat_add~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mem[11][1]~q\,
	datab => \mar1|MAR_out\(1),
	datac => \mem|Mem[10][1]~q\,
	datad => \mem|out_dat_add~9_combout\,
	combout => \mem|out_dat_add~10_combout\);

-- Location: FF_X21_Y14_N13
\mem|Mem[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem[5][1]~feeder_combout\,
	ena => \mem|Mem[5][9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[5][1]~q\);

-- Location: FF_X22_Y14_N15
\mem|Mem[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem[6][1]~feeder_combout\,
	ena => \mem|Mem[6][2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[6][1]~q\);

-- Location: FF_X21_Y15_N1
\mem|Mem[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mux|IR~3_combout\,
	sload => VCC,
	ena => \mem|Mem[4][8]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[4][1]~q\);

-- Location: LCCOMB_X21_Y15_N0
\mem|out_dat_add~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~11_combout\ = (\mar1|MAR_out\(1) & ((\mar1|MAR_out\(0)) # ((\mem|Mem[6][1]~q\)))) # (!\mar1|MAR_out\(1) & (!\mar1|MAR_out\(0) & (\mem|Mem[4][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(1),
	datab => \mar1|MAR_out\(0),
	datac => \mem|Mem[4][1]~q\,
	datad => \mem|Mem[6][1]~q\,
	combout => \mem|out_dat_add~11_combout\);

-- Location: FF_X22_Y13_N15
\mem|Mem[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mux|IR~3_combout\,
	sload => VCC,
	ena => \mem|Mem[7][3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[7][1]~q\);

-- Location: LCCOMB_X22_Y13_N14
\mem|out_dat_add~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~12_combout\ = (\mar1|MAR_out\(0) & ((\mem|out_dat_add~11_combout\ & ((\mem|Mem[7][1]~q\))) # (!\mem|out_dat_add~11_combout\ & (\mem|Mem[5][1]~q\)))) # (!\mar1|MAR_out\(0) & (((\mem|out_dat_add~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mem[5][1]~q\,
	datab => \mar1|MAR_out\(0),
	datac => \mem|Mem[7][1]~q\,
	datad => \mem|out_dat_add~11_combout\,
	combout => \mem|out_dat_add~12_combout\);

-- Location: FF_X23_Y14_N9
\mem|Mem[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mux|IR~3_combout\,
	sload => VCC,
	ena => \mem|Mem[2][16]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[2][1]~q\);

-- Location: FF_X23_Y16_N25
\mem|Mem[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem[1][1]~feeder_combout\,
	ena => \mem|Mem[1][14]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[1][1]~q\);

-- Location: FF_X22_Y13_N25
\mem|Mem[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mux|IR~3_combout\,
	sload => VCC,
	ena => \mem|Mem[0][4]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[0][1]~q\);

-- Location: LCCOMB_X22_Y13_N24
\mem|out_dat_add~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~13_combout\ = (\mar1|MAR_out\(0) & ((\mar1|MAR_out\(1)) # ((\mem|Mem[1][1]~q\)))) # (!\mar1|MAR_out\(0) & (!\mar1|MAR_out\(1) & (\mem|Mem[0][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(0),
	datab => \mar1|MAR_out\(1),
	datac => \mem|Mem[0][1]~q\,
	datad => \mem|Mem[1][1]~q\,
	combout => \mem|out_dat_add~13_combout\);

-- Location: FF_X22_Y17_N27
\mem|Mem[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mux|IR~3_combout\,
	sload => VCC,
	ena => \mem|Mem[3][11]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[3][1]~q\);

-- Location: LCCOMB_X22_Y17_N26
\mem|out_dat_add~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~14_combout\ = (\mar1|MAR_out\(1) & ((\mem|out_dat_add~13_combout\ & ((\mem|Mem[3][1]~q\))) # (!\mem|out_dat_add~13_combout\ & (\mem|Mem[2][1]~q\)))) # (!\mar1|MAR_out\(1) & (((\mem|out_dat_add~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(1),
	datab => \mem|Mem[2][1]~q\,
	datac => \mem|Mem[3][1]~q\,
	datad => \mem|out_dat_add~13_combout\,
	combout => \mem|out_dat_add~14_combout\);

-- Location: LCCOMB_X22_Y17_N28
\mem|out_dat_add~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~15_combout\ = (\mar1|MAR_out\(2) & ((\mar1|MAR_out\(3)) # ((\mem|out_dat_add~12_combout\)))) # (!\mar1|MAR_out\(2) & (!\mar1|MAR_out\(3) & (\mem|out_dat_add~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(2),
	datab => \mar1|MAR_out\(3),
	datac => \mem|out_dat_add~14_combout\,
	datad => \mem|out_dat_add~12_combout\,
	combout => \mem|out_dat_add~15_combout\);

-- Location: FF_X20_Y16_N15
\mem|Mem[12][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem[12][1]~feeder_combout\,
	ena => \mem|Mem[12][17]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[12][1]~q\);

-- Location: LCCOMB_X23_Y13_N18
\mem|out_dat_add~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~16_combout\ = (\mar1|MAR_out\(3) & ((\mem|out_dat_add~15_combout\ & ((\mem|Mem[12][1]~q\))) # (!\mem|out_dat_add~15_combout\ & (\mem|out_dat_add~10_combout\)))) # (!\mar1|MAR_out\(3) & (((\mem|out_dat_add~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|out_dat_add~10_combout\,
	datab => \mar1|MAR_out\(3),
	datac => \mem|Mem[12][1]~q\,
	datad => \mem|out_dat_add~15_combout\,
	combout => \mem|out_dat_add~16_combout\);

-- Location: FF_X22_Y14_N9
\mem|Mem[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mux|AC~2_combout\,
	sload => VCC,
	ena => \mem|Mem[6][2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[6][2]~q\);

-- Location: FF_X21_Y14_N31
\mem|Mem[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mux|AC~2_combout\,
	sload => VCC,
	ena => \mem|Mem[5][9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[5][2]~q\);

-- Location: FF_X21_Y15_N19
\mem|Mem[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem[4][2]~feeder_combout\,
	ena => \mem|Mem[4][8]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[4][2]~q\);

-- Location: LCCOMB_X22_Y13_N26
\mem|out_dat_add~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~17_combout\ = (\mar1|MAR_out\(0) & ((\mar1|MAR_out\(1)) # ((\mem|Mem[5][2]~q\)))) # (!\mar1|MAR_out\(0) & (!\mar1|MAR_out\(1) & ((\mem|Mem[4][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(0),
	datab => \mar1|MAR_out\(1),
	datac => \mem|Mem[5][2]~q\,
	datad => \mem|Mem[4][2]~q\,
	combout => \mem|out_dat_add~17_combout\);

-- Location: FF_X22_Y13_N21
\mem|Mem[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem[7][2]~feeder_combout\,
	ena => \mem|Mem[7][3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[7][2]~q\);

-- Location: LCCOMB_X22_Y14_N8
\mem|out_dat_add~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~18_combout\ = (\mem|out_dat_add~17_combout\ & (((\mem|Mem[7][2]~q\)) # (!\mar1|MAR_out\(1)))) # (!\mem|out_dat_add~17_combout\ & (\mar1|MAR_out\(1) & (\mem|Mem[6][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|out_dat_add~17_combout\,
	datab => \mar1|MAR_out\(1),
	datac => \mem|Mem[6][2]~q\,
	datad => \mem|Mem[7][2]~q\,
	combout => \mem|out_dat_add~18_combout\);

-- Location: FF_X22_Y15_N15
\mem|Mem[9][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem[9][2]~feeder_combout\,
	ena => \mem|Mem[9][9]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[9][2]~q\);

-- Location: FF_X24_Y18_N21
\mem|Mem[10][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem[10][2]~feeder_combout\,
	ena => \mem|Mem[10][17]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[10][2]~q\);

-- Location: FF_X22_Y15_N17
\mem|Mem[8][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mux|IR~4_combout\,
	sload => VCC,
	ena => \mem|Mem[8][17]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[8][2]~q\);

-- Location: LCCOMB_X22_Y15_N16
\mem|out_dat_add~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~19_combout\ = (\mar1|MAR_out\(0) & (\mar1|MAR_out\(1))) # (!\mar1|MAR_out\(0) & ((\mar1|MAR_out\(1) & ((\mem|Mem[10][2]~q\))) # (!\mar1|MAR_out\(1) & (\mem|Mem[8][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(0),
	datab => \mar1|MAR_out\(1),
	datac => \mem|Mem[8][2]~q\,
	datad => \mem|Mem[10][2]~q\,
	combout => \mem|out_dat_add~19_combout\);

-- Location: FF_X21_Y18_N5
\mem|Mem[11][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \alu1|out\(2),
	sload => VCC,
	ena => \mem|Mem[11][17]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[11][2]~q\);

-- Location: LCCOMB_X21_Y18_N4
\mem|out_dat_add~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~20_combout\ = (\mar1|MAR_out\(0) & ((\mem|out_dat_add~19_combout\ & ((\mem|Mem[11][2]~q\))) # (!\mem|out_dat_add~19_combout\ & (\mem|Mem[9][2]~q\)))) # (!\mar1|MAR_out\(0) & (((\mem|out_dat_add~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(0),
	datab => \mem|Mem[9][2]~q\,
	datac => \mem|Mem[11][2]~q\,
	datad => \mem|out_dat_add~19_combout\,
	combout => \mem|out_dat_add~20_combout\);

-- Location: FF_X22_Y14_N27
\mem|Mem[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem[1][2]~feeder_combout\,
	ena => \mem|Mem[1][14]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[1][2]~q\);

-- Location: FF_X23_Y14_N21
\mem|Mem[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem[2][2]~feeder_combout\,
	ena => \mem|Mem[2][16]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[2][2]~q\);

-- Location: FF_X23_Y15_N29
\mem|Mem[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mux|AC~2_combout\,
	sload => VCC,
	ena => \mem|Mem[0][4]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[0][2]~q\);

-- Location: LCCOMB_X23_Y15_N28
\mem|out_dat_add~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~21_combout\ = (\mar1|MAR_out\(0) & (\mar1|MAR_out\(1))) # (!\mar1|MAR_out\(0) & ((\mar1|MAR_out\(1) & ((\mem|Mem[2][2]~q\))) # (!\mar1|MAR_out\(1) & (\mem|Mem[0][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(0),
	datab => \mar1|MAR_out\(1),
	datac => \mem|Mem[0][2]~q\,
	datad => \mem|Mem[2][2]~q\,
	combout => \mem|out_dat_add~21_combout\);

-- Location: FF_X22_Y17_N31
\mem|Mem[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mux|IR~4_combout\,
	sload => VCC,
	ena => \mem|Mem[3][11]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[3][2]~q\);

-- Location: LCCOMB_X22_Y17_N30
\mem|out_dat_add~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~22_combout\ = (\mar1|MAR_out\(0) & ((\mem|out_dat_add~21_combout\ & ((\mem|Mem[3][2]~q\))) # (!\mem|out_dat_add~21_combout\ & (\mem|Mem[1][2]~q\)))) # (!\mar1|MAR_out\(0) & (((\mem|out_dat_add~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mem[1][2]~q\,
	datab => \mar1|MAR_out\(0),
	datac => \mem|Mem[3][2]~q\,
	datad => \mem|out_dat_add~21_combout\,
	combout => \mem|out_dat_add~22_combout\);

-- Location: LCCOMB_X22_Y17_N0
\mem|out_dat_add~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~23_combout\ = (\mar1|MAR_out\(2) & (\mar1|MAR_out\(3))) # (!\mar1|MAR_out\(2) & ((\mar1|MAR_out\(3) & ((\mem|out_dat_add~20_combout\))) # (!\mar1|MAR_out\(3) & (\mem|out_dat_add~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(2),
	datab => \mar1|MAR_out\(3),
	datac => \mem|out_dat_add~22_combout\,
	datad => \mem|out_dat_add~20_combout\,
	combout => \mem|out_dat_add~23_combout\);

-- Location: FF_X20_Y16_N1
\mem|Mem[12][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem[12][2]~feeder_combout\,
	ena => \mem|Mem[12][17]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[12][2]~q\);

-- Location: LCCOMB_X23_Y13_N28
\mem|out_dat_add~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~24_combout\ = (\mar1|MAR_out\(2) & ((\mem|out_dat_add~23_combout\ & ((\mem|Mem[12][2]~q\))) # (!\mem|out_dat_add~23_combout\ & (\mem|out_dat_add~18_combout\)))) # (!\mar1|MAR_out\(2) & (((\mem|out_dat_add~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|out_dat_add~18_combout\,
	datab => \mem|Mem[12][2]~q\,
	datac => \mar1|MAR_out\(2),
	datad => \mem|out_dat_add~23_combout\,
	combout => \mem|out_dat_add~24_combout\);

-- Location: FF_X24_Y18_N31
\mem|Mem[10][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \alu1|out\(3),
	sload => VCC,
	ena => \mem|Mem[10][17]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[10][3]~q\);

-- Location: FF_X23_Y17_N21
\mem|Mem[9][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux|IR~5_combout\,
	ena => \mem|Mem[9][9]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[9][3]~q\);

-- Location: FF_X24_Y18_N25
\mem|Mem[8][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mux|IR~5_combout\,
	sload => VCC,
	ena => \mem|Mem[8][17]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[8][3]~q\);

-- Location: LCCOMB_X24_Y18_N24
\mem|out_dat_add~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~25_combout\ = (\mar1|MAR_out\(1) & (\mar1|MAR_out\(0))) # (!\mar1|MAR_out\(1) & ((\mar1|MAR_out\(0) & ((\mem|Mem[9][3]~q\))) # (!\mar1|MAR_out\(0) & (\mem|Mem[8][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(1),
	datab => \mar1|MAR_out\(0),
	datac => \mem|Mem[8][3]~q\,
	datad => \mem|Mem[9][3]~q\,
	combout => \mem|out_dat_add~25_combout\);

-- Location: FF_X21_Y18_N7
\mem|Mem[11][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem[11][3]~feeder_combout\,
	ena => \mem|Mem[11][17]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[11][3]~q\);

-- Location: LCCOMB_X24_Y18_N30
\mem|out_dat_add~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~26_combout\ = (\mar1|MAR_out\(1) & ((\mem|out_dat_add~25_combout\ & (\mem|Mem[11][3]~q\)) # (!\mem|out_dat_add~25_combout\ & ((\mem|Mem[10][3]~q\))))) # (!\mar1|MAR_out\(1) & (((\mem|out_dat_add~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mem[11][3]~q\,
	datab => \mar1|MAR_out\(1),
	datac => \mem|Mem[10][3]~q\,
	datad => \mem|out_dat_add~25_combout\,
	combout => \mem|out_dat_add~26_combout\);

-- Location: FF_X19_Y15_N11
\mem|Mem[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux|IR~6_combout\,
	ena => \mem|Mem[5][9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[5][4]~q\);

-- Location: FF_X21_Y15_N23
\mem|Mem[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mux|IR~6_combout\,
	sload => VCC,
	ena => \mem|Mem[4][8]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[4][4]~q\);

-- Location: LCCOMB_X21_Y15_N22
\mem|out_dat_add~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~33_combout\ = (\mar1|MAR_out\(1) & (\mar1|MAR_out\(0))) # (!\mar1|MAR_out\(1) & ((\mar1|MAR_out\(0) & ((\mem|Mem[5][4]~q\))) # (!\mar1|MAR_out\(0) & (\mem|Mem[4][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(1),
	datab => \mar1|MAR_out\(0),
	datac => \mem|Mem[4][4]~q\,
	datad => \mem|Mem[5][4]~q\,
	combout => \mem|out_dat_add~33_combout\);

-- Location: FF_X22_Y12_N1
\mem|Mem[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem[1][4]~feeder_combout\,
	ena => \mem|Mem[1][14]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[1][4]~q\);

-- Location: FF_X20_Y16_N5
\mem|Mem[12][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem[12][4]~feeder_combout\,
	ena => \mem|Mem[12][17]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[12][4]~q\);

-- Location: FF_X24_Y18_N13
\mem|Mem[10][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \alu1|out\(5),
	sload => VCC,
	ena => \mem|Mem[10][17]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[10][5]~q\);

-- Location: FF_X22_Y15_N7
\mem|Mem[9][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem[9][5]~feeder_combout\,
	ena => \mem|Mem[9][9]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[9][5]~q\);

-- Location: FF_X22_Y15_N25
\mem|Mem[8][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mux|IR~7_combout\,
	sload => VCC,
	ena => \mem|Mem[8][17]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[8][5]~q\);

-- Location: LCCOMB_X22_Y15_N24
\mem|out_dat_add~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~41_combout\ = (\mar1|MAR_out\(0) & ((\mar1|MAR_out\(1)) # ((\mem|Mem[9][5]~q\)))) # (!\mar1|MAR_out\(0) & (!\mar1|MAR_out\(1) & (\mem|Mem[8][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(0),
	datab => \mar1|MAR_out\(1),
	datac => \mem|Mem[8][5]~q\,
	datad => \mem|Mem[9][5]~q\,
	combout => \mem|out_dat_add~41_combout\);

-- Location: FF_X21_Y18_N27
\mem|Mem[11][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem[11][5]~feeder_combout\,
	ena => \mem|Mem[11][17]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[11][5]~q\);

-- Location: LCCOMB_X24_Y18_N12
\mem|out_dat_add~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~42_combout\ = (\mar1|MAR_out\(1) & ((\mem|out_dat_add~41_combout\ & (\mem|Mem[11][5]~q\)) # (!\mem|out_dat_add~41_combout\ & ((\mem|Mem[10][5]~q\))))) # (!\mar1|MAR_out\(1) & (((\mem|out_dat_add~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mem[11][5]~q\,
	datab => \mar1|MAR_out\(1),
	datac => \mem|Mem[10][5]~q\,
	datad => \mem|out_dat_add~41_combout\,
	combout => \mem|out_dat_add~42_combout\);

-- Location: FF_X21_Y14_N25
\mem|Mem[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem[5][5]~feeder_combout\,
	ena => \mem|Mem[5][9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[5][5]~q\);

-- Location: FF_X22_Y14_N23
\mem|Mem[6][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem[6][5]~feeder_combout\,
	ena => \mem|Mem[6][2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[6][5]~q\);

-- Location: FF_X21_Y15_N9
\mem|Mem[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mux|IR~7_combout\,
	sload => VCC,
	ena => \mem|Mem[4][8]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[4][5]~q\);

-- Location: LCCOMB_X21_Y15_N8
\mem|out_dat_add~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~43_combout\ = (\mar1|MAR_out\(1) & ((\mar1|MAR_out\(0)) # ((\mem|Mem[6][5]~q\)))) # (!\mar1|MAR_out\(1) & (!\mar1|MAR_out\(0) & (\mem|Mem[4][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(1),
	datab => \mar1|MAR_out\(0),
	datac => \mem|Mem[4][5]~q\,
	datad => \mem|Mem[6][5]~q\,
	combout => \mem|out_dat_add~43_combout\);

-- Location: FF_X22_Y13_N23
\mem|Mem[7][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mux|IR~7_combout\,
	sload => VCC,
	ena => \mem|Mem[7][3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[7][5]~q\);

-- Location: LCCOMB_X22_Y13_N22
\mem|out_dat_add~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~44_combout\ = (\mar1|MAR_out\(0) & ((\mem|out_dat_add~43_combout\ & ((\mem|Mem[7][5]~q\))) # (!\mem|out_dat_add~43_combout\ & (\mem|Mem[5][5]~q\)))) # (!\mar1|MAR_out\(0) & (((\mem|out_dat_add~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mem[5][5]~q\,
	datab => \mar1|MAR_out\(0),
	datac => \mem|Mem[7][5]~q\,
	datad => \mem|out_dat_add~43_combout\,
	combout => \mem|out_dat_add~44_combout\);

-- Location: FF_X23_Y14_N3
\mem|Mem[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem[2][5]~feeder_combout\,
	ena => \mem|Mem[2][16]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[2][5]~q\);

-- Location: FF_X22_Y12_N11
\mem|Mem[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem[1][5]~feeder_combout\,
	ena => \mem|Mem[1][14]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[1][5]~q\);

-- Location: FF_X22_Y13_N9
\mem|Mem[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mux|IR~7_combout\,
	sload => VCC,
	ena => \mem|Mem[0][4]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[0][5]~q\);

-- Location: LCCOMB_X22_Y13_N8
\mem|out_dat_add~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~45_combout\ = (\mar1|MAR_out\(0) & ((\mar1|MAR_out\(1)) # ((\mem|Mem[1][5]~q\)))) # (!\mar1|MAR_out\(0) & (!\mar1|MAR_out\(1) & (\mem|Mem[0][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(0),
	datab => \mar1|MAR_out\(1),
	datac => \mem|Mem[0][5]~q\,
	datad => \mem|Mem[1][5]~q\,
	combout => \mem|out_dat_add~45_combout\);

-- Location: FF_X22_Y16_N31
\mem|Mem[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mux|IR~7_combout\,
	sload => VCC,
	ena => \mem|Mem[3][11]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[3][5]~q\);

-- Location: LCCOMB_X22_Y16_N30
\mem|out_dat_add~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~46_combout\ = (\mar1|MAR_out\(1) & ((\mem|out_dat_add~45_combout\ & ((\mem|Mem[3][5]~q\))) # (!\mem|out_dat_add~45_combout\ & (\mem|Mem[2][5]~q\)))) # (!\mar1|MAR_out\(1) & (((\mem|out_dat_add~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mem[2][5]~q\,
	datab => \mar1|MAR_out\(1),
	datac => \mem|Mem[3][5]~q\,
	datad => \mem|out_dat_add~45_combout\,
	combout => \mem|out_dat_add~46_combout\);

-- Location: LCCOMB_X22_Y16_N24
\mem|out_dat_add~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~47_combout\ = (\mar1|MAR_out\(3) & (\mar1|MAR_out\(2))) # (!\mar1|MAR_out\(3) & ((\mar1|MAR_out\(2) & ((\mem|out_dat_add~44_combout\))) # (!\mar1|MAR_out\(2) & (\mem|out_dat_add~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(3),
	datab => \mar1|MAR_out\(2),
	datac => \mem|out_dat_add~46_combout\,
	datad => \mem|out_dat_add~44_combout\,
	combout => \mem|out_dat_add~47_combout\);

-- Location: FF_X20_Y16_N23
\mem|Mem[12][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem[12][5]~feeder_combout\,
	ena => \mem|Mem[12][17]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[12][5]~q\);

-- Location: LCCOMB_X23_Y13_N10
\mem|out_dat_add~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~48_combout\ = (\mar1|MAR_out\(3) & ((\mem|out_dat_add~47_combout\ & ((\mem|Mem[12][5]~q\))) # (!\mem|out_dat_add~47_combout\ & (\mem|out_dat_add~42_combout\)))) # (!\mar1|MAR_out\(3) & (((\mem|out_dat_add~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|out_dat_add~42_combout\,
	datab => \mar1|MAR_out\(3),
	datac => \mem|Mem[12][5]~q\,
	datad => \mem|out_dat_add~47_combout\,
	combout => \mem|out_dat_add~48_combout\);

-- Location: FF_X22_Y14_N25
\mem|Mem[6][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mem|Mem~28_combout\,
	sload => VCC,
	ena => \mem|Mem[6][2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[6][6]~q\);

-- Location: FF_X21_Y14_N11
\mem|Mem[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mem|Mem~28_combout\,
	sload => VCC,
	ena => \mem|Mem[5][9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[5][6]~q\);

-- Location: FF_X21_Y15_N29
\mem|Mem[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux|IR~8_combout\,
	ena => \mem|Mem[4][8]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[4][6]~q\);

-- Location: LCCOMB_X21_Y14_N10
\mem|out_dat_add~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~49_combout\ = (\mar1|MAR_out\(1) & (\mar1|MAR_out\(0))) # (!\mar1|MAR_out\(1) & ((\mar1|MAR_out\(0) & (\mem|Mem[5][6]~q\)) # (!\mar1|MAR_out\(0) & ((\mem|Mem[4][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(1),
	datab => \mar1|MAR_out\(0),
	datac => \mem|Mem[5][6]~q\,
	datad => \mem|Mem[4][6]~q\,
	combout => \mem|out_dat_add~49_combout\);

-- Location: FF_X20_Y14_N17
\mem|Mem[7][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem~28_combout\,
	ena => \mem|Mem[7][3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[7][6]~q\);

-- Location: LCCOMB_X22_Y14_N24
\mem|out_dat_add~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~50_combout\ = (\mar1|MAR_out\(1) & ((\mem|out_dat_add~49_combout\ & (\mem|Mem[7][6]~q\)) # (!\mem|out_dat_add~49_combout\ & ((\mem|Mem[6][6]~q\))))) # (!\mar1|MAR_out\(1) & (((\mem|out_dat_add~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(1),
	datab => \mem|Mem[7][6]~q\,
	datac => \mem|Mem[6][6]~q\,
	datad => \mem|out_dat_add~49_combout\,
	combout => \mem|out_dat_add~50_combout\);

-- Location: FF_X22_Y15_N21
\mem|Mem[9][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mux|IR~8_combout\,
	sload => VCC,
	ena => \mem|Mem[9][9]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[9][6]~q\);

-- Location: FF_X24_Y18_N15
\mem|Mem[10][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem[10][6]~feeder_combout\,
	ena => \mem|Mem[10][17]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[10][6]~q\);

-- Location: FF_X22_Y15_N19
\mem|Mem[8][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mux|IR~8_combout\,
	sload => VCC,
	ena => \mem|Mem[8][17]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[8][6]~q\);

-- Location: LCCOMB_X22_Y15_N18
\mem|out_dat_add~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~51_combout\ = (\mar1|MAR_out\(0) & (\mar1|MAR_out\(1))) # (!\mar1|MAR_out\(0) & ((\mar1|MAR_out\(1) & ((\mem|Mem[10][6]~q\))) # (!\mar1|MAR_out\(1) & (\mem|Mem[8][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(0),
	datab => \mar1|MAR_out\(1),
	datac => \mem|Mem[8][6]~q\,
	datad => \mem|Mem[10][6]~q\,
	combout => \mem|out_dat_add~51_combout\);

-- Location: FF_X23_Y18_N17
\mem|Mem[11][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \alu1|out\(6),
	sload => VCC,
	ena => \mem|Mem[11][17]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[11][6]~q\);

-- Location: LCCOMB_X23_Y18_N16
\mem|out_dat_add~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~52_combout\ = (\mar1|MAR_out\(0) & ((\mem|out_dat_add~51_combout\ & ((\mem|Mem[11][6]~q\))) # (!\mem|out_dat_add~51_combout\ & (\mem|Mem[9][6]~q\)))) # (!\mar1|MAR_out\(0) & (((\mem|out_dat_add~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mem[9][6]~q\,
	datab => \mar1|MAR_out\(0),
	datac => \mem|Mem[11][6]~q\,
	datad => \mem|out_dat_add~51_combout\,
	combout => \mem|out_dat_add~52_combout\);

-- Location: FF_X22_Y12_N5
\mem|Mem[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem[1][6]~feeder_combout\,
	ena => \mem|Mem[1][14]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[1][6]~q\);

-- Location: FF_X23_Y14_N5
\mem|Mem[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem[2][6]~feeder_combout\,
	ena => \mem|Mem[2][16]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[2][6]~q\);

-- Location: FF_X23_Y15_N1
\mem|Mem[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mux|IR~8_combout\,
	sload => VCC,
	ena => \mem|Mem[0][4]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[0][6]~q\);

-- Location: LCCOMB_X23_Y15_N0
\mem|out_dat_add~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~53_combout\ = (\mar1|MAR_out\(1) & ((\mar1|MAR_out\(0)) # ((\mem|Mem[2][6]~q\)))) # (!\mar1|MAR_out\(1) & (!\mar1|MAR_out\(0) & (\mem|Mem[0][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(1),
	datab => \mar1|MAR_out\(0),
	datac => \mem|Mem[0][6]~q\,
	datad => \mem|Mem[2][6]~q\,
	combout => \mem|out_dat_add~53_combout\);

-- Location: FF_X22_Y16_N27
\mem|Mem[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mux|IR~8_combout\,
	sload => VCC,
	ena => \mem|Mem[3][11]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[3][6]~q\);

-- Location: LCCOMB_X22_Y16_N26
\mem|out_dat_add~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~54_combout\ = (\mar1|MAR_out\(0) & ((\mem|out_dat_add~53_combout\ & ((\mem|Mem[3][6]~q\))) # (!\mem|out_dat_add~53_combout\ & (\mem|Mem[1][6]~q\)))) # (!\mar1|MAR_out\(0) & (((\mem|out_dat_add~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(0),
	datab => \mem|Mem[1][6]~q\,
	datac => \mem|Mem[3][6]~q\,
	datad => \mem|out_dat_add~53_combout\,
	combout => \mem|out_dat_add~54_combout\);

-- Location: LCCOMB_X22_Y16_N20
\mem|out_dat_add~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~55_combout\ = (\mar1|MAR_out\(3) & ((\mar1|MAR_out\(2)) # ((\mem|out_dat_add~52_combout\)))) # (!\mar1|MAR_out\(3) & (!\mar1|MAR_out\(2) & (\mem|out_dat_add~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(3),
	datab => \mar1|MAR_out\(2),
	datac => \mem|out_dat_add~54_combout\,
	datad => \mem|out_dat_add~52_combout\,
	combout => \mem|out_dat_add~55_combout\);

-- Location: FF_X20_Y16_N9
\mem|Mem[12][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem[12][6]~feeder_combout\,
	ena => \mem|Mem[12][17]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[12][6]~q\);

-- Location: LCCOMB_X23_Y13_N12
\mem|out_dat_add~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~56_combout\ = (\mar1|MAR_out\(2) & ((\mem|out_dat_add~55_combout\ & (\mem|Mem[12][6]~q\)) # (!\mem|out_dat_add~55_combout\ & ((\mem|out_dat_add~50_combout\))))) # (!\mar1|MAR_out\(2) & (((\mem|out_dat_add~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(2),
	datab => \mem|Mem[12][6]~q\,
	datac => \mem|out_dat_add~50_combout\,
	datad => \mem|out_dat_add~55_combout\,
	combout => \mem|out_dat_add~56_combout\);

-- Location: FF_X24_Y18_N17
\mem|Mem[10][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \alu1|out\(7),
	sload => VCC,
	ena => \mem|Mem[10][17]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[10][7]~q\);

-- Location: FF_X22_Y15_N29
\mem|Mem[9][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem[9][7]~feeder_combout\,
	ena => \mem|Mem[9][9]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[9][7]~q\);

-- Location: FF_X22_Y15_N31
\mem|Mem[8][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mux|IR~9_combout\,
	sload => VCC,
	ena => \mem|Mem[8][17]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[8][7]~q\);

-- Location: LCCOMB_X22_Y15_N30
\mem|out_dat_add~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~57_combout\ = (\mar1|MAR_out\(0) & ((\mar1|MAR_out\(1)) # ((\mem|Mem[9][7]~q\)))) # (!\mar1|MAR_out\(0) & (!\mar1|MAR_out\(1) & (\mem|Mem[8][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(0),
	datab => \mar1|MAR_out\(1),
	datac => \mem|Mem[8][7]~q\,
	datad => \mem|Mem[9][7]~q\,
	combout => \mem|out_dat_add~57_combout\);

-- Location: FF_X23_Y18_N3
\mem|Mem[11][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem[11][7]~feeder_combout\,
	ena => \mem|Mem[11][17]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[11][7]~q\);

-- Location: LCCOMB_X24_Y18_N16
\mem|out_dat_add~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~58_combout\ = (\mar1|MAR_out\(1) & ((\mem|out_dat_add~57_combout\ & (\mem|Mem[11][7]~q\)) # (!\mem|out_dat_add~57_combout\ & ((\mem|Mem[10][7]~q\))))) # (!\mar1|MAR_out\(1) & (((\mem|out_dat_add~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mem[11][7]~q\,
	datab => \mar1|MAR_out\(1),
	datac => \mem|Mem[10][7]~q\,
	datad => \mem|out_dat_add~57_combout\,
	combout => \mem|out_dat_add~58_combout\);

-- Location: FF_X21_Y14_N21
\mem|Mem[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem[5][7]~feeder_combout\,
	ena => \mem|Mem[5][9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[5][7]~q\);

-- Location: FF_X22_Y14_N19
\mem|Mem[6][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mux|IR~9_combout\,
	sload => VCC,
	ena => \mem|Mem[6][2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[6][7]~q\);

-- Location: FF_X21_Y15_N27
\mem|Mem[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem[4][7]~feeder_combout\,
	ena => \mem|Mem[4][8]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[4][7]~q\);

-- Location: LCCOMB_X22_Y14_N18
\mem|out_dat_add~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~59_combout\ = (\mar1|MAR_out\(1) & ((\mar1|MAR_out\(0)) # ((\mem|Mem[6][7]~q\)))) # (!\mar1|MAR_out\(1) & (!\mar1|MAR_out\(0) & ((\mem|Mem[4][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(1),
	datab => \mar1|MAR_out\(0),
	datac => \mem|Mem[6][7]~q\,
	datad => \mem|Mem[4][7]~q\,
	combout => \mem|out_dat_add~59_combout\);

-- Location: FF_X20_Y14_N3
\mem|Mem[7][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mux|IR~9_combout\,
	sload => VCC,
	ena => \mem|Mem[7][3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[7][7]~q\);

-- Location: LCCOMB_X20_Y14_N2
\mem|out_dat_add~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~60_combout\ = (\mar1|MAR_out\(0) & ((\mem|out_dat_add~59_combout\ & ((\mem|Mem[7][7]~q\))) # (!\mem|out_dat_add~59_combout\ & (\mem|Mem[5][7]~q\)))) # (!\mar1|MAR_out\(0) & (((\mem|out_dat_add~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mem[5][7]~q\,
	datab => \mar1|MAR_out\(0),
	datac => \mem|Mem[7][7]~q\,
	datad => \mem|out_dat_add~59_combout\,
	combout => \mem|out_dat_add~60_combout\);

-- Location: FF_X23_Y14_N7
\mem|Mem[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem[2][7]~feeder_combout\,
	ena => \mem|Mem[2][16]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[2][7]~q\);

-- Location: FF_X22_Y12_N15
\mem|Mem[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem[1][7]~feeder_combout\,
	ena => \mem|Mem[1][14]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[1][7]~q\);

-- Location: FF_X23_Y15_N11
\mem|Mem[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mux|IR~9_combout\,
	sload => VCC,
	ena => \mem|Mem[0][4]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[0][7]~q\);

-- Location: LCCOMB_X23_Y15_N10
\mem|out_dat_add~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~61_combout\ = (\mar1|MAR_out\(1) & (\mar1|MAR_out\(0))) # (!\mar1|MAR_out\(1) & ((\mar1|MAR_out\(0) & ((\mem|Mem[1][7]~q\))) # (!\mar1|MAR_out\(0) & (\mem|Mem[0][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(1),
	datab => \mar1|MAR_out\(0),
	datac => \mem|Mem[0][7]~q\,
	datad => \mem|Mem[1][7]~q\,
	combout => \mem|out_dat_add~61_combout\);

-- Location: FF_X22_Y16_N7
\mem|Mem[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mux|IR~9_combout\,
	sload => VCC,
	ena => \mem|Mem[3][11]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[3][7]~q\);

-- Location: LCCOMB_X22_Y16_N6
\mem|out_dat_add~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~62_combout\ = (\mar1|MAR_out\(1) & ((\mem|out_dat_add~61_combout\ & ((\mem|Mem[3][7]~q\))) # (!\mem|out_dat_add~61_combout\ & (\mem|Mem[2][7]~q\)))) # (!\mar1|MAR_out\(1) & (((\mem|out_dat_add~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(1),
	datab => \mem|Mem[2][7]~q\,
	datac => \mem|Mem[3][7]~q\,
	datad => \mem|out_dat_add~61_combout\,
	combout => \mem|out_dat_add~62_combout\);

-- Location: LCCOMB_X22_Y16_N0
\mem|out_dat_add~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~63_combout\ = (\mar1|MAR_out\(3) & (\mar1|MAR_out\(2))) # (!\mar1|MAR_out\(3) & ((\mar1|MAR_out\(2) & (\mem|out_dat_add~60_combout\)) # (!\mar1|MAR_out\(2) & ((\mem|out_dat_add~62_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(3),
	datab => \mar1|MAR_out\(2),
	datac => \mem|out_dat_add~60_combout\,
	datad => \mem|out_dat_add~62_combout\,
	combout => \mem|out_dat_add~63_combout\);

-- Location: FF_X20_Y16_N19
\mem|Mem[12][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem[12][7]~feeder_combout\,
	ena => \mem|Mem[12][17]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[12][7]~q\);

-- Location: LCCOMB_X23_Y13_N22
\mem|out_dat_add~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~64_combout\ = (\mar1|MAR_out\(3) & ((\mem|out_dat_add~63_combout\ & ((\mem|Mem[12][7]~q\))) # (!\mem|out_dat_add~63_combout\ & (\mem|out_dat_add~58_combout\)))) # (!\mar1|MAR_out\(3) & (((\mem|out_dat_add~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|out_dat_add~58_combout\,
	datab => \mem|Mem[12][7]~q\,
	datac => \mar1|MAR_out\(3),
	datad => \mem|out_dat_add~63_combout\,
	combout => \mem|out_dat_add~64_combout\);

-- Location: FF_X22_Y14_N13
\mem|Mem[6][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mem|Mem~29_combout\,
	sload => VCC,
	ena => \mem|Mem[6][2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[6][8]~q\);

-- Location: FF_X21_Y14_N15
\mem|Mem[5][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem[5][8]~feeder_combout\,
	ena => \mem|Mem[5][9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[5][8]~q\);

-- Location: FF_X21_Y15_N5
\mem|Mem[4][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mux|IR~10_combout\,
	sload => VCC,
	ena => \mem|Mem[4][8]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[4][8]~q\);

-- Location: LCCOMB_X21_Y15_N4
\mem|out_dat_add~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~65_combout\ = (\mar1|MAR_out\(1) & (\mar1|MAR_out\(0))) # (!\mar1|MAR_out\(1) & ((\mar1|MAR_out\(0) & ((\mem|Mem[5][8]~q\))) # (!\mar1|MAR_out\(0) & (\mem|Mem[4][8]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(1),
	datab => \mar1|MAR_out\(0),
	datac => \mem|Mem[4][8]~q\,
	datad => \mem|Mem[5][8]~q\,
	combout => \mem|out_dat_add~65_combout\);

-- Location: FF_X20_Y14_N29
\mem|Mem[7][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem~29_combout\,
	ena => \mem|Mem[7][3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[7][8]~q\);

-- Location: LCCOMB_X22_Y14_N12
\mem|out_dat_add~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~66_combout\ = (\mar1|MAR_out\(1) & ((\mem|out_dat_add~65_combout\ & (\mem|Mem[7][8]~q\)) # (!\mem|out_dat_add~65_combout\ & ((\mem|Mem[6][8]~q\))))) # (!\mar1|MAR_out\(1) & (((\mem|out_dat_add~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mem[7][8]~q\,
	datab => \mar1|MAR_out\(1),
	datac => \mem|Mem[6][8]~q\,
	datad => \mem|out_dat_add~65_combout\,
	combout => \mem|out_dat_add~66_combout\);

-- Location: FF_X24_Y18_N3
\mem|Mem[10][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem[10][8]~feeder_combout\,
	ena => \mem|Mem[10][17]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[10][8]~q\);

-- Location: FF_X24_Y18_N29
\mem|Mem[10][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \alu1|out\(9),
	sload => VCC,
	ena => \mem|Mem[10][17]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[10][9]~q\);

-- Location: FF_X21_Y18_N21
\mem|Mem[9][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem[9][9]~feeder_combout\,
	ena => \mem|Mem[9][9]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[9][9]~q\);

-- Location: FF_X22_Y18_N13
\mem|Mem[8][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mux|IR~11_combout\,
	sload => VCC,
	ena => \mem|Mem[8][17]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[8][9]~q\);

-- Location: LCCOMB_X22_Y18_N12
\mem|out_dat_add~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~73_combout\ = (\mar1|MAR_out\(1) & (\mar1|MAR_out\(0))) # (!\mar1|MAR_out\(1) & ((\mar1|MAR_out\(0) & ((\mem|Mem[9][9]~q\))) # (!\mar1|MAR_out\(0) & (\mem|Mem[8][9]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(1),
	datab => \mar1|MAR_out\(0),
	datac => \mem|Mem[8][9]~q\,
	datad => \mem|Mem[9][9]~q\,
	combout => \mem|out_dat_add~73_combout\);

-- Location: FF_X22_Y18_N15
\mem|Mem[11][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem[11][9]~feeder_combout\,
	ena => \mem|Mem[11][17]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[11][9]~q\);

-- Location: LCCOMB_X24_Y18_N28
\mem|out_dat_add~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~74_combout\ = (\mar1|MAR_out\(1) & ((\mem|out_dat_add~73_combout\ & (\mem|Mem[11][9]~q\)) # (!\mem|out_dat_add~73_combout\ & ((\mem|Mem[10][9]~q\))))) # (!\mar1|MAR_out\(1) & (((\mem|out_dat_add~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mem[11][9]~q\,
	datab => \mar1|MAR_out\(1),
	datac => \mem|Mem[10][9]~q\,
	datad => \mem|out_dat_add~73_combout\,
	combout => \mem|out_dat_add~74_combout\);

-- Location: FF_X21_Y14_N23
\mem|Mem[5][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mux|IR~11_combout\,
	sload => VCC,
	ena => \mem|Mem[5][9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[5][9]~q\);

-- Location: FF_X21_Y17_N5
\mem|Mem[3][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux|IR~11_combout\,
	ena => \mem|Mem[3][11]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[3][9]~q\);

-- Location: FF_X22_Y14_N17
\mem|Mem[6][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mux|IR~12_combout\,
	sload => VCC,
	ena => \mem|Mem[6][2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[6][10]~q\);

-- Location: FF_X21_Y14_N1
\mem|Mem[5][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem[5][10]~feeder_combout\,
	ena => \mem|Mem[5][9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[5][10]~q\);

-- Location: FF_X21_Y15_N25
\mem|Mem[4][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mux|IR~12_combout\,
	sload => VCC,
	ena => \mem|Mem[4][8]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[4][10]~q\);

-- Location: LCCOMB_X21_Y15_N24
\mem|out_dat_add~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~81_combout\ = (\mar1|MAR_out\(1) & (\mar1|MAR_out\(0))) # (!\mar1|MAR_out\(1) & ((\mar1|MAR_out\(0) & ((\mem|Mem[5][10]~q\))) # (!\mar1|MAR_out\(0) & (\mem|Mem[4][10]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(1),
	datab => \mar1|MAR_out\(0),
	datac => \mem|Mem[4][10]~q\,
	datad => \mem|Mem[5][10]~q\,
	combout => \mem|out_dat_add~81_combout\);

-- Location: FF_X20_Y14_N19
\mem|Mem[7][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem[7][10]~feeder_combout\,
	ena => \mem|Mem[7][3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[7][10]~q\);

-- Location: LCCOMB_X22_Y14_N16
\mem|out_dat_add~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~82_combout\ = (\mem|out_dat_add~81_combout\ & ((\mem|Mem[7][10]~q\) # ((!\mar1|MAR_out\(1))))) # (!\mem|out_dat_add~81_combout\ & (((\mem|Mem[6][10]~q\ & \mar1|MAR_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mem[7][10]~q\,
	datab => \mem|out_dat_add~81_combout\,
	datac => \mem|Mem[6][10]~q\,
	datad => \mar1|MAR_out\(1),
	combout => \mem|out_dat_add~82_combout\);

-- Location: FF_X21_Y18_N15
\mem|Mem[9][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem[9][10]~feeder_combout\,
	ena => \mem|Mem[9][9]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[9][10]~q\);

-- Location: FF_X24_Y18_N23
\mem|Mem[10][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem[10][10]~feeder_combout\,
	ena => \mem|Mem[10][17]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[10][10]~q\);

-- Location: FF_X22_Y18_N25
\mem|Mem[8][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mux|IR~12_combout\,
	sload => VCC,
	ena => \mem|Mem[8][17]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[8][10]~q\);

-- Location: LCCOMB_X22_Y18_N24
\mem|out_dat_add~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~83_combout\ = (\mar1|MAR_out\(1) & ((\mem|Mem[10][10]~q\) # ((\mar1|MAR_out\(0))))) # (!\mar1|MAR_out\(1) & (((\mem|Mem[8][10]~q\ & !\mar1|MAR_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mem[10][10]~q\,
	datab => \mar1|MAR_out\(1),
	datac => \mem|Mem[8][10]~q\,
	datad => \mar1|MAR_out\(0),
	combout => \mem|out_dat_add~83_combout\);

-- Location: FF_X22_Y18_N19
\mem|Mem[11][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \alu1|out\(10),
	sload => VCC,
	ena => \mem|Mem[11][17]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[11][10]~q\);

-- Location: LCCOMB_X22_Y18_N18
\mem|out_dat_add~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~84_combout\ = (\mar1|MAR_out\(0) & ((\mem|out_dat_add~83_combout\ & ((\mem|Mem[11][10]~q\))) # (!\mem|out_dat_add~83_combout\ & (\mem|Mem[9][10]~q\)))) # (!\mar1|MAR_out\(0) & (((\mem|out_dat_add~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mem[9][10]~q\,
	datab => \mar1|MAR_out\(0),
	datac => \mem|Mem[11][10]~q\,
	datad => \mem|out_dat_add~83_combout\,
	combout => \mem|out_dat_add~84_combout\);

-- Location: FF_X23_Y16_N5
\mem|Mem[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem[1][10]~feeder_combout\,
	ena => \mem|Mem[1][14]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[1][10]~q\);

-- Location: FF_X23_Y14_N13
\mem|Mem[2][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem[2][10]~feeder_combout\,
	ena => \mem|Mem[2][16]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[2][10]~q\);

-- Location: FF_X23_Y14_N31
\mem|Mem[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mux|IR~12_combout\,
	sload => VCC,
	ena => \mem|Mem[0][4]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[0][10]~q\);

-- Location: LCCOMB_X23_Y14_N30
\mem|out_dat_add~85\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~85_combout\ = (\mar1|MAR_out\(0) & (\mar1|MAR_out\(1))) # (!\mar1|MAR_out\(0) & ((\mar1|MAR_out\(1) & ((\mem|Mem[2][10]~q\))) # (!\mar1|MAR_out\(1) & (\mem|Mem[0][10]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(0),
	datab => \mar1|MAR_out\(1),
	datac => \mem|Mem[0][10]~q\,
	datad => \mem|Mem[2][10]~q\,
	combout => \mem|out_dat_add~85_combout\);

-- Location: FF_X23_Y16_N7
\mem|Mem[3][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mux|IR~12_combout\,
	sload => VCC,
	ena => \mem|Mem[3][11]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[3][10]~q\);

-- Location: LCCOMB_X23_Y16_N6
\mem|out_dat_add~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~86_combout\ = (\mar1|MAR_out\(0) & ((\mem|out_dat_add~85_combout\ & ((\mem|Mem[3][10]~q\))) # (!\mem|out_dat_add~85_combout\ & (\mem|Mem[1][10]~q\)))) # (!\mar1|MAR_out\(0) & (((\mem|out_dat_add~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(0),
	datab => \mem|Mem[1][10]~q\,
	datac => \mem|Mem[3][10]~q\,
	datad => \mem|out_dat_add~85_combout\,
	combout => \mem|out_dat_add~86_combout\);

-- Location: LCCOMB_X23_Y16_N8
\mem|out_dat_add~87\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~87_combout\ = (\mar1|MAR_out\(2) & (\mar1|MAR_out\(3))) # (!\mar1|MAR_out\(2) & ((\mar1|MAR_out\(3) & (\mem|out_dat_add~84_combout\)) # (!\mar1|MAR_out\(3) & ((\mem|out_dat_add~86_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(2),
	datab => \mar1|MAR_out\(3),
	datac => \mem|out_dat_add~84_combout\,
	datad => \mem|out_dat_add~86_combout\,
	combout => \mem|out_dat_add~87_combout\);

-- Location: FF_X20_Y16_N25
\mem|Mem[12][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem[12][10]~feeder_combout\,
	ena => \mem|Mem[12][17]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[12][10]~q\);

-- Location: LCCOMB_X19_Y16_N10
\mem|out_dat_add~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~88_combout\ = (\mem|out_dat_add~87_combout\ & (((\mem|Mem[12][10]~q\)) # (!\mar1|MAR_out\(2)))) # (!\mem|out_dat_add~87_combout\ & (\mar1|MAR_out\(2) & (\mem|out_dat_add~82_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|out_dat_add~87_combout\,
	datab => \mar1|MAR_out\(2),
	datac => \mem|out_dat_add~82_combout\,
	datad => \mem|Mem[12][10]~q\,
	combout => \mem|out_dat_add~88_combout\);

-- Location: FF_X24_Y18_N1
\mem|Mem[10][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \alu1|out\(11),
	sload => VCC,
	ena => \mem|Mem[10][17]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[10][11]~q\);

-- Location: FF_X21_Y18_N25
\mem|Mem[9][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem[9][11]~feeder_combout\,
	ena => \mem|Mem[9][9]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[9][11]~q\);

-- Location: FF_X22_Y18_N29
\mem|Mem[8][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mux|IR~13_combout\,
	sload => VCC,
	ena => \mem|Mem[8][17]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[8][11]~q\);

-- Location: LCCOMB_X22_Y18_N28
\mem|out_dat_add~89\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~89_combout\ = (\mar1|MAR_out\(0) & ((\mar1|MAR_out\(1)) # ((\mem|Mem[9][11]~q\)))) # (!\mar1|MAR_out\(0) & (!\mar1|MAR_out\(1) & (\mem|Mem[8][11]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(0),
	datab => \mar1|MAR_out\(1),
	datac => \mem|Mem[8][11]~q\,
	datad => \mem|Mem[9][11]~q\,
	combout => \mem|out_dat_add~89_combout\);

-- Location: FF_X22_Y18_N7
\mem|Mem[11][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem[11][11]~feeder_combout\,
	ena => \mem|Mem[11][17]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[11][11]~q\);

-- Location: LCCOMB_X24_Y18_N0
\mem|out_dat_add~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~90_combout\ = (\mar1|MAR_out\(1) & ((\mem|out_dat_add~89_combout\ & (\mem|Mem[11][11]~q\)) # (!\mem|out_dat_add~89_combout\ & ((\mem|Mem[10][11]~q\))))) # (!\mar1|MAR_out\(1) & (((\mem|out_dat_add~89_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(1),
	datab => \mem|Mem[11][11]~q\,
	datac => \mem|Mem[10][11]~q\,
	datad => \mem|out_dat_add~89_combout\,
	combout => \mem|out_dat_add~90_combout\);

-- Location: FF_X21_Y14_N19
\mem|Mem[5][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mux|IR~13_combout\,
	sload => VCC,
	ena => \mem|Mem[5][9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[5][11]~q\);

-- Location: FF_X22_Y14_N3
\mem|Mem[6][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem[6][11]~feeder_combout\,
	ena => \mem|Mem[6][2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[6][11]~q\);

-- Location: FF_X21_Y15_N11
\mem|Mem[4][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mux|IR~13_combout\,
	sload => VCC,
	ena => \mem|Mem[4][8]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[4][11]~q\);

-- Location: LCCOMB_X21_Y15_N10
\mem|out_dat_add~91\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~91_combout\ = (\mar1|MAR_out\(1) & ((\mar1|MAR_out\(0)) # ((\mem|Mem[6][11]~q\)))) # (!\mar1|MAR_out\(1) & (!\mar1|MAR_out\(0) & (\mem|Mem[4][11]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(1),
	datab => \mar1|MAR_out\(0),
	datac => \mem|Mem[4][11]~q\,
	datad => \mem|Mem[6][11]~q\,
	combout => \mem|out_dat_add~91_combout\);

-- Location: FF_X20_Y14_N5
\mem|Mem[7][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mux|IR~13_combout\,
	sload => VCC,
	ena => \mem|Mem[7][3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[7][11]~q\);

-- Location: LCCOMB_X20_Y14_N4
\mem|out_dat_add~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~92_combout\ = (\mar1|MAR_out\(0) & ((\mem|out_dat_add~91_combout\ & ((\mem|Mem[7][11]~q\))) # (!\mem|out_dat_add~91_combout\ & (\mem|Mem[5][11]~q\)))) # (!\mar1|MAR_out\(0) & (((\mem|out_dat_add~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mem[5][11]~q\,
	datab => \mar1|MAR_out\(0),
	datac => \mem|Mem[7][11]~q\,
	datad => \mem|out_dat_add~91_combout\,
	combout => \mem|out_dat_add~92_combout\);

-- Location: FF_X23_Y14_N25
\mem|Mem[2][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mux|IR~13_combout\,
	sload => VCC,
	ena => \mem|Mem[2][16]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[2][11]~q\);

-- Location: FF_X23_Y16_N27
\mem|Mem[1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem[1][11]~feeder_combout\,
	ena => \mem|Mem[1][14]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[1][11]~q\);

-- Location: FF_X23_Y15_N9
\mem|Mem[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mux|IR~13_combout\,
	sload => VCC,
	ena => \mem|Mem[0][4]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[0][11]~q\);

-- Location: LCCOMB_X23_Y15_N8
\mem|out_dat_add~93\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~93_combout\ = (\mar1|MAR_out\(0) & ((\mar1|MAR_out\(1)) # ((\mem|Mem[1][11]~q\)))) # (!\mar1|MAR_out\(0) & (!\mar1|MAR_out\(1) & (\mem|Mem[0][11]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(0),
	datab => \mar1|MAR_out\(1),
	datac => \mem|Mem[0][11]~q\,
	datad => \mem|Mem[1][11]~q\,
	combout => \mem|out_dat_add~93_combout\);

-- Location: FF_X22_Y17_N21
\mem|Mem[3][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux|IR~13_combout\,
	ena => \mem|Mem[3][11]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[3][11]~q\);

-- Location: LCCOMB_X23_Y14_N24
\mem|out_dat_add~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~94_combout\ = (\mar1|MAR_out\(1) & ((\mem|out_dat_add~93_combout\ & (\mem|Mem[3][11]~q\)) # (!\mem|out_dat_add~93_combout\ & ((\mem|Mem[2][11]~q\))))) # (!\mar1|MAR_out\(1) & (((\mem|out_dat_add~93_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mem[3][11]~q\,
	datab => \mar1|MAR_out\(1),
	datac => \mem|Mem[2][11]~q\,
	datad => \mem|out_dat_add~93_combout\,
	combout => \mem|out_dat_add~94_combout\);

-- Location: LCCOMB_X20_Y14_N14
\mem|out_dat_add~95\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~95_combout\ = (\mar1|MAR_out\(3) & (\mar1|MAR_out\(2))) # (!\mar1|MAR_out\(3) & ((\mar1|MAR_out\(2) & (\mem|out_dat_add~92_combout\)) # (!\mar1|MAR_out\(2) & ((\mem|out_dat_add~94_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(3),
	datab => \mar1|MAR_out\(2),
	datac => \mem|out_dat_add~92_combout\,
	datad => \mem|out_dat_add~94_combout\,
	combout => \mem|out_dat_add~95_combout\);

-- Location: FF_X20_Y16_N27
\mem|Mem[12][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem[12][11]~feeder_combout\,
	ena => \mem|Mem[12][17]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[12][11]~q\);

-- Location: LCCOMB_X19_Y16_N12
\mem|out_dat_add~96\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~96_combout\ = (\mar1|MAR_out\(3) & ((\mem|out_dat_add~95_combout\ & ((\mem|Mem[12][11]~q\))) # (!\mem|out_dat_add~95_combout\ & (\mem|out_dat_add~90_combout\)))) # (!\mar1|MAR_out\(3) & (((\mem|out_dat_add~95_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(3),
	datab => \mem|out_dat_add~90_combout\,
	datac => \mem|Mem[12][11]~q\,
	datad => \mem|out_dat_add~95_combout\,
	combout => \mem|out_dat_add~96_combout\);

-- Location: FF_X20_Y14_N1
\mem|Mem[7][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem[7][12]~feeder_combout\,
	ena => \mem|Mem[7][3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[7][12]~q\);

-- Location: FF_X21_Y18_N3
\mem|Mem[9][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem[9][12]~feeder_combout\,
	ena => \mem|Mem[9][9]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[9][12]~q\);

-- Location: FF_X23_Y18_N5
\mem|Mem[10][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem[10][12]~feeder_combout\,
	ena => \mem|Mem[10][17]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[10][12]~q\);

-- Location: FF_X22_Y16_N29
\mem|Mem[3][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux|IR~14_combout\,
	ena => \mem|Mem[3][11]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[3][12]~q\);

-- Location: FF_X23_Y18_N23
\mem|Mem[10][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \alu1|out\(13),
	sload => VCC,
	ena => \mem|Mem[10][17]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[10][13]~q\);

-- Location: FF_X21_Y18_N29
\mem|Mem[9][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem[9][13]~feeder_combout\,
	ena => \mem|Mem[9][9]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[9][13]~q\);

-- Location: FF_X22_Y18_N21
\mem|Mem[8][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mux|IR~15_combout\,
	sload => VCC,
	ena => \mem|Mem[8][17]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[8][13]~q\);

-- Location: LCCOMB_X22_Y18_N20
\mem|out_dat_add~105\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~105_combout\ = (\mar1|MAR_out\(0) & ((\mar1|MAR_out\(1)) # ((\mem|Mem[9][13]~q\)))) # (!\mar1|MAR_out\(0) & (!\mar1|MAR_out\(1) & (\mem|Mem[8][13]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(0),
	datab => \mar1|MAR_out\(1),
	datac => \mem|Mem[8][13]~q\,
	datad => \mem|Mem[9][13]~q\,
	combout => \mem|out_dat_add~105_combout\);

-- Location: FF_X22_Y18_N31
\mem|Mem[11][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem[11][13]~feeder_combout\,
	ena => \mem|Mem[11][17]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[11][13]~q\);

-- Location: LCCOMB_X23_Y18_N22
\mem|out_dat_add~106\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~106_combout\ = (\mar1|MAR_out\(1) & ((\mem|out_dat_add~105_combout\ & (\mem|Mem[11][13]~q\)) # (!\mem|out_dat_add~105_combout\ & ((\mem|Mem[10][13]~q\))))) # (!\mar1|MAR_out\(1) & (((\mem|out_dat_add~105_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(1),
	datab => \mem|Mem[11][13]~q\,
	datac => \mem|Mem[10][13]~q\,
	datad => \mem|out_dat_add~105_combout\,
	combout => \mem|out_dat_add~106_combout\);

-- Location: FF_X21_Y14_N7
\mem|Mem[5][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem[5][13]~feeder_combout\,
	ena => \mem|Mem[5][9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[5][13]~q\);

-- Location: FF_X24_Y15_N21
\mem|Mem[6][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem~31_combout\,
	ena => \mem|Mem[6][2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[6][13]~q\);

-- Location: FF_X20_Y14_N11
\mem|Mem[4][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mux|IR~15_combout\,
	sload => VCC,
	ena => \mem|Mem[4][8]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[4][13]~q\);

-- Location: LCCOMB_X20_Y14_N10
\mem|out_dat_add~107\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~107_combout\ = (\mar1|MAR_out\(1) & ((\mar1|MAR_out\(0)) # ((\mem|Mem[6][13]~q\)))) # (!\mar1|MAR_out\(1) & (!\mar1|MAR_out\(0) & (\mem|Mem[4][13]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(1),
	datab => \mar1|MAR_out\(0),
	datac => \mem|Mem[4][13]~q\,
	datad => \mem|Mem[6][13]~q\,
	combout => \mem|out_dat_add~107_combout\);

-- Location: FF_X20_Y14_N13
\mem|Mem[7][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mux|IR~15_combout\,
	sload => VCC,
	ena => \mem|Mem[7][3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[7][13]~q\);

-- Location: LCCOMB_X20_Y14_N12
\mem|out_dat_add~108\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~108_combout\ = (\mar1|MAR_out\(0) & ((\mem|out_dat_add~107_combout\ & ((\mem|Mem[7][13]~q\))) # (!\mem|out_dat_add~107_combout\ & (\mem|Mem[5][13]~q\)))) # (!\mar1|MAR_out\(0) & (((\mem|out_dat_add~107_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mem[5][13]~q\,
	datab => \mar1|MAR_out\(0),
	datac => \mem|Mem[7][13]~q\,
	datad => \mem|out_dat_add~107_combout\,
	combout => \mem|out_dat_add~108_combout\);

-- Location: FF_X23_Y14_N29
\mem|Mem[2][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem[2][13]~feeder_combout\,
	ena => \mem|Mem[2][16]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[2][13]~q\);

-- Location: FF_X22_Y12_N29
\mem|Mem[1][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem[1][13]~feeder_combout\,
	ena => \mem|Mem[1][14]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[1][13]~q\);

-- Location: FF_X23_Y15_N13
\mem|Mem[0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mux|IR~15_combout\,
	sload => VCC,
	ena => \mem|Mem[0][4]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[0][13]~q\);

-- Location: LCCOMB_X23_Y15_N12
\mem|out_dat_add~109\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~109_combout\ = (\mar1|MAR_out\(1) & (\mar1|MAR_out\(0))) # (!\mar1|MAR_out\(1) & ((\mar1|MAR_out\(0) & ((\mem|Mem[1][13]~q\))) # (!\mar1|MAR_out\(0) & (\mem|Mem[0][13]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(1),
	datab => \mar1|MAR_out\(0),
	datac => \mem|Mem[0][13]~q\,
	datad => \mem|Mem[1][13]~q\,
	combout => \mem|out_dat_add~109_combout\);

-- Location: FF_X23_Y16_N1
\mem|Mem[3][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mux|IR~15_combout\,
	sload => VCC,
	ena => \mem|Mem[3][11]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[3][13]~q\);

-- Location: LCCOMB_X23_Y16_N0
\mem|out_dat_add~110\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~110_combout\ = (\mar1|MAR_out\(1) & ((\mem|out_dat_add~109_combout\ & ((\mem|Mem[3][13]~q\))) # (!\mem|out_dat_add~109_combout\ & (\mem|Mem[2][13]~q\)))) # (!\mar1|MAR_out\(1) & (((\mem|out_dat_add~109_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(1),
	datab => \mem|Mem[2][13]~q\,
	datac => \mem|Mem[3][13]~q\,
	datad => \mem|out_dat_add~109_combout\,
	combout => \mem|out_dat_add~110_combout\);

-- Location: LCCOMB_X23_Y16_N10
\mem|out_dat_add~111\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~111_combout\ = (\mar1|MAR_out\(3) & (((\mar1|MAR_out\(2))))) # (!\mar1|MAR_out\(3) & ((\mar1|MAR_out\(2) & ((\mem|out_dat_add~108_combout\))) # (!\mar1|MAR_out\(2) & (\mem|out_dat_add~110_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(3),
	datab => \mem|out_dat_add~110_combout\,
	datac => \mar1|MAR_out\(2),
	datad => \mem|out_dat_add~108_combout\,
	combout => \mem|out_dat_add~111_combout\);

-- Location: FF_X20_Y16_N29
\mem|Mem[12][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \alu1|out\(13),
	ena => \mem|Mem[12][17]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[12][13]~q\);

-- Location: LCCOMB_X19_Y16_N16
\mem|out_dat_add~112\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~112_combout\ = (\mar1|MAR_out\(3) & ((\mem|out_dat_add~111_combout\ & ((\mem|Mem[12][13]~q\))) # (!\mem|out_dat_add~111_combout\ & (\mem|out_dat_add~106_combout\)))) # (!\mar1|MAR_out\(3) & (((\mem|out_dat_add~111_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(3),
	datab => \mem|out_dat_add~106_combout\,
	datac => \mem|Mem[12][13]~q\,
	datad => \mem|out_dat_add~111_combout\,
	combout => \mem|out_dat_add~112_combout\);

-- Location: FF_X20_Y14_N7
\mem|Mem[7][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem[7][14]~feeder_combout\,
	ena => \mem|Mem[7][3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[7][14]~q\);

-- Location: FF_X23_Y18_N27
\mem|Mem[10][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \alu1|out\(15),
	sload => VCC,
	ena => \mem|Mem[10][17]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[10][15]~q\);

-- Location: FF_X21_Y18_N17
\mem|Mem[9][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem[9][15]~feeder_combout\,
	ena => \mem|Mem[9][9]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[9][15]~q\);

-- Location: FF_X22_Y18_N5
\mem|Mem[8][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mux|IR~17_combout\,
	sload => VCC,
	ena => \mem|Mem[8][17]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[8][15]~q\);

-- Location: LCCOMB_X22_Y18_N4
\mem|out_dat_add~121\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~121_combout\ = (\mar1|MAR_out\(0) & ((\mem|Mem[9][15]~q\) # ((\mar1|MAR_out\(1))))) # (!\mar1|MAR_out\(0) & (((\mem|Mem[8][15]~q\ & !\mar1|MAR_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mem[9][15]~q\,
	datab => \mar1|MAR_out\(0),
	datac => \mem|Mem[8][15]~q\,
	datad => \mar1|MAR_out\(1),
	combout => \mem|out_dat_add~121_combout\);

-- Location: FF_X23_Y18_N29
\mem|Mem[11][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem[11][15]~feeder_combout\,
	ena => \mem|Mem[11][17]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[11][15]~q\);

-- Location: LCCOMB_X23_Y18_N26
\mem|out_dat_add~122\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~122_combout\ = (\mar1|MAR_out\(1) & ((\mem|out_dat_add~121_combout\ & (\mem|Mem[11][15]~q\)) # (!\mem|out_dat_add~121_combout\ & ((\mem|Mem[10][15]~q\))))) # (!\mar1|MAR_out\(1) & (((\mem|out_dat_add~121_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(1),
	datab => \mem|Mem[11][15]~q\,
	datac => \mem|Mem[10][15]~q\,
	datad => \mem|out_dat_add~121_combout\,
	combout => \mem|out_dat_add~122_combout\);

-- Location: FF_X24_Y16_N31
\mem|Mem[5][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem[5][15]~feeder_combout\,
	ena => \mem|Mem[5][9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[5][15]~q\);

-- Location: FF_X23_Y16_N31
\mem|Mem[1][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem[1][15]~feeder_combout\,
	ena => \mem|Mem[1][14]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[1][15]~q\);

-- Location: FF_X24_Y15_N29
\mem|Mem[6][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mux|IR~18_combout\,
	sload => VCC,
	ena => \mem|Mem[6][2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[6][16]~q\);

-- Location: FF_X24_Y16_N19
\mem|Mem[5][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem[5][16]~feeder_combout\,
	ena => \mem|Mem[5][9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[5][16]~q\);

-- Location: FF_X24_Y15_N31
\mem|Mem[4][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mux|IR~18_combout\,
	sload => VCC,
	ena => \mem|Mem[4][8]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[4][16]~q\);

-- Location: LCCOMB_X24_Y15_N30
\mem|out_dat_add~129\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~129_combout\ = (\mar1|MAR_out\(1) & (\mar1|MAR_out\(0))) # (!\mar1|MAR_out\(1) & ((\mar1|MAR_out\(0) & ((\mem|Mem[5][16]~q\))) # (!\mar1|MAR_out\(0) & (\mem|Mem[4][16]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(1),
	datab => \mar1|MAR_out\(0),
	datac => \mem|Mem[4][16]~q\,
	datad => \mem|Mem[5][16]~q\,
	combout => \mem|out_dat_add~129_combout\);

-- Location: FF_X24_Y17_N17
\mem|Mem[7][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem[7][16]~feeder_combout\,
	ena => \mem|Mem[7][3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[7][16]~q\);

-- Location: LCCOMB_X24_Y15_N28
\mem|out_dat_add~130\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~130_combout\ = (\mem|out_dat_add~129_combout\ & (((\mem|Mem[7][16]~q\)) # (!\mar1|MAR_out\(1)))) # (!\mem|out_dat_add~129_combout\ & (\mar1|MAR_out\(1) & (\mem|Mem[6][16]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|out_dat_add~129_combout\,
	datab => \mar1|MAR_out\(1),
	datac => \mem|Mem[6][16]~q\,
	datad => \mem|Mem[7][16]~q\,
	combout => \mem|out_dat_add~130_combout\);

-- Location: FF_X21_Y18_N19
\mem|Mem[9][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem[9][16]~feeder_combout\,
	ena => \mem|Mem[9][9]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[9][16]~q\);

-- Location: FF_X23_Y18_N31
\mem|Mem[10][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem[10][16]~feeder_combout\,
	ena => \mem|Mem[10][17]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[10][16]~q\);

-- Location: FF_X24_Y17_N3
\mem|Mem[8][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mux|IR~18_combout\,
	sload => VCC,
	ena => \mem|Mem[8][17]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[8][16]~q\);

-- Location: LCCOMB_X24_Y17_N2
\mem|out_dat_add~131\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~131_combout\ = (\mar1|MAR_out\(0) & (((\mar1|MAR_out\(1))))) # (!\mar1|MAR_out\(0) & ((\mar1|MAR_out\(1) & (\mem|Mem[10][16]~q\)) # (!\mar1|MAR_out\(1) & ((\mem|Mem[8][16]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mem[10][16]~q\,
	datab => \mar1|MAR_out\(0),
	datac => \mem|Mem[8][16]~q\,
	datad => \mar1|MAR_out\(1),
	combout => \mem|out_dat_add~131_combout\);

-- Location: FF_X21_Y18_N13
\mem|Mem[11][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \alu1|out\(16),
	sload => VCC,
	ena => \mem|Mem[11][17]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[11][16]~q\);

-- Location: LCCOMB_X21_Y18_N12
\mem|out_dat_add~132\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~132_combout\ = (\mar1|MAR_out\(0) & ((\mem|out_dat_add~131_combout\ & ((\mem|Mem[11][16]~q\))) # (!\mem|out_dat_add~131_combout\ & (\mem|Mem[9][16]~q\)))) # (!\mar1|MAR_out\(0) & (((\mem|out_dat_add~131_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(0),
	datab => \mem|Mem[9][16]~q\,
	datac => \mem|Mem[11][16]~q\,
	datad => \mem|out_dat_add~131_combout\,
	combout => \mem|out_dat_add~132_combout\);

-- Location: FF_X23_Y16_N17
\mem|Mem[1][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem[1][16]~feeder_combout\,
	ena => \mem|Mem[1][14]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[1][16]~q\);

-- Location: FF_X24_Y16_N5
\mem|Mem[2][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem[2][16]~feeder_combout\,
	ena => \mem|Mem[2][16]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[2][16]~q\);

-- Location: FF_X23_Y15_N27
\mem|Mem[0][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mux|IR~18_combout\,
	sload => VCC,
	ena => \mem|Mem[0][4]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[0][16]~q\);

-- Location: LCCOMB_X23_Y15_N26
\mem|out_dat_add~133\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~133_combout\ = (\mar1|MAR_out\(1) & ((\mar1|MAR_out\(0)) # ((\mem|Mem[2][16]~q\)))) # (!\mar1|MAR_out\(1) & (!\mar1|MAR_out\(0) & (\mem|Mem[0][16]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(1),
	datab => \mar1|MAR_out\(0),
	datac => \mem|Mem[0][16]~q\,
	datad => \mem|Mem[2][16]~q\,
	combout => \mem|out_dat_add~133_combout\);

-- Location: FF_X23_Y16_N3
\mem|Mem[3][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mem|Mem~34_combout\,
	sload => VCC,
	ena => \mem|Mem[3][11]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[3][16]~q\);

-- Location: LCCOMB_X23_Y16_N2
\mem|out_dat_add~134\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~134_combout\ = (\mar1|MAR_out\(0) & ((\mem|out_dat_add~133_combout\ & ((\mem|Mem[3][16]~q\))) # (!\mem|out_dat_add~133_combout\ & (\mem|Mem[1][16]~q\)))) # (!\mar1|MAR_out\(0) & (((\mem|out_dat_add~133_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(0),
	datab => \mem|Mem[1][16]~q\,
	datac => \mem|Mem[3][16]~q\,
	datad => \mem|out_dat_add~133_combout\,
	combout => \mem|out_dat_add~134_combout\);

-- Location: LCCOMB_X23_Y16_N12
\mem|out_dat_add~135\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~135_combout\ = (\mar1|MAR_out\(3) & (((\mar1|MAR_out\(2)) # (\mem|out_dat_add~132_combout\)))) # (!\mar1|MAR_out\(3) & (\mem|out_dat_add~134_combout\ & (!\mar1|MAR_out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(3),
	datab => \mem|out_dat_add~134_combout\,
	datac => \mar1|MAR_out\(2),
	datad => \mem|out_dat_add~132_combout\,
	combout => \mem|out_dat_add~135_combout\);

-- Location: FF_X20_Y17_N21
\mem|Mem[12][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \alu1|out\(16),
	ena => \mem|Mem[12][17]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[12][16]~q\);

-- Location: LCCOMB_X19_Y16_N14
\mem|out_dat_add~136\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~136_combout\ = (\mar1|MAR_out\(2) & ((\mem|out_dat_add~135_combout\ & (\mem|Mem[12][16]~q\)) # (!\mem|out_dat_add~135_combout\ & ((\mem|out_dat_add~130_combout\))))) # (!\mar1|MAR_out\(2) & (((\mem|out_dat_add~135_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(2),
	datab => \mem|Mem[12][16]~q\,
	datac => \mem|out_dat_add~135_combout\,
	datad => \mem|out_dat_add~130_combout\,
	combout => \mem|out_dat_add~136_combout\);

-- Location: FF_X23_Y18_N1
\mem|Mem[10][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \alu1|out\(17),
	sload => VCC,
	ena => \mem|Mem[10][17]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[10][17]~q\);

-- Location: FF_X21_Y18_N31
\mem|Mem[9][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem[9][17]~feeder_combout\,
	ena => \mem|Mem[9][9]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[9][17]~q\);

-- Location: FF_X24_Y17_N13
\mem|Mem[8][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mem|Mem~35_combout\,
	sload => VCC,
	ena => \mem|Mem[8][17]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[8][17]~q\);

-- Location: LCCOMB_X24_Y17_N12
\mem|out_dat_add~137\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~137_combout\ = (\mar1|MAR_out\(0) & ((\mar1|MAR_out\(1)) # ((\mem|Mem[9][17]~q\)))) # (!\mar1|MAR_out\(0) & (!\mar1|MAR_out\(1) & (\mem|Mem[8][17]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(0),
	datab => \mar1|MAR_out\(1),
	datac => \mem|Mem[8][17]~q\,
	datad => \mem|Mem[9][17]~q\,
	combout => \mem|out_dat_add~137_combout\);

-- Location: FF_X23_Y18_N19
\mem|Mem[11][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem[11][17]~feeder_combout\,
	ena => \mem|Mem[11][17]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[11][17]~q\);

-- Location: LCCOMB_X23_Y18_N0
\mem|out_dat_add~138\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~138_combout\ = (\mar1|MAR_out\(1) & ((\mem|out_dat_add~137_combout\ & (\mem|Mem[11][17]~q\)) # (!\mem|out_dat_add~137_combout\ & ((\mem|Mem[10][17]~q\))))) # (!\mar1|MAR_out\(1) & (((\mem|out_dat_add~137_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(1),
	datab => \mem|Mem[11][17]~q\,
	datac => \mem|Mem[10][17]~q\,
	datad => \mem|out_dat_add~137_combout\,
	combout => \mem|out_dat_add~138_combout\);

-- Location: FF_X24_Y16_N23
\mem|Mem[5][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem[5][17]~feeder_combout\,
	ena => \mem|Mem[5][9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[5][17]~q\);

-- Location: FF_X24_Y15_N1
\mem|Mem[6][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mem|Mem~35_combout\,
	sload => VCC,
	ena => \mem|Mem[6][2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[6][17]~q\);

-- Location: FF_X24_Y15_N3
\mem|Mem[4][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mem|Mem~35_combout\,
	sload => VCC,
	ena => \mem|Mem[4][8]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[4][17]~q\);

-- Location: LCCOMB_X24_Y15_N0
\mem|out_dat_add~139\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~139_combout\ = (\mar1|MAR_out\(0) & (\mar1|MAR_out\(1))) # (!\mar1|MAR_out\(0) & ((\mar1|MAR_out\(1) & (\mem|Mem[6][17]~q\)) # (!\mar1|MAR_out\(1) & ((\mem|Mem[4][17]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(0),
	datab => \mar1|MAR_out\(1),
	datac => \mem|Mem[6][17]~q\,
	datad => \mem|Mem[4][17]~q\,
	combout => \mem|out_dat_add~139_combout\);

-- Location: FF_X24_Y17_N31
\mem|Mem[7][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mem|Mem~35_combout\,
	sload => VCC,
	ena => \mem|Mem[7][3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[7][17]~q\);

-- Location: LCCOMB_X24_Y17_N30
\mem|out_dat_add~140\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~140_combout\ = (\mar1|MAR_out\(0) & ((\mem|out_dat_add~139_combout\ & ((\mem|Mem[7][17]~q\))) # (!\mem|out_dat_add~139_combout\ & (\mem|Mem[5][17]~q\)))) # (!\mar1|MAR_out\(0) & (((\mem|out_dat_add~139_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(0),
	datab => \mem|Mem[5][17]~q\,
	datac => \mem|Mem[7][17]~q\,
	datad => \mem|out_dat_add~139_combout\,
	combout => \mem|out_dat_add~140_combout\);

-- Location: FF_X24_Y16_N1
\mem|Mem[2][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mux|IR~19_combout\,
	sload => VCC,
	ena => \mem|Mem[2][16]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[2][17]~q\);

-- Location: FF_X23_Y16_N15
\mem|Mem[1][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem[1][17]~feeder_combout\,
	ena => \mem|Mem[1][14]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[1][17]~q\);

-- Location: FF_X23_Y15_N21
\mem|Mem[0][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mux|IR~19_combout\,
	sload => VCC,
	ena => \mem|Mem[0][4]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[0][17]~q\);

-- Location: LCCOMB_X23_Y15_N20
\mem|out_dat_add~141\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~141_combout\ = (\mar1|MAR_out\(0) & ((\mar1|MAR_out\(1)) # ((\mem|Mem[1][17]~q\)))) # (!\mar1|MAR_out\(0) & (!\mar1|MAR_out\(1) & (\mem|Mem[0][17]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(0),
	datab => \mar1|MAR_out\(1),
	datac => \mem|Mem[0][17]~q\,
	datad => \mem|Mem[1][17]~q\,
	combout => \mem|out_dat_add~141_combout\);

-- Location: FF_X20_Y17_N25
\mem|Mem[3][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux|IR~19_combout\,
	ena => \mem|Mem[3][11]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[3][17]~q\);

-- Location: LCCOMB_X24_Y16_N0
\mem|out_dat_add~142\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~142_combout\ = (\mar1|MAR_out\(1) & ((\mem|out_dat_add~141_combout\ & (\mem|Mem[3][17]~q\)) # (!\mem|out_dat_add~141_combout\ & ((\mem|Mem[2][17]~q\))))) # (!\mar1|MAR_out\(1) & (((\mem|out_dat_add~141_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mem[3][17]~q\,
	datab => \mar1|MAR_out\(1),
	datac => \mem|Mem[2][17]~q\,
	datad => \mem|out_dat_add~141_combout\,
	combout => \mem|out_dat_add~142_combout\);

-- Location: LCCOMB_X24_Y16_N10
\mem|out_dat_add~143\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~143_combout\ = (\mar1|MAR_out\(3) & (\mar1|MAR_out\(2))) # (!\mar1|MAR_out\(3) & ((\mar1|MAR_out\(2) & (\mem|out_dat_add~140_combout\)) # (!\mar1|MAR_out\(2) & ((\mem|out_dat_add~142_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(3),
	datab => \mar1|MAR_out\(2),
	datac => \mem|out_dat_add~140_combout\,
	datad => \mem|out_dat_add~142_combout\,
	combout => \mem|out_dat_add~143_combout\);

-- Location: FF_X20_Y17_N31
\mem|Mem[12][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \alu1|out\(17),
	ena => \mem|Mem[12][17]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[12][17]~q\);

-- Location: LCCOMB_X19_Y16_N24
\mem|out_dat_add~144\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~144_combout\ = (\mar1|MAR_out\(3) & ((\mem|out_dat_add~143_combout\ & (\mem|Mem[12][17]~q\)) # (!\mem|out_dat_add~143_combout\ & ((\mem|out_dat_add~138_combout\))))) # (!\mar1|MAR_out\(3) & (((\mem|out_dat_add~143_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mem[12][17]~q\,
	datab => \mar1|MAR_out\(3),
	datac => \mem|out_dat_add~143_combout\,
	datad => \mem|out_dat_add~138_combout\,
	combout => \mem|out_dat_add~144_combout\);

-- Location: LCCOMB_X22_Y14_N10
\mem|Mem~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem~0_combout\ = (\rst~input_o\) # (\alu1|out\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datad => \alu1|out\(0),
	combout => \mem|Mem~0_combout\);

-- Location: FF_X24_Y14_N21
\mar1|MAR_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mar1|MAR_out~7_combout\,
	ena => \mar1|MAR[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mar1|MAR_out\(7));

-- Location: FF_X24_Y14_N17
\mar1|MAR_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mar1|MAR_out~9_combout\,
	ena => \mar1|MAR[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mar1|MAR_out\(9));

-- Location: FF_X21_Y17_N17
\mar1|MAR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \alu1|out\(0),
	ena => \mar1|MAR[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mar1|MAR\(0));

-- Location: FF_X21_Y17_N27
\mar1|MAR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \alu1|out\(2),
	ena => \mar1|MAR[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mar1|MAR\(2));

-- Location: LCCOMB_X20_Y14_N16
\mem|Mem~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem~28_combout\ = (\rst~input_o\) # (\alu1|out\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datac => \alu1|out\(6),
	combout => \mem|Mem~28_combout\);

-- Location: LCCOMB_X20_Y14_N28
\mem|Mem~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem~29_combout\ = (\rst~input_o\) # (\alu1|out\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datad => \alu1|out\(8),
	combout => \mem|Mem~29_combout\);

-- Location: LCCOMB_X24_Y15_N20
\mem|Mem~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem~31_combout\ = (\rst~input_o\) # (\alu1|out\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datad => \alu1|out\(13),
	combout => \mem|Mem~31_combout\);

-- Location: LCCOMB_X24_Y16_N20
\mem|Mem~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem~34_combout\ = (\rst~input_o\) # (\alu1|out\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datad => \alu1|out\(16),
	combout => \mem|Mem~34_combout\);

-- Location: LCCOMB_X24_Y15_N4
\mem|Mem~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem~35_combout\ = (\rst~input_o\) # (\alu1|out\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datad => \alu1|out\(17),
	combout => \mem|Mem~35_combout\);

-- Location: FF_X19_Y15_N21
\mar1|MAR[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \alu1|out\(7),
	ena => \mar1|MAR[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mar1|MAR\(7));

-- Location: LCCOMB_X24_Y14_N20
\mar1|MAR_out~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mar1|MAR_out~7_combout\ = (!\rst~input_o\ & \mar1|MAR\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	datad => \mar1|MAR\(7),
	combout => \mar1|MAR_out~7_combout\);

-- Location: FF_X21_Y17_N21
\mar1|MAR[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \alu1|out\(9),
	ena => \mar1|MAR[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mar1|MAR\(9));

-- Location: LCCOMB_X24_Y14_N16
\mar1|MAR_out~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mar1|MAR_out~9_combout\ = (\mar1|MAR\(9) & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR\(9),
	datac => \rst~input_o\,
	combout => \mar1|MAR_out~9_combout\);

-- Location: FF_X22_Y16_N15
\mar1|MAR[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \alu1|out\(12),
	ena => \mar1|MAR[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mar1|MAR\(12));

-- Location: LCCOMB_X22_Y20_N12
\cb|Mux5~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb|Mux5~7_combout\ = (\cb|Selector4~0_combout\ & ((\cb|count\(3) & ((\cb|count\(0)))) # (!\cb|count\(3) & (!\cb|Mux2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb|Mux2~3_combout\,
	datab => \cb|count\(3),
	datac => \cb|count\(0),
	datad => \cb|Selector4~0_combout\,
	combout => \cb|Mux5~7_combout\);

-- Location: LCCOMB_X22_Y21_N30
\cb|Mux8~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb|Mux8~7_combout\ = (\cb|count\(1) & (((!\mux|opcode\(1) & !\mux|opcode\(2))) # (!\cb|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb|count\(1),
	datab => \cb|count\(3),
	datac => \mux|opcode\(1),
	datad => \mux|opcode\(2),
	combout => \cb|Mux8~7_combout\);

-- Location: LCCOMB_X21_Y20_N22
\cb|Mux13~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb|Mux13~5_combout\ = (\cb|count\(0) & ((\cb|count\(1) & (\cb|count\(3) & \cb|ma_read~q\)) # (!\cb|count\(1) & ((\cb|count\(3)) # (\cb|ma_read~q\))))) # (!\cb|count\(0) & ((\cb|count\(1) & (!\cb|count\(3))) # (!\cb|count\(1) & (\cb|count\(3) & 
-- \cb|ma_read~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb|count\(0),
	datab => \cb|count\(1),
	datac => \cb|count\(3),
	datad => \cb|ma_read~q\,
	combout => \cb|Mux13~5_combout\);

-- Location: LCCOMB_X22_Y15_N10
\mem|Mem[8][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[8][1]~feeder_combout\ = \mux|AC~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux|AC~1_combout\,
	combout => \mem|Mem[8][1]~feeder_combout\);

-- Location: LCCOMB_X23_Y16_N24
\mem|Mem[1][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[1][1]~feeder_combout\ = \mux|AC~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux|AC~1_combout\,
	combout => \mem|Mem[1][1]~feeder_combout\);

-- Location: LCCOMB_X22_Y15_N8
\mem|Mem[9][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[9][1]~feeder_combout\ = \mux|IR~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux|IR~3_combout\,
	combout => \mem|Mem[9][1]~feeder_combout\);

-- Location: LCCOMB_X21_Y14_N12
\mem|Mem[5][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[5][1]~feeder_combout\ = \mux|IR~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux|IR~3_combout\,
	combout => \mem|Mem[5][1]~feeder_combout\);

-- Location: LCCOMB_X22_Y14_N14
\mem|Mem[6][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[6][1]~feeder_combout\ = \mux|IR~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux|IR~3_combout\,
	combout => \mem|Mem[6][1]~feeder_combout\);

-- Location: LCCOMB_X23_Y14_N20
\mem|Mem[2][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[2][2]~feeder_combout\ = \mux|AC~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux|AC~2_combout\,
	combout => \mem|Mem[2][2]~feeder_combout\);

-- Location: LCCOMB_X22_Y14_N26
\mem|Mem[1][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[1][2]~feeder_combout\ = \mux|AC~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux|AC~2_combout\,
	combout => \mem|Mem[1][2]~feeder_combout\);

-- Location: LCCOMB_X22_Y13_N20
\mem|Mem[7][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[7][2]~feeder_combout\ = \mux|IR~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux|IR~4_combout\,
	combout => \mem|Mem[7][2]~feeder_combout\);

-- Location: LCCOMB_X22_Y15_N14
\mem|Mem[9][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[9][2]~feeder_combout\ = \mux|IR~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux|IR~4_combout\,
	combout => \mem|Mem[9][2]~feeder_combout\);

-- Location: LCCOMB_X21_Y15_N18
\mem|Mem[4][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[4][2]~feeder_combout\ = \mux|IR~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux|IR~4_combout\,
	combout => \mem|Mem[4][2]~feeder_combout\);

-- Location: LCCOMB_X22_Y12_N8
\mux|IR[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux|IR[4]~feeder_combout\ = \mux|IR~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux|IR~6_combout\,
	combout => \mux|IR[4]~feeder_combout\);

-- Location: LCCOMB_X22_Y12_N0
\mem|Mem[1][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[1][4]~feeder_combout\ = \mux|IR~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux|IR~6_combout\,
	combout => \mem|Mem[1][4]~feeder_combout\);

-- Location: LCCOMB_X22_Y14_N22
\mem|Mem[6][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[6][5]~feeder_combout\ = \mux|AC~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux|AC~4_combout\,
	combout => \mem|Mem[6][5]~feeder_combout\);

-- Location: LCCOMB_X22_Y12_N10
\mem|Mem[1][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[1][5]~feeder_combout\ = \mux|IR~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux|IR~7_combout\,
	combout => \mem|Mem[1][5]~feeder_combout\);

-- Location: LCCOMB_X23_Y14_N2
\mem|Mem[2][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[2][5]~feeder_combout\ = \mux|IR~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux|IR~7_combout\,
	combout => \mem|Mem[2][5]~feeder_combout\);

-- Location: LCCOMB_X21_Y14_N24
\mem|Mem[5][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[5][5]~feeder_combout\ = \mux|IR~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux|IR~7_combout\,
	combout => \mem|Mem[5][5]~feeder_combout\);

-- Location: LCCOMB_X22_Y15_N6
\mem|Mem[9][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[9][5]~feeder_combout\ = \mux|IR~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux|IR~7_combout\,
	combout => \mem|Mem[9][5]~feeder_combout\);

-- Location: LCCOMB_X23_Y14_N4
\mem|Mem[2][6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[2][6]~feeder_combout\ = \mux|IR~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux|IR~8_combout\,
	combout => \mem|Mem[2][6]~feeder_combout\);

-- Location: LCCOMB_X22_Y12_N12
\mux|IR[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux|IR[6]~feeder_combout\ = \mux|IR~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux|IR~8_combout\,
	combout => \mux|IR[6]~feeder_combout\);

-- Location: LCCOMB_X22_Y12_N4
\mem|Mem[1][6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[1][6]~feeder_combout\ = \mux|IR~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux|IR~8_combout\,
	combout => \mem|Mem[1][6]~feeder_combout\);

-- Location: LCCOMB_X21_Y15_N26
\mem|Mem[4][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[4][7]~feeder_combout\ = \mux|IR~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux|IR~9_combout\,
	combout => \mem|Mem[4][7]~feeder_combout\);

-- Location: LCCOMB_X23_Y14_N6
\mem|Mem[2][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[2][7]~feeder_combout\ = \mux|IR~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux|IR~9_combout\,
	combout => \mem|Mem[2][7]~feeder_combout\);

-- Location: LCCOMB_X22_Y15_N28
\mem|Mem[9][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[9][7]~feeder_combout\ = \mux|IR~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux|IR~9_combout\,
	combout => \mem|Mem[9][7]~feeder_combout\);

-- Location: LCCOMB_X22_Y12_N14
\mem|Mem[1][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[1][7]~feeder_combout\ = \mux|IR~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux|IR~9_combout\,
	combout => \mem|Mem[1][7]~feeder_combout\);

-- Location: LCCOMB_X21_Y14_N20
\mem|Mem[5][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[5][7]~feeder_combout\ = \mux|IR~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux|IR~9_combout\,
	combout => \mem|Mem[5][7]~feeder_combout\);

-- Location: LCCOMB_X21_Y14_N14
\mem|Mem[5][8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[5][8]~feeder_combout\ = \mux|IR~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux|IR~10_combout\,
	combout => \mem|Mem[5][8]~feeder_combout\);

-- Location: LCCOMB_X22_Y12_N16
\mux|IR[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux|IR[8]~feeder_combout\ = \mux|IR~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux|IR~10_combout\,
	combout => \mux|IR[8]~feeder_combout\);

-- Location: LCCOMB_X21_Y18_N20
\mem|Mem[9][9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[9][9]~feeder_combout\ = \mux|IR~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux|IR~11_combout\,
	combout => \mem|Mem[9][9]~feeder_combout\);

-- Location: LCCOMB_X23_Y14_N12
\mem|Mem[2][10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[2][10]~feeder_combout\ = \mux|IR~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux|IR~12_combout\,
	combout => \mem|Mem[2][10]~feeder_combout\);

-- Location: LCCOMB_X21_Y14_N0
\mem|Mem[5][10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[5][10]~feeder_combout\ = \mux|IR~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux|IR~12_combout\,
	combout => \mem|Mem[5][10]~feeder_combout\);

-- Location: LCCOMB_X20_Y14_N18
\mem|Mem[7][10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[7][10]~feeder_combout\ = \mux|IR~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux|IR~12_combout\,
	combout => \mem|Mem[7][10]~feeder_combout\);

-- Location: LCCOMB_X21_Y18_N14
\mem|Mem[9][10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[9][10]~feeder_combout\ = \mux|IR~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux|IR~12_combout\,
	combout => \mem|Mem[9][10]~feeder_combout\);

-- Location: LCCOMB_X23_Y16_N4
\mem|Mem[1][10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[1][10]~feeder_combout\ = \mux|IR~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux|IR~12_combout\,
	combout => \mem|Mem[1][10]~feeder_combout\);

-- Location: LCCOMB_X20_Y15_N18
\mux|IR[10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux|IR[10]~feeder_combout\ = \mux|IR~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux|IR~12_combout\,
	combout => \mux|IR[10]~feeder_combout\);

-- Location: LCCOMB_X20_Y15_N8
\mux|AC[10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux|AC[10]~feeder_combout\ = \mux|IR~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux|IR~12_combout\,
	combout => \mux|AC[10]~feeder_combout\);

-- Location: LCCOMB_X22_Y14_N2
\mem|Mem[6][11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[6][11]~feeder_combout\ = \mux|IR~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux|IR~13_combout\,
	combout => \mem|Mem[6][11]~feeder_combout\);

-- Location: LCCOMB_X23_Y16_N26
\mem|Mem[1][11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[1][11]~feeder_combout\ = \mux|IR~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux|IR~13_combout\,
	combout => \mem|Mem[1][11]~feeder_combout\);

-- Location: LCCOMB_X21_Y18_N24
\mem|Mem[9][11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[9][11]~feeder_combout\ = \mux|IR~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux|IR~13_combout\,
	combout => \mem|Mem[9][11]~feeder_combout\);

-- Location: LCCOMB_X21_Y18_N2
\mem|Mem[9][12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[9][12]~feeder_combout\ = \mux|IR~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux|IR~14_combout\,
	combout => \mem|Mem[9][12]~feeder_combout\);

-- Location: LCCOMB_X20_Y14_N0
\mem|Mem[7][12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[7][12]~feeder_combout\ = \mux|IR~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux|IR~14_combout\,
	combout => \mem|Mem[7][12]~feeder_combout\);

-- Location: LCCOMB_X21_Y18_N28
\mem|Mem[9][13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[9][13]~feeder_combout\ = \mux|IR~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux|IR~15_combout\,
	combout => \mem|Mem[9][13]~feeder_combout\);

-- Location: LCCOMB_X21_Y14_N6
\mem|Mem[5][13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[5][13]~feeder_combout\ = \mux|IR~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux|IR~15_combout\,
	combout => \mem|Mem[5][13]~feeder_combout\);

-- Location: LCCOMB_X23_Y14_N28
\mem|Mem[2][13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[2][13]~feeder_combout\ = \mux|IR~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux|IR~15_combout\,
	combout => \mem|Mem[2][13]~feeder_combout\);

-- Location: LCCOMB_X22_Y12_N28
\mem|Mem[1][13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[1][13]~feeder_combout\ = \mux|IR~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux|IR~15_combout\,
	combout => \mem|Mem[1][13]~feeder_combout\);

-- Location: LCCOMB_X20_Y14_N6
\mem|Mem[7][14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[7][14]~feeder_combout\ = \mux|IR~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux|IR~16_combout\,
	combout => \mem|Mem[7][14]~feeder_combout\);

-- Location: LCCOMB_X21_Y18_N16
\mem|Mem[9][15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[9][15]~feeder_combout\ = \mux|IR~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux|IR~17_combout\,
	combout => \mem|Mem[9][15]~feeder_combout\);

-- Location: LCCOMB_X24_Y16_N30
\mem|Mem[5][15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[5][15]~feeder_combout\ = \mux|IR~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux|IR~17_combout\,
	combout => \mem|Mem[5][15]~feeder_combout\);

-- Location: LCCOMB_X24_Y16_N18
\mem|Mem[5][16]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[5][16]~feeder_combout\ = \mux|IR~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux|IR~18_combout\,
	combout => \mem|Mem[5][16]~feeder_combout\);

-- Location: LCCOMB_X23_Y16_N16
\mem|Mem[1][16]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[1][16]~feeder_combout\ = \mux|IR~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux|IR~18_combout\,
	combout => \mem|Mem[1][16]~feeder_combout\);

-- Location: LCCOMB_X21_Y18_N18
\mem|Mem[9][16]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[9][16]~feeder_combout\ = \mux|IR~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux|IR~18_combout\,
	combout => \mem|Mem[9][16]~feeder_combout\);

-- Location: LCCOMB_X24_Y17_N16
\mem|Mem[7][16]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[7][16]~feeder_combout\ = \mux|IR~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux|IR~18_combout\,
	combout => \mem|Mem[7][16]~feeder_combout\);

-- Location: LCCOMB_X21_Y18_N30
\mem|Mem[9][17]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[9][17]~feeder_combout\ = \mux|IR~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux|IR~19_combout\,
	combout => \mem|Mem[9][17]~feeder_combout\);

-- Location: LCCOMB_X23_Y16_N14
\mem|Mem[1][17]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[1][17]~feeder_combout\ = \mux|IR~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux|IR~19_combout\,
	combout => \mem|Mem[1][17]~feeder_combout\);

-- Location: LCCOMB_X24_Y16_N22
\mem|Mem[5][17]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[5][17]~feeder_combout\ = \mux|IR~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux|IR~19_combout\,
	combout => \mem|Mem[5][17]~feeder_combout\);

-- Location: LCCOMB_X23_Y14_N18
\mem|Mem[2][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[2][0]~feeder_combout\ = \mem|Mem~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem|Mem~0_combout\,
	combout => \mem|Mem[2][0]~feeder_combout\);

-- Location: LCCOMB_X21_Y14_N2
\mem|Mem[5][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[5][0]~feeder_combout\ = \mem|Mem~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem|Mem~0_combout\,
	combout => \mem|Mem[5][0]~feeder_combout\);

-- Location: LCCOMB_X22_Y14_N4
\mem|Mem[1][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[1][0]~feeder_combout\ = \mem|Mem~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mem~0_combout\,
	combout => \mem|Mem[1][0]~feeder_combout\);

-- Location: LCCOMB_X23_Y16_N30
\mem|Mem[1][15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[1][15]~feeder_combout\ = \mem|Mem~33_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem|Mem~33_combout\,
	combout => \mem|Mem[1][15]~feeder_combout\);

-- Location: LCCOMB_X24_Y16_N4
\mem|Mem[2][16]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[2][16]~feeder_combout\ = \mem|Mem~34_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem|Mem~34_combout\,
	combout => \mem|Mem[2][16]~feeder_combout\);

-- Location: LCCOMB_X24_Y18_N8
\mem|Mem[10][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[10][0]~feeder_combout\ = \alu1|out\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \alu1|out\(0),
	combout => \mem|Mem[10][0]~feeder_combout\);

-- Location: LCCOMB_X17_Y18_N24
\stack1|Stack~18feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stack1|Stack~18feeder_combout\ = \alu1|out\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu1|out\(0),
	combout => \stack1|Stack~18feeder_combout\);

-- Location: LCCOMB_X17_Y18_N2
\stack1|Stack~0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stack1|Stack~0feeder_combout\ = \alu1|out\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu1|out\(0),
	combout => \stack1|Stack~0feeder_combout\);

-- Location: LCCOMB_X16_Y16_N16
\stack1|Stack~54feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stack1|Stack~54feeder_combout\ = \alu1|out\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \alu1|out\(0),
	combout => \stack1|Stack~54feeder_combout\);

-- Location: LCCOMB_X20_Y16_N12
\mem|Mem[12][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[12][0]~feeder_combout\ = \alu1|out\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \alu1|out\(0),
	combout => \mem|Mem[12][0]~feeder_combout\);

-- Location: LCCOMB_X21_Y18_N10
\mem|Mem[11][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[11][1]~feeder_combout\ = \alu1|out\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \alu1|out\(1),
	combout => \mem|Mem[11][1]~feeder_combout\);

-- Location: LCCOMB_X20_Y16_N14
\mem|Mem[12][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[12][1]~feeder_combout\ = \alu1|out\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \alu1|out\(1),
	combout => \mem|Mem[12][1]~feeder_combout\);

-- Location: LCCOMB_X16_Y16_N4
\stack1|Stack~37feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stack1|Stack~37feeder_combout\ = \alu1|out\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu1|out\(1),
	combout => \stack1|Stack~37feeder_combout\);

-- Location: LCCOMB_X16_Y16_N6
\stack1|Stack~55feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stack1|Stack~55feeder_combout\ = \alu1|out\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu1|out\(1),
	combout => \stack1|Stack~55feeder_combout\);

-- Location: LCCOMB_X24_Y18_N20
\mem|Mem[10][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[10][2]~feeder_combout\ = \alu1|out\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \alu1|out\(2),
	combout => \mem|Mem[10][2]~feeder_combout\);

-- Location: LCCOMB_X17_Y18_N26
\stack1|Stack~2feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stack1|Stack~2feeder_combout\ = \alu1|out\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu1|out\(2),
	combout => \stack1|Stack~2feeder_combout\);

-- Location: LCCOMB_X20_Y16_N0
\mem|Mem[12][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[12][2]~feeder_combout\ = \alu1|out\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \alu1|out\(2),
	combout => \mem|Mem[12][2]~feeder_combout\);

-- Location: LCCOMB_X21_Y18_N6
\mem|Mem[11][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[11][3]~feeder_combout\ = \alu1|out\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu1|out\(3),
	combout => \mem|Mem[11][3]~feeder_combout\);

-- Location: LCCOMB_X16_Y16_N2
\stack1|Stack~57feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stack1|Stack~57feeder_combout\ = \alu1|out\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \alu1|out\(3),
	combout => \stack1|Stack~57feeder_combout\);

-- Location: LCCOMB_X17_Y18_N22
\stack1|Stack~3feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stack1|Stack~3feeder_combout\ = \alu1|out\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \alu1|out\(3),
	combout => \stack1|Stack~3feeder_combout\);

-- Location: LCCOMB_X20_Y16_N4
\mem|Mem[12][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[12][4]~feeder_combout\ = \alu1|out\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu1|out\(4),
	combout => \mem|Mem[12][4]~feeder_combout\);

-- Location: LCCOMB_X16_Y16_N12
\stack1|Stack~58feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stack1|Stack~58feeder_combout\ = \alu1|out\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu1|out\(4),
	combout => \stack1|Stack~58feeder_combout\);

-- Location: LCCOMB_X16_Y16_N0
\stack1|Stack~41feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stack1|Stack~41feeder_combout\ = \alu1|out\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \alu1|out\(5),
	combout => \stack1|Stack~41feeder_combout\);

-- Location: LCCOMB_X16_Y16_N10
\stack1|Stack~59feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stack1|Stack~59feeder_combout\ = \alu1|out\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \alu1|out\(5),
	combout => \stack1|Stack~59feeder_combout\);

-- Location: LCCOMB_X17_Y18_N30
\stack1|Stack~5feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stack1|Stack~5feeder_combout\ = \alu1|out\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu1|out\(5),
	combout => \stack1|Stack~5feeder_combout\);

-- Location: LCCOMB_X20_Y16_N22
\mem|Mem[12][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[12][5]~feeder_combout\ = \alu1|out\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \alu1|out\(5),
	combout => \mem|Mem[12][5]~feeder_combout\);

-- Location: LCCOMB_X21_Y18_N26
\mem|Mem[11][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[11][5]~feeder_combout\ = \alu1|out\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu1|out\(5),
	combout => \mem|Mem[11][5]~feeder_combout\);

-- Location: LCCOMB_X24_Y18_N14
\mem|Mem[10][6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[10][6]~feeder_combout\ = \alu1|out\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu1|out\(6),
	combout => \mem|Mem[10][6]~feeder_combout\);

-- Location: LCCOMB_X20_Y16_N8
\mem|Mem[12][6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[12][6]~feeder_combout\ = \alu1|out\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \alu1|out\(6),
	combout => \mem|Mem[12][6]~feeder_combout\);

-- Location: LCCOMB_X20_Y16_N18
\mem|Mem[12][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[12][7]~feeder_combout\ = \alu1|out\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \alu1|out\(7),
	combout => \mem|Mem[12][7]~feeder_combout\);

-- Location: LCCOMB_X23_Y18_N2
\mem|Mem[11][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[11][7]~feeder_combout\ = \alu1|out\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu1|out\(7),
	combout => \mem|Mem[11][7]~feeder_combout\);

-- Location: LCCOMB_X16_Y16_N8
\stack1|Stack~43feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stack1|Stack~43feeder_combout\ = \alu1|out\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu1|out\(7),
	combout => \stack1|Stack~43feeder_combout\);

-- Location: LCCOMB_X16_Y16_N18
\stack1|Stack~61feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stack1|Stack~61feeder_combout\ = \alu1|out\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu1|out\(7),
	combout => \stack1|Stack~61feeder_combout\);

-- Location: LCCOMB_X17_Y18_N14
\stack1|Stack~7feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stack1|Stack~7feeder_combout\ = \alu1|out\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu1|out\(7),
	combout => \stack1|Stack~7feeder_combout\);

-- Location: LCCOMB_X24_Y18_N2
\mem|Mem[10][8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[10][8]~feeder_combout\ = \alu1|out\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu1|out\(8),
	combout => \mem|Mem[10][8]~feeder_combout\);

-- Location: LCCOMB_X21_Y19_N0
\stack1|Stack~8feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stack1|Stack~8feeder_combout\ = \alu1|out\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu1|out\(8),
	combout => \stack1|Stack~8feeder_combout\);

-- Location: LCCOMB_X22_Y18_N14
\mem|Mem[11][9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[11][9]~feeder_combout\ = \alu1|out\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \alu1|out\(9),
	combout => \mem|Mem[11][9]~feeder_combout\);

-- Location: LCCOMB_X21_Y19_N26
\stack1|Stack~9feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stack1|Stack~9feeder_combout\ = \alu1|out\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \alu1|out\(9),
	combout => \stack1|Stack~9feeder_combout\);

-- Location: LCCOMB_X24_Y18_N22
\mem|Mem[10][10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[10][10]~feeder_combout\ = \alu1|out\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu1|out\(10),
	combout => \mem|Mem[10][10]~feeder_combout\);

-- Location: LCCOMB_X21_Y19_N12
\stack1|Stack~10feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stack1|Stack~10feeder_combout\ = \alu1|out\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \alu1|out\(10),
	combout => \stack1|Stack~10feeder_combout\);

-- Location: LCCOMB_X20_Y16_N24
\mem|Mem[12][10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[12][10]~feeder_combout\ = \alu1|out\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \alu1|out\(10),
	combout => \mem|Mem[12][10]~feeder_combout\);

-- Location: LCCOMB_X23_Y19_N12
\stack1|Stack~65feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stack1|Stack~65feeder_combout\ = \alu1|out\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu1|out\(11),
	combout => \stack1|Stack~65feeder_combout\);

-- Location: LCCOMB_X22_Y18_N6
\mem|Mem[11][11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[11][11]~feeder_combout\ = \alu1|out\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \alu1|out\(11),
	combout => \mem|Mem[11][11]~feeder_combout\);

-- Location: LCCOMB_X20_Y16_N26
\mem|Mem[12][11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[12][11]~feeder_combout\ = \alu1|out\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \alu1|out\(11),
	combout => \mem|Mem[12][11]~feeder_combout\);

-- Location: LCCOMB_X23_Y19_N22
\stack1|Stack~66feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stack1|Stack~66feeder_combout\ = \alu1|out\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu1|out\(12),
	combout => \stack1|Stack~66feeder_combout\);

-- Location: LCCOMB_X21_Y19_N24
\stack1|Stack~12feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stack1|Stack~12feeder_combout\ = \alu1|out\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu1|out\(12),
	combout => \stack1|Stack~12feeder_combout\);

-- Location: LCCOMB_X22_Y19_N18
\stack1|Stack~30feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stack1|Stack~30feeder_combout\ = \alu1|out\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \alu1|out\(12),
	combout => \stack1|Stack~30feeder_combout\);

-- Location: LCCOMB_X23_Y18_N4
\mem|Mem[10][12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[10][12]~feeder_combout\ = \alu1|out\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \alu1|out\(12),
	combout => \mem|Mem[10][12]~feeder_combout\);

-- Location: LCCOMB_X22_Y18_N30
\mem|Mem[11][13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[11][13]~feeder_combout\ = \alu1|out\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu1|out\(13),
	combout => \mem|Mem[11][13]~feeder_combout\);

-- Location: LCCOMB_X22_Y19_N14
\stack1|Stack~31feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stack1|Stack~31feeder_combout\ = \alu1|out\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \alu1|out\(13),
	combout => \stack1|Stack~31feeder_combout\);

-- Location: LCCOMB_X21_Y19_N22
\stack1|Stack~14feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stack1|Stack~14feeder_combout\ = \alu1|out\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \alu1|out\(14),
	combout => \stack1|Stack~14feeder_combout\);

-- Location: LCCOMB_X23_Y18_N28
\mem|Mem[11][15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[11][15]~feeder_combout\ = \alu1|out\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \alu1|out\(15),
	combout => \mem|Mem[11][15]~feeder_combout\);

-- Location: LCCOMB_X22_Y19_N2
\stack1|Stack~33feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stack1|Stack~33feeder_combout\ = \alu1|out\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \alu1|out\(15),
	combout => \stack1|Stack~33feeder_combout\);

-- Location: LCCOMB_X23_Y19_N20
\stack1|Stack~70feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stack1|Stack~70feeder_combout\ = \alu1|out\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \alu1|out\(16),
	combout => \stack1|Stack~70feeder_combout\);

-- Location: LCCOMB_X23_Y18_N30
\mem|Mem[10][16]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[10][16]~feeder_combout\ = \alu1|out\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu1|out\(16),
	combout => \mem|Mem[10][16]~feeder_combout\);

-- Location: LCCOMB_X21_Y19_N16
\stack1|Stack~17feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stack1|Stack~17feeder_combout\ = \alu1|out\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \alu1|out\(17),
	combout => \stack1|Stack~17feeder_combout\);

-- Location: LCCOMB_X21_Y19_N6
\stack1|Stack~35feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stack1|Stack~35feeder_combout\ = \alu1|out\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \alu1|out\(17),
	combout => \stack1|Stack~35feeder_combout\);

-- Location: LCCOMB_X23_Y19_N6
\stack1|Stack~71feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stack1|Stack~71feeder_combout\ = \alu1|out\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \alu1|out\(17),
	combout => \stack1|Stack~71feeder_combout\);

-- Location: LCCOMB_X23_Y18_N18
\mem|Mem[11][17]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[11][17]~feeder_combout\ = \alu1|out\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu1|out\(17),
	combout => \mem|Mem[11][17]~feeder_combout\);

-- Location: IOOBUF_X0_Y20_N9
\aluOut[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \aluOut[0]~reg0_q\,
	devoe => ww_devoe,
	o => \aluOut[0]~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\aluOut[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \aluOut[1]~reg0_q\,
	devoe => ww_devoe,
	o => \aluOut[1]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\aluOut[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \aluOut[2]~reg0_q\,
	devoe => ww_devoe,
	o => \aluOut[2]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\aluOut[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \aluOut[3]~reg0_q\,
	devoe => ww_devoe,
	o => \aluOut[3]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\aluOut[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \aluOut[4]~reg0_q\,
	devoe => ww_devoe,
	o => \aluOut[4]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\aluOut[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \aluOut[5]~reg0_q\,
	devoe => ww_devoe,
	o => \aluOut[5]~output_o\);

-- Location: IOOBUF_X0_Y26_N23
\aluOut[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \aluOut[6]~reg0_q\,
	devoe => ww_devoe,
	o => \aluOut[6]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\aluOut[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \aluOut[7]~reg0_q\,
	devoe => ww_devoe,
	o => \aluOut[7]~output_o\);

-- Location: IOOBUF_X0_Y27_N9
\aluOut[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \aluOut[8]~reg0_q\,
	devoe => ww_devoe,
	o => \aluOut[8]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\aluOut[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \aluOut[9]~reg0_q\,
	devoe => ww_devoe,
	o => \aluOut[9]~output_o\);

-- Location: IOOBUF_X21_Y29_N23
\aluOut[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \aluOut[10]~reg0_q\,
	devoe => ww_devoe,
	o => \aluOut[10]~output_o\);

-- Location: IOOBUF_X19_Y0_N23
\aluOut[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \aluOut[11]~reg0_q\,
	devoe => ww_devoe,
	o => \aluOut[11]~output_o\);

-- Location: IOOBUF_X19_Y0_N9
\aluOut[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \aluOut[12]~reg0_q\,
	devoe => ww_devoe,
	o => \aluOut[12]~output_o\);

-- Location: IOOBUF_X0_Y21_N2
\aluOut[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \aluOut[13]~reg0_q\,
	devoe => ww_devoe,
	o => \aluOut[13]~output_o\);

-- Location: IOOBUF_X41_Y20_N9
\aluOut[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \aluOut[14]~reg0_q\,
	devoe => ww_devoe,
	o => \aluOut[14]~output_o\);

-- Location: IOOBUF_X41_Y20_N16
\aluOut[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \aluOut[15]~reg0_q\,
	devoe => ww_devoe,
	o => \aluOut[15]~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\aluOut[16]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \aluOut[16]~reg0_q\,
	devoe => ww_devoe,
	o => \aluOut[16]~output_o\);

-- Location: IOOBUF_X41_Y20_N23
\aluOut[17]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \aluOut[17]~reg0_q\,
	devoe => ww_devoe,
	o => \aluOut[17]~output_o\);

-- Location: IOIBUF_X0_Y24_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: LCCOMB_X23_Y21_N2
\cb|md_write_mem~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb|md_write_mem~0_combout\ = (!\cb|count\(2) & (\cb|count\(3) & \cb|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb|count\(2),
	datac => \cb|count\(3),
	datad => \cb|count\(1),
	combout => \cb|md_write_mem~0_combout\);

-- Location: LCCOMB_X22_Y21_N16
\cb|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb|Mux6~0_combout\ = (\mux|opcode\(1) & ((\cb|count\(2)) # ((!\cb|count\(1))))) # (!\mux|opcode\(1) & (((\cb|count\(1)) # (\cb|count\(0))) # (!\cb|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|opcode\(1),
	datab => \cb|count\(2),
	datac => \cb|count\(1),
	datad => \cb|count\(0),
	combout => \cb|Mux6~0_combout\);

-- Location: IOIBUF_X0_Y27_N1
\rst~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: LCCOMB_X20_Y15_N20
\mux|IR~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux|IR~17_combout\ = (\alu1|out\(15) & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|out\(15),
	datad => \rst~input_o\,
	combout => \mux|IR~17_combout\);

-- Location: LCCOMB_X20_Y15_N14
\mux|IR[15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux|IR[15]~feeder_combout\ = \mux|IR~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux|IR~17_combout\,
	combout => \mux|IR[15]~feeder_combout\);

-- Location: LCCOMB_X22_Y21_N0
\cb|aluop~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb|aluop~3_combout\ = (\mux|opcode\(2)) # ((\mux|opcode\(1) & \mux|opcode\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux|opcode\(2),
	datac => \mux|opcode\(1),
	datad => \mux|opcode\(0),
	combout => \cb|aluop~3_combout\);

-- Location: LCCOMB_X22_Y21_N26
\cb|aluop[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb|aluop[2]~4_combout\ = (!\cb|count\(1) & !\cb|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cb|count\(1),
	datad => \cb|count\(0),
	combout => \cb|aluop[2]~4_combout\);

-- Location: LCCOMB_X21_Y21_N20
\cb|aluop[2]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb|aluop[2]~7_combout\ = (\cb|aluop[2]~6_combout\ & (((\cb|aluop~3_combout\ & \cb|aluop[2]~4_combout\)) # (!\cb|Equal1~1_combout\))) # (!\cb|aluop[2]~6_combout\ & (((\cb|aluop~3_combout\ & \cb|aluop[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb|aluop[2]~6_combout\,
	datab => \cb|Equal1~1_combout\,
	datac => \cb|aluop~3_combout\,
	datad => \cb|aluop[2]~4_combout\,
	combout => \cb|aluop[2]~7_combout\);

-- Location: LCCOMB_X21_Y21_N16
\cb|aluop[2]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb|aluop[2]~19_combout\ = (\cb|count\(1) & (\cb|count\(2) & (\cb|aluop~3_combout\ & \cb|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb|count\(1),
	datab => \cb|count\(2),
	datac => \cb|aluop~3_combout\,
	datad => \cb|count\(0),
	combout => \cb|aluop[2]~19_combout\);

-- Location: LCCOMB_X21_Y21_N6
\cb|aluop[2]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb|aluop[2]~8_combout\ = (\cb|aluop\(2) & ((\cb|count\(3) & (\cb|aluop[2]~7_combout\)) # (!\cb|count\(3) & ((\cb|aluop[2]~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb|count\(3),
	datab => \cb|aluop[2]~7_combout\,
	datac => \cb|aluop\(2),
	datad => \cb|aluop[2]~19_combout\,
	combout => \cb|aluop[2]~8_combout\);

-- Location: LCCOMB_X20_Y21_N0
\cb|aluop[0]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb|aluop[0]~9_combout\ = (!\rst~input_o\ & (\cb|count\(2) $ (((\cb|count\(3)) # (\cb|aluop[2]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb|count\(3),
	datab => \rst~input_o\,
	datac => \cb|count\(2),
	datad => \cb|aluop[2]~4_combout\,
	combout => \cb|aluop[0]~9_combout\);

-- Location: FF_X21_Y21_N7
\cb|aluop[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \cb|aluop[2]~8_combout\,
	ena => \cb|aluop[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cb|aluop\(2));

-- Location: LCCOMB_X21_Y19_N20
\stack1|Stack~16feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stack1|Stack~16feeder_combout\ = \alu1|out\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu1|out\(16),
	combout => \stack1|Stack~16feeder_combout\);

-- Location: LCCOMB_X23_Y20_N24
\cb|stack_write~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb|stack_write~1_combout\ = (\cb|stack_write~0_combout\ & ((\cb|md_write_mem~0_combout\ & (!\cb|count\(0))) # (!\cb|md_write_mem~0_combout\ & ((\cb|stack_write~q\))))) # (!\cb|stack_write~0_combout\ & (((\cb|stack_write~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb|stack_write~0_combout\,
	datab => \cb|count\(0),
	datac => \cb|stack_write~q\,
	datad => \cb|md_write_mem~0_combout\,
	combout => \cb|stack_write~1_combout\);

-- Location: FF_X23_Y20_N25
\cb|stack_write\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \cb|stack_write~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cb|stack_write~q\);

-- Location: LCCOMB_X17_Y20_N8
\stack1|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stack1|Add1~0_combout\ = \stack1|SP\(0) $ (\cb|stack_write~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stack1|SP\(0),
	datad => \cb|stack_write~q\,
	combout => \stack1|Add1~0_combout\);

-- Location: LCCOMB_X16_Y18_N18
\stack1|SP[0]~_wirecell\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stack1|SP[0]~_wirecell_combout\ = !\stack1|SP\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack1|SP\(0),
	combout => \stack1|SP[0]~_wirecell_combout\);

-- Location: LCCOMB_X22_Y21_N14
\cb|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb|Equal1~0_combout\ = (\mux|opcode\(2) & (!\mux|opcode\(1) & !\mux|opcode\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux|opcode\(2),
	datac => \mux|opcode\(1),
	datad => \mux|opcode\(0),
	combout => \cb|Equal1~0_combout\);

-- Location: LCCOMB_X21_Y20_N30
\cb|Mux12~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb|Mux12~1_combout\ = (!\cb|count\(2) & (\cb|count\(3) & (\cb|Mux12~0_combout\ & \cb|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb|count\(2),
	datab => \cb|count\(3),
	datac => \cb|Mux12~0_combout\,
	datad => \cb|Equal1~0_combout\,
	combout => \cb|Mux12~1_combout\);

-- Location: LCCOMB_X20_Y18_N2
\cb|Mux12~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb|Mux12~2_combout\ = (\cb|Mux12~1_combout\) # ((\cb|stack_read~q\ & ((!\cb|md_write_mem~0_combout\) # (!\cb|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb|Equal1~0_combout\,
	datab => \cb|md_write_mem~0_combout\,
	datac => \cb|stack_read~q\,
	datad => \cb|Mux12~1_combout\,
	combout => \cb|Mux12~2_combout\);

-- Location: FF_X20_Y18_N3
\cb|stack_read\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \cb|Mux12~2_combout\,
	sclr => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cb|stack_read~q\);

-- Location: FF_X17_Y20_N9
\stack1|SP[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \stack1|Add1~0_combout\,
	asdata => \stack1|SP[0]~_wirecell_combout\,
	sclr => \rst~input_o\,
	sload => \cb|stack_read~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack1|SP\(0));

-- Location: LCCOMB_X20_Y20_N8
\stack1|SP~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stack1|SP~0_combout\ = \stack1|SP\(1) $ (((\stack1|SP\(0) & (\cb|stack_write~q\ & !\cb|stack_read~q\)) # (!\stack1|SP\(0) & ((\cb|stack_read~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb|stack_write~q\,
	datab => \stack1|SP\(0),
	datac => \stack1|SP\(1),
	datad => \cb|stack_read~q\,
	combout => \stack1|SP~0_combout\);

-- Location: FF_X20_Y20_N9
\stack1|SP[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \stack1|SP~0_combout\,
	sclr => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack1|SP\(1));

-- Location: LCCOMB_X20_Y20_N14
\stack1|Stack~111\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stack1|Stack~111_combout\ = (!\stack1|out_stack_data[12]~0_combout\ & (!\stack1|SP\(0) & (!\stack1|SP\(1) & \cb|stack_write~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack1|out_stack_data[12]~0_combout\,
	datab => \stack1|SP\(0),
	datac => \stack1|SP\(1),
	datad => \cb|stack_write~q\,
	combout => \stack1|Stack~111_combout\);

-- Location: FF_X21_Y19_N21
\stack1|Stack~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \stack1|Stack~16feeder_combout\,
	ena => \stack1|Stack~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack1|Stack~16_q\);

-- Location: LCCOMB_X21_Y19_N10
\stack1|Stack~34feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stack1|Stack~34feeder_combout\ = \alu1|out\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu1|out\(16),
	combout => \stack1|Stack~34feeder_combout\);

-- Location: LCCOMB_X20_Y20_N24
\stack1|Stack~108\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stack1|Stack~108_combout\ = (!\stack1|out_stack_data[12]~0_combout\ & (\stack1|SP\(0) & (!\stack1|SP\(1) & \cb|stack_write~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack1|out_stack_data[12]~0_combout\,
	datab => \stack1|SP\(0),
	datac => \stack1|SP\(1),
	datad => \cb|stack_write~q\,
	combout => \stack1|Stack~108_combout\);

-- Location: FF_X21_Y19_N11
\stack1|Stack~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \stack1|Stack~34feeder_combout\,
	ena => \stack1|Stack~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack1|Stack~34_q\);

-- Location: LCCOMB_X20_Y20_N12
\stack1|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stack1|Add0~0_combout\ = \stack1|SP\(0) $ (\stack1|SP\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack1|SP\(0),
	datac => \stack1|SP\(1),
	combout => \stack1|Add0~0_combout\);

-- Location: LCCOMB_X16_Y19_N26
\stack1|Stack~105\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stack1|Stack~105_combout\ = (\stack1|Stack~104_combout\ & ((\stack1|Stack~16_q\) # ((!\stack1|Add0~0_combout\)))) # (!\stack1|Stack~104_combout\ & (((\stack1|Stack~34_q\ & \stack1|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack1|Stack~104_combout\,
	datab => \stack1|Stack~16_q\,
	datac => \stack1|Stack~34_q\,
	datad => \stack1|Add0~0_combout\,
	combout => \stack1|Stack~105_combout\);

-- Location: LCCOMB_X20_Y20_N22
\stack1|out_stack_data[12]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stack1|out_stack_data[12]~0_combout\ = (\rst~input_o\) # (\cb|stack_read~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datad => \cb|stack_read~q\,
	combout => \stack1|out_stack_data[12]~0_combout\);

-- Location: FF_X16_Y19_N27
\stack1|out_stack_data[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \stack1|Stack~105_combout\,
	sclr => \rst~input_o\,
	ena => \stack1|out_stack_data[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack1|out_stack_data\(16));

-- Location: LCCOMB_X17_Y20_N20
\output2[16]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \output2[16]~16_combout\ = (\cb|stack_read~q\ & ((\stack1|out_stack_data\(16)))) # (!\cb|stack_read~q\ & (\mux1|out_data\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|out_data\(16),
	datac => \stack1|out_stack_data\(16),
	datad => \cb|stack_read~q\,
	combout => \output2[16]~16_combout\);

-- Location: LCCOMB_X20_Y21_N8
\alu1|Add0~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alu1|Add0~82_combout\ = (\output2[16]~16_combout\ & ((\cb|aluop\(2)) # ((\cb|aluop\(0) & \cb|aluop\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb|aluop\(0),
	datab => \cb|aluop\(2),
	datac => \output2[16]~16_combout\,
	datad => \cb|aluop\(1),
	combout => \alu1|Add0~82_combout\);

-- Location: LCCOMB_X23_Y21_N6
\cb|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb|Selector0~0_combout\ = (\cb|count\(2) & (\cb|count\(3) & !\cb|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb|count\(2),
	datac => \cb|count\(3),
	datad => \cb|count\(1),
	combout => \cb|Selector0~0_combout\);

-- Location: LCCOMB_X23_Y21_N18
\cb|Selector0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb|Selector0~1_combout\ = (\cb|Selector0~0_combout\ & (!\cb|count\(0) & ((\cb|ac_write~q\) # (!\cb|md_write_mem~1_combout\)))) # (!\cb|Selector0~0_combout\ & (((\cb|ac_write~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb|md_write_mem~1_combout\,
	datab => \cb|count\(0),
	datac => \cb|ac_write~q\,
	datad => \cb|Selector0~0_combout\,
	combout => \cb|Selector0~1_combout\);

-- Location: FF_X23_Y21_N19
\cb|ac_write\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \cb|Selector0~1_combout\,
	sclr => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cb|ac_write~q\);

-- Location: LCCOMB_X21_Y16_N0
\mux|AC[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux|AC[3]~0_combout\ = (\rst~input_o\) # ((\cb|ac_write~q\ & !\cb|ac_read~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cb|ac_write~q\,
	datac => \rst~input_o\,
	datad => \cb|ac_read~q\,
	combout => \mux|AC[3]~0_combout\);

-- Location: FF_X20_Y15_N1
\mux|AC[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux|IR~18_combout\,
	ena => \mux|AC[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|AC\(16));

-- Location: LCCOMB_X19_Y14_N2
\mux|out_data~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux|out_data~17_combout\ = (\cb|ac_read~q\ & ((\mux|AC\(16)))) # (!\cb|ac_read~q\ & (\mux|IR\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb|ac_read~q\,
	datab => \mux|IR\(16),
	datad => \mux|AC\(16),
	combout => \mux|out_data~17_combout\);

-- Location: LCCOMB_X21_Y16_N6
\mux|out_data[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux|out_data[0]~1_combout\ = (\rst~input_o\) # ((\cb|ac_read~q\) # ((\cb|ir_read~q\ & !\cb|ac_write~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \cb|ir_read~q\,
	datac => \cb|ac_write~q\,
	datad => \cb|ac_read~q\,
	combout => \mux|out_data[0]~1_combout\);

-- Location: FF_X19_Y14_N3
\mux|out_data[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux|out_data~17_combout\,
	sclr => \rst~input_o\,
	ena => \mux|out_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|out_data\(16));

-- Location: LCCOMB_X20_Y21_N2
\alu1|Add0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alu1|Add0~11_combout\ = (!\cb|aluop\(2) & (\cb|aluop\(0) $ (\cb|aluop\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb|aluop\(0),
	datac => \cb|aluop\(1),
	datad => \cb|aluop\(2),
	combout => \alu1|Add0~11_combout\);

-- Location: FF_X20_Y15_N21
\mux|AC[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux|IR~17_combout\,
	ena => \mux|AC[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|AC\(15));

-- Location: LCCOMB_X20_Y19_N20
\mux|out_data~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux|out_data~16_combout\ = (\cb|ac_read~q\ & ((\mux|AC\(15)))) # (!\cb|ac_read~q\ & (\mux|IR\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb|ac_read~q\,
	datab => \mux|IR\(15),
	datac => \mux|AC\(15),
	combout => \mux|out_data~16_combout\);

-- Location: FF_X20_Y19_N21
\mux|out_data[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux|out_data~16_combout\,
	sclr => \rst~input_o\,
	ena => \mux|out_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|out_data\(15));

-- Location: LCCOMB_X20_Y19_N14
\alu1|Add0~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alu1|Add0~72_combout\ = (\alu1|Mux1~0_combout\ & ((\output2[15]~15_combout\) # ((\alu1|Add0~11_combout\ & \mux|out_data\(15))))) # (!\alu1|Mux1~0_combout\ & (((\alu1|Add0~11_combout\ & \mux|out_data\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|Mux1~0_combout\,
	datab => \output2[15]~15_combout\,
	datac => \alu1|Add0~11_combout\,
	datad => \mux|out_data\(15),
	combout => \alu1|Add0~72_combout\);

-- Location: LCCOMB_X23_Y20_N6
\cb|Decoder0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb|Decoder0~1_combout\ = (!\cb|count\(2) & !\cb|count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cb|count\(2),
	datad => \cb|count\(1),
	combout => \cb|Decoder0~1_combout\);

-- Location: LCCOMB_X20_Y21_N18
\cb|alu_enable~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb|alu_enable~4_combout\ = (\cb|alu_enable~q\) # ((!\cb|count\(0) & (!\cb|count\(3) & \cb|Decoder0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb|alu_enable~q\,
	datab => \cb|count\(0),
	datac => \cb|count\(3),
	datad => \cb|Decoder0~1_combout\,
	combout => \cb|alu_enable~4_combout\);

-- Location: FF_X20_Y21_N25
\cb|alu_enable\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \cb|alu_enable~4_combout\,
	sclr => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cb|alu_enable~q\);

-- Location: LCCOMB_X20_Y21_N10
\alu1|out[17]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alu1|out[17]~0_combout\ = (\cb|alu_enable~q\ & (((!\cb|aluop\(0) & !\cb|aluop\(1))) # (!\cb|aluop\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb|aluop\(0),
	datab => \cb|alu_enable~q\,
	datac => \cb|aluop\(1),
	datad => \cb|aluop\(2),
	combout => \alu1|out[17]~0_combout\);

-- Location: CLKCTRL_G12
\alu1|out[17]~0clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \alu1|out[17]~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \alu1|out[17]~0clkctrl_outclk\);

-- Location: LCCOMB_X20_Y20_N28
\stack1|Stack~110\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stack1|Stack~110_combout\ = (!\stack1|out_stack_data[12]~0_combout\ & (!\stack1|SP\(0) & (\stack1|SP\(1) & \cb|stack_write~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack1|out_stack_data[12]~0_combout\,
	datab => \stack1|SP\(0),
	datac => \stack1|SP\(1),
	datad => \cb|stack_write~q\,
	combout => \stack1|Stack~110_combout\);

-- Location: FF_X16_Y16_N23
\stack1|Stack~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \alu1|out\(14),
	sload => VCC,
	ena => \stack1|Stack~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack1|Stack~50_q\);

-- Location: LCCOMB_X16_Y16_N20
\stack1|Stack~68feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stack1|Stack~68feeder_combout\ = \alu1|out\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu1|out\(14),
	combout => \stack1|Stack~68feeder_combout\);

-- Location: LCCOMB_X20_Y20_N18
\stack1|Stack~109\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stack1|Stack~109_combout\ = (\stack1|SP\(0) & (\stack1|SP\(1) & (!\stack1|out_stack_data[12]~0_combout\ & \cb|stack_write~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack1|SP\(0),
	datab => \stack1|SP\(1),
	datac => \stack1|out_stack_data[12]~0_combout\,
	datad => \cb|stack_write~q\,
	combout => \stack1|Stack~109_combout\);

-- Location: FF_X16_Y16_N21
\stack1|Stack~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \stack1|Stack~68feeder_combout\,
	ena => \stack1|Stack~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack1|Stack~68_q\);

-- Location: LCCOMB_X16_Y16_N22
\stack1|Stack~100\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stack1|Stack~100_combout\ = (\stack1|SP\(1) & (\stack1|SP\(0) & (\stack1|Stack~50_q\))) # (!\stack1|SP\(1) & ((\stack1|SP\(0)) # ((\stack1|Stack~68_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack1|SP\(1),
	datab => \stack1|SP\(0),
	datac => \stack1|Stack~50_q\,
	datad => \stack1|Stack~68_q\,
	combout => \stack1|Stack~100_combout\);

-- Location: LCCOMB_X21_Y19_N4
\stack1|Stack~32feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stack1|Stack~32feeder_combout\ = \alu1|out\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \alu1|out\(14),
	combout => \stack1|Stack~32feeder_combout\);

-- Location: FF_X21_Y19_N5
\stack1|Stack~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \stack1|Stack~32feeder_combout\,
	ena => \stack1|Stack~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack1|Stack~32_q\);

-- Location: LCCOMB_X19_Y19_N2
\stack1|Stack~101\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stack1|Stack~101_combout\ = (\stack1|Stack~100_combout\ & ((\stack1|Stack~14_q\) # ((!\stack1|Add0~0_combout\)))) # (!\stack1|Stack~100_combout\ & (((\stack1|Add0~0_combout\ & \stack1|Stack~32_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack1|Stack~14_q\,
	datab => \stack1|Stack~100_combout\,
	datac => \stack1|Add0~0_combout\,
	datad => \stack1|Stack~32_q\,
	combout => \stack1|Stack~101_combout\);

-- Location: FF_X19_Y19_N3
\stack1|out_stack_data[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \stack1|Stack~101_combout\,
	sclr => \rst~input_o\,
	ena => \stack1|out_stack_data[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack1|out_stack_data\(14));

-- Location: FF_X17_Y18_N21
\stack1|Stack~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \alu1|out\(1),
	sload => VCC,
	ena => \stack1|Stack~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack1|Stack~19_q\);

-- Location: LCCOMB_X17_Y18_N20
\stack1|Stack~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stack1|Stack~74_combout\ = (\stack1|SP\(0) & (((!\stack1|SP\(1))))) # (!\stack1|SP\(0) & ((\stack1|SP\(1) & ((\stack1|Stack~19_q\))) # (!\stack1|SP\(1) & (\stack1|Stack~55_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack1|Stack~55_q\,
	datab => \stack1|SP\(0),
	datac => \stack1|Stack~19_q\,
	datad => \stack1|SP\(1),
	combout => \stack1|Stack~74_combout\);

-- Location: LCCOMB_X17_Y18_N6
\stack1|Stack~1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stack1|Stack~1feeder_combout\ = \alu1|out\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu1|out\(1),
	combout => \stack1|Stack~1feeder_combout\);

-- Location: FF_X17_Y18_N7
\stack1|Stack~1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \stack1|Stack~1feeder_combout\,
	ena => \stack1|Stack~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack1|Stack~1_q\);

-- Location: LCCOMB_X16_Y18_N2
\stack1|Stack~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stack1|Stack~75_combout\ = (\stack1|SP\(0) & ((\stack1|Stack~74_combout\ & ((\stack1|Stack~1_q\))) # (!\stack1|Stack~74_combout\ & (\stack1|Stack~37_q\)))) # (!\stack1|SP\(0) & (((\stack1|Stack~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack1|Stack~37_q\,
	datab => \stack1|SP\(0),
	datac => \stack1|Stack~74_combout\,
	datad => \stack1|Stack~1_q\,
	combout => \stack1|Stack~75_combout\);

-- Location: FF_X16_Y18_N3
\stack1|out_stack_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \stack1|Stack~75_combout\,
	sclr => \rst~input_o\,
	ena => \stack1|out_stack_data[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack1|out_stack_data\(1));

-- Location: LCCOMB_X17_Y17_N4
\mux1|PC[0]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux1|PC[0]~13_combout\ = \mux1|PC\(0) $ (VCC)
-- \mux1|PC[0]~14\ = CARRY(\mux1|PC\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux1|PC\(0),
	datad => VCC,
	combout => \mux1|PC[0]~13_combout\,
	cout => \mux1|PC[0]~14\);

-- Location: LCCOMB_X21_Y20_N2
\cb|Decoder0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb|Decoder0~0_combout\ = (!\cb|count\(3) & !\cb|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cb|count\(3),
	datad => \cb|count\(0),
	combout => \cb|Decoder0~0_combout\);

-- Location: LCCOMB_X21_Y20_N0
\cb|Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb|Selector6~0_combout\ = (\cb|inc_pc~q\ & ((\cb|count\(2)) # ((\cb|count\(3)) # (!\cb|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb|count\(2),
	datab => \cb|count\(1),
	datac => \cb|count\(3),
	datad => \cb|inc_pc~q\,
	combout => \cb|Selector6~0_combout\);

-- Location: LCCOMB_X21_Y20_N6
\cb|Selector6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb|Selector6~1_combout\ = (\cb|Selector6~0_combout\) # ((!\cb|count\(2) & (\cb|Decoder0~0_combout\ & \cb|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb|count\(2),
	datab => \cb|Decoder0~0_combout\,
	datac => \cb|Selector6~0_combout\,
	datad => \cb|count\(1),
	combout => \cb|Selector6~1_combout\);

-- Location: FF_X21_Y20_N7
\cb|inc_pc\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \cb|Selector6~1_combout\,
	sclr => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cb|inc_pc~q\);

-- Location: LCCOMB_X22_Y20_N18
\cb|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb|Mux1~0_combout\ = (\cb|count\(2) & (\mux|opcode\(0) & (!\mux|opcode\(2) & \mux|opcode\(1)))) # (!\cb|count\(2) & (!\mux|opcode\(0) & (\mux|opcode\(2) & !\mux|opcode\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb|count\(2),
	datab => \mux|opcode\(0),
	datac => \mux|opcode\(2),
	datad => \mux|opcode\(1),
	combout => \cb|Mux1~0_combout\);

-- Location: LCCOMB_X22_Y20_N4
\cb|Mux1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb|Mux1~1_combout\ = (!\cb|count\(0) & (\cb|count\(3) & (\cb|count\(2) $ (\cb|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb|count\(2),
	datab => \cb|count\(1),
	datac => \cb|count\(0),
	datad => \cb|count\(3),
	combout => \cb|Mux1~1_combout\);

-- Location: LCCOMB_X22_Y20_N2
\cb|Mux1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb|Mux1~3_combout\ = (\cb|Mux1~2_combout\ & ((\cb|pc_write~q\) # ((\cb|Mux1~0_combout\ & \cb|Mux1~1_combout\)))) # (!\cb|Mux1~2_combout\ & (\cb|Mux1~0_combout\ & ((\cb|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb|Mux1~2_combout\,
	datab => \cb|Mux1~0_combout\,
	datac => \cb|pc_write~q\,
	datad => \cb|Mux1~1_combout\,
	combout => \cb|Mux1~3_combout\);

-- Location: FF_X22_Y20_N3
\cb|pc_write\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \cb|Mux1~3_combout\,
	sclr => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cb|pc_write~q\);

-- Location: LCCOMB_X22_Y20_N22
\cb|Selector5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb|Selector5~0_combout\ = (\cb|count\(2) & (!\cb|count\(3) & (\cb|count\(1) $ (\cb|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb|count\(2),
	datab => \cb|count\(1),
	datac => \cb|count\(0),
	datad => \cb|count\(3),
	combout => \cb|Selector5~0_combout\);

-- Location: LCCOMB_X23_Y20_N8
\cb|Selector5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb|Selector5~1_combout\ = (\cb|Selector5~0_combout\ & (!\cb|count\(1))) # (!\cb|Selector5~0_combout\ & ((\cb|md_read~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cb|count\(1),
	datac => \cb|md_read~q\,
	datad => \cb|Selector5~0_combout\,
	combout => \cb|Selector5~1_combout\);

-- Location: FF_X23_Y20_N9
\cb|md_read\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \cb|Selector5~1_combout\,
	sclr => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cb|md_read~q\);

-- Location: LCCOMB_X23_Y21_N16
\cb|md_write_mem~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb|md_write_mem~2_combout\ = (!\cb|count\(2) & (\cb|count\(0) & (\cb|count\(3) & \cb|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb|count\(2),
	datab => \cb|count\(0),
	datac => \cb|count\(3),
	datad => \cb|count\(1),
	combout => \cb|md_write_mem~2_combout\);

-- Location: LCCOMB_X23_Y21_N10
\cb|Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb|Mux7~0_combout\ = (\cb|count\(2) & ((\cb|count\(1)) # ((\cb|count\(3) & \cb|count\(0))))) # (!\cb|count\(2) & (((!\cb|count\(1)) # (!\cb|count\(0))) # (!\cb|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb|count\(3),
	datab => \cb|count\(0),
	datac => \cb|count\(2),
	datad => \cb|count\(1),
	combout => \cb|Mux7~0_combout\);

-- Location: LCCOMB_X23_Y21_N20
\cb|md_write_mem~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb|md_write_mem~3_combout\ = (!\rst~input_o\ & !\cb|Mux7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	datad => \cb|Mux7~0_combout\,
	combout => \cb|md_write_mem~3_combout\);

-- Location: LCCOMB_X23_Y21_N14
\cb|md_write_mem~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb|md_write_mem~4_combout\ = (\cb|md_write_mem~3_combout\ & (\cb|md_write_mem~2_combout\ & ((\cb|md_write_mem~q\) # (!\cb|md_write_mem~1_combout\)))) # (!\cb|md_write_mem~3_combout\ & (((\cb|md_write_mem~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb|md_write_mem~1_combout\,
	datab => \cb|md_write_mem~2_combout\,
	datac => \cb|md_write_mem~q\,
	datad => \cb|md_write_mem~3_combout\,
	combout => \cb|md_write_mem~4_combout\);

-- Location: LCCOMB_X23_Y21_N24
\cb|md_write_mem~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb|md_write_mem~5_combout\ = (\cb|md_write_mem~1_combout\ & ((\cb|md_write_mem~q\) # ((!\cb|count\(3) & \cb|md_write_mem~3_combout\)))) # (!\cb|md_write_mem~1_combout\ & (((!\cb|count\(3) & \cb|md_write_mem~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb|md_write_mem~1_combout\,
	datab => \cb|md_write_mem~q\,
	datac => \cb|count\(3),
	datad => \cb|md_write_mem~3_combout\,
	combout => \cb|md_write_mem~5_combout\);

-- Location: LCCOMB_X23_Y21_N8
\cb|md_write_mem~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb|md_write_mem~6_combout\ = (\cb|md_write_mem~4_combout\) # ((\cb|count\(2) & (\cb|aluop[2]~4_combout\ & \cb|md_write_mem~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb|count\(2),
	datab => \cb|aluop[2]~4_combout\,
	datac => \cb|md_write_mem~4_combout\,
	datad => \cb|md_write_mem~5_combout\,
	combout => \cb|md_write_mem~6_combout\);

-- Location: FF_X23_Y21_N9
\cb|md_write_mem\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \cb|md_write_mem~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cb|md_write_mem~q\);

-- Location: LCCOMB_X23_Y21_N28
\cb|Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb|Selector2~0_combout\ = ((\cb|count\(0)) # ((\cb|count\(1)) # (!\cb|count\(3)))) # (!\cb|count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb|count\(2),
	datab => \cb|count\(0),
	datac => \cb|count\(3),
	datad => \cb|count\(1),
	combout => \cb|Selector2~0_combout\);

-- Location: LCCOMB_X23_Y21_N4
\cb|Selector2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb|Selector2~1_combout\ = (\cb|Equal1~2_combout\ & ((\cb|md_write_mem~2_combout\) # ((\cb|Selector2~0_combout\ & \cb|md_write~q\)))) # (!\cb|Equal1~2_combout\ & (((\cb|md_write~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb|Equal1~2_combout\,
	datab => \cb|Selector2~0_combout\,
	datac => \cb|md_write~q\,
	datad => \cb|md_write_mem~2_combout\,
	combout => \cb|Selector2~1_combout\);

-- Location: FF_X23_Y21_N5
\cb|md_write\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \cb|Selector2~1_combout\,
	sclr => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cb|md_write~q\);

-- Location: LCCOMB_X24_Y15_N6
\mux1|PC[8]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux1|PC[8]~15_combout\ = (\cb|pc_read~q\) # ((\cb|md_read~q\) # ((\cb|md_write_mem~q\) # (\cb|md_write~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb|pc_read~q\,
	datab => \cb|md_read~q\,
	datac => \cb|md_write_mem~q\,
	datad => \cb|md_write~q\,
	combout => \mux1|PC[8]~15_combout\);

-- Location: LCCOMB_X24_Y15_N8
\mux1|PC[8]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux1|PC[8]~16_combout\ = (\rst~input_o\) # ((\cb|inc_pc~q\) # ((\cb|pc_write~q\ & !\mux1|PC[8]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \cb|pc_write~q\,
	datac => \cb|inc_pc~q\,
	datad => \mux1|PC[8]~15_combout\,
	combout => \mux1|PC[8]~16_combout\);

-- Location: FF_X17_Y17_N5
\mux1|PC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux1|PC[0]~13_combout\,
	asdata => \alu1|out\(0),
	sclr => \rst~input_o\,
	sload => \cb|ALT_INV_inc_pc~q\,
	ena => \mux1|PC[8]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux1|PC\(0));

-- Location: LCCOMB_X17_Y17_N6
\mux1|PC[1]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux1|PC[1]~17_combout\ = (\mux1|PC\(1) & (!\mux1|PC[0]~14\)) # (!\mux1|PC\(1) & ((\mux1|PC[0]~14\) # (GND)))
-- \mux1|PC[1]~18\ = CARRY((!\mux1|PC[0]~14\) # (!\mux1|PC\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|PC\(1),
	datad => VCC,
	cin => \mux1|PC[0]~14\,
	combout => \mux1|PC[1]~17_combout\,
	cout => \mux1|PC[1]~18\);

-- Location: FF_X17_Y17_N7
\mux1|PC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux1|PC[1]~17_combout\,
	asdata => \alu1|out\(1),
	sclr => \rst~input_o\,
	sload => \cb|ALT_INV_inc_pc~q\,
	ena => \mux1|PC[8]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux1|PC\(1));

-- Location: LCCOMB_X19_Y18_N8
\mux1|out_data~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux1|out_data~3_combout\ = (\cb|md_read~q\ & (\mux1|MD\(1))) # (!\cb|md_read~q\ & ((\mux1|PC\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|MD\(1),
	datac => \mux1|PC\(1),
	datad => \cb|md_read~q\,
	combout => \mux1|out_data~3_combout\);

-- Location: LCCOMB_X21_Y21_N30
\cb|Mux14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb|Mux14~0_combout\ = (\cb|Decoder0~1_combout\ & ((\cb|count\(3) & (\cb|Equal1~1_combout\ & \cb|count\(0))) # (!\cb|count\(3) & ((!\cb|count\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb|count\(3),
	datab => \cb|Equal1~1_combout\,
	datac => \cb|count\(0),
	datad => \cb|Decoder0~1_combout\,
	combout => \cb|Mux14~0_combout\);

-- Location: LCCOMB_X21_Y21_N18
\cb|Mux14~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb|Mux14~1_combout\ = (\cb|count\(2)) # ((\cb|count\(3) & ((\cb|count\(0)))) # (!\cb|count\(3) & (\cb|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb|count\(3),
	datab => \cb|count\(1),
	datac => \cb|count\(0),
	datad => \cb|count\(2),
	combout => \cb|Mux14~1_combout\);

-- Location: LCCOMB_X21_Y21_N14
\cb|Mux14~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb|Mux14~2_combout\ = (\cb|Mux14~1_combout\) # ((!\cb|count\(0) & ((!\cb|Equal1~1_combout\) # (!\cb|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb|count\(1),
	datab => \cb|Equal1~1_combout\,
	datac => \cb|count\(0),
	datad => \cb|Mux14~1_combout\,
	combout => \cb|Mux14~2_combout\);

-- Location: LCCOMB_X23_Y20_N2
\cb|Mux14~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb|Mux14~3_combout\ = (\cb|Mux14~0_combout\) # ((\cb|pc_read~q\ & \cb|Mux14~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cb|Mux14~0_combout\,
	datac => \cb|pc_read~q\,
	datad => \cb|Mux14~2_combout\,
	combout => \cb|Mux14~3_combout\);

-- Location: FF_X23_Y20_N3
\cb|pc_read\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \cb|Mux14~3_combout\,
	sclr => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cb|pc_read~q\);

-- Location: LCCOMB_X24_Y15_N24
\mux1|out_data[14]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux1|out_data[14]~1_combout\ = (!\rst~input_o\ & ((\cb|md_write_mem~q\) # ((\cb|md_write~q\) # (!\cb|pc_read~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \cb|md_write_mem~q\,
	datac => \cb|pc_read~q\,
	datad => \cb|md_write~q\,
	combout => \mux1|out_data[14]~1_combout\);

-- Location: LCCOMB_X24_Y15_N10
\mux1|out_data[14]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux1|out_data[14]~2_combout\ = (\cb|md_read~q\) # (!\mux1|out_data[14]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cb|md_read~q\,
	datad => \mux1|out_data[14]~1_combout\,
	combout => \mux1|out_data[14]~2_combout\);

-- Location: FF_X19_Y18_N9
\mux1|out_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux1|out_data~3_combout\,
	sclr => \rst~input_o\,
	ena => \mux1|out_data[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux1|out_data\(1));

-- Location: LCCOMB_X20_Y18_N6
\output2[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \output2[1]~1_combout\ = (\cb|stack_read~q\ & (\stack1|out_stack_data\(1))) # (!\cb|stack_read~q\ & ((\mux1|out_data\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cb|stack_read~q\,
	datac => \stack1|out_stack_data\(1),
	datad => \mux1|out_data\(1),
	combout => \output2[1]~1_combout\);

-- Location: LCCOMB_X22_Y15_N2
\mux|IR~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux|IR~3_combout\ = (!\rst~input_o\ & \alu1|out\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datad => \alu1|out\(1),
	combout => \mux|IR~3_combout\);

-- Location: LCCOMB_X20_Y15_N2
\mux|IR[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux|IR[1]~feeder_combout\ = \mux|IR~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux|IR~3_combout\,
	combout => \mux|IR[1]~feeder_combout\);

-- Location: FF_X20_Y15_N3
\mux|IR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux|IR[1]~feeder_combout\,
	ena => \mux|IR[16]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|IR\(1));

-- Location: LCCOMB_X22_Y15_N0
\mux|AC~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux|AC~1_combout\ = (\alu1|out\(1)) # (\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu1|out\(1),
	datad => \rst~input_o\,
	combout => \mux|AC~1_combout\);

-- Location: LCCOMB_X21_Y16_N16
\mux|AC[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux|AC[1]~feeder_combout\ = \mux|AC~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux|AC~1_combout\,
	combout => \mux|AC[1]~feeder_combout\);

-- Location: FF_X21_Y16_N17
\mux|AC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux|AC[1]~feeder_combout\,
	ena => \mux|AC[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|AC\(1));

-- Location: LCCOMB_X19_Y14_N18
\mux|out_data~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux|out_data~2_combout\ = (\cb|ac_read~q\ & ((\mux|AC\(1)))) # (!\cb|ac_read~q\ & (\mux|IR\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb|ac_read~q\,
	datac => \mux|IR\(1),
	datad => \mux|AC\(1),
	combout => \mux|out_data~2_combout\);

-- Location: FF_X19_Y14_N19
\mux|out_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux|out_data~2_combout\,
	sclr => \rst~input_o\,
	ena => \mux|out_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|out_data\(1));

-- Location: LCCOMB_X22_Y13_N0
\mux|IR~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux|IR~0_combout\ = (\alu1|out\(0) & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu1|out\(0),
	datad => \rst~input_o\,
	combout => \mux|IR~0_combout\);

-- Location: LCCOMB_X21_Y16_N28
\mux|AC[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux|AC[0]~feeder_combout\ = \mux|IR~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux|IR~0_combout\,
	combout => \mux|AC[0]~feeder_combout\);

-- Location: FF_X21_Y16_N29
\mux|AC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux|AC[0]~feeder_combout\,
	ena => \mux|AC[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|AC\(0));

-- Location: LCCOMB_X20_Y15_N16
\mux|IR[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux|IR[0]~feeder_combout\ = \mux|IR~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux|IR~0_combout\,
	combout => \mux|IR[0]~feeder_combout\);

-- Location: FF_X20_Y15_N17
\mux|IR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux|IR[0]~feeder_combout\,
	ena => \mux|IR[16]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|IR\(0));

-- Location: LCCOMB_X19_Y14_N8
\mux|out_data~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux|out_data~0_combout\ = (\cb|ac_read~q\ & (\mux|AC\(0))) # (!\cb|ac_read~q\ & ((\mux|IR\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux|AC\(0),
	datac => \cb|ac_read~q\,
	datad => \mux|IR\(0),
	combout => \mux|out_data~0_combout\);

-- Location: FF_X19_Y14_N9
\mux|out_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux|out_data~0_combout\,
	sclr => \rst~input_o\,
	ena => \mux|out_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|out_data\(0));

-- Location: LCCOMB_X20_Y18_N14
\alu1|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alu1|Add0~8_combout\ = (\output2[0]~0_combout\ & (\mux|out_data\(0) $ (VCC))) # (!\output2[0]~0_combout\ & (\mux|out_data\(0) & VCC))
-- \alu1|Add0~9\ = CARRY((\output2[0]~0_combout\ & \mux|out_data\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \output2[0]~0_combout\,
	datab => \mux|out_data\(0),
	datad => VCC,
	combout => \alu1|Add0~8_combout\,
	cout => \alu1|Add0~9\);

-- Location: LCCOMB_X20_Y18_N16
\alu1|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alu1|Add0~14_combout\ = (\output2[1]~1_combout\ & ((\mux|out_data\(1) & (\alu1|Add0~9\ & VCC)) # (!\mux|out_data\(1) & (!\alu1|Add0~9\)))) # (!\output2[1]~1_combout\ & ((\mux|out_data\(1) & (!\alu1|Add0~9\)) # (!\mux|out_data\(1) & ((\alu1|Add0~9\) # 
-- (GND)))))
-- \alu1|Add0~15\ = CARRY((\output2[1]~1_combout\ & (!\mux|out_data\(1) & !\alu1|Add0~9\)) # (!\output2[1]~1_combout\ & ((!\alu1|Add0~9\) # (!\mux|out_data\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \output2[1]~1_combout\,
	datab => \mux|out_data\(1),
	datad => VCC,
	cin => \alu1|Add0~9\,
	combout => \alu1|Add0~14_combout\,
	cout => \alu1|Add0~15\);

-- Location: LCCOMB_X20_Y21_N24
\alu1|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alu1|Add0~10_combout\ = (!\cb|aluop\(0) & (!\cb|aluop\(1) & !\cb|aluop\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb|aluop\(0),
	datab => \cb|aluop\(1),
	datad => \cb|aluop\(2),
	combout => \alu1|Add0~10_combout\);

-- Location: LCCOMB_X21_Y17_N28
\alu1|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alu1|Add0~16_combout\ = (\mux|out_data\(1) & ((\alu1|Add0~11_combout\) # ((\alu1|Add0~14_combout\ & \alu1|Add0~10_combout\)))) # (!\mux|out_data\(1) & (((\alu1|Add0~14_combout\ & \alu1|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out_data\(1),
	datab => \alu1|Add0~11_combout\,
	datac => \alu1|Add0~14_combout\,
	datad => \alu1|Add0~10_combout\,
	combout => \alu1|Add0~16_combout\);

-- Location: LCCOMB_X21_Y17_N6
\alu1|Add0~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alu1|Add0~17_combout\ = (\alu1|Add0~16_combout\) # ((\alu1|Mux1~0_combout\ & \output2[1]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu1|Mux1~0_combout\,
	datac => \output2[1]~1_combout\,
	datad => \alu1|Add0~16_combout\,
	combout => \alu1|Add0~17_combout\);

-- Location: LCCOMB_X21_Y17_N30
\alu1|out[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alu1|out\(1) = (GLOBAL(\alu1|out[17]~0clkctrl_outclk\) & ((\alu1|Add0~17_combout\))) # (!GLOBAL(\alu1|out[17]~0clkctrl_outclk\) & (\alu1|out\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|out\(1),
	datac => \alu1|out[17]~0clkctrl_outclk\,
	datad => \alu1|Add0~17_combout\,
	combout => \alu1|out\(1));

-- Location: LCCOMB_X21_Y20_N20
\cb|Mux15~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb|Mux15~1_combout\ = (\cb|count\(3) & (((\cb|count\(1)) # (\mux|opcode\(2))) # (!\cb|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb|count\(0),
	datab => \cb|count\(1),
	datac => \cb|count\(3),
	datad => \mux|opcode\(2),
	combout => \cb|Mux15~1_combout\);

-- Location: LCCOMB_X21_Y21_N8
\cb|Mux15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb|Mux15~0_combout\ = (\cb|Decoder0~1_combout\ & ((\cb|count\(3) & (!\cb|count\(0) & !\cb|aluop~3_combout\)) # (!\cb|count\(3) & (\cb|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb|count\(3),
	datab => \cb|count\(0),
	datac => \cb|aluop~3_combout\,
	datad => \cb|Decoder0~1_combout\,
	combout => \cb|Mux15~0_combout\);

-- Location: LCCOMB_X21_Y20_N18
\cb|Mux15~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb|Mux15~2_combout\ = (\cb|Mux15~0_combout\) # ((\cb|ma_write~q\ & ((\cb|count\(2)) # (\cb|Mux15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb|count\(2),
	datab => \cb|Mux15~1_combout\,
	datac => \cb|ma_write~q\,
	datad => \cb|Mux15~0_combout\,
	combout => \cb|Mux15~2_combout\);

-- Location: FF_X21_Y20_N19
\cb|ma_write\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \cb|Mux15~2_combout\,
	sclr => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cb|ma_write~q\);

-- Location: LCCOMB_X21_Y20_N10
\cb|Mux13~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb|Mux13~4_combout\ = (\cb|count\(2)) # ((\cb|count\(3) & \cb|aluop~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb|count\(2),
	datab => \cb|count\(3),
	datac => \cb|aluop~3_combout\,
	combout => \cb|Mux13~4_combout\);

-- Location: LCCOMB_X21_Y20_N16
\cb|Mux13~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb|Mux13~6_combout\ = (\cb|Mux13~5_combout\ & (((\cb|ma_read~q\) # (!\cb|Mux13~4_combout\)))) # (!\cb|Mux13~5_combout\ & (\cb|ma_read~q\ & (\cb|count\(1) $ (!\cb|Mux13~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb|Mux13~5_combout\,
	datab => \cb|count\(1),
	datac => \cb|ma_read~q\,
	datad => \cb|Mux13~4_combout\,
	combout => \cb|Mux13~6_combout\);

-- Location: FF_X21_Y20_N17
\cb|ma_read\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \cb|Mux13~6_combout\,
	sclr => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cb|ma_read~q\);

-- Location: LCCOMB_X19_Y15_N6
\mar1|MAR[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mar1|MAR[3]~1_combout\ = (!\rst~input_o\ & (\cb|ma_write~q\ & !\cb|ma_read~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datac => \cb|ma_write~q\,
	datad => \cb|ma_read~q\,
	combout => \mar1|MAR[3]~1_combout\);

-- Location: FF_X21_Y17_N31
\mar1|MAR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \alu1|out\(1),
	ena => \mar1|MAR[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mar1|MAR\(1));

-- Location: LCCOMB_X23_Y15_N24
\mar1|MAR_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mar1|MAR_out~0_combout\ = (!\rst~input_o\ & \mar1|MAR\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datac => \mar1|MAR\(1),
	combout => \mar1|MAR_out~0_combout\);

-- Location: LCCOMB_X19_Y15_N28
\mar1|MAR[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mar1|MAR[3]~0_combout\ = (\rst~input_o\) # (\cb|ma_read~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datad => \cb|ma_read~q\,
	combout => \mar1|MAR[3]~0_combout\);

-- Location: FF_X23_Y15_N25
\mar1|MAR_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mar1|MAR_out~0_combout\,
	ena => \mar1|MAR[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mar1|MAR_out\(1));

-- Location: LCCOMB_X23_Y15_N18
\mar1|MAR_out~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mar1|MAR_out~1_combout\ = (\mar1|MAR\(0) & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR\(0),
	datad => \rst~input_o\,
	combout => \mar1|MAR_out~1_combout\);

-- Location: FF_X23_Y15_N19
\mar1|MAR_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mar1|MAR_out~1_combout\,
	ena => \mar1|MAR[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mar1|MAR_out\(0));

-- Location: LCCOMB_X22_Y13_N12
\mem|Mem[12][17]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[12][17]~9_combout\ = (!\mar1|MAR_out\(1) & !\mar1|MAR_out\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mar1|MAR_out\(1),
	datad => \mar1|MAR_out\(0),
	combout => \mem|Mem[12][17]~9_combout\);

-- Location: LCCOMB_X23_Y21_N26
\cb|Equal1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb|Equal1~2_combout\ = (!\mux|opcode\(2) & (\mux|opcode\(1) & !\mux|opcode\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux|opcode\(2),
	datac => \mux|opcode\(1),
	datad => \mux|opcode\(0),
	combout => \cb|Equal1~2_combout\);

-- Location: LCCOMB_X23_Y21_N22
\cb|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb|Selector1~0_combout\ = (\cb|Selector0~0_combout\ & (!\cb|count\(0) & ((\cb|Equal1~2_combout\) # (\cb|mem_write~q\)))) # (!\cb|Selector0~0_combout\ & (((\cb|mem_write~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb|count\(0),
	datab => \cb|Equal1~2_combout\,
	datac => \cb|mem_write~q\,
	datad => \cb|Selector0~0_combout\,
	combout => \cb|Selector1~0_combout\);

-- Location: FF_X23_Y21_N23
\cb|mem_write\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \cb|Selector1~0_combout\,
	sclr => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cb|mem_write~q\);

-- Location: LCCOMB_X22_Y20_N16
\cb|Mux8~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb|Mux8~5_combout\ = (\cb|count\(2)) # ((\cb|count\(3) & \cb|count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb|count\(2),
	datab => \cb|count\(3),
	datac => \cb|count\(0),
	combout => \cb|Mux8~5_combout\);

-- Location: LCCOMB_X22_Y21_N18
\cb|Mux8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb|Mux8~2_combout\ = (\mux|opcode\(1) & ((\mux|opcode\(0)) # (\cb|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux|opcode\(0),
	datac => \mux|opcode\(1),
	datad => \cb|count\(1),
	combout => \cb|Mux8~2_combout\);

-- Location: LCCOMB_X22_Y21_N2
\cb|Mux8~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb|Mux8~3_combout\ = (\cb|count\(3) & ((\mux|opcode\(2)) # ((\cb|Mux8~2_combout\)))) # (!\cb|count\(3) & (((\cb|aluop[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb|count\(3),
	datab => \mux|opcode\(2),
	datac => \cb|aluop[2]~4_combout\,
	datad => \cb|Mux8~2_combout\,
	combout => \cb|Mux8~3_combout\);

-- Location: LCCOMB_X22_Y21_N12
\cb|Mux8~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb|Mux8~4_combout\ = (\cb|count\(3) & (!\cb|count\(2) & ((!\cb|Mux8~3_combout\) # (!\cb|count\(0))))) # (!\cb|count\(3) & ((\cb|count\(2) & ((\cb|Mux8~3_combout\))) # (!\cb|count\(2) & (\cb|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb|count\(0),
	datab => \cb|count\(3),
	datac => \cb|count\(2),
	datad => \cb|Mux8~3_combout\,
	combout => \cb|Mux8~4_combout\);

-- Location: LCCOMB_X22_Y20_N20
\cb|Mux8~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb|Mux8~6_combout\ = (\cb|Mux8~5_combout\ & (((\cb|mem_read~q\ & !\cb|Mux8~4_combout\)))) # (!\cb|Mux8~5_combout\ & ((\cb|Mux8~7_combout\ & ((\cb|Mux8~4_combout\))) # (!\cb|Mux8~7_combout\ & (\cb|mem_read~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb|Mux8~7_combout\,
	datab => \cb|Mux8~5_combout\,
	datac => \cb|mem_read~q\,
	datad => \cb|Mux8~4_combout\,
	combout => \cb|Mux8~6_combout\);

-- Location: FF_X22_Y20_N21
\cb|mem_read\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \cb|Mux8~6_combout\,
	sclr => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cb|mem_read~q\);

-- Location: LCCOMB_X24_Y14_N22
\mar1|MAR_out~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mar1|MAR_out~12_combout\ = (\mar1|MAR\(12) & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR\(12),
	datac => \rst~input_o\,
	combout => \mar1|MAR_out~12_combout\);

-- Location: FF_X24_Y14_N23
\mar1|MAR_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mar1|MAR_out~12_combout\,
	ena => \mar1|MAR[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mar1|MAR_out\(12));

-- Location: LCCOMB_X23_Y17_N18
\mem|Mem[10][17]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[10][17]~3_combout\ = (\cb|mem_write~q\ & (!\cb|mem_read~q\ & !\mar1|MAR_out\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cb|mem_write~q\,
	datac => \cb|mem_read~q\,
	datad => \mar1|MAR_out\(12),
	combout => \mem|Mem[10][17]~3_combout\);

-- Location: LCCOMB_X19_Y15_N8
\alu1|out[5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alu1|out\(5) = (GLOBAL(\alu1|out[17]~0clkctrl_outclk\) & (\alu1|Add0~33_combout\)) # (!GLOBAL(\alu1|out[17]~0clkctrl_outclk\) & ((\alu1|out\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|Add0~33_combout\,
	datac => \alu1|out\(5),
	datad => \alu1|out[17]~0clkctrl_outclk\,
	combout => \alu1|out\(5));

-- Location: FF_X19_Y15_N9
\mar1|MAR[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \alu1|out\(5),
	ena => \mar1|MAR[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mar1|MAR\(5));

-- Location: LCCOMB_X24_Y14_N0
\mar1|MAR_out~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mar1|MAR_out~5_combout\ = (!\rst~input_o\ & \mar1|MAR\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	datad => \mar1|MAR\(5),
	combout => \mar1|MAR_out~5_combout\);

-- Location: FF_X24_Y14_N1
\mar1|MAR_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mar1|MAR_out~5_combout\,
	ena => \mar1|MAR[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mar1|MAR_out\(5));

-- Location: LCCOMB_X22_Y14_N0
\mux|AC~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux|AC~3_combout\ = (\rst~input_o\) # (\alu1|out\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datad => \alu1|out\(4),
	combout => \mux|AC~3_combout\);

-- Location: LCCOMB_X21_Y16_N30
\mux|AC[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux|AC[4]~feeder_combout\ = \mux|AC~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux|AC~3_combout\,
	combout => \mux|AC[4]~feeder_combout\);

-- Location: FF_X21_Y16_N31
\mux|AC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux|AC[4]~feeder_combout\,
	ena => \mux|AC[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|AC\(4));

-- Location: LCCOMB_X19_Y14_N16
\mux|out_data~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux|out_data~5_combout\ = (\cb|ac_read~q\ & ((\mux|AC\(4)))) # (!\cb|ac_read~q\ & (\mux|IR\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|IR\(4),
	datac => \cb|ac_read~q\,
	datad => \mux|AC\(4),
	combout => \mux|out_data~5_combout\);

-- Location: FF_X19_Y14_N17
\mux|out_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux|out_data~5_combout\,
	sclr => \rst~input_o\,
	ena => \mux|out_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|out_data\(4));

-- Location: LCCOMB_X17_Y18_N16
\stack1|Stack~22feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stack1|Stack~22feeder_combout\ = \alu1|out\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \alu1|out\(4),
	combout => \stack1|Stack~22feeder_combout\);

-- Location: FF_X17_Y18_N17
\stack1|Stack~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \stack1|Stack~22feeder_combout\,
	ena => \stack1|Stack~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack1|Stack~22_q\);

-- Location: LCCOMB_X17_Y18_N18
\stack1|Stack~4feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stack1|Stack~4feeder_combout\ = \alu1|out\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \alu1|out\(4),
	combout => \stack1|Stack~4feeder_combout\);

-- Location: FF_X17_Y18_N19
\stack1|Stack~4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \stack1|Stack~4feeder_combout\,
	ena => \stack1|Stack~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack1|Stack~4_q\);

-- Location: LCCOMB_X16_Y18_N0
\stack1|Stack~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stack1|Stack~81_combout\ = (\stack1|Stack~80_combout\ & (((\stack1|Stack~4_q\) # (!\stack1|Add0~0_combout\)))) # (!\stack1|Stack~80_combout\ & (\stack1|Stack~22_q\ & (\stack1|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack1|Stack~80_combout\,
	datab => \stack1|Stack~22_q\,
	datac => \stack1|Add0~0_combout\,
	datad => \stack1|Stack~4_q\,
	combout => \stack1|Stack~81_combout\);

-- Location: FF_X16_Y18_N1
\stack1|out_stack_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \stack1|Stack~81_combout\,
	sclr => \rst~input_o\,
	ena => \stack1|out_stack_data[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack1|out_stack_data\(4));

-- Location: LCCOMB_X22_Y13_N2
\mem|Mem[6][2]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[6][2]~5_combout\ = (\mar1|MAR_out\(1) & !\mar1|MAR_out\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mar1|MAR_out\(1),
	datad => \mar1|MAR_out\(0),
	combout => \mem|Mem[6][2]~5_combout\);

-- Location: LCCOMB_X22_Y14_N6
\mem|Mem[6][2]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[6][2]~6_combout\ = (\rst~input_o\) # ((!\mar1|MAR_out\(3) & (\mem|Mem[6][2]~5_combout\ & \mem|Mem[12][17]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(3),
	datab => \rst~input_o\,
	datac => \mem|Mem[6][2]~5_combout\,
	datad => \mem|Mem[12][17]~4_combout\,
	combout => \mem|Mem[6][2]~6_combout\);

-- Location: FF_X22_Y14_N1
\mem|Mem[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux|AC~3_combout\,
	ena => \mem|Mem[6][2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[6][4]~q\);

-- Location: LCCOMB_X16_Y16_N24
\stack1|Stack~39feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stack1|Stack~39feeder_combout\ = \alu1|out\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \alu1|out\(3),
	combout => \stack1|Stack~39feeder_combout\);

-- Location: FF_X16_Y16_N25
\stack1|Stack~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \stack1|Stack~39feeder_combout\,
	ena => \stack1|Stack~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack1|Stack~39_q\);

-- Location: FF_X17_Y18_N13
\stack1|Stack~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \alu1|out\(3),
	sload => VCC,
	ena => \stack1|Stack~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack1|Stack~21_q\);

-- Location: LCCOMB_X17_Y18_N12
\stack1|Stack~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stack1|Stack~78_combout\ = (\stack1|SP\(1) & (((\stack1|Stack~21_q\ & !\stack1|SP\(0))))) # (!\stack1|SP\(1) & ((\stack1|Stack~57_q\) # ((\stack1|SP\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack1|Stack~57_q\,
	datab => \stack1|SP\(1),
	datac => \stack1|Stack~21_q\,
	datad => \stack1|SP\(0),
	combout => \stack1|Stack~78_combout\);

-- Location: LCCOMB_X16_Y18_N30
\stack1|Stack~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stack1|Stack~79_combout\ = (\stack1|Stack~78_combout\ & ((\stack1|Stack~3_q\) # ((!\stack1|SP\(0))))) # (!\stack1|Stack~78_combout\ & (((\stack1|Stack~39_q\ & \stack1|SP\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack1|Stack~3_q\,
	datab => \stack1|Stack~39_q\,
	datac => \stack1|Stack~78_combout\,
	datad => \stack1|SP\(0),
	combout => \stack1|Stack~79_combout\);

-- Location: FF_X16_Y18_N31
\stack1|out_stack_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \stack1|Stack~79_combout\,
	sclr => \rst~input_o\,
	ena => \stack1|out_stack_data[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack1|out_stack_data\(3));

-- Location: LCCOMB_X17_Y17_N8
\mux1|PC[2]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux1|PC[2]~19_combout\ = (\mux1|PC\(2) & (\mux1|PC[1]~18\ $ (GND))) # (!\mux1|PC\(2) & (!\mux1|PC[1]~18\ & VCC))
-- \mux1|PC[2]~20\ = CARRY((\mux1|PC\(2) & !\mux1|PC[1]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mux1|PC\(2),
	datad => VCC,
	cin => \mux1|PC[1]~18\,
	combout => \mux1|PC[2]~19_combout\,
	cout => \mux1|PC[2]~20\);

-- Location: LCCOMB_X17_Y18_N8
\stack1|Stack~20feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stack1|Stack~20feeder_combout\ = \alu1|out\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu1|out\(2),
	combout => \stack1|Stack~20feeder_combout\);

-- Location: FF_X17_Y18_N9
\stack1|Stack~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \stack1|Stack~20feeder_combout\,
	ena => \stack1|Stack~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack1|Stack~20_q\);

-- Location: FF_X22_Y19_N9
\stack1|Stack~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \alu1|out\(2),
	sload => VCC,
	ena => \stack1|Stack~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack1|Stack~38_q\);

-- Location: LCCOMB_X21_Y14_N26
\stack1|Stack~56feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stack1|Stack~56feeder_combout\ = \alu1|out\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \alu1|out\(2),
	combout => \stack1|Stack~56feeder_combout\);

-- Location: FF_X21_Y14_N27
\stack1|Stack~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \stack1|Stack~56feeder_combout\,
	ena => \stack1|Stack~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack1|Stack~56_q\);

-- Location: LCCOMB_X22_Y19_N8
\stack1|Stack~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stack1|Stack~76_combout\ = (\stack1|SP\(0) & (((\stack1|Stack~38_q\)) # (!\stack1|SP\(1)))) # (!\stack1|SP\(0) & (!\stack1|SP\(1) & ((\stack1|Stack~56_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack1|SP\(0),
	datab => \stack1|SP\(1),
	datac => \stack1|Stack~38_q\,
	datad => \stack1|Stack~56_q\,
	combout => \stack1|Stack~76_combout\);

-- Location: LCCOMB_X16_Y18_N12
\stack1|Stack~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stack1|Stack~77_combout\ = (\stack1|Add0~0_combout\ & ((\stack1|Stack~76_combout\ & (\stack1|Stack~2_q\)) # (!\stack1|Stack~76_combout\ & ((\stack1|Stack~20_q\))))) # (!\stack1|Add0~0_combout\ & (((\stack1|Stack~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack1|Stack~2_q\,
	datab => \stack1|Stack~20_q\,
	datac => \stack1|Add0~0_combout\,
	datad => \stack1|Stack~76_combout\,
	combout => \stack1|Stack~77_combout\);

-- Location: FF_X16_Y18_N13
\stack1|out_stack_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \stack1|Stack~77_combout\,
	sclr => \rst~input_o\,
	ena => \stack1|out_stack_data[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack1|out_stack_data\(2));

-- Location: LCCOMB_X19_Y18_N18
\mux1|out_data~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux1|out_data~4_combout\ = (\cb|md_read~q\ & (\mux1|MD\(2))) # (!\cb|md_read~q\ & ((\mux1|PC\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|MD\(2),
	datac => \mux1|PC\(2),
	datad => \cb|md_read~q\,
	combout => \mux1|out_data~4_combout\);

-- Location: FF_X19_Y18_N19
\mux1|out_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux1|out_data~4_combout\,
	sclr => \rst~input_o\,
	ena => \mux1|out_data[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux1|out_data\(2));

-- Location: LCCOMB_X20_Y18_N8
\output2[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \output2[2]~2_combout\ = (\cb|stack_read~q\ & (\stack1|out_stack_data\(2))) # (!\cb|stack_read~q\ & ((\mux1|out_data\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cb|stack_read~q\,
	datac => \stack1|out_stack_data\(2),
	datad => \mux1|out_data\(2),
	combout => \output2[2]~2_combout\);

-- Location: LCCOMB_X21_Y15_N2
\mux|IR~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux|IR~4_combout\ = (\alu1|out\(2) & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|out\(2),
	datad => \rst~input_o\,
	combout => \mux|IR~4_combout\);

-- Location: LCCOMB_X20_Y15_N12
\mux|IR[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux|IR[2]~feeder_combout\ = \mux|IR~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux|IR~4_combout\,
	combout => \mux|IR[2]~feeder_combout\);

-- Location: FF_X20_Y15_N13
\mux|IR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux|IR[2]~feeder_combout\,
	ena => \mux|IR[16]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|IR\(2));

-- Location: LCCOMB_X21_Y14_N22
\mux|AC~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux|AC~2_combout\ = (\rst~input_o\) # (\alu1|out\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datad => \alu1|out\(2),
	combout => \mux|AC~2_combout\);

-- Location: LCCOMB_X21_Y16_N2
\mux|AC[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux|AC[2]~feeder_combout\ = \mux|AC~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux|AC~2_combout\,
	combout => \mux|AC[2]~feeder_combout\);

-- Location: FF_X21_Y16_N3
\mux|AC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux|AC[2]~feeder_combout\,
	ena => \mux|AC[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|AC\(2));

-- Location: LCCOMB_X19_Y14_N20
\mux|out_data~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux|out_data~3_combout\ = (\cb|ac_read~q\ & ((\mux|AC\(2)))) # (!\cb|ac_read~q\ & (\mux|IR\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb|ac_read~q\,
	datab => \mux|IR\(2),
	datac => \mux|AC\(2),
	combout => \mux|out_data~3_combout\);

-- Location: FF_X19_Y14_N21
\mux|out_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux|out_data~3_combout\,
	sclr => \rst~input_o\,
	ena => \mux|out_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|out_data\(2));

-- Location: LCCOMB_X20_Y18_N18
\alu1|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alu1|Add0~18_combout\ = ((\output2[2]~2_combout\ $ (\mux|out_data\(2) $ (!\alu1|Add0~15\)))) # (GND)
-- \alu1|Add0~19\ = CARRY((\output2[2]~2_combout\ & ((\mux|out_data\(2)) # (!\alu1|Add0~15\))) # (!\output2[2]~2_combout\ & (\mux|out_data\(2) & !\alu1|Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \output2[2]~2_combout\,
	datab => \mux|out_data\(2),
	datad => VCC,
	cin => \alu1|Add0~15\,
	combout => \alu1|Add0~18_combout\,
	cout => \alu1|Add0~19\);

-- Location: LCCOMB_X21_Y17_N24
\alu1|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alu1|Add0~20_combout\ = (\alu1|Add0~10_combout\ & ((\alu1|Add0~18_combout\) # ((\mux|out_data\(2) & \alu1|Add0~11_combout\)))) # (!\alu1|Add0~10_combout\ & (\mux|out_data\(2) & (\alu1|Add0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|Add0~10_combout\,
	datab => \mux|out_data\(2),
	datac => \alu1|Add0~11_combout\,
	datad => \alu1|Add0~18_combout\,
	combout => \alu1|Add0~20_combout\);

-- Location: LCCOMB_X21_Y17_N10
\alu1|Add0~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alu1|Add0~21_combout\ = (\alu1|Add0~20_combout\) # ((\alu1|Mux1~0_combout\ & \output2[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu1|Mux1~0_combout\,
	datac => \output2[2]~2_combout\,
	datad => \alu1|Add0~20_combout\,
	combout => \alu1|Add0~21_combout\);

-- Location: LCCOMB_X21_Y17_N26
\alu1|out[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alu1|out\(2) = (GLOBAL(\alu1|out[17]~0clkctrl_outclk\) & ((\alu1|Add0~21_combout\))) # (!GLOBAL(\alu1|out[17]~0clkctrl_outclk\) & (\alu1|out\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|out\(2),
	datac => \alu1|out[17]~0clkctrl_outclk\,
	datad => \alu1|Add0~21_combout\,
	combout => \alu1|out\(2));

-- Location: FF_X17_Y17_N9
\mux1|PC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux1|PC[2]~19_combout\,
	asdata => \alu1|out\(2),
	sclr => \rst~input_o\,
	sload => \cb|ALT_INV_inc_pc~q\,
	ena => \mux1|PC[8]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux1|PC\(2));

-- Location: LCCOMB_X17_Y17_N10
\mux1|PC[3]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux1|PC[3]~21_combout\ = (\mux1|PC\(3) & (!\mux1|PC[2]~20\)) # (!\mux1|PC\(3) & ((\mux1|PC[2]~20\) # (GND)))
-- \mux1|PC[3]~22\ = CARRY((!\mux1|PC[2]~20\) # (!\mux1|PC\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|PC\(3),
	datad => VCC,
	cin => \mux1|PC[2]~20\,
	combout => \mux1|PC[3]~21_combout\,
	cout => \mux1|PC[3]~22\);

-- Location: FF_X17_Y17_N11
\mux1|PC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux1|PC[3]~21_combout\,
	asdata => \alu1|out\(3),
	sclr => \rst~input_o\,
	sload => \cb|ALT_INV_inc_pc~q\,
	ena => \mux1|PC[8]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux1|PC\(3));

-- Location: LCCOMB_X20_Y16_N2
\mem|Mem[12][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[12][3]~feeder_combout\ = \alu1|out\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \alu1|out\(3),
	combout => \mem|Mem[12][3]~feeder_combout\);

-- Location: FF_X20_Y16_N3
\mem|Mem[12][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem[12][3]~feeder_combout\,
	ena => \mem|Mem[12][17]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[12][3]~q\);

-- Location: LCCOMB_X24_Y14_N8
\mar1|MAR_out~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mar1|MAR_out~2_combout\ = (\mar1|MAR\(2) & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR\(2),
	datac => \rst~input_o\,
	combout => \mar1|MAR_out~2_combout\);

-- Location: FF_X24_Y14_N9
\mar1|MAR_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mar1|MAR_out~2_combout\,
	ena => \mar1|MAR[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mar1|MAR_out\(2));

-- Location: LCCOMB_X23_Y17_N20
\mux|IR~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux|IR~5_combout\ = (!\rst~input_o\ & \alu1|out\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datad => \alu1|out\(3),
	combout => \mux|IR~5_combout\);

-- Location: LCCOMB_X22_Y17_N24
\mem|Mem[5][9]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[5][9]~7_combout\ = (\mar1|MAR_out\(3)) # (!\mar1|MAR_out\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mar1|MAR_out\(0),
	datad => \mar1|MAR_out\(3),
	combout => \mem|Mem[5][9]~7_combout\);

-- Location: LCCOMB_X23_Y17_N14
\mem|Mem[5][9]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[5][9]~8_combout\ = (\rst~input_o\) # ((!\mar1|MAR_out\(1) & (\mem|Mem[12][17]~4_combout\ & !\mem|Mem[5][9]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \mar1|MAR_out\(1),
	datac => \mem|Mem[12][17]~4_combout\,
	datad => \mem|Mem[5][9]~7_combout\,
	combout => \mem|Mem[5][9]~8_combout\);

-- Location: FF_X21_Y14_N9
\mem|Mem[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mux|IR~5_combout\,
	sload => VCC,
	ena => \mem|Mem[5][9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[5][3]~q\);

-- Location: FF_X22_Y13_N31
\mem|Mem[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mux|IR~5_combout\,
	sload => VCC,
	ena => \mem|Mem[7][3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[7][3]~q\);

-- Location: LCCOMB_X21_Y15_N30
\mem|Mem[4][8]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[4][8]~10_combout\ = (\rst~input_o\) # ((!\mar1|MAR_out\(3) & (\mem|Mem[12][17]~9_combout\ & \mem|Mem[12][17]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \mar1|MAR_out\(3),
	datac => \mem|Mem[12][17]~9_combout\,
	datad => \mem|Mem[12][17]~4_combout\,
	combout => \mem|Mem[4][8]~10_combout\);

-- Location: FF_X21_Y15_N21
\mem|Mem[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mux|IR~5_combout\,
	sload => VCC,
	ena => \mem|Mem[4][8]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[4][3]~q\);

-- Location: LCCOMB_X22_Y17_N10
\mem|Mem~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem~27_combout\ = (\rst~input_o\) # (\alu1|out\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datad => \alu1|out\(3),
	combout => \mem|Mem~27_combout\);

-- Location: LCCOMB_X22_Y14_N20
\mem|Mem[6][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[6][3]~feeder_combout\ = \mem|Mem~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem|Mem~27_combout\,
	combout => \mem|Mem[6][3]~feeder_combout\);

-- Location: FF_X22_Y14_N21
\mem|Mem[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem[6][3]~feeder_combout\,
	ena => \mem|Mem[6][2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[6][3]~q\);

-- Location: LCCOMB_X21_Y15_N20
\mem|out_dat_add~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~27_combout\ = (\mar1|MAR_out\(1) & ((\mar1|MAR_out\(0)) # ((\mem|Mem[6][3]~q\)))) # (!\mar1|MAR_out\(1) & (!\mar1|MAR_out\(0) & (\mem|Mem[4][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(1),
	datab => \mar1|MAR_out\(0),
	datac => \mem|Mem[4][3]~q\,
	datad => \mem|Mem[6][3]~q\,
	combout => \mem|out_dat_add~27_combout\);

-- Location: LCCOMB_X22_Y13_N30
\mem|out_dat_add~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~28_combout\ = (\mar1|MAR_out\(0) & ((\mem|out_dat_add~27_combout\ & ((\mem|Mem[7][3]~q\))) # (!\mem|out_dat_add~27_combout\ & (\mem|Mem[5][3]~q\)))) # (!\mar1|MAR_out\(0) & (((\mem|out_dat_add~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(0),
	datab => \mem|Mem[5][3]~q\,
	datac => \mem|Mem[7][3]~q\,
	datad => \mem|out_dat_add~27_combout\,
	combout => \mem|out_dat_add~28_combout\);

-- Location: LCCOMB_X22_Y17_N20
\mux|IR~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux|IR~13_combout\ = (!\rst~input_o\ & \alu1|out\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datad => \alu1|out\(11),
	combout => \mux|IR~13_combout\);

-- Location: LCCOMB_X20_Y15_N28
\mux|AC[11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux|AC[11]~feeder_combout\ = \mux|IR~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux|IR~13_combout\,
	combout => \mux|AC[11]~feeder_combout\);

-- Location: FF_X20_Y15_N29
\mux|AC[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux|AC[11]~feeder_combout\,
	ena => \mux|AC[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|AC\(11));

-- Location: LCCOMB_X20_Y15_N30
\mux|IR[11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux|IR[11]~feeder_combout\ = \mux|IR~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux|IR~13_combout\,
	combout => \mux|IR[11]~feeder_combout\);

-- Location: FF_X20_Y15_N31
\mux|IR[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux|IR[11]~feeder_combout\,
	ena => \mux|IR[16]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|IR\(11));

-- Location: LCCOMB_X19_Y14_N14
\mux|out_data~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux|out_data~12_combout\ = (\cb|ac_read~q\ & (\mux|AC\(11))) # (!\cb|ac_read~q\ & ((\mux|IR\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb|ac_read~q\,
	datab => \mux|AC\(11),
	datac => \mux|IR\(11),
	combout => \mux|out_data~12_combout\);

-- Location: FF_X19_Y14_N15
\mux|out_data[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux|out_data~12_combout\,
	sclr => \rst~input_o\,
	ena => \mux|out_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|out_data\(11));

-- Location: LCCOMB_X22_Y17_N8
\alu1|Add0~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alu1|Add0~56_combout\ = (\output2[11]~11_combout\ & ((\alu1|Mux1~0_combout\) # ((\mux|out_data\(11) & \alu1|Add0~11_combout\)))) # (!\output2[11]~11_combout\ & (\mux|out_data\(11) & (\alu1|Add0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \output2[11]~11_combout\,
	datab => \mux|out_data\(11),
	datac => \alu1|Add0~11_combout\,
	datad => \alu1|Mux1~0_combout\,
	combout => \alu1|Add0~56_combout\);

-- Location: LCCOMB_X21_Y19_N30
\stack1|Stack~11feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stack1|Stack~11feeder_combout\ = \alu1|out\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \alu1|out\(11),
	combout => \stack1|Stack~11feeder_combout\);

-- Location: FF_X21_Y19_N31
\stack1|Stack~11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \stack1|Stack~11feeder_combout\,
	ena => \stack1|Stack~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack1|Stack~11_q\);

-- Location: LCCOMB_X22_Y19_N6
\stack1|Stack~29feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stack1|Stack~29feeder_combout\ = \alu1|out\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu1|out\(11),
	combout => \stack1|Stack~29feeder_combout\);

-- Location: FF_X22_Y19_N7
\stack1|Stack~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \stack1|Stack~29feeder_combout\,
	ena => \stack1|Stack~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack1|Stack~29_q\);

-- Location: LCCOMB_X19_Y19_N4
\stack1|Stack~95\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stack1|Stack~95_combout\ = (\stack1|Stack~94_combout\ & ((\stack1|Stack~11_q\) # ((!\stack1|Add0~0_combout\)))) # (!\stack1|Stack~94_combout\ & (((\stack1|Add0~0_combout\ & \stack1|Stack~29_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack1|Stack~94_combout\,
	datab => \stack1|Stack~11_q\,
	datac => \stack1|Add0~0_combout\,
	datad => \stack1|Stack~29_q\,
	combout => \stack1|Stack~95_combout\);

-- Location: FF_X19_Y19_N5
\stack1|out_stack_data[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \stack1|Stack~95_combout\,
	sclr => \rst~input_o\,
	ena => \stack1|out_stack_data[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack1|out_stack_data\(11));

-- Location: LCCOMB_X17_Y17_N12
\mux1|PC[4]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux1|PC[4]~23_combout\ = (\mux1|PC\(4) & (\mux1|PC[3]~22\ $ (GND))) # (!\mux1|PC\(4) & (!\mux1|PC[3]~22\ & VCC))
-- \mux1|PC[4]~24\ = CARRY((\mux1|PC\(4) & !\mux1|PC[3]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|PC\(4),
	datad => VCC,
	cin => \mux1|PC[3]~22\,
	combout => \mux1|PC[4]~23_combout\,
	cout => \mux1|PC[4]~24\);

-- Location: LCCOMB_X17_Y17_N14
\mux1|PC[5]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux1|PC[5]~25_combout\ = (\mux1|PC\(5) & (!\mux1|PC[4]~24\)) # (!\mux1|PC\(5) & ((\mux1|PC[4]~24\) # (GND)))
-- \mux1|PC[5]~26\ = CARRY((!\mux1|PC[4]~24\) # (!\mux1|PC\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mux1|PC\(5),
	datad => VCC,
	cin => \mux1|PC[4]~24\,
	combout => \mux1|PC[5]~25_combout\,
	cout => \mux1|PC[5]~26\);

-- Location: FF_X17_Y17_N15
\mux1|PC[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux1|PC[5]~25_combout\,
	asdata => \alu1|out\(5),
	sclr => \rst~input_o\,
	sload => \cb|ALT_INV_inc_pc~q\,
	ena => \mux1|PC[8]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux1|PC\(5));

-- Location: LCCOMB_X17_Y17_N16
\mux1|PC[6]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux1|PC[6]~27_combout\ = (\mux1|PC\(6) & (\mux1|PC[5]~26\ $ (GND))) # (!\mux1|PC\(6) & (!\mux1|PC[5]~26\ & VCC))
-- \mux1|PC[6]~28\ = CARRY((\mux1|PC\(6) & !\mux1|PC[5]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mux1|PC\(6),
	datad => VCC,
	cin => \mux1|PC[5]~26\,
	combout => \mux1|PC[6]~27_combout\,
	cout => \mux1|PC[6]~28\);

-- Location: LCCOMB_X19_Y18_N2
\mux1|out_data~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux1|out_data~8_combout\ = (\cb|md_read~q\ & (\mux1|MD\(6))) # (!\cb|md_read~q\ & ((\mux1|PC\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|MD\(6),
	datac => \mux1|PC\(6),
	datad => \cb|md_read~q\,
	combout => \mux1|out_data~8_combout\);

-- Location: FF_X19_Y18_N3
\mux1|out_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux1|out_data~8_combout\,
	sclr => \rst~input_o\,
	ena => \mux1|out_data[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux1|out_data\(6));

-- Location: LCCOMB_X17_Y18_N10
\stack1|Stack~6feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stack1|Stack~6feeder_combout\ = \alu1|out\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \alu1|out\(6),
	combout => \stack1|Stack~6feeder_combout\);

-- Location: FF_X17_Y18_N11
\stack1|Stack~6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \stack1|Stack~6feeder_combout\,
	ena => \stack1|Stack~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack1|Stack~6_q\);

-- Location: LCCOMB_X17_Y18_N0
\stack1|Stack~24feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stack1|Stack~24feeder_combout\ = \alu1|out\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \alu1|out\(6),
	combout => \stack1|Stack~24feeder_combout\);

-- Location: FF_X17_Y18_N1
\stack1|Stack~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \stack1|Stack~24feeder_combout\,
	ena => \stack1|Stack~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack1|Stack~24_q\);

-- Location: FF_X16_Y16_N15
\stack1|Stack~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \alu1|out\(6),
	sload => VCC,
	ena => \stack1|Stack~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack1|Stack~42_q\);

-- Location: LCCOMB_X16_Y16_N28
\stack1|Stack~60feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stack1|Stack~60feeder_combout\ = \alu1|out\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu1|out\(6),
	combout => \stack1|Stack~60feeder_combout\);

-- Location: FF_X16_Y16_N29
\stack1|Stack~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \stack1|Stack~60feeder_combout\,
	ena => \stack1|Stack~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack1|Stack~60_q\);

-- Location: LCCOMB_X16_Y16_N14
\stack1|Stack~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stack1|Stack~84_combout\ = (\stack1|SP\(1) & (\stack1|SP\(0) & (\stack1|Stack~42_q\))) # (!\stack1|SP\(1) & ((\stack1|SP\(0)) # ((\stack1|Stack~60_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack1|SP\(1),
	datab => \stack1|SP\(0),
	datac => \stack1|Stack~42_q\,
	datad => \stack1|Stack~60_q\,
	combout => \stack1|Stack~84_combout\);

-- Location: LCCOMB_X16_Y18_N20
\stack1|Stack~85\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stack1|Stack~85_combout\ = (\stack1|Add0~0_combout\ & ((\stack1|Stack~84_combout\ & (\stack1|Stack~6_q\)) # (!\stack1|Stack~84_combout\ & ((\stack1|Stack~24_q\))))) # (!\stack1|Add0~0_combout\ & (((\stack1|Stack~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack1|Add0~0_combout\,
	datab => \stack1|Stack~6_q\,
	datac => \stack1|Stack~24_q\,
	datad => \stack1|Stack~84_combout\,
	combout => \stack1|Stack~85_combout\);

-- Location: FF_X16_Y18_N21
\stack1|out_stack_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \stack1|Stack~85_combout\,
	sclr => \rst~input_o\,
	ena => \stack1|out_stack_data[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack1|out_stack_data\(6));

-- Location: LCCOMB_X19_Y18_N22
\output2[6]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \output2[6]~6_combout\ = (\cb|stack_read~q\ & ((\stack1|out_stack_data\(6)))) # (!\cb|stack_read~q\ & (\mux1|out_data\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux1|out_data\(6),
	datac => \stack1|out_stack_data\(6),
	datad => \cb|stack_read~q\,
	combout => \output2[6]~6_combout\);

-- Location: LCCOMB_X19_Y15_N16
\alu1|Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alu1|Add0~36_combout\ = (\mux|out_data\(6) & ((\alu1|Add0~11_combout\) # ((\output2[6]~6_combout\ & \alu1|Mux1~0_combout\)))) # (!\mux|out_data\(6) & (\output2[6]~6_combout\ & (\alu1|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out_data\(6),
	datab => \output2[6]~6_combout\,
	datac => \alu1|Mux1~0_combout\,
	datad => \alu1|Add0~11_combout\,
	combout => \alu1|Add0~36_combout\);

-- Location: LCCOMB_X22_Y15_N20
\mux|IR~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux|IR~7_combout\ = (!\rst~input_o\ & \alu1|out\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datad => \alu1|out\(5),
	combout => \mux|IR~7_combout\);

-- Location: LCCOMB_X22_Y12_N26
\mux|IR[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux|IR[5]~feeder_combout\ = \mux|IR~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux|IR~7_combout\,
	combout => \mux|IR[5]~feeder_combout\);

-- Location: FF_X22_Y12_N27
\mux|IR[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux|IR[5]~feeder_combout\,
	ena => \mux|IR[16]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|IR\(5));

-- Location: LCCOMB_X21_Y16_N8
\mux|AC~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux|AC~4_combout\ = (\alu1|out\(5)) # (\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu1|out\(5),
	datad => \rst~input_o\,
	combout => \mux|AC~4_combout\);

-- Location: FF_X21_Y16_N9
\mux|AC[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux|AC~4_combout\,
	ena => \mux|AC[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|AC\(5));

-- Location: LCCOMB_X19_Y14_N10
\mux|out_data~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux|out_data~6_combout\ = (\cb|ac_read~q\ & ((\mux|AC\(5)))) # (!\cb|ac_read~q\ & (\mux|IR\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux|IR\(5),
	datac => \cb|ac_read~q\,
	datad => \mux|AC\(5),
	combout => \mux|out_data~6_combout\);

-- Location: FF_X19_Y14_N11
\mux|out_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux|out_data~6_combout\,
	sclr => \rst~input_o\,
	ena => \mux|out_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|out_data\(5));

-- Location: LCCOMB_X20_Y15_N6
\mux|IR[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux|IR[3]~feeder_combout\ = \mux|IR~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux|IR~5_combout\,
	combout => \mux|IR[3]~feeder_combout\);

-- Location: FF_X20_Y15_N7
\mux|IR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux|IR[3]~feeder_combout\,
	ena => \mux|IR[16]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|IR\(3));

-- Location: LCCOMB_X21_Y16_N4
\mux|AC[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux|AC[3]~feeder_combout\ = \mux|IR~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux|IR~5_combout\,
	combout => \mux|AC[3]~feeder_combout\);

-- Location: FF_X21_Y16_N5
\mux|AC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux|AC[3]~feeder_combout\,
	ena => \mux|AC[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|AC\(3));

-- Location: LCCOMB_X19_Y14_N30
\mux|out_data~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux|out_data~4_combout\ = (\cb|ac_read~q\ & ((\mux|AC\(3)))) # (!\cb|ac_read~q\ & (\mux|IR\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb|ac_read~q\,
	datac => \mux|IR\(3),
	datad => \mux|AC\(3),
	combout => \mux|out_data~4_combout\);

-- Location: FF_X19_Y14_N31
\mux|out_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux|out_data~4_combout\,
	sclr => \rst~input_o\,
	ena => \mux|out_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|out_data\(3));

-- Location: LCCOMB_X20_Y18_N20
\alu1|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alu1|Add0~22_combout\ = (\output2[3]~3_combout\ & ((\mux|out_data\(3) & (\alu1|Add0~19\ & VCC)) # (!\mux|out_data\(3) & (!\alu1|Add0~19\)))) # (!\output2[3]~3_combout\ & ((\mux|out_data\(3) & (!\alu1|Add0~19\)) # (!\mux|out_data\(3) & ((\alu1|Add0~19\) # 
-- (GND)))))
-- \alu1|Add0~23\ = CARRY((\output2[3]~3_combout\ & (!\mux|out_data\(3) & !\alu1|Add0~19\)) # (!\output2[3]~3_combout\ & ((!\alu1|Add0~19\) # (!\mux|out_data\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \output2[3]~3_combout\,
	datab => \mux|out_data\(3),
	datad => VCC,
	cin => \alu1|Add0~19\,
	combout => \alu1|Add0~22_combout\,
	cout => \alu1|Add0~23\);

-- Location: LCCOMB_X20_Y18_N22
\alu1|Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alu1|Add0~26_combout\ = ((\mux|out_data\(4) $ (\output2[4]~4_combout\ $ (!\alu1|Add0~23\)))) # (GND)
-- \alu1|Add0~27\ = CARRY((\mux|out_data\(4) & ((\output2[4]~4_combout\) # (!\alu1|Add0~23\))) # (!\mux|out_data\(4) & (\output2[4]~4_combout\ & !\alu1|Add0~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out_data\(4),
	datab => \output2[4]~4_combout\,
	datad => VCC,
	cin => \alu1|Add0~23\,
	combout => \alu1|Add0~26_combout\,
	cout => \alu1|Add0~27\);

-- Location: LCCOMB_X20_Y18_N26
\alu1|Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alu1|Add0~34_combout\ = ((\mux|out_data\(6) $ (\output2[6]~6_combout\ $ (!\alu1|Add0~31\)))) # (GND)
-- \alu1|Add0~35\ = CARRY((\mux|out_data\(6) & ((\output2[6]~6_combout\) # (!\alu1|Add0~31\))) # (!\mux|out_data\(6) & (\output2[6]~6_combout\ & !\alu1|Add0~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out_data\(6),
	datab => \output2[6]~6_combout\,
	datad => VCC,
	cin => \alu1|Add0~31\,
	combout => \alu1|Add0~34_combout\,
	cout => \alu1|Add0~35\);

-- Location: LCCOMB_X19_Y15_N26
\alu1|Add0~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alu1|Add0~37_combout\ = (\alu1|Add0~36_combout\) # ((\alu1|Add0~10_combout\ & \alu1|Add0~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu1|Add0~36_combout\,
	datac => \alu1|Add0~10_combout\,
	datad => \alu1|Add0~34_combout\,
	combout => \alu1|Add0~37_combout\);

-- Location: LCCOMB_X19_Y15_N2
\alu1|out[6]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alu1|out\(6) = (GLOBAL(\alu1|out[17]~0clkctrl_outclk\) & ((\alu1|Add0~37_combout\))) # (!GLOBAL(\alu1|out[17]~0clkctrl_outclk\) & (\alu1|out\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu1|out\(6),
	datac => \alu1|Add0~37_combout\,
	datad => \alu1|out[17]~0clkctrl_outclk\,
	combout => \alu1|out\(6));

-- Location: FF_X17_Y17_N17
\mux1|PC[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux1|PC[6]~27_combout\,
	asdata => \alu1|out\(6),
	sclr => \rst~input_o\,
	sload => \cb|ALT_INV_inc_pc~q\,
	ena => \mux1|PC[8]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux1|PC\(6));

-- Location: LCCOMB_X17_Y17_N18
\mux1|PC[7]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux1|PC[7]~29_combout\ = (\mux1|PC\(7) & (!\mux1|PC[6]~28\)) # (!\mux1|PC\(7) & ((\mux1|PC[6]~28\) # (GND)))
-- \mux1|PC[7]~30\ = CARRY((!\mux1|PC[6]~28\) # (!\mux1|PC\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mux1|PC\(7),
	datad => VCC,
	cin => \mux1|PC[6]~28\,
	combout => \mux1|PC[7]~29_combout\,
	cout => \mux1|PC[7]~30\);

-- Location: LCCOMB_X21_Y15_N16
\mux|IR~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux|IR~9_combout\ = (!\rst~input_o\ & \alu1|out\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datad => \alu1|out\(7),
	combout => \mux|IR~9_combout\);

-- Location: LCCOMB_X22_Y12_N30
\mux|IR[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux|IR[7]~feeder_combout\ = \mux|IR~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux|IR~9_combout\,
	combout => \mux|IR[7]~feeder_combout\);

-- Location: FF_X22_Y12_N31
\mux|IR[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux|IR[7]~feeder_combout\,
	ena => \mux|IR[16]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|IR\(7));

-- Location: FF_X21_Y15_N3
\mux|AC[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mux|IR~9_combout\,
	sload => VCC,
	ena => \mux|AC[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|AC\(7));

-- Location: LCCOMB_X19_Y14_N22
\mux|out_data~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux|out_data~8_combout\ = (\cb|ac_read~q\ & ((\mux|AC\(7)))) # (!\cb|ac_read~q\ & (\mux|IR\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb|ac_read~q\,
	datac => \mux|IR\(7),
	datad => \mux|AC\(7),
	combout => \mux|out_data~8_combout\);

-- Location: FF_X19_Y14_N23
\mux|out_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux|out_data~8_combout\,
	sclr => \rst~input_o\,
	ena => \mux|out_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|out_data\(7));

-- Location: LCCOMB_X20_Y18_N28
\alu1|Add0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alu1|Add0~38_combout\ = (\output2[7]~7_combout\ & ((\mux|out_data\(7) & (\alu1|Add0~35\ & VCC)) # (!\mux|out_data\(7) & (!\alu1|Add0~35\)))) # (!\output2[7]~7_combout\ & ((\mux|out_data\(7) & (!\alu1|Add0~35\)) # (!\mux|out_data\(7) & ((\alu1|Add0~35\) # 
-- (GND)))))
-- \alu1|Add0~39\ = CARRY((\output2[7]~7_combout\ & (!\mux|out_data\(7) & !\alu1|Add0~35\)) # (!\output2[7]~7_combout\ & ((!\alu1|Add0~35\) # (!\mux|out_data\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \output2[7]~7_combout\,
	datab => \mux|out_data\(7),
	datad => VCC,
	cin => \alu1|Add0~35\,
	combout => \alu1|Add0~38_combout\,
	cout => \alu1|Add0~39\);

-- Location: LCCOMB_X19_Y15_N12
\alu1|Add0~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alu1|Add0~40_combout\ = (\output2[7]~7_combout\ & ((\alu1|Mux1~0_combout\) # ((\mux|out_data\(7) & \alu1|Add0~11_combout\)))) # (!\output2[7]~7_combout\ & (\mux|out_data\(7) & ((\alu1|Add0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \output2[7]~7_combout\,
	datab => \mux|out_data\(7),
	datac => \alu1|Mux1~0_combout\,
	datad => \alu1|Add0~11_combout\,
	combout => \alu1|Add0~40_combout\);

-- Location: LCCOMB_X19_Y15_N14
\alu1|Add0~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alu1|Add0~41_combout\ = (\alu1|Add0~40_combout\) # ((\alu1|Add0~10_combout\ & \alu1|Add0~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu1|Add0~10_combout\,
	datac => \alu1|Add0~38_combout\,
	datad => \alu1|Add0~40_combout\,
	combout => \alu1|Add0~41_combout\);

-- Location: LCCOMB_X19_Y15_N20
\alu1|out[7]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alu1|out\(7) = (GLOBAL(\alu1|out[17]~0clkctrl_outclk\) & ((\alu1|Add0~41_combout\))) # (!GLOBAL(\alu1|out[17]~0clkctrl_outclk\) & (\alu1|out\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu1|out\(7),
	datac => \alu1|Add0~41_combout\,
	datad => \alu1|out[17]~0clkctrl_outclk\,
	combout => \alu1|out\(7));

-- Location: FF_X17_Y17_N19
\mux1|PC[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux1|PC[7]~29_combout\,
	asdata => \alu1|out\(7),
	sclr => \rst~input_o\,
	sload => \cb|ALT_INV_inc_pc~q\,
	ena => \mux1|PC[8]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux1|PC\(7));

-- Location: LCCOMB_X17_Y17_N20
\mux1|PC[8]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux1|PC[8]~31_combout\ = (\mux1|PC\(8) & (\mux1|PC[7]~30\ $ (GND))) # (!\mux1|PC\(8) & (!\mux1|PC[7]~30\ & VCC))
-- \mux1|PC[8]~32\ = CARRY((\mux1|PC\(8) & !\mux1|PC[7]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mux1|PC\(8),
	datad => VCC,
	cin => \mux1|PC[7]~30\,
	combout => \mux1|PC[8]~31_combout\,
	cout => \mux1|PC[8]~32\);

-- Location: LCCOMB_X22_Y19_N10
\stack1|Stack~26feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stack1|Stack~26feeder_combout\ = \alu1|out\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu1|out\(8),
	combout => \stack1|Stack~26feeder_combout\);

-- Location: FF_X22_Y19_N11
\stack1|Stack~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \stack1|Stack~26feeder_combout\,
	ena => \stack1|Stack~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack1|Stack~26_q\);

-- Location: FF_X22_Y19_N21
\stack1|Stack~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \alu1|out\(8),
	sload => VCC,
	ena => \stack1|Stack~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack1|Stack~44_q\);

-- Location: LCCOMB_X21_Y14_N28
\stack1|Stack~62feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stack1|Stack~62feeder_combout\ = \alu1|out\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu1|out\(8),
	combout => \stack1|Stack~62feeder_combout\);

-- Location: FF_X21_Y14_N29
\stack1|Stack~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \stack1|Stack~62feeder_combout\,
	ena => \stack1|Stack~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack1|Stack~62_q\);

-- Location: LCCOMB_X22_Y19_N20
\stack1|Stack~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stack1|Stack~88_combout\ = (\stack1|SP\(0) & (((\stack1|Stack~44_q\)) # (!\stack1|SP\(1)))) # (!\stack1|SP\(0) & (!\stack1|SP\(1) & ((\stack1|Stack~62_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack1|SP\(0),
	datab => \stack1|SP\(1),
	datac => \stack1|Stack~44_q\,
	datad => \stack1|Stack~62_q\,
	combout => \stack1|Stack~88_combout\);

-- Location: LCCOMB_X16_Y18_N16
\stack1|Stack~89\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stack1|Stack~89_combout\ = (\stack1|Add0~0_combout\ & ((\stack1|Stack~88_combout\ & (\stack1|Stack~8_q\)) # (!\stack1|Stack~88_combout\ & ((\stack1|Stack~26_q\))))) # (!\stack1|Add0~0_combout\ & (((\stack1|Stack~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack1|Stack~8_q\,
	datab => \stack1|Stack~26_q\,
	datac => \stack1|Add0~0_combout\,
	datad => \stack1|Stack~88_combout\,
	combout => \stack1|Stack~89_combout\);

-- Location: FF_X16_Y18_N17
\stack1|out_stack_data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \stack1|Stack~89_combout\,
	sclr => \rst~input_o\,
	ena => \stack1|out_stack_data[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack1|out_stack_data\(8));

-- Location: LCCOMB_X20_Y16_N20
\mem|Mem[12][8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[12][8]~feeder_combout\ = \alu1|out\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu1|out\(8),
	combout => \mem|Mem[12][8]~feeder_combout\);

-- Location: FF_X20_Y16_N21
\mem|Mem[12][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem[12][8]~feeder_combout\,
	ena => \mem|Mem[12][17]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[12][8]~q\);

-- Location: LCCOMB_X21_Y14_N8
\mux|IR~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux|IR~10_combout\ = (\alu1|out\(8) & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu1|out\(8),
	datad => \rst~input_o\,
	combout => \mux|IR~10_combout\);

-- Location: LCCOMB_X23_Y17_N6
\mem|Mem[8][17]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[8][17]~18_combout\ = (\rst~input_o\) # ((\mar1|MAR_out\(3) & (\mem|Mem[12][17]~9_combout\ & \mem|Mem[10][17]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(3),
	datab => \rst~input_o\,
	datac => \mem|Mem[12][17]~9_combout\,
	datad => \mem|Mem[10][17]~13_combout\,
	combout => \mem|Mem[8][17]~18_combout\);

-- Location: FF_X22_Y18_N9
\mem|Mem[8][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mux|IR~10_combout\,
	sload => VCC,
	ena => \mem|Mem[8][17]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[8][8]~q\);

-- Location: LCCOMB_X22_Y18_N8
\mem|out_dat_add~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~67_combout\ = (\mar1|MAR_out\(1) & ((\mem|Mem[10][8]~q\) # ((\mar1|MAR_out\(0))))) # (!\mar1|MAR_out\(1) & (((\mem|Mem[8][8]~q\ & !\mar1|MAR_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mem[10][8]~q\,
	datab => \mar1|MAR_out\(1),
	datac => \mem|Mem[8][8]~q\,
	datad => \mar1|MAR_out\(0),
	combout => \mem|out_dat_add~67_combout\);

-- Location: LCCOMB_X22_Y17_N12
\mem|Mem[10][17]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[10][17]~16_combout\ = (\mar1|MAR_out\(1) & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mar1|MAR_out\(1),
	datad => \rst~input_o\,
	combout => \mem|Mem[10][17]~16_combout\);

-- Location: LCCOMB_X24_Y18_N4
\mem|Mem[11][17]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[11][17]~19_combout\ = (\mar1|MAR_out\(3) & (\mar1|MAR_out\(0) & (\mem|Mem[10][17]~16_combout\ & \mem|Mem[10][17]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(3),
	datab => \mar1|MAR_out\(0),
	datac => \mem|Mem[10][17]~16_combout\,
	datad => \mem|Mem[10][17]~13_combout\,
	combout => \mem|Mem[11][17]~19_combout\);

-- Location: FF_X22_Y18_N3
\mem|Mem[11][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \alu1|out\(8),
	sload => VCC,
	ena => \mem|Mem[11][17]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[11][8]~q\);

-- Location: LCCOMB_X22_Y16_N16
\mem|Mem[9][9]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[9][9]~14_combout\ = (\mar1|MAR_out\(1)) # (!\mar1|MAR_out\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mar1|MAR_out\(1),
	datad => \mar1|MAR_out\(3),
	combout => \mem|Mem[9][9]~14_combout\);

-- Location: LCCOMB_X23_Y17_N12
\mem|Mem[9][9]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[9][9]~15_combout\ = (\rst~input_o\) # ((\mar1|MAR_out\(0) & (!\mem|Mem[9][9]~14_combout\ & \mem|Mem[10][17]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(0),
	datab => \rst~input_o\,
	datac => \mem|Mem[9][9]~14_combout\,
	datad => \mem|Mem[10][17]~13_combout\,
	combout => \mem|Mem[9][9]~15_combout\);

-- Location: FF_X22_Y15_N3
\mem|Mem[9][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mux|IR~10_combout\,
	sload => VCC,
	ena => \mem|Mem[9][9]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[9][8]~q\);

-- Location: LCCOMB_X22_Y18_N2
\mem|out_dat_add~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~68_combout\ = (\mar1|MAR_out\(0) & ((\mem|out_dat_add~67_combout\ & (\mem|Mem[11][8]~q\)) # (!\mem|out_dat_add~67_combout\ & ((\mem|Mem[9][8]~q\))))) # (!\mar1|MAR_out\(0) & (\mem|out_dat_add~67_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(0),
	datab => \mem|out_dat_add~67_combout\,
	datac => \mem|Mem[11][8]~q\,
	datad => \mem|Mem[9][8]~q\,
	combout => \mem|out_dat_add~68_combout\);

-- Location: LCCOMB_X22_Y12_N24
\mem|Mem[1][8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[1][8]~feeder_combout\ = \mux|IR~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux|IR~10_combout\,
	combout => \mem|Mem[1][8]~feeder_combout\);

-- Location: LCCOMB_X22_Y16_N10
\mem|Mem[1][14]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[1][14]~20_combout\ = (\mar1|MAR_out\(1)) # (\mar1|MAR_out\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mar1|MAR_out\(1),
	datad => \mar1|MAR_out\(3),
	combout => \mem|Mem[1][14]~20_combout\);

-- Location: LCCOMB_X23_Y17_N26
\mem|Mem[1][14]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[1][14]~21_combout\ = (\rst~input_o\) # ((\mar1|MAR_out\(0) & (!\mem|Mem[1][14]~20_combout\ & \mem|Mem[10][17]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(0),
	datab => \rst~input_o\,
	datac => \mem|Mem[1][14]~20_combout\,
	datad => \mem|Mem[10][17]~13_combout\,
	combout => \mem|Mem[1][14]~21_combout\);

-- Location: FF_X22_Y12_N25
\mem|Mem[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem[1][8]~feeder_combout\,
	ena => \mem|Mem[1][14]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[1][8]~q\);

-- Location: FF_X22_Y16_N19
\mem|Mem[3][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mux|IR~10_combout\,
	sload => VCC,
	ena => \mem|Mem[3][11]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[3][8]~q\);

-- Location: LCCOMB_X23_Y17_N28
\mem|Mem[0][4]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[0][4]~23_combout\ = (\rst~input_o\) # ((!\mar1|MAR_out\(3) & (\mem|Mem[12][17]~9_combout\ & \mem|Mem[10][17]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(3),
	datab => \rst~input_o\,
	datac => \mem|Mem[12][17]~9_combout\,
	datad => \mem|Mem[10][17]~13_combout\,
	combout => \mem|Mem[0][4]~23_combout\);

-- Location: FF_X23_Y15_N5
\mem|Mem[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mux|IR~10_combout\,
	sload => VCC,
	ena => \mem|Mem[0][4]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[0][8]~q\);

-- Location: LCCOMB_X23_Y14_N0
\mem|Mem[2][8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[2][8]~feeder_combout\ = \mux|IR~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux|IR~10_combout\,
	combout => \mem|Mem[2][8]~feeder_combout\);

-- Location: LCCOMB_X23_Y14_N14
\mem|Mem[2][16]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[2][16]~22_combout\ = (\rst~input_o\) # ((!\mar1|MAR_out\(3) & (\mem|Mem[6][2]~5_combout\ & \mem|Mem[10][17]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(3),
	datab => \rst~input_o\,
	datac => \mem|Mem[6][2]~5_combout\,
	datad => \mem|Mem[10][17]~13_combout\,
	combout => \mem|Mem[2][16]~22_combout\);

-- Location: FF_X23_Y14_N1
\mem|Mem[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem[2][8]~feeder_combout\,
	ena => \mem|Mem[2][16]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[2][8]~q\);

-- Location: LCCOMB_X23_Y15_N4
\mem|out_dat_add~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~69_combout\ = (\mar1|MAR_out\(1) & ((\mar1|MAR_out\(0)) # ((\mem|Mem[2][8]~q\)))) # (!\mar1|MAR_out\(1) & (!\mar1|MAR_out\(0) & (\mem|Mem[0][8]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(1),
	datab => \mar1|MAR_out\(0),
	datac => \mem|Mem[0][8]~q\,
	datad => \mem|Mem[2][8]~q\,
	combout => \mem|out_dat_add~69_combout\);

-- Location: LCCOMB_X22_Y16_N18
\mem|out_dat_add~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~70_combout\ = (\mar1|MAR_out\(0) & ((\mem|out_dat_add~69_combout\ & ((\mem|Mem[3][8]~q\))) # (!\mem|out_dat_add~69_combout\ & (\mem|Mem[1][8]~q\)))) # (!\mar1|MAR_out\(0) & (((\mem|out_dat_add~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(0),
	datab => \mem|Mem[1][8]~q\,
	datac => \mem|Mem[3][8]~q\,
	datad => \mem|out_dat_add~69_combout\,
	combout => \mem|out_dat_add~70_combout\);

-- Location: LCCOMB_X22_Y16_N12
\mem|out_dat_add~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~71_combout\ = (\mar1|MAR_out\(3) & ((\mem|out_dat_add~68_combout\) # ((\mar1|MAR_out\(2))))) # (!\mar1|MAR_out\(3) & (((!\mar1|MAR_out\(2) & \mem|out_dat_add~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(3),
	datab => \mem|out_dat_add~68_combout\,
	datac => \mar1|MAR_out\(2),
	datad => \mem|out_dat_add~70_combout\,
	combout => \mem|out_dat_add~71_combout\);

-- Location: LCCOMB_X23_Y13_N24
\mem|out_dat_add~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~72_combout\ = (\mar1|MAR_out\(2) & ((\mem|out_dat_add~71_combout\ & ((\mem|Mem[12][8]~q\))) # (!\mem|out_dat_add~71_combout\ & (\mem|out_dat_add~66_combout\)))) # (!\mar1|MAR_out\(2) & (((\mem|out_dat_add~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|out_dat_add~66_combout\,
	datab => \mem|Mem[12][8]~q\,
	datac => \mar1|MAR_out\(2),
	datad => \mem|out_dat_add~71_combout\,
	combout => \mem|out_dat_add~72_combout\);

-- Location: LCCOMB_X24_Y15_N26
\mem|out_dat_add[2]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add[2]~8_combout\ = (\rst~input_o\) # ((\cb|mem_read~q\ & !\cb|mem_write~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb|mem_read~q\,
	datac => \cb|mem_write~q\,
	datad => \rst~input_o\,
	combout => \mem|out_dat_add[2]~8_combout\);

-- Location: FF_X23_Y13_N25
\mem|out_dat_add[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|out_dat_add~72_combout\,
	sclr => \rst~input_o\,
	ena => \mem|out_dat_add[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|out_dat_add\(8));

-- Location: LCCOMB_X19_Y17_N0
\mux1|MD~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux1|MD~9_combout\ = (\cb|md_write_mem~q\ & (\mem|out_dat_add\(8))) # (!\cb|md_write_mem~q\ & ((\alu1|out\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb|md_write_mem~q\,
	datab => \mem|out_dat_add\(8),
	datad => \alu1|out\(8),
	combout => \mux1|MD~9_combout\);

-- Location: LCCOMB_X24_Y15_N12
\mux1|MD[13]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux1|MD[13]~1_combout\ = (\rst~input_o\) # ((!\cb|md_read~q\ & ((\cb|md_write_mem~q\) # (\cb|md_write~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \cb|md_read~q\,
	datac => \cb|md_write_mem~q\,
	datad => \cb|md_write~q\,
	combout => \mux1|MD[13]~1_combout\);

-- Location: FF_X19_Y17_N1
\mux1|MD[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux1|MD~9_combout\,
	sclr => \rst~input_o\,
	ena => \mux1|MD[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux1|MD\(8));

-- Location: LCCOMB_X19_Y18_N6
\mux1|out_data~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux1|out_data~10_combout\ = (\cb|md_read~q\ & (\mux1|MD\(8))) # (!\cb|md_read~q\ & ((\mux1|PC\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux1|MD\(8),
	datac => \mux1|PC\(8),
	datad => \cb|md_read~q\,
	combout => \mux1|out_data~10_combout\);

-- Location: FF_X19_Y18_N7
\mux1|out_data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux1|out_data~10_combout\,
	sclr => \rst~input_o\,
	ena => \mux1|out_data[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux1|out_data\(8));

-- Location: LCCOMB_X19_Y18_N10
\output2[8]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \output2[8]~8_combout\ = (\cb|stack_read~q\ & (\stack1|out_stack_data\(8))) # (!\cb|stack_read~q\ & ((\mux1|out_data\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb|stack_read~q\,
	datac => \stack1|out_stack_data\(8),
	datad => \mux1|out_data\(8),
	combout => \output2[8]~8_combout\);

-- Location: LCCOMB_X19_Y15_N0
\alu1|Add0~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alu1|Add0~44_combout\ = (\mux|out_data\(8) & ((\alu1|Add0~11_combout\) # ((\output2[8]~8_combout\ & \alu1|Mux1~0_combout\)))) # (!\mux|out_data\(8) & (\output2[8]~8_combout\ & (\alu1|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out_data\(8),
	datab => \output2[8]~8_combout\,
	datac => \alu1|Mux1~0_combout\,
	datad => \alu1|Add0~11_combout\,
	combout => \alu1|Add0~44_combout\);

-- Location: LCCOMB_X21_Y16_N26
\mux|AC[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux|AC[8]~feeder_combout\ = \mux|IR~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux|IR~10_combout\,
	combout => \mux|AC[8]~feeder_combout\);

-- Location: FF_X21_Y16_N27
\mux|AC[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux|AC[8]~feeder_combout\,
	ena => \mux|AC[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|AC\(8));

-- Location: LCCOMB_X19_Y14_N24
\mux|out_data~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux|out_data~9_combout\ = (\cb|ac_read~q\ & ((\mux|AC\(8)))) # (!\cb|ac_read~q\ & (\mux|IR\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|IR\(8),
	datab => \mux|AC\(8),
	datac => \cb|ac_read~q\,
	combout => \mux|out_data~9_combout\);

-- Location: FF_X19_Y14_N25
\mux|out_data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux|out_data~9_combout\,
	sclr => \rst~input_o\,
	ena => \mux|out_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|out_data\(8));

-- Location: LCCOMB_X20_Y18_N30
\alu1|Add0~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alu1|Add0~42_combout\ = ((\output2[8]~8_combout\ $ (\mux|out_data\(8) $ (!\alu1|Add0~39\)))) # (GND)
-- \alu1|Add0~43\ = CARRY((\output2[8]~8_combout\ & ((\mux|out_data\(8)) # (!\alu1|Add0~39\))) # (!\output2[8]~8_combout\ & (\mux|out_data\(8) & !\alu1|Add0~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \output2[8]~8_combout\,
	datab => \mux|out_data\(8),
	datad => VCC,
	cin => \alu1|Add0~39\,
	combout => \alu1|Add0~42_combout\,
	cout => \alu1|Add0~43\);

-- Location: LCCOMB_X21_Y14_N16
\alu1|Add0~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alu1|Add0~45_combout\ = (\alu1|Add0~44_combout\) # ((\alu1|Add0~10_combout\ & \alu1|Add0~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|Add0~10_combout\,
	datac => \alu1|Add0~44_combout\,
	datad => \alu1|Add0~42_combout\,
	combout => \alu1|Add0~45_combout\);

-- Location: LCCOMB_X21_Y14_N18
\alu1|out[8]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alu1|out\(8) = (GLOBAL(\alu1|out[17]~0clkctrl_outclk\) & ((\alu1|Add0~45_combout\))) # (!GLOBAL(\alu1|out[17]~0clkctrl_outclk\) & (\alu1|out\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|out[17]~0clkctrl_outclk\,
	datab => \alu1|out\(8),
	datad => \alu1|Add0~45_combout\,
	combout => \alu1|out\(8));

-- Location: FF_X17_Y17_N21
\mux1|PC[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux1|PC[8]~31_combout\,
	asdata => \alu1|out\(8),
	sclr => \rst~input_o\,
	sload => \cb|ALT_INV_inc_pc~q\,
	ena => \mux1|PC[8]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux1|PC\(8));

-- Location: LCCOMB_X17_Y17_N24
\mux1|PC[10]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux1|PC[10]~35_combout\ = (\mux1|PC\(10) & (\mux1|PC[9]~34\ $ (GND))) # (!\mux1|PC\(10) & (!\mux1|PC[9]~34\ & VCC))
-- \mux1|PC[10]~36\ = CARRY((\mux1|PC\(10) & !\mux1|PC[9]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mux1|PC\(10),
	datad => VCC,
	cin => \mux1|PC[9]~34\,
	combout => \mux1|PC[10]~35_combout\,
	cout => \mux1|PC[10]~36\);

-- Location: LCCOMB_X19_Y18_N26
\mux1|out_data~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux1|out_data~12_combout\ = (\cb|md_read~q\ & (\mux1|MD\(10))) # (!\cb|md_read~q\ & ((\mux1|PC\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|MD\(10),
	datab => \mux1|PC\(10),
	datad => \cb|md_read~q\,
	combout => \mux1|out_data~12_combout\);

-- Location: FF_X19_Y18_N27
\mux1|out_data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux1|out_data~12_combout\,
	sclr => \rst~input_o\,
	ena => \mux1|out_data[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux1|out_data\(10));

-- Location: LCCOMB_X22_Y19_N26
\stack1|Stack~28feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stack1|Stack~28feeder_combout\ = \alu1|out\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu1|out\(10),
	combout => \stack1|Stack~28feeder_combout\);

-- Location: FF_X22_Y19_N27
\stack1|Stack~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \stack1|Stack~28feeder_combout\,
	ena => \stack1|Stack~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack1|Stack~28_q\);

-- Location: FF_X22_Y19_N13
\stack1|Stack~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \alu1|out\(10),
	sload => VCC,
	ena => \stack1|Stack~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack1|Stack~46_q\);

-- Location: LCCOMB_X23_Y19_N10
\stack1|Stack~64feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stack1|Stack~64feeder_combout\ = \alu1|out\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu1|out\(10),
	combout => \stack1|Stack~64feeder_combout\);

-- Location: FF_X23_Y19_N11
\stack1|Stack~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \stack1|Stack~64feeder_combout\,
	ena => \stack1|Stack~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack1|Stack~64_q\);

-- Location: LCCOMB_X22_Y19_N12
\stack1|Stack~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stack1|Stack~92_combout\ = (\stack1|SP\(0) & (((\stack1|Stack~46_q\)) # (!\stack1|SP\(1)))) # (!\stack1|SP\(0) & (!\stack1|SP\(1) & ((\stack1|Stack~64_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack1|SP\(0),
	datab => \stack1|SP\(1),
	datac => \stack1|Stack~46_q\,
	datad => \stack1|Stack~64_q\,
	combout => \stack1|Stack~92_combout\);

-- Location: LCCOMB_X19_Y19_N18
\stack1|Stack~93\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stack1|Stack~93_combout\ = (\stack1|Add0~0_combout\ & ((\stack1|Stack~92_combout\ & (\stack1|Stack~10_q\)) # (!\stack1|Stack~92_combout\ & ((\stack1|Stack~28_q\))))) # (!\stack1|Add0~0_combout\ & (((\stack1|Stack~92_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack1|Stack~10_q\,
	datab => \stack1|Stack~28_q\,
	datac => \stack1|Add0~0_combout\,
	datad => \stack1|Stack~92_combout\,
	combout => \stack1|Stack~93_combout\);

-- Location: FF_X19_Y19_N19
\stack1|out_stack_data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \stack1|Stack~93_combout\,
	sclr => \rst~input_o\,
	ena => \stack1|out_stack_data[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack1|out_stack_data\(10));

-- Location: LCCOMB_X19_Y18_N30
\output2[10]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \output2[10]~10_combout\ = (\cb|stack_read~q\ & ((\stack1|out_stack_data\(10)))) # (!\cb|stack_read~q\ & (\mux1|out_data\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb|stack_read~q\,
	datac => \mux1|out_data\(10),
	datad => \stack1|out_stack_data\(10),
	combout => \output2[10]~10_combout\);

-- Location: LCCOMB_X21_Y17_N8
\alu1|Add0~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alu1|Add0~52_combout\ = (\mux|out_data\(10) & ((\alu1|Add0~11_combout\) # ((\output2[10]~10_combout\ & \alu1|Mux1~0_combout\)))) # (!\mux|out_data\(10) & (\output2[10]~10_combout\ & ((\alu1|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out_data\(10),
	datab => \output2[10]~10_combout\,
	datac => \alu1|Add0~11_combout\,
	datad => \alu1|Mux1~0_combout\,
	combout => \alu1|Add0~52_combout\);

-- Location: LCCOMB_X20_Y17_N0
\alu1|Add0~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alu1|Add0~46_combout\ = (\mux|out_data\(9) & ((\output2[9]~9_combout\ & (\alu1|Add0~43\ & VCC)) # (!\output2[9]~9_combout\ & (!\alu1|Add0~43\)))) # (!\mux|out_data\(9) & ((\output2[9]~9_combout\ & (!\alu1|Add0~43\)) # (!\output2[9]~9_combout\ & 
-- ((\alu1|Add0~43\) # (GND)))))
-- \alu1|Add0~47\ = CARRY((\mux|out_data\(9) & (!\output2[9]~9_combout\ & !\alu1|Add0~43\)) # (!\mux|out_data\(9) & ((!\alu1|Add0~43\) # (!\output2[9]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out_data\(9),
	datab => \output2[9]~9_combout\,
	datad => VCC,
	cin => \alu1|Add0~43\,
	combout => \alu1|Add0~46_combout\,
	cout => \alu1|Add0~47\);

-- Location: LCCOMB_X21_Y17_N4
\mux|IR~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux|IR~11_combout\ = (!\rst~input_o\ & \alu1|out\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datad => \alu1|out\(9),
	combout => \mux|IR~11_combout\);

-- Location: LCCOMB_X22_Y12_N2
\mux|IR[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux|IR[9]~feeder_combout\ = \mux|IR~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux|IR~11_combout\,
	combout => \mux|IR[9]~feeder_combout\);

-- Location: FF_X22_Y12_N3
\mux|IR[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux|IR[9]~feeder_combout\,
	ena => \mux|IR[16]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|IR\(9));

-- Location: LCCOMB_X21_Y16_N12
\mux|AC[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux|AC[9]~feeder_combout\ = \mux|IR~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux|IR~11_combout\,
	combout => \mux|AC[9]~feeder_combout\);

-- Location: FF_X21_Y16_N13
\mux|AC[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux|AC[9]~feeder_combout\,
	ena => \mux|AC[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|AC\(9));

-- Location: LCCOMB_X19_Y14_N26
\mux|out_data~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux|out_data~10_combout\ = (\cb|ac_read~q\ & ((\mux|AC\(9)))) # (!\cb|ac_read~q\ & (\mux|IR\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb|ac_read~q\,
	datab => \mux|IR\(9),
	datac => \mux|AC\(9),
	combout => \mux|out_data~10_combout\);

-- Location: FF_X19_Y14_N27
\mux|out_data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux|out_data~10_combout\,
	sclr => \rst~input_o\,
	ena => \mux|out_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|out_data\(9));

-- Location: LCCOMB_X21_Y17_N12
\alu1|Add0~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alu1|Add0~48_combout\ = (\alu1|Mux1~0_combout\ & ((\output2[9]~9_combout\) # ((\alu1|Add0~11_combout\ & \mux|out_data\(9))))) # (!\alu1|Mux1~0_combout\ & (((\alu1|Add0~11_combout\ & \mux|out_data\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|Mux1~0_combout\,
	datab => \output2[9]~9_combout\,
	datac => \alu1|Add0~11_combout\,
	datad => \mux|out_data\(9),
	combout => \alu1|Add0~48_combout\);

-- Location: LCCOMB_X21_Y17_N22
\alu1|Add0~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alu1|Add0~49_combout\ = (\alu1|Add0~48_combout\) # ((\alu1|Add0~10_combout\ & \alu1|Add0~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|Add0~10_combout\,
	datac => \alu1|Add0~46_combout\,
	datad => \alu1|Add0~48_combout\,
	combout => \alu1|Add0~49_combout\);

-- Location: LCCOMB_X21_Y17_N20
\alu1|out[9]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alu1|out\(9) = (GLOBAL(\alu1|out[17]~0clkctrl_outclk\) & ((\alu1|Add0~49_combout\))) # (!GLOBAL(\alu1|out[17]~0clkctrl_outclk\) & (\alu1|out\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu1|out\(9),
	datac => \alu1|Add0~49_combout\,
	datad => \alu1|out[17]~0clkctrl_outclk\,
	combout => \alu1|out\(9));

-- Location: LCCOMB_X20_Y16_N6
\mem|Mem[12][9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[12][9]~feeder_combout\ = \alu1|out\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \alu1|out\(9),
	combout => \mem|Mem[12][9]~feeder_combout\);

-- Location: FF_X20_Y16_N7
\mem|Mem[12][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem[12][9]~feeder_combout\,
	ena => \mem|Mem[12][17]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[12][9]~q\);

-- Location: FF_X23_Y14_N11
\mem|Mem[2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mux|IR~11_combout\,
	sload => VCC,
	ena => \mem|Mem[2][16]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[2][9]~q\);

-- Location: FF_X23_Y15_N23
\mem|Mem[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mux|IR~11_combout\,
	sload => VCC,
	ena => \mem|Mem[0][4]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[0][9]~q\);

-- Location: LCCOMB_X22_Y12_N18
\mem|Mem[1][9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[1][9]~feeder_combout\ = \mux|IR~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux|IR~11_combout\,
	combout => \mem|Mem[1][9]~feeder_combout\);

-- Location: FF_X22_Y12_N19
\mem|Mem[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem[1][9]~feeder_combout\,
	ena => \mem|Mem[1][14]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[1][9]~q\);

-- Location: LCCOMB_X23_Y15_N22
\mem|out_dat_add~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~77_combout\ = (\mar1|MAR_out\(0) & ((\mar1|MAR_out\(1)) # ((\mem|Mem[1][9]~q\)))) # (!\mar1|MAR_out\(0) & (!\mar1|MAR_out\(1) & (\mem|Mem[0][9]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(0),
	datab => \mar1|MAR_out\(1),
	datac => \mem|Mem[0][9]~q\,
	datad => \mem|Mem[1][9]~q\,
	combout => \mem|out_dat_add~77_combout\);

-- Location: LCCOMB_X23_Y14_N10
\mem|out_dat_add~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~78_combout\ = (\mar1|MAR_out\(1) & ((\mem|out_dat_add~77_combout\ & (\mem|Mem[3][9]~q\)) # (!\mem|out_dat_add~77_combout\ & ((\mem|Mem[2][9]~q\))))) # (!\mar1|MAR_out\(1) & (((\mem|out_dat_add~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mem[3][9]~q\,
	datab => \mar1|MAR_out\(1),
	datac => \mem|Mem[2][9]~q\,
	datad => \mem|out_dat_add~77_combout\,
	combout => \mem|out_dat_add~78_combout\);

-- Location: FF_X20_Y14_N31
\mem|Mem[7][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mux|IR~11_combout\,
	sload => VCC,
	ena => \mem|Mem[7][3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[7][9]~q\);

-- Location: FF_X21_Y15_N7
\mem|Mem[4][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mux|IR~11_combout\,
	sload => VCC,
	ena => \mem|Mem[4][8]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[4][9]~q\);

-- Location: LCCOMB_X22_Y14_N30
\mem|Mem[6][9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[6][9]~feeder_combout\ = \mux|IR~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux|IR~11_combout\,
	combout => \mem|Mem[6][9]~feeder_combout\);

-- Location: FF_X22_Y14_N31
\mem|Mem[6][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem[6][9]~feeder_combout\,
	ena => \mem|Mem[6][2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[6][9]~q\);

-- Location: LCCOMB_X21_Y15_N6
\mem|out_dat_add~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~75_combout\ = (\mar1|MAR_out\(1) & ((\mar1|MAR_out\(0)) # ((\mem|Mem[6][9]~q\)))) # (!\mar1|MAR_out\(1) & (!\mar1|MAR_out\(0) & (\mem|Mem[4][9]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(1),
	datab => \mar1|MAR_out\(0),
	datac => \mem|Mem[4][9]~q\,
	datad => \mem|Mem[6][9]~q\,
	combout => \mem|out_dat_add~75_combout\);

-- Location: LCCOMB_X20_Y14_N30
\mem|out_dat_add~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~76_combout\ = (\mar1|MAR_out\(0) & ((\mem|out_dat_add~75_combout\ & ((\mem|Mem[7][9]~q\))) # (!\mem|out_dat_add~75_combout\ & (\mem|Mem[5][9]~q\)))) # (!\mar1|MAR_out\(0) & (((\mem|out_dat_add~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mem[5][9]~q\,
	datab => \mar1|MAR_out\(0),
	datac => \mem|Mem[7][9]~q\,
	datad => \mem|out_dat_add~75_combout\,
	combout => \mem|out_dat_add~76_combout\);

-- Location: LCCOMB_X20_Y14_N8
\mem|out_dat_add~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~79_combout\ = (\mar1|MAR_out\(2) & ((\mar1|MAR_out\(3)) # ((\mem|out_dat_add~76_combout\)))) # (!\mar1|MAR_out\(2) & (!\mar1|MAR_out\(3) & (\mem|out_dat_add~78_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(2),
	datab => \mar1|MAR_out\(3),
	datac => \mem|out_dat_add~78_combout\,
	datad => \mem|out_dat_add~76_combout\,
	combout => \mem|out_dat_add~79_combout\);

-- Location: LCCOMB_X19_Y16_N0
\mem|out_dat_add~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~80_combout\ = (\mem|out_dat_add~79_combout\ & (((\mem|Mem[12][9]~q\) # (!\mar1|MAR_out\(3))))) # (!\mem|out_dat_add~79_combout\ & (\mem|out_dat_add~74_combout\ & ((\mar1|MAR_out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|out_dat_add~74_combout\,
	datab => \mem|Mem[12][9]~q\,
	datac => \mem|out_dat_add~79_combout\,
	datad => \mar1|MAR_out\(3),
	combout => \mem|out_dat_add~80_combout\);

-- Location: FF_X19_Y16_N1
\mem|out_dat_add[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|out_dat_add~80_combout\,
	sclr => \rst~input_o\,
	ena => \mem|out_dat_add[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|out_dat_add\(9));

-- Location: LCCOMB_X19_Y17_N18
\mux1|MD~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux1|MD~10_combout\ = (\cb|md_write_mem~q\ & (\mem|out_dat_add\(9))) # (!\cb|md_write_mem~q\ & ((\alu1|out\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|out_dat_add\(9),
	datac => \cb|md_write_mem~q\,
	datad => \alu1|out\(9),
	combout => \mux1|MD~10_combout\);

-- Location: FF_X19_Y17_N19
\mux1|MD[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux1|MD~10_combout\,
	sclr => \rst~input_o\,
	ena => \mux1|MD[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux1|MD\(9));

-- Location: LCCOMB_X19_Y18_N0
\mux1|out_data~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux1|out_data~11_combout\ = (\cb|md_read~q\ & ((\mux1|MD\(9)))) # (!\cb|md_read~q\ & (\mux1|PC\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|PC\(9),
	datab => \mux1|MD\(9),
	datad => \cb|md_read~q\,
	combout => \mux1|out_data~11_combout\);

-- Location: FF_X19_Y18_N1
\mux1|out_data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux1|out_data~11_combout\,
	sclr => \rst~input_o\,
	ena => \mux1|out_data[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux1|out_data\(9));

-- Location: LCCOMB_X22_Y19_N30
\stack1|Stack~27feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stack1|Stack~27feeder_combout\ = \alu1|out\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \alu1|out\(9),
	combout => \stack1|Stack~27feeder_combout\);

-- Location: FF_X22_Y19_N31
\stack1|Stack~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \stack1|Stack~27feeder_combout\,
	ena => \stack1|Stack~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack1|Stack~27_q\);

-- Location: FF_X22_Y19_N17
\stack1|Stack~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \alu1|out\(9),
	sload => VCC,
	ena => \stack1|Stack~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack1|Stack~45_q\);

-- Location: LCCOMB_X23_Y19_N24
\stack1|Stack~63feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stack1|Stack~63feeder_combout\ = \alu1|out\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu1|out\(9),
	combout => \stack1|Stack~63feeder_combout\);

-- Location: FF_X23_Y19_N25
\stack1|Stack~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \stack1|Stack~63feeder_combout\,
	ena => \stack1|Stack~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack1|Stack~63_q\);

-- Location: LCCOMB_X22_Y19_N16
\stack1|Stack~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stack1|Stack~90_combout\ = (\stack1|SP\(0) & (((\stack1|Stack~45_q\)) # (!\stack1|SP\(1)))) # (!\stack1|SP\(0) & (!\stack1|SP\(1) & ((\stack1|Stack~63_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack1|SP\(0),
	datab => \stack1|SP\(1),
	datac => \stack1|Stack~45_q\,
	datad => \stack1|Stack~63_q\,
	combout => \stack1|Stack~90_combout\);

-- Location: LCCOMB_X19_Y19_N8
\stack1|Stack~91\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stack1|Stack~91_combout\ = (\stack1|Add0~0_combout\ & ((\stack1|Stack~90_combout\ & (\stack1|Stack~9_q\)) # (!\stack1|Stack~90_combout\ & ((\stack1|Stack~27_q\))))) # (!\stack1|Add0~0_combout\ & (((\stack1|Stack~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack1|Stack~9_q\,
	datab => \stack1|Stack~27_q\,
	datac => \stack1|Add0~0_combout\,
	datad => \stack1|Stack~90_combout\,
	combout => \stack1|Stack~91_combout\);

-- Location: FF_X19_Y19_N9
\stack1|out_stack_data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \stack1|Stack~91_combout\,
	sclr => \rst~input_o\,
	ena => \stack1|out_stack_data[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack1|out_stack_data\(9));

-- Location: LCCOMB_X19_Y18_N4
\output2[9]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \output2[9]~9_combout\ = (\cb|stack_read~q\ & ((\stack1|out_stack_data\(9)))) # (!\cb|stack_read~q\ & (\mux1|out_data\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb|stack_read~q\,
	datab => \mux1|out_data\(9),
	datad => \stack1|out_stack_data\(9),
	combout => \output2[9]~9_combout\);

-- Location: LCCOMB_X20_Y17_N2
\alu1|Add0~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alu1|Add0~50_combout\ = ((\mux|out_data\(10) $ (\output2[10]~10_combout\ $ (!\alu1|Add0~47\)))) # (GND)
-- \alu1|Add0~51\ = CARRY((\mux|out_data\(10) & ((\output2[10]~10_combout\) # (!\alu1|Add0~47\))) # (!\mux|out_data\(10) & (\output2[10]~10_combout\ & !\alu1|Add0~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out_data\(10),
	datab => \output2[10]~10_combout\,
	datad => VCC,
	cin => \alu1|Add0~47\,
	combout => \alu1|Add0~50_combout\,
	cout => \alu1|Add0~51\);

-- Location: LCCOMB_X21_Y17_N2
\alu1|Add0~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alu1|Add0~53_combout\ = (\alu1|Add0~52_combout\) # ((\alu1|Add0~10_combout\ & \alu1|Add0~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|Add0~10_combout\,
	datac => \alu1|Add0~52_combout\,
	datad => \alu1|Add0~50_combout\,
	combout => \alu1|Add0~53_combout\);

-- Location: LCCOMB_X21_Y17_N14
\alu1|out[10]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alu1|out\(10) = (GLOBAL(\alu1|out[17]~0clkctrl_outclk\) & ((\alu1|Add0~53_combout\))) # (!GLOBAL(\alu1|out[17]~0clkctrl_outclk\) & (\alu1|out\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu1|out\(10),
	datac => \alu1|out[17]~0clkctrl_outclk\,
	datad => \alu1|Add0~53_combout\,
	combout => \alu1|out\(10));

-- Location: FF_X17_Y17_N25
\mux1|PC[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux1|PC[10]~35_combout\,
	asdata => \alu1|out\(10),
	sclr => \rst~input_o\,
	sload => \cb|ALT_INV_inc_pc~q\,
	ena => \mux1|PC[8]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux1|PC\(10));

-- Location: FF_X17_Y17_N27
\mux1|PC[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux1|PC[11]~37_combout\,
	asdata => \alu1|out\(11),
	sclr => \rst~input_o\,
	sload => \cb|ALT_INV_inc_pc~q\,
	ena => \mux1|PC[8]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux1|PC\(11));

-- Location: LCCOMB_X17_Y19_N0
\mux1|out_data~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux1|out_data~13_combout\ = (\cb|md_read~q\ & (\mux1|MD\(11))) # (!\cb|md_read~q\ & ((\mux1|PC\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|MD\(11),
	datab => \mux1|PC\(11),
	datad => \cb|md_read~q\,
	combout => \mux1|out_data~13_combout\);

-- Location: FF_X17_Y19_N1
\mux1|out_data[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux1|out_data~13_combout\,
	sclr => \rst~input_o\,
	ena => \mux1|out_data[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux1|out_data\(11));

-- Location: LCCOMB_X19_Y19_N16
\output2[11]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \output2[11]~11_combout\ = (\cb|stack_read~q\ & (\stack1|out_stack_data\(11))) # (!\cb|stack_read~q\ & ((\mux1|out_data\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stack1|out_stack_data\(11),
	datac => \mux1|out_data\(11),
	datad => \cb|stack_read~q\,
	combout => \output2[11]~11_combout\);

-- Location: LCCOMB_X20_Y17_N4
\alu1|Add0~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alu1|Add0~54_combout\ = (\mux|out_data\(11) & ((\output2[11]~11_combout\ & (\alu1|Add0~51\ & VCC)) # (!\output2[11]~11_combout\ & (!\alu1|Add0~51\)))) # (!\mux|out_data\(11) & ((\output2[11]~11_combout\ & (!\alu1|Add0~51\)) # (!\output2[11]~11_combout\ & 
-- ((\alu1|Add0~51\) # (GND)))))
-- \alu1|Add0~55\ = CARRY((\mux|out_data\(11) & (!\output2[11]~11_combout\ & !\alu1|Add0~51\)) # (!\mux|out_data\(11) & ((!\alu1|Add0~51\) # (!\output2[11]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out_data\(11),
	datab => \output2[11]~11_combout\,
	datad => VCC,
	cin => \alu1|Add0~51\,
	combout => \alu1|Add0~54_combout\,
	cout => \alu1|Add0~55\);

-- Location: LCCOMB_X22_Y17_N18
\alu1|Add0~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alu1|Add0~57_combout\ = (\alu1|Add0~56_combout\) # ((\alu1|Add0~10_combout\ & \alu1|Add0~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu1|Add0~10_combout\,
	datac => \alu1|Add0~56_combout\,
	datad => \alu1|Add0~54_combout\,
	combout => \alu1|Add0~57_combout\);

-- Location: LCCOMB_X22_Y17_N6
\alu1|out[11]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alu1|out\(11) = (GLOBAL(\alu1|out[17]~0clkctrl_outclk\) & ((\alu1|Add0~57_combout\))) # (!GLOBAL(\alu1|out[17]~0clkctrl_outclk\) & (\alu1|out\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|out\(11),
	datac => \alu1|out[17]~0clkctrl_outclk\,
	datad => \alu1|Add0~57_combout\,
	combout => \alu1|out\(11));

-- Location: FF_X22_Y17_N7
\mar1|MAR[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \alu1|out\(11),
	ena => \mar1|MAR[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mar1|MAR\(11));

-- Location: LCCOMB_X24_Y14_N12
\mar1|MAR_out~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mar1|MAR_out~11_combout\ = (\mar1|MAR\(11) & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mar1|MAR\(11),
	datac => \rst~input_o\,
	combout => \mar1|MAR_out~11_combout\);

-- Location: FF_X24_Y14_N13
\mar1|MAR_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mar1|MAR_out~11_combout\,
	ena => \mar1|MAR[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mar1|MAR_out\(11));

-- Location: FF_X21_Y17_N15
\mar1|MAR[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \alu1|out\(10),
	ena => \mar1|MAR[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mar1|MAR\(10));

-- Location: LCCOMB_X24_Y14_N10
\mar1|MAR_out~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mar1|MAR_out~10_combout\ = (!\rst~input_o\ & \mar1|MAR\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	datad => \mar1|MAR\(10),
	combout => \mar1|MAR_out~10_combout\);

-- Location: FF_X24_Y14_N11
\mar1|MAR_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mar1|MAR_out~10_combout\,
	ena => \mar1|MAR[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mar1|MAR_out\(10));

-- Location: LCCOMB_X17_Y14_N8
\mar1|MAR[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mar1|MAR[8]~feeder_combout\ = \alu1|out\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu1|out\(8),
	combout => \mar1|MAR[8]~feeder_combout\);

-- Location: FF_X17_Y14_N9
\mar1|MAR[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mar1|MAR[8]~feeder_combout\,
	ena => \mar1|MAR[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mar1|MAR\(8));

-- Location: LCCOMB_X24_Y14_N6
\mar1|MAR_out~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mar1|MAR_out~8_combout\ = (!\rst~input_o\ & \mar1|MAR\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	datad => \mar1|MAR\(8),
	combout => \mar1|MAR_out~8_combout\);

-- Location: FF_X24_Y14_N7
\mar1|MAR_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mar1|MAR_out~8_combout\,
	ena => \mar1|MAR[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mar1|MAR_out\(8));

-- Location: LCCOMB_X23_Y17_N24
\mem|Mem[10][17]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[10][17]~2_combout\ = (!\mar1|MAR_out\(9) & (!\mar1|MAR_out\(11) & (!\mar1|MAR_out\(10) & !\mar1|MAR_out\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(9),
	datab => \mar1|MAR_out\(11),
	datac => \mar1|MAR_out\(10),
	datad => \mar1|MAR_out\(8),
	combout => \mem|Mem[10][17]~2_combout\);

-- Location: LCCOMB_X23_Y17_N2
\mem|Mem[10][17]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[10][17]~13_combout\ = (\mem|Mem[10][17]~1_combout\ & (\mem|Mem[10][17]~3_combout\ & (!\mar1|MAR_out\(2) & \mem|Mem[10][17]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mem[10][17]~1_combout\,
	datab => \mem|Mem[10][17]~3_combout\,
	datac => \mar1|MAR_out\(2),
	datad => \mem|Mem[10][17]~2_combout\,
	combout => \mem|Mem[10][17]~13_combout\);

-- Location: LCCOMB_X22_Y16_N4
\mem|Mem[3][11]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[3][11]~24_combout\ = (\mar1|MAR_out\(3)) # (!\mar1|MAR_out\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mar1|MAR_out\(1),
	datad => \mar1|MAR_out\(3),
	combout => \mem|Mem[3][11]~24_combout\);

-- Location: LCCOMB_X23_Y17_N30
\mem|Mem[3][11]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[3][11]~25_combout\ = (\rst~input_o\) # ((\mar1|MAR_out\(0) & (\mem|Mem[10][17]~13_combout\ & !\mem|Mem[3][11]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(0),
	datab => \mem|Mem[10][17]~13_combout\,
	datac => \rst~input_o\,
	datad => \mem|Mem[3][11]~24_combout\,
	combout => \mem|Mem[3][11]~25_combout\);

-- Location: FF_X22_Y17_N11
\mem|Mem[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem~27_combout\,
	ena => \mem|Mem[3][11]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[3][3]~q\);

-- Location: FF_X23_Y14_N23
\mem|Mem[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mux|IR~5_combout\,
	sload => VCC,
	ena => \mem|Mem[2][16]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[2][3]~q\);

-- Location: FF_X22_Y13_N17
\mem|Mem[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mux|IR~5_combout\,
	sload => VCC,
	ena => \mem|Mem[0][4]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[0][3]~q\);

-- Location: LCCOMB_X23_Y16_N18
\mem|Mem[1][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[1][3]~feeder_combout\ = \mux|IR~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux|IR~5_combout\,
	combout => \mem|Mem[1][3]~feeder_combout\);

-- Location: FF_X23_Y16_N19
\mem|Mem[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem[1][3]~feeder_combout\,
	ena => \mem|Mem[1][14]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[1][3]~q\);

-- Location: LCCOMB_X22_Y13_N16
\mem|out_dat_add~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~29_combout\ = (\mar1|MAR_out\(0) & ((\mar1|MAR_out\(1)) # ((\mem|Mem[1][3]~q\)))) # (!\mar1|MAR_out\(0) & (!\mar1|MAR_out\(1) & (\mem|Mem[0][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(0),
	datab => \mar1|MAR_out\(1),
	datac => \mem|Mem[0][3]~q\,
	datad => \mem|Mem[1][3]~q\,
	combout => \mem|out_dat_add~29_combout\);

-- Location: LCCOMB_X23_Y14_N22
\mem|out_dat_add~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~30_combout\ = (\mar1|MAR_out\(1) & ((\mem|out_dat_add~29_combout\ & (\mem|Mem[3][3]~q\)) # (!\mem|out_dat_add~29_combout\ & ((\mem|Mem[2][3]~q\))))) # (!\mar1|MAR_out\(1) & (((\mem|out_dat_add~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(1),
	datab => \mem|Mem[3][3]~q\,
	datac => \mem|Mem[2][3]~q\,
	datad => \mem|out_dat_add~29_combout\,
	combout => \mem|out_dat_add~30_combout\);

-- Location: LCCOMB_X22_Y13_N10
\mem|out_dat_add~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~31_combout\ = (\mar1|MAR_out\(3) & (\mar1|MAR_out\(2))) # (!\mar1|MAR_out\(3) & ((\mar1|MAR_out\(2) & (\mem|out_dat_add~28_combout\)) # (!\mar1|MAR_out\(2) & ((\mem|out_dat_add~30_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(3),
	datab => \mar1|MAR_out\(2),
	datac => \mem|out_dat_add~28_combout\,
	datad => \mem|out_dat_add~30_combout\,
	combout => \mem|out_dat_add~31_combout\);

-- Location: LCCOMB_X23_Y13_N6
\mem|out_dat_add~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~32_combout\ = (\mar1|MAR_out\(3) & ((\mem|out_dat_add~31_combout\ & ((\mem|Mem[12][3]~q\))) # (!\mem|out_dat_add~31_combout\ & (\mem|out_dat_add~26_combout\)))) # (!\mar1|MAR_out\(3) & (((\mem|out_dat_add~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|out_dat_add~26_combout\,
	datab => \mem|Mem[12][3]~q\,
	datac => \mar1|MAR_out\(3),
	datad => \mem|out_dat_add~31_combout\,
	combout => \mem|out_dat_add~32_combout\);

-- Location: FF_X23_Y13_N7
\mem|out_dat_add[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|out_dat_add~32_combout\,
	sclr => \rst~input_o\,
	ena => \mem|out_dat_add[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|out_dat_add\(3));

-- Location: LCCOMB_X19_Y17_N22
\mux1|MD~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux1|MD~4_combout\ = (\cb|md_write_mem~q\ & ((\mem|out_dat_add\(3)))) # (!\cb|md_write_mem~q\ & (\alu1|out\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|out\(3),
	datac => \cb|md_write_mem~q\,
	datad => \mem|out_dat_add\(3),
	combout => \mux1|MD~4_combout\);

-- Location: FF_X19_Y17_N23
\mux1|MD[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux1|MD~4_combout\,
	sclr => \rst~input_o\,
	ena => \mux1|MD[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux1|MD\(3));

-- Location: LCCOMB_X19_Y18_N28
\mux1|out_data~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux1|out_data~5_combout\ = (\cb|md_read~q\ & ((\mux1|MD\(3)))) # (!\cb|md_read~q\ & (\mux1|PC\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux1|PC\(3),
	datac => \mux1|MD\(3),
	datad => \cb|md_read~q\,
	combout => \mux1|out_data~5_combout\);

-- Location: FF_X19_Y18_N29
\mux1|out_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux1|out_data~5_combout\,
	sclr => \rst~input_o\,
	ena => \mux1|out_data[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux1|out_data\(3));

-- Location: LCCOMB_X20_Y18_N10
\output2[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \output2[3]~3_combout\ = (\cb|stack_read~q\ & (\stack1|out_stack_data\(3))) # (!\cb|stack_read~q\ & ((\mux1|out_data\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cb|stack_read~q\,
	datac => \stack1|out_stack_data\(3),
	datad => \mux1|out_data\(3),
	combout => \output2[3]~3_combout\);

-- Location: LCCOMB_X23_Y17_N16
\alu1|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alu1|Add0~24_combout\ = (\mux|out_data\(3) & ((\alu1|Add0~11_combout\) # ((\alu1|Add0~10_combout\ & \alu1|Add0~22_combout\)))) # (!\mux|out_data\(3) & (\alu1|Add0~10_combout\ & (\alu1|Add0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out_data\(3),
	datab => \alu1|Add0~10_combout\,
	datac => \alu1|Add0~22_combout\,
	datad => \alu1|Add0~11_combout\,
	combout => \alu1|Add0~24_combout\);

-- Location: LCCOMB_X23_Y17_N10
\alu1|Add0~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alu1|Add0~25_combout\ = (\alu1|Add0~24_combout\) # ((\output2[3]~3_combout\ & \alu1|Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \output2[3]~3_combout\,
	datac => \alu1|Mux1~0_combout\,
	datad => \alu1|Add0~24_combout\,
	combout => \alu1|Add0~25_combout\);

-- Location: LCCOMB_X23_Y17_N0
\alu1|out[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alu1|out\(3) = (GLOBAL(\alu1|out[17]~0clkctrl_outclk\) & ((\alu1|Add0~25_combout\))) # (!GLOBAL(\alu1|out[17]~0clkctrl_outclk\) & (\alu1|out\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu1|out\(3),
	datac => \alu1|out[17]~0clkctrl_outclk\,
	datad => \alu1|Add0~25_combout\,
	combout => \alu1|out\(3));

-- Location: FF_X23_Y17_N1
\mar1|MAR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \alu1|out\(3),
	ena => \mar1|MAR[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mar1|MAR\(3));

-- Location: LCCOMB_X24_Y14_N18
\mar1|MAR_out~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mar1|MAR_out~3_combout\ = (!\rst~input_o\ & \mar1|MAR\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	datad => \mar1|MAR\(3),
	combout => \mar1|MAR_out~3_combout\);

-- Location: FF_X24_Y14_N19
\mar1|MAR_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mar1|MAR_out~3_combout\,
	ena => \mar1|MAR[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mar1|MAR_out\(3));

-- Location: LCCOMB_X22_Y17_N2
\mem|Mem[7][3]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[7][3]~11_combout\ = (\mar1|MAR_out\(3)) # (!\mar1|MAR_out\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mar1|MAR_out\(1),
	datad => \mar1|MAR_out\(3),
	combout => \mem|Mem[7][3]~11_combout\);

-- Location: LCCOMB_X23_Y17_N8
\mem|Mem[7][3]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[7][3]~12_combout\ = (\rst~input_o\) # ((\mar1|MAR_out\(0) & (\mem|Mem[12][17]~4_combout\ & !\mem|Mem[7][3]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(0),
	datab => \rst~input_o\,
	datac => \mem|Mem[12][17]~4_combout\,
	datad => \mem|Mem[7][3]~11_combout\,
	combout => \mem|Mem[7][3]~12_combout\);

-- Location: FF_X22_Y13_N29
\mem|Mem[7][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mux|AC~3_combout\,
	sload => VCC,
	ena => \mem|Mem[7][3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[7][4]~q\);

-- Location: LCCOMB_X22_Y13_N28
\mem|out_dat_add~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~34_combout\ = (\mem|out_dat_add~33_combout\ & (((\mem|Mem[7][4]~q\) # (!\mar1|MAR_out\(1))))) # (!\mem|out_dat_add~33_combout\ & (\mem|Mem[6][4]~q\ & ((\mar1|MAR_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|out_dat_add~33_combout\,
	datab => \mem|Mem[6][4]~q\,
	datac => \mem|Mem[7][4]~q\,
	datad => \mar1|MAR_out\(1),
	combout => \mem|out_dat_add~34_combout\);

-- Location: LCCOMB_X19_Y15_N10
\mux|IR~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux|IR~6_combout\ = (\alu1|out\(4) & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|out\(4),
	datad => \rst~input_o\,
	combout => \mux|IR~6_combout\);

-- Location: FF_X22_Y17_N5
\mem|Mem[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mux|IR~6_combout\,
	sload => VCC,
	ena => \mem|Mem[3][11]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[3][4]~q\);

-- Location: FF_X23_Y15_N31
\mem|Mem[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mux|IR~6_combout\,
	sload => VCC,
	ena => \mem|Mem[0][4]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[0][4]~q\);

-- Location: LCCOMB_X23_Y14_N16
\mem|Mem[2][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[2][4]~feeder_combout\ = \mux|IR~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux|IR~6_combout\,
	combout => \mem|Mem[2][4]~feeder_combout\);

-- Location: FF_X23_Y14_N17
\mem|Mem[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem[2][4]~feeder_combout\,
	ena => \mem|Mem[2][16]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[2][4]~q\);

-- Location: LCCOMB_X23_Y15_N30
\mem|out_dat_add~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~37_combout\ = (\mar1|MAR_out\(1) & ((\mar1|MAR_out\(0)) # ((\mem|Mem[2][4]~q\)))) # (!\mar1|MAR_out\(1) & (!\mar1|MAR_out\(0) & (\mem|Mem[0][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(1),
	datab => \mar1|MAR_out\(0),
	datac => \mem|Mem[0][4]~q\,
	datad => \mem|Mem[2][4]~q\,
	combout => \mem|out_dat_add~37_combout\);

-- Location: LCCOMB_X22_Y17_N4
\mem|out_dat_add~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~38_combout\ = (\mar1|MAR_out\(0) & ((\mem|out_dat_add~37_combout\ & ((\mem|Mem[3][4]~q\))) # (!\mem|out_dat_add~37_combout\ & (\mem|Mem[1][4]~q\)))) # (!\mar1|MAR_out\(0) & (((\mem|out_dat_add~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mem[1][4]~q\,
	datab => \mar1|MAR_out\(0),
	datac => \mem|Mem[3][4]~q\,
	datad => \mem|out_dat_add~37_combout\,
	combout => \mem|out_dat_add~38_combout\);

-- Location: LCCOMB_X22_Y15_N26
\mem|Mem[9][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[9][4]~feeder_combout\ = \mux|IR~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux|IR~6_combout\,
	combout => \mem|Mem[9][4]~feeder_combout\);

-- Location: FF_X22_Y15_N27
\mem|Mem[9][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem[9][4]~feeder_combout\,
	ena => \mem|Mem[9][9]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[9][4]~q\);

-- Location: FF_X21_Y18_N1
\mem|Mem[11][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \alu1|out\(4),
	sload => VCC,
	ena => \mem|Mem[11][17]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[11][4]~q\);

-- Location: FF_X22_Y15_N5
\mem|Mem[8][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mux|IR~6_combout\,
	sload => VCC,
	ena => \mem|Mem[8][17]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[8][4]~q\);

-- Location: LCCOMB_X24_Y18_N26
\mem|Mem[10][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[10][4]~feeder_combout\ = \alu1|out\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \alu1|out\(4),
	combout => \mem|Mem[10][4]~feeder_combout\);

-- Location: LCCOMB_X24_Y18_N10
\mem|Mem[10][17]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[10][17]~17_combout\ = (\mar1|MAR_out\(3) & (!\mar1|MAR_out\(0) & (\mem|Mem[10][17]~16_combout\ & \mem|Mem[10][17]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(3),
	datab => \mar1|MAR_out\(0),
	datac => \mem|Mem[10][17]~16_combout\,
	datad => \mem|Mem[10][17]~13_combout\,
	combout => \mem|Mem[10][17]~17_combout\);

-- Location: FF_X24_Y18_N27
\mem|Mem[10][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem[10][4]~feeder_combout\,
	ena => \mem|Mem[10][17]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[10][4]~q\);

-- Location: LCCOMB_X22_Y15_N4
\mem|out_dat_add~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~35_combout\ = (\mar1|MAR_out\(0) & (\mar1|MAR_out\(1))) # (!\mar1|MAR_out\(0) & ((\mar1|MAR_out\(1) & ((\mem|Mem[10][4]~q\))) # (!\mar1|MAR_out\(1) & (\mem|Mem[8][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(0),
	datab => \mar1|MAR_out\(1),
	datac => \mem|Mem[8][4]~q\,
	datad => \mem|Mem[10][4]~q\,
	combout => \mem|out_dat_add~35_combout\);

-- Location: LCCOMB_X21_Y18_N0
\mem|out_dat_add~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~36_combout\ = (\mar1|MAR_out\(0) & ((\mem|out_dat_add~35_combout\ & ((\mem|Mem[11][4]~q\))) # (!\mem|out_dat_add~35_combout\ & (\mem|Mem[9][4]~q\)))) # (!\mar1|MAR_out\(0) & (((\mem|out_dat_add~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(0),
	datab => \mem|Mem[9][4]~q\,
	datac => \mem|Mem[11][4]~q\,
	datad => \mem|out_dat_add~35_combout\,
	combout => \mem|out_dat_add~36_combout\);

-- Location: LCCOMB_X22_Y17_N14
\mem|out_dat_add~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~39_combout\ = (\mar1|MAR_out\(2) & (\mar1|MAR_out\(3))) # (!\mar1|MAR_out\(2) & ((\mar1|MAR_out\(3) & ((\mem|out_dat_add~36_combout\))) # (!\mar1|MAR_out\(3) & (\mem|out_dat_add~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(2),
	datab => \mar1|MAR_out\(3),
	datac => \mem|out_dat_add~38_combout\,
	datad => \mem|out_dat_add~36_combout\,
	combout => \mem|out_dat_add~39_combout\);

-- Location: LCCOMB_X23_Y13_N0
\mem|out_dat_add~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~40_combout\ = (\mar1|MAR_out\(2) & ((\mem|out_dat_add~39_combout\ & (\mem|Mem[12][4]~q\)) # (!\mem|out_dat_add~39_combout\ & ((\mem|out_dat_add~34_combout\))))) # (!\mar1|MAR_out\(2) & (((\mem|out_dat_add~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mem[12][4]~q\,
	datab => \mem|out_dat_add~34_combout\,
	datac => \mar1|MAR_out\(2),
	datad => \mem|out_dat_add~39_combout\,
	combout => \mem|out_dat_add~40_combout\);

-- Location: FF_X23_Y13_N1
\mem|out_dat_add[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|out_dat_add~40_combout\,
	sclr => \rst~input_o\,
	ena => \mem|out_dat_add[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|out_dat_add\(4));

-- Location: LCCOMB_X19_Y17_N8
\mux1|MD~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux1|MD~5_combout\ = (\cb|md_write_mem~q\ & ((\mem|out_dat_add\(4)))) # (!\cb|md_write_mem~q\ & (\alu1|out\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb|md_write_mem~q\,
	datac => \alu1|out\(4),
	datad => \mem|out_dat_add\(4),
	combout => \mux1|MD~5_combout\);

-- Location: FF_X19_Y17_N9
\mux1|MD[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux1|MD~5_combout\,
	sclr => \rst~input_o\,
	ena => \mux1|MD[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux1|MD\(4));

-- Location: FF_X17_Y17_N13
\mux1|PC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux1|PC[4]~23_combout\,
	asdata => \alu1|out\(4),
	sclr => \rst~input_o\,
	sload => \cb|ALT_INV_inc_pc~q\,
	ena => \mux1|PC[8]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux1|PC\(4));

-- Location: LCCOMB_X19_Y18_N14
\mux1|out_data~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux1|out_data~6_combout\ = (\cb|md_read~q\ & (\mux1|MD\(4))) # (!\cb|md_read~q\ & ((\mux1|PC\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux1|MD\(4),
	datac => \mux1|PC\(4),
	datad => \cb|md_read~q\,
	combout => \mux1|out_data~6_combout\);

-- Location: FF_X19_Y18_N15
\mux1|out_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux1|out_data~6_combout\,
	sclr => \rst~input_o\,
	ena => \mux1|out_data[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux1|out_data\(4));

-- Location: LCCOMB_X20_Y18_N4
\output2[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \output2[4]~4_combout\ = (\cb|stack_read~q\ & (\stack1|out_stack_data\(4))) # (!\cb|stack_read~q\ & ((\mux1|out_data\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cb|stack_read~q\,
	datac => \stack1|out_stack_data\(4),
	datad => \mux1|out_data\(4),
	combout => \output2[4]~4_combout\);

-- Location: LCCOMB_X19_Y15_N24
\alu1|Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alu1|Add0~28_combout\ = (\alu1|Add0~11_combout\ & ((\mux|out_data\(4)) # ((\alu1|Add0~10_combout\ & \alu1|Add0~26_combout\)))) # (!\alu1|Add0~11_combout\ & (((\alu1|Add0~10_combout\ & \alu1|Add0~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|Add0~11_combout\,
	datab => \mux|out_data\(4),
	datac => \alu1|Add0~10_combout\,
	datad => \alu1|Add0~26_combout\,
	combout => \alu1|Add0~28_combout\);

-- Location: LCCOMB_X19_Y15_N18
\alu1|Add0~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alu1|Add0~29_combout\ = (\alu1|Add0~28_combout\) # ((\output2[4]~4_combout\ & \alu1|Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \output2[4]~4_combout\,
	datac => \alu1|Mux1~0_combout\,
	datad => \alu1|Add0~28_combout\,
	combout => \alu1|Add0~29_combout\);

-- Location: LCCOMB_X19_Y15_N30
\alu1|out[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alu1|out\(4) = (GLOBAL(\alu1|out[17]~0clkctrl_outclk\) & ((\alu1|Add0~29_combout\))) # (!GLOBAL(\alu1|out[17]~0clkctrl_outclk\) & (\alu1|out\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|out\(4),
	datac => \alu1|out[17]~0clkctrl_outclk\,
	datad => \alu1|Add0~29_combout\,
	combout => \alu1|out\(4));

-- Location: FF_X19_Y15_N31
\mar1|MAR[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \alu1|out\(4),
	ena => \mar1|MAR[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mar1|MAR\(4));

-- Location: LCCOMB_X24_Y14_N30
\mar1|MAR_out~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mar1|MAR_out~4_combout\ = (!\rst~input_o\ & \mar1|MAR\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	datad => \mar1|MAR\(4),
	combout => \mar1|MAR_out~4_combout\);

-- Location: FF_X24_Y14_N31
\mar1|MAR_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mar1|MAR_out~4_combout\,
	ena => \mar1|MAR[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mar1|MAR_out\(4));

-- Location: FF_X19_Y15_N3
\mar1|MAR[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \alu1|out\(6),
	ena => \mar1|MAR[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mar1|MAR\(6));

-- Location: LCCOMB_X24_Y14_N26
\mar1|MAR_out~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mar1|MAR_out~6_combout\ = (!\rst~input_o\ & \mar1|MAR\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	datad => \mar1|MAR\(6),
	combout => \mar1|MAR_out~6_combout\);

-- Location: FF_X24_Y14_N27
\mar1|MAR_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mar1|MAR_out~6_combout\,
	ena => \mar1|MAR[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mar1|MAR_out\(6));

-- Location: LCCOMB_X23_Y17_N22
\mem|Mem[10][17]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[10][17]~1_combout\ = (!\mar1|MAR_out\(7) & (!\mar1|MAR_out\(5) & (!\mar1|MAR_out\(4) & !\mar1|MAR_out\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(7),
	datab => \mar1|MAR_out\(5),
	datac => \mar1|MAR_out\(4),
	datad => \mar1|MAR_out\(6),
	combout => \mem|Mem[10][17]~1_combout\);

-- Location: LCCOMB_X23_Y17_N4
\mem|Mem[12][17]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[12][17]~4_combout\ = (\mar1|MAR_out\(2) & (\mem|Mem[10][17]~3_combout\ & (\mem|Mem[10][17]~1_combout\ & \mem|Mem[10][17]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(2),
	datab => \mem|Mem[10][17]~3_combout\,
	datac => \mem|Mem[10][17]~1_combout\,
	datad => \mem|Mem[10][17]~2_combout\,
	combout => \mem|Mem[12][17]~4_combout\);

-- Location: LCCOMB_X20_Y16_N30
\mem|Mem[12][17]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[12][17]~26_combout\ = (\mar1|MAR_out\(3) & (!\rst~input_o\ & (\mem|Mem[12][17]~9_combout\ & \mem|Mem[12][17]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(3),
	datab => \rst~input_o\,
	datac => \mem|Mem[12][17]~9_combout\,
	datad => \mem|Mem[12][17]~4_combout\,
	combout => \mem|Mem[12][17]~26_combout\);

-- Location: FF_X21_Y16_N23
\mem|Mem[12][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \alu1|out\(14),
	ena => \mem|Mem[12][17]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[12][14]~q\);

-- Location: FF_X24_Y15_N23
\mem|Mem[6][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mux|IR~16_combout\,
	sload => VCC,
	ena => \mem|Mem[6][2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[6][14]~q\);

-- Location: FF_X24_Y15_N17
\mem|Mem[4][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mux|IR~16_combout\,
	sload => VCC,
	ena => \mem|Mem[4][8]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[4][14]~q\);

-- Location: LCCOMB_X24_Y16_N24
\mem|Mem~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem~32_combout\ = (\alu1|out\(14)) # (\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|out\(14),
	datad => \rst~input_o\,
	combout => \mem|Mem~32_combout\);

-- Location: FF_X24_Y16_N25
\mem|Mem[5][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem~32_combout\,
	ena => \mem|Mem[5][9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[5][14]~q\);

-- Location: LCCOMB_X24_Y15_N16
\mem|out_dat_add~113\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~113_combout\ = (\mar1|MAR_out\(1) & (\mar1|MAR_out\(0))) # (!\mar1|MAR_out\(1) & ((\mar1|MAR_out\(0) & ((\mem|Mem[5][14]~q\))) # (!\mar1|MAR_out\(0) & (\mem|Mem[4][14]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(1),
	datab => \mar1|MAR_out\(0),
	datac => \mem|Mem[4][14]~q\,
	datad => \mem|Mem[5][14]~q\,
	combout => \mem|out_dat_add~113_combout\);

-- Location: LCCOMB_X24_Y15_N22
\mem|out_dat_add~114\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~114_combout\ = (\mar1|MAR_out\(1) & ((\mem|out_dat_add~113_combout\ & (\mem|Mem[7][14]~q\)) # (!\mem|out_dat_add~113_combout\ & ((\mem|Mem[6][14]~q\))))) # (!\mar1|MAR_out\(1) & (((\mem|out_dat_add~113_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mem[7][14]~q\,
	datab => \mar1|MAR_out\(1),
	datac => \mem|Mem[6][14]~q\,
	datad => \mem|out_dat_add~113_combout\,
	combout => \mem|out_dat_add~114_combout\);

-- Location: LCCOMB_X21_Y18_N22
\mem|Mem[9][14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[9][14]~feeder_combout\ = \mux|IR~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux|IR~16_combout\,
	combout => \mem|Mem[9][14]~feeder_combout\);

-- Location: FF_X21_Y18_N23
\mem|Mem[9][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem[9][14]~feeder_combout\,
	ena => \mem|Mem[9][9]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[9][14]~q\);

-- Location: FF_X22_Y18_N27
\mem|Mem[11][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \alu1|out\(14),
	sload => VCC,
	ena => \mem|Mem[11][17]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[11][14]~q\);

-- Location: LCCOMB_X23_Y18_N24
\mem|Mem[10][14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[10][14]~feeder_combout\ = \alu1|out\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu1|out\(14),
	combout => \mem|Mem[10][14]~feeder_combout\);

-- Location: FF_X23_Y18_N25
\mem|Mem[10][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem[10][14]~feeder_combout\,
	ena => \mem|Mem[10][17]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[10][14]~q\);

-- Location: FF_X22_Y18_N1
\mem|Mem[8][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mux|IR~16_combout\,
	sload => VCC,
	ena => \mem|Mem[8][17]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[8][14]~q\);

-- Location: LCCOMB_X22_Y18_N0
\mem|out_dat_add~115\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~115_combout\ = (\mar1|MAR_out\(0) & (((\mar1|MAR_out\(1))))) # (!\mar1|MAR_out\(0) & ((\mar1|MAR_out\(1) & (\mem|Mem[10][14]~q\)) # (!\mar1|MAR_out\(1) & ((\mem|Mem[8][14]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(0),
	datab => \mem|Mem[10][14]~q\,
	datac => \mem|Mem[8][14]~q\,
	datad => \mar1|MAR_out\(1),
	combout => \mem|out_dat_add~115_combout\);

-- Location: LCCOMB_X22_Y18_N26
\mem|out_dat_add~116\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~116_combout\ = (\mar1|MAR_out\(0) & ((\mem|out_dat_add~115_combout\ & ((\mem|Mem[11][14]~q\))) # (!\mem|out_dat_add~115_combout\ & (\mem|Mem[9][14]~q\)))) # (!\mar1|MAR_out\(0) & (((\mem|out_dat_add~115_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(0),
	datab => \mem|Mem[9][14]~q\,
	datac => \mem|Mem[11][14]~q\,
	datad => \mem|out_dat_add~115_combout\,
	combout => \mem|out_dat_add~116_combout\);

-- Location: LCCOMB_X22_Y12_N22
\mem|Mem[1][14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[1][14]~feeder_combout\ = \mux|IR~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux|IR~16_combout\,
	combout => \mem|Mem[1][14]~feeder_combout\);

-- Location: FF_X22_Y12_N23
\mem|Mem[1][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem[1][14]~feeder_combout\,
	ena => \mem|Mem[1][14]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[1][14]~q\);

-- Location: FF_X23_Y16_N21
\mem|Mem[3][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mux|IR~16_combout\,
	sload => VCC,
	ena => \mem|Mem[3][11]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[3][14]~q\);

-- Location: FF_X23_Y15_N7
\mem|Mem[0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mux|IR~16_combout\,
	sload => VCC,
	ena => \mem|Mem[0][4]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[0][14]~q\);

-- Location: LCCOMB_X24_Y16_N26
\mem|Mem[2][14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[2][14]~feeder_combout\ = \mux|IR~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux|IR~16_combout\,
	combout => \mem|Mem[2][14]~feeder_combout\);

-- Location: FF_X24_Y16_N27
\mem|Mem[2][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem[2][14]~feeder_combout\,
	ena => \mem|Mem[2][16]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[2][14]~q\);

-- Location: LCCOMB_X23_Y15_N6
\mem|out_dat_add~117\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~117_combout\ = (\mar1|MAR_out\(0) & (\mar1|MAR_out\(1))) # (!\mar1|MAR_out\(0) & ((\mar1|MAR_out\(1) & ((\mem|Mem[2][14]~q\))) # (!\mar1|MAR_out\(1) & (\mem|Mem[0][14]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(0),
	datab => \mar1|MAR_out\(1),
	datac => \mem|Mem[0][14]~q\,
	datad => \mem|Mem[2][14]~q\,
	combout => \mem|out_dat_add~117_combout\);

-- Location: LCCOMB_X23_Y16_N20
\mem|out_dat_add~118\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~118_combout\ = (\mar1|MAR_out\(0) & ((\mem|out_dat_add~117_combout\ & ((\mem|Mem[3][14]~q\))) # (!\mem|out_dat_add~117_combout\ & (\mem|Mem[1][14]~q\)))) # (!\mar1|MAR_out\(0) & (((\mem|out_dat_add~117_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(0),
	datab => \mem|Mem[1][14]~q\,
	datac => \mem|Mem[3][14]~q\,
	datad => \mem|out_dat_add~117_combout\,
	combout => \mem|out_dat_add~118_combout\);

-- Location: LCCOMB_X24_Y16_N28
\mem|out_dat_add~119\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~119_combout\ = (\mar1|MAR_out\(3) & ((\mar1|MAR_out\(2)) # ((\mem|out_dat_add~116_combout\)))) # (!\mar1|MAR_out\(3) & (!\mar1|MAR_out\(2) & ((\mem|out_dat_add~118_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(3),
	datab => \mar1|MAR_out\(2),
	datac => \mem|out_dat_add~116_combout\,
	datad => \mem|out_dat_add~118_combout\,
	combout => \mem|out_dat_add~119_combout\);

-- Location: LCCOMB_X19_Y16_N2
\mem|out_dat_add~120\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~120_combout\ = (\mar1|MAR_out\(2) & ((\mem|out_dat_add~119_combout\ & (\mem|Mem[12][14]~q\)) # (!\mem|out_dat_add~119_combout\ & ((\mem|out_dat_add~114_combout\))))) # (!\mar1|MAR_out\(2) & (((\mem|out_dat_add~119_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(2),
	datab => \mem|Mem[12][14]~q\,
	datac => \mem|out_dat_add~114_combout\,
	datad => \mem|out_dat_add~119_combout\,
	combout => \mem|out_dat_add~120_combout\);

-- Location: FF_X19_Y16_N3
\mem|out_dat_add[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|out_dat_add~120_combout\,
	sclr => \rst~input_o\,
	ena => \mem|out_dat_add[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|out_dat_add\(14));

-- Location: LCCOMB_X20_Y20_N26
\mux1|MD~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux1|MD~15_combout\ = (\cb|md_write_mem~q\ & (\mem|out_dat_add\(14))) # (!\cb|md_write_mem~q\ & ((\alu1|out\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb|md_write_mem~q\,
	datac => \mem|out_dat_add\(14),
	datad => \alu1|out\(14),
	combout => \mux1|MD~15_combout\);

-- Location: FF_X20_Y20_N27
\mux1|MD[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux1|MD~15_combout\,
	sclr => \rst~input_o\,
	ena => \mux1|MD[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux1|MD\(14));

-- Location: LCCOMB_X17_Y19_N6
\mux1|out_data~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux1|out_data~16_combout\ = (\mux1|MD\(14) & (!\rst~input_o\ & \cb|md_read~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux1|MD\(14),
	datac => \rst~input_o\,
	datad => \cb|md_read~q\,
	combout => \mux1|out_data~16_combout\);

-- Location: FF_X17_Y19_N7
\mux1|out_data[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux1|out_data~16_combout\,
	ena => \mux1|out_data[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux1|out_data\(14));

-- Location: LCCOMB_X19_Y19_N14
\output2[14]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \output2[14]~14_combout\ = (\cb|stack_read~q\ & (\stack1|out_stack_data\(14))) # (!\cb|stack_read~q\ & ((\mux1|out_data\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stack1|out_stack_data\(14),
	datac => \mux1|out_data\(14),
	datad => \cb|stack_read~q\,
	combout => \output2[14]~14_combout\);

-- Location: LCCOMB_X21_Y16_N24
\alu1|Add0~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alu1|Add0~68_combout\ = (\alu1|Add0~11_combout\ & ((\mux|out_data\(14)) # ((\alu1|Mux1~0_combout\ & \output2[14]~14_combout\)))) # (!\alu1|Add0~11_combout\ & (\alu1|Mux1~0_combout\ & (\output2[14]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|Add0~11_combout\,
	datab => \alu1|Mux1~0_combout\,
	datac => \output2[14]~14_combout\,
	datad => \mux|out_data\(14),
	combout => \alu1|Add0~68_combout\);

-- Location: LCCOMB_X22_Y16_N28
\mux|IR~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux|IR~14_combout\ = (\alu1|out\(12) & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu1|out\(12),
	datad => \rst~input_o\,
	combout => \mux|IR~14_combout\);

-- Location: LCCOMB_X20_Y15_N24
\mux|AC[12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux|AC[12]~feeder_combout\ = \mux|IR~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux|IR~14_combout\,
	combout => \mux|AC[12]~feeder_combout\);

-- Location: FF_X20_Y15_N25
\mux|AC[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux|AC[12]~feeder_combout\,
	ena => \mux|AC[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|AC\(12));

-- Location: LCCOMB_X20_Y15_N26
\mux|IR[12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux|IR[12]~feeder_combout\ = \mux|IR~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux|IR~14_combout\,
	combout => \mux|IR[12]~feeder_combout\);

-- Location: FF_X20_Y15_N27
\mux|IR[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux|IR[12]~feeder_combout\,
	ena => \mux|IR[16]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|IR\(12));

-- Location: LCCOMB_X19_Y14_N0
\mux|out_data~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux|out_data~13_combout\ = (\cb|ac_read~q\ & (\mux|AC\(12))) # (!\cb|ac_read~q\ & ((\mux|IR\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb|ac_read~q\,
	datab => \mux|AC\(12),
	datad => \mux|IR\(12),
	combout => \mux|out_data~13_combout\);

-- Location: FF_X19_Y14_N1
\mux|out_data[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux|out_data~13_combout\,
	sclr => \rst~input_o\,
	ena => \mux|out_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|out_data\(12));

-- Location: LCCOMB_X22_Y16_N8
\alu1|Add0~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alu1|Add0~60_combout\ = (\alu1|Mux1~0_combout\ & ((\output2[12]~12_combout\) # ((\mux|out_data\(12) & \alu1|Add0~11_combout\)))) # (!\alu1|Mux1~0_combout\ & (\mux|out_data\(12) & ((\alu1|Add0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|Mux1~0_combout\,
	datab => \mux|out_data\(12),
	datac => \output2[12]~12_combout\,
	datad => \alu1|Add0~11_combout\,
	combout => \alu1|Add0~60_combout\);

-- Location: LCCOMB_X20_Y17_N6
\alu1|Add0~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alu1|Add0~58_combout\ = ((\mux|out_data\(12) $ (\output2[12]~12_combout\ $ (!\alu1|Add0~55\)))) # (GND)
-- \alu1|Add0~59\ = CARRY((\mux|out_data\(12) & ((\output2[12]~12_combout\) # (!\alu1|Add0~55\))) # (!\mux|out_data\(12) & (\output2[12]~12_combout\ & !\alu1|Add0~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out_data\(12),
	datab => \output2[12]~12_combout\,
	datad => VCC,
	cin => \alu1|Add0~55\,
	combout => \alu1|Add0~58_combout\,
	cout => \alu1|Add0~59\);

-- Location: LCCOMB_X22_Y16_N2
\alu1|Add0~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alu1|Add0~61_combout\ = (\alu1|Add0~60_combout\) # ((\alu1|Add0~10_combout\ & \alu1|Add0~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu1|Add0~10_combout\,
	datac => \alu1|Add0~60_combout\,
	datad => \alu1|Add0~58_combout\,
	combout => \alu1|Add0~61_combout\);

-- Location: LCCOMB_X22_Y16_N14
\alu1|out[12]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alu1|out\(12) = (GLOBAL(\alu1|out[17]~0clkctrl_outclk\) & ((\alu1|Add0~61_combout\))) # (!GLOBAL(\alu1|out[17]~0clkctrl_outclk\) & (\alu1|out\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu1|out\(12),
	datac => \alu1|out[17]~0clkctrl_outclk\,
	datad => \alu1|Add0~61_combout\,
	combout => \alu1|out\(12));

-- Location: LCCOMB_X24_Y14_N28
\mem|Mem[12][12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[12][12]~feeder_combout\ = \alu1|out\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \alu1|out\(12),
	combout => \mem|Mem[12][12]~feeder_combout\);

-- Location: FF_X24_Y14_N29
\mem|Mem[12][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem[12][12]~feeder_combout\,
	ena => \mem|Mem[12][17]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[12][12]~q\);

-- Location: FF_X23_Y16_N29
\mem|Mem[1][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mux|IR~14_combout\,
	sload => VCC,
	ena => \mem|Mem[1][14]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[1][12]~q\);

-- Location: FF_X23_Y15_N3
\mem|Mem[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mux|IR~14_combout\,
	sload => VCC,
	ena => \mem|Mem[0][4]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[0][12]~q\);

-- Location: LCCOMB_X23_Y14_N26
\mem|Mem[2][12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[2][12]~feeder_combout\ = \mux|IR~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux|IR~14_combout\,
	combout => \mem|Mem[2][12]~feeder_combout\);

-- Location: FF_X23_Y14_N27
\mem|Mem[2][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem[2][12]~feeder_combout\,
	ena => \mem|Mem[2][16]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[2][12]~q\);

-- Location: LCCOMB_X23_Y15_N2
\mem|out_dat_add~101\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~101_combout\ = (\mar1|MAR_out\(0) & (\mar1|MAR_out\(1))) # (!\mar1|MAR_out\(0) & ((\mar1|MAR_out\(1) & ((\mem|Mem[2][12]~q\))) # (!\mar1|MAR_out\(1) & (\mem|Mem[0][12]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(0),
	datab => \mar1|MAR_out\(1),
	datac => \mem|Mem[0][12]~q\,
	datad => \mem|Mem[2][12]~q\,
	combout => \mem|out_dat_add~101_combout\);

-- Location: LCCOMB_X23_Y16_N28
\mem|out_dat_add~102\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~102_combout\ = (\mar1|MAR_out\(0) & ((\mem|out_dat_add~101_combout\ & (\mem|Mem[3][12]~q\)) # (!\mem|out_dat_add~101_combout\ & ((\mem|Mem[1][12]~q\))))) # (!\mar1|MAR_out\(0) & (((\mem|out_dat_add~101_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mem[3][12]~q\,
	datab => \mar1|MAR_out\(0),
	datac => \mem|Mem[1][12]~q\,
	datad => \mem|out_dat_add~101_combout\,
	combout => \mem|out_dat_add~102_combout\);

-- Location: FF_X22_Y18_N17
\mem|Mem[8][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mux|IR~14_combout\,
	sload => VCC,
	ena => \mem|Mem[8][17]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[8][12]~q\);

-- Location: LCCOMB_X22_Y18_N16
\mem|out_dat_add~99\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~99_combout\ = (\mar1|MAR_out\(1) & ((\mem|Mem[10][12]~q\) # ((\mar1|MAR_out\(0))))) # (!\mar1|MAR_out\(1) & (((\mem|Mem[8][12]~q\ & !\mar1|MAR_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mem[10][12]~q\,
	datab => \mar1|MAR_out\(1),
	datac => \mem|Mem[8][12]~q\,
	datad => \mar1|MAR_out\(0),
	combout => \mem|out_dat_add~99_combout\);

-- Location: FF_X22_Y18_N11
\mem|Mem[11][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \alu1|out\(12),
	sload => VCC,
	ena => \mem|Mem[11][17]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[11][12]~q\);

-- Location: LCCOMB_X22_Y18_N10
\mem|out_dat_add~100\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~100_combout\ = (\mem|out_dat_add~99_combout\ & (((\mem|Mem[11][12]~q\) # (!\mar1|MAR_out\(0))))) # (!\mem|out_dat_add~99_combout\ & (\mem|Mem[9][12]~q\ & ((\mar1|MAR_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mem[9][12]~q\,
	datab => \mem|out_dat_add~99_combout\,
	datac => \mem|Mem[11][12]~q\,
	datad => \mar1|MAR_out\(0),
	combout => \mem|out_dat_add~100_combout\);

-- Location: LCCOMB_X23_Y16_N22
\mem|out_dat_add~103\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~103_combout\ = (\mar1|MAR_out\(3) & (((\mar1|MAR_out\(2)) # (\mem|out_dat_add~100_combout\)))) # (!\mar1|MAR_out\(3) & (\mem|out_dat_add~102_combout\ & (!\mar1|MAR_out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(3),
	datab => \mem|out_dat_add~102_combout\,
	datac => \mar1|MAR_out\(2),
	datad => \mem|out_dat_add~100_combout\,
	combout => \mem|out_dat_add~103_combout\);

-- Location: FF_X22_Y14_N29
\mem|Mem[6][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mux|IR~14_combout\,
	sload => VCC,
	ena => \mem|Mem[6][2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[6][12]~q\);

-- Location: FF_X21_Y15_N13
\mem|Mem[4][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mux|IR~14_combout\,
	sload => VCC,
	ena => \mem|Mem[4][8]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[4][12]~q\);

-- Location: LCCOMB_X21_Y14_N4
\mem|Mem~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem~30_combout\ = (\rst~input_o\) # (\alu1|out\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datac => \alu1|out\(12),
	combout => \mem|Mem~30_combout\);

-- Location: FF_X21_Y14_N5
\mem|Mem[5][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem~30_combout\,
	ena => \mem|Mem[5][9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[5][12]~q\);

-- Location: LCCOMB_X21_Y15_N12
\mem|out_dat_add~97\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~97_combout\ = (\mar1|MAR_out\(1) & (\mar1|MAR_out\(0))) # (!\mar1|MAR_out\(1) & ((\mar1|MAR_out\(0) & ((\mem|Mem[5][12]~q\))) # (!\mar1|MAR_out\(0) & (\mem|Mem[4][12]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(1),
	datab => \mar1|MAR_out\(0),
	datac => \mem|Mem[4][12]~q\,
	datad => \mem|Mem[5][12]~q\,
	combout => \mem|out_dat_add~97_combout\);

-- Location: LCCOMB_X22_Y14_N28
\mem|out_dat_add~98\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~98_combout\ = (\mar1|MAR_out\(1) & ((\mem|out_dat_add~97_combout\ & (\mem|Mem[7][12]~q\)) # (!\mem|out_dat_add~97_combout\ & ((\mem|Mem[6][12]~q\))))) # (!\mar1|MAR_out\(1) & (((\mem|out_dat_add~97_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mem[7][12]~q\,
	datab => \mar1|MAR_out\(1),
	datac => \mem|Mem[6][12]~q\,
	datad => \mem|out_dat_add~97_combout\,
	combout => \mem|out_dat_add~98_combout\);

-- Location: LCCOMB_X19_Y16_N22
\mem|out_dat_add~104\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~104_combout\ = (\mar1|MAR_out\(2) & ((\mem|out_dat_add~103_combout\ & (\mem|Mem[12][12]~q\)) # (!\mem|out_dat_add~103_combout\ & ((\mem|out_dat_add~98_combout\))))) # (!\mar1|MAR_out\(2) & (((\mem|out_dat_add~103_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(2),
	datab => \mem|Mem[12][12]~q\,
	datac => \mem|out_dat_add~103_combout\,
	datad => \mem|out_dat_add~98_combout\,
	combout => \mem|out_dat_add~104_combout\);

-- Location: FF_X19_Y16_N23
\mem|out_dat_add[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|out_dat_add~104_combout\,
	sclr => \rst~input_o\,
	ena => \mem|out_dat_add[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|out_dat_add\(12));

-- Location: LCCOMB_X19_Y17_N24
\mux1|MD~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux1|MD~13_combout\ = (\cb|md_write_mem~q\ & (\mem|out_dat_add\(12))) # (!\cb|md_write_mem~q\ & ((\alu1|out\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|out_dat_add\(12),
	datac => \cb|md_write_mem~q\,
	datad => \alu1|out\(12),
	combout => \mux1|MD~13_combout\);

-- Location: FF_X19_Y17_N25
\mux1|MD[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux1|MD~13_combout\,
	sclr => \rst~input_o\,
	ena => \mux1|MD[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux1|MD\(12));

-- Location: LCCOMB_X17_Y19_N26
\mux1|out_data~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux1|out_data~14_combout\ = (\cb|md_read~q\ & ((\mux1|MD\(12)))) # (!\cb|md_read~q\ & (\mux1|PC\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|PC\(12),
	datab => \mux1|MD\(12),
	datad => \cb|md_read~q\,
	combout => \mux1|out_data~14_combout\);

-- Location: FF_X17_Y19_N27
\mux1|out_data[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux1|out_data~14_combout\,
	sclr => \rst~input_o\,
	ena => \mux1|out_data[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux1|out_data\(12));

-- Location: LCCOMB_X19_Y19_N26
\output2[12]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \output2[12]~12_combout\ = (\cb|stack_read~q\ & (\stack1|out_stack_data\(12))) # (!\cb|stack_read~q\ & ((\mux1|out_data\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack1|out_stack_data\(12),
	datac => \mux1|out_data\(12),
	datad => \cb|stack_read~q\,
	combout => \output2[12]~12_combout\);

-- Location: LCCOMB_X20_Y17_N8
\alu1|Add0~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alu1|Add0~62_combout\ = (\mux|out_data\(13) & ((\output2[13]~13_combout\ & (\alu1|Add0~59\ & VCC)) # (!\output2[13]~13_combout\ & (!\alu1|Add0~59\)))) # (!\mux|out_data\(13) & ((\output2[13]~13_combout\ & (!\alu1|Add0~59\)) # (!\output2[13]~13_combout\ & 
-- ((\alu1|Add0~59\) # (GND)))))
-- \alu1|Add0~63\ = CARRY((\mux|out_data\(13) & (!\output2[13]~13_combout\ & !\alu1|Add0~59\)) # (!\mux|out_data\(13) & ((!\alu1|Add0~59\) # (!\output2[13]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out_data\(13),
	datab => \output2[13]~13_combout\,
	datad => VCC,
	cin => \alu1|Add0~59\,
	combout => \alu1|Add0~62_combout\,
	cout => \alu1|Add0~63\);

-- Location: LCCOMB_X20_Y16_N10
\mux|IR~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux|IR~15_combout\ = (\alu1|out\(13) & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu1|out\(13),
	datad => \rst~input_o\,
	combout => \mux|IR~15_combout\);

-- Location: LCCOMB_X22_Y12_N20
\mux|IR[13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux|IR[13]~feeder_combout\ = \mux|IR~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux|IR~15_combout\,
	combout => \mux|IR[13]~feeder_combout\);

-- Location: FF_X22_Y12_N21
\mux|IR[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux|IR[13]~feeder_combout\,
	ena => \mux|IR[16]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|IR\(13));

-- Location: FF_X20_Y16_N11
\mux|AC[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux|IR~15_combout\,
	ena => \mux|AC[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|AC\(13));

-- Location: LCCOMB_X20_Y19_N8
\mux|out_data~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux|out_data~14_combout\ = (\cb|ac_read~q\ & ((\mux|AC\(13)))) # (!\cb|ac_read~q\ & (\mux|IR\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb|ac_read~q\,
	datab => \mux|IR\(13),
	datac => \mux|AC\(13),
	combout => \mux|out_data~14_combout\);

-- Location: FF_X20_Y19_N9
\mux|out_data[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux|out_data~14_combout\,
	sclr => \rst~input_o\,
	ena => \mux|out_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|out_data\(13));

-- Location: LCCOMB_X20_Y19_N18
\alu1|Add0~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alu1|Add0~64_combout\ = (\alu1|Add0~11_combout\ & ((\mux|out_data\(13)) # ((\output2[13]~13_combout\ & \alu1|Mux1~0_combout\)))) # (!\alu1|Add0~11_combout\ & (\output2[13]~13_combout\ & ((\alu1|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|Add0~11_combout\,
	datab => \output2[13]~13_combout\,
	datac => \mux|out_data\(13),
	datad => \alu1|Mux1~0_combout\,
	combout => \alu1|Add0~64_combout\);

-- Location: LCCOMB_X20_Y16_N16
\alu1|Add0~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alu1|Add0~65_combout\ = (\alu1|Add0~64_combout\) # ((\alu1|Add0~10_combout\ & \alu1|Add0~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|Add0~10_combout\,
	datac => \alu1|Add0~62_combout\,
	datad => \alu1|Add0~64_combout\,
	combout => \alu1|Add0~65_combout\);

-- Location: LCCOMB_X20_Y16_N28
\alu1|out[13]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alu1|out\(13) = (GLOBAL(\alu1|out[17]~0clkctrl_outclk\) & ((\alu1|Add0~65_combout\))) # (!GLOBAL(\alu1|out[17]~0clkctrl_outclk\) & (\alu1|out\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu1|out\(13),
	datac => \alu1|out[17]~0clkctrl_outclk\,
	datad => \alu1|Add0~65_combout\,
	combout => \alu1|out\(13));

-- Location: FF_X22_Y19_N25
\stack1|Stack~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \alu1|out\(13),
	sload => VCC,
	ena => \stack1|Stack~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack1|Stack~49_q\);

-- Location: LCCOMB_X23_Y19_N16
\stack1|Stack~67feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stack1|Stack~67feeder_combout\ = \alu1|out\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu1|out\(13),
	combout => \stack1|Stack~67feeder_combout\);

-- Location: FF_X23_Y19_N17
\stack1|Stack~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \stack1|Stack~67feeder_combout\,
	ena => \stack1|Stack~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack1|Stack~67_q\);

-- Location: LCCOMB_X22_Y19_N24
\stack1|Stack~98\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stack1|Stack~98_combout\ = (\stack1|SP\(0) & (((\stack1|Stack~49_q\)) # (!\stack1|SP\(1)))) # (!\stack1|SP\(0) & (!\stack1|SP\(1) & ((\stack1|Stack~67_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack1|SP\(0),
	datab => \stack1|SP\(1),
	datac => \stack1|Stack~49_q\,
	datad => \stack1|Stack~67_q\,
	combout => \stack1|Stack~98_combout\);

-- Location: LCCOMB_X21_Y19_N18
\stack1|Stack~13feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stack1|Stack~13feeder_combout\ = \alu1|out\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \alu1|out\(13),
	combout => \stack1|Stack~13feeder_combout\);

-- Location: FF_X21_Y19_N19
\stack1|Stack~13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \stack1|Stack~13feeder_combout\,
	ena => \stack1|Stack~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack1|Stack~13_q\);

-- Location: LCCOMB_X19_Y19_N24
\stack1|Stack~99\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stack1|Stack~99_combout\ = (\stack1|Stack~98_combout\ & (((\stack1|Stack~13_q\) # (!\stack1|Add0~0_combout\)))) # (!\stack1|Stack~98_combout\ & (\stack1|Stack~31_q\ & (\stack1|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack1|Stack~31_q\,
	datab => \stack1|Stack~98_combout\,
	datac => \stack1|Add0~0_combout\,
	datad => \stack1|Stack~13_q\,
	combout => \stack1|Stack~99_combout\);

-- Location: FF_X19_Y19_N25
\stack1|out_stack_data[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \stack1|Stack~99_combout\,
	sclr => \rst~input_o\,
	ena => \stack1|out_stack_data[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack1|out_stack_data\(13));

-- Location: LCCOMB_X17_Y19_N12
\mux1|out_data~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux1|out_data~15_combout\ = (\mux1|MD\(13) & (!\rst~input_o\ & \cb|md_read~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|MD\(13),
	datac => \rst~input_o\,
	datad => \cb|md_read~q\,
	combout => \mux1|out_data~15_combout\);

-- Location: FF_X17_Y19_N13
\mux1|out_data[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux1|out_data~15_combout\,
	ena => \mux1|out_data[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux1|out_data\(13));

-- Location: LCCOMB_X19_Y19_N28
\output2[13]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \output2[13]~13_combout\ = (\cb|stack_read~q\ & (\stack1|out_stack_data\(13))) # (!\cb|stack_read~q\ & ((\mux1|out_data\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stack1|out_stack_data\(13),
	datac => \mux1|out_data\(13),
	datad => \cb|stack_read~q\,
	combout => \output2[13]~13_combout\);

-- Location: LCCOMB_X20_Y17_N10
\alu1|Add0~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alu1|Add0~66_combout\ = ((\output2[14]~14_combout\ $ (\mux|out_data\(14) $ (!\alu1|Add0~63\)))) # (GND)
-- \alu1|Add0~67\ = CARRY((\output2[14]~14_combout\ & ((\mux|out_data\(14)) # (!\alu1|Add0~63\))) # (!\output2[14]~14_combout\ & (\mux|out_data\(14) & !\alu1|Add0~63\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \output2[14]~14_combout\,
	datab => \mux|out_data\(14),
	datad => VCC,
	cin => \alu1|Add0~63\,
	combout => \alu1|Add0~66_combout\,
	cout => \alu1|Add0~67\);

-- Location: LCCOMB_X21_Y16_N18
\alu1|Add0~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alu1|Add0~69_combout\ = (\alu1|Add0~68_combout\) # ((\alu1|Add0~10_combout\ & \alu1|Add0~66_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu1|Add0~68_combout\,
	datac => \alu1|Add0~10_combout\,
	datad => \alu1|Add0~66_combout\,
	combout => \alu1|Add0~69_combout\);

-- Location: LCCOMB_X21_Y16_N22
\alu1|out[14]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alu1|out\(14) = (GLOBAL(\alu1|out[17]~0clkctrl_outclk\) & ((\alu1|Add0~69_combout\))) # (!GLOBAL(\alu1|out[17]~0clkctrl_outclk\) & (\alu1|out\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|out\(14),
	datac => \alu1|out[17]~0clkctrl_outclk\,
	datad => \alu1|Add0~69_combout\,
	combout => \alu1|out\(14));

-- Location: LCCOMB_X21_Y16_N14
\mux|IR~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux|IR~16_combout\ = (\alu1|out\(14) & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu1|out\(14),
	datad => \rst~input_o\,
	combout => \mux|IR~16_combout\);

-- Location: LCCOMB_X22_Y12_N6
\mux|IR[14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux|IR[14]~feeder_combout\ = \mux|IR~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux|IR~16_combout\,
	combout => \mux|IR[14]~feeder_combout\);

-- Location: FF_X22_Y12_N7
\mux|IR[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux|IR[14]~feeder_combout\,
	ena => \mux|IR[16]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|IR\(14));

-- Location: FF_X21_Y16_N15
\mux|AC[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux|IR~16_combout\,
	ena => \mux|AC[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|AC\(14));

-- Location: LCCOMB_X20_Y19_N10
\mux|out_data~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux|out_data~15_combout\ = (\cb|ac_read~q\ & ((\mux|AC\(14)))) # (!\cb|ac_read~q\ & (\mux|IR\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux|IR\(14),
	datac => \cb|ac_read~q\,
	datad => \mux|AC\(14),
	combout => \mux|out_data~15_combout\);

-- Location: FF_X20_Y19_N11
\mux|out_data[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux|out_data~15_combout\,
	sclr => \rst~input_o\,
	ena => \mux|out_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|out_data\(14));

-- Location: LCCOMB_X20_Y17_N12
\alu1|Add0~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alu1|Add0~70_combout\ = (\mux|out_data\(15) & ((\output2[15]~15_combout\ & (\alu1|Add0~67\ & VCC)) # (!\output2[15]~15_combout\ & (!\alu1|Add0~67\)))) # (!\mux|out_data\(15) & ((\output2[15]~15_combout\ & (!\alu1|Add0~67\)) # (!\output2[15]~15_combout\ & 
-- ((\alu1|Add0~67\) # (GND)))))
-- \alu1|Add0~71\ = CARRY((\mux|out_data\(15) & (!\output2[15]~15_combout\ & !\alu1|Add0~67\)) # (!\mux|out_data\(15) & ((!\alu1|Add0~67\) # (!\output2[15]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out_data\(15),
	datab => \output2[15]~15_combout\,
	datad => VCC,
	cin => \alu1|Add0~67\,
	combout => \alu1|Add0~70_combout\,
	cout => \alu1|Add0~71\);

-- Location: LCCOMB_X20_Y17_N18
\alu1|Add0~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alu1|Add0~73_combout\ = (\alu1|Add0~72_combout\) # ((\alu1|Add0~10_combout\ & \alu1|Add0~70_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|Add0~10_combout\,
	datac => \alu1|Add0~72_combout\,
	datad => \alu1|Add0~70_combout\,
	combout => \alu1|Add0~73_combout\);

-- Location: LCCOMB_X20_Y17_N26
\alu1|out[15]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alu1|out\(15) = (GLOBAL(\alu1|out[17]~0clkctrl_outclk\) & (\alu1|Add0~73_combout\)) # (!GLOBAL(\alu1|out[17]~0clkctrl_outclk\) & ((\alu1|out\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu1|Add0~73_combout\,
	datac => \alu1|out\(15),
	datad => \alu1|out[17]~0clkctrl_outclk\,
	combout => \alu1|out\(15));

-- Location: LCCOMB_X23_Y19_N18
\stack1|Stack~69feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stack1|Stack~69feeder_combout\ = \alu1|out\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \alu1|out\(15),
	combout => \stack1|Stack~69feeder_combout\);

-- Location: FF_X23_Y19_N19
\stack1|Stack~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \stack1|Stack~69feeder_combout\,
	ena => \stack1|Stack~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack1|Stack~69_q\);

-- Location: FF_X22_Y19_N5
\stack1|Stack~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \alu1|out\(15),
	sload => VCC,
	ena => \stack1|Stack~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack1|Stack~51_q\);

-- Location: LCCOMB_X22_Y19_N4
\stack1|Stack~102\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stack1|Stack~102_combout\ = (\stack1|SP\(1) & (((\stack1|Stack~51_q\ & \stack1|SP\(0))))) # (!\stack1|SP\(1) & ((\stack1|Stack~69_q\) # ((\stack1|SP\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack1|SP\(1),
	datab => \stack1|Stack~69_q\,
	datac => \stack1|Stack~51_q\,
	datad => \stack1|SP\(0),
	combout => \stack1|Stack~102_combout\);

-- Location: LCCOMB_X21_Y19_N8
\stack1|Stack~15feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stack1|Stack~15feeder_combout\ = \alu1|out\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu1|out\(15),
	combout => \stack1|Stack~15feeder_combout\);

-- Location: FF_X21_Y19_N9
\stack1|Stack~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \stack1|Stack~15feeder_combout\,
	ena => \stack1|Stack~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack1|Stack~15_q\);

-- Location: LCCOMB_X16_Y19_N8
\stack1|Stack~103\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stack1|Stack~103_combout\ = (\stack1|Stack~102_combout\ & (((\stack1|Stack~15_q\) # (!\stack1|Add0~0_combout\)))) # (!\stack1|Stack~102_combout\ & (\stack1|Stack~33_q\ & ((\stack1|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack1|Stack~33_q\,
	datab => \stack1|Stack~102_combout\,
	datac => \stack1|Stack~15_q\,
	datad => \stack1|Add0~0_combout\,
	combout => \stack1|Stack~103_combout\);

-- Location: FF_X16_Y19_N9
\stack1|out_stack_data[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \stack1|Stack~103_combout\,
	sclr => \rst~input_o\,
	ena => \stack1|out_stack_data[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack1|out_stack_data\(15));

-- Location: FF_X20_Y17_N27
\mem|Mem[12][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \alu1|out\(15),
	ena => \mem|Mem[12][17]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[12][15]~q\);

-- Location: LCCOMB_X22_Y16_N22
\mem|Mem~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem~33_combout\ = (\alu1|out\(15)) # (\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu1|out\(15),
	datad => \rst~input_o\,
	combout => \mem|Mem~33_combout\);

-- Location: FF_X20_Y14_N27
\mem|Mem[7][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mem|Mem~33_combout\,
	sload => VCC,
	ena => \mem|Mem[7][3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[7][15]~q\);

-- Location: FF_X20_Y14_N25
\mem|Mem[4][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mux|IR~17_combout\,
	sload => VCC,
	ena => \mem|Mem[4][8]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[4][15]~q\);

-- Location: LCCOMB_X24_Y15_N18
\mem|Mem[6][15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|Mem[6][15]~feeder_combout\ = \mem|Mem~33_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem|Mem~33_combout\,
	combout => \mem|Mem[6][15]~feeder_combout\);

-- Location: FF_X24_Y15_N19
\mem|Mem[6][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem[6][15]~feeder_combout\,
	ena => \mem|Mem[6][2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[6][15]~q\);

-- Location: LCCOMB_X20_Y14_N24
\mem|out_dat_add~123\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~123_combout\ = (\mar1|MAR_out\(1) & ((\mar1|MAR_out\(0)) # ((\mem|Mem[6][15]~q\)))) # (!\mar1|MAR_out\(1) & (!\mar1|MAR_out\(0) & (\mem|Mem[4][15]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(1),
	datab => \mar1|MAR_out\(0),
	datac => \mem|Mem[4][15]~q\,
	datad => \mem|Mem[6][15]~q\,
	combout => \mem|out_dat_add~123_combout\);

-- Location: LCCOMB_X20_Y14_N26
\mem|out_dat_add~124\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~124_combout\ = (\mar1|MAR_out\(0) & ((\mem|out_dat_add~123_combout\ & ((\mem|Mem[7][15]~q\))) # (!\mem|out_dat_add~123_combout\ & (\mem|Mem[5][15]~q\)))) # (!\mar1|MAR_out\(0) & (((\mem|out_dat_add~123_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mem[5][15]~q\,
	datab => \mar1|MAR_out\(0),
	datac => \mem|Mem[7][15]~q\,
	datad => \mem|out_dat_add~123_combout\,
	combout => \mem|out_dat_add~124_combout\);

-- Location: FF_X22_Y16_N23
\mem|Mem[3][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|Mem~33_combout\,
	ena => \mem|Mem[3][11]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[3][15]~q\);

-- Location: FF_X24_Y16_N9
\mem|Mem[2][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mux|IR~17_combout\,
	sload => VCC,
	ena => \mem|Mem[2][16]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[2][15]~q\);

-- Location: FF_X23_Y15_N17
\mem|Mem[0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mux|IR~17_combout\,
	sload => VCC,
	ena => \mem|Mem[0][4]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|Mem[0][15]~q\);

-- Location: LCCOMB_X23_Y15_N16
\mem|out_dat_add~125\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~125_combout\ = (\mar1|MAR_out\(1) & (((\mar1|MAR_out\(0))))) # (!\mar1|MAR_out\(1) & ((\mar1|MAR_out\(0) & (\mem|Mem[1][15]~q\)) # (!\mar1|MAR_out\(0) & ((\mem|Mem[0][15]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mem[1][15]~q\,
	datab => \mar1|MAR_out\(1),
	datac => \mem|Mem[0][15]~q\,
	datad => \mar1|MAR_out\(0),
	combout => \mem|out_dat_add~125_combout\);

-- Location: LCCOMB_X24_Y16_N8
\mem|out_dat_add~126\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~126_combout\ = (\mar1|MAR_out\(1) & ((\mem|out_dat_add~125_combout\ & (\mem|Mem[3][15]~q\)) # (!\mem|out_dat_add~125_combout\ & ((\mem|Mem[2][15]~q\))))) # (!\mar1|MAR_out\(1) & (((\mem|out_dat_add~125_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(1),
	datab => \mem|Mem[3][15]~q\,
	datac => \mem|Mem[2][15]~q\,
	datad => \mem|out_dat_add~125_combout\,
	combout => \mem|out_dat_add~126_combout\);

-- Location: LCCOMB_X20_Y14_N20
\mem|out_dat_add~127\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~127_combout\ = (\mar1|MAR_out\(2) & ((\mar1|MAR_out\(3)) # ((\mem|out_dat_add~124_combout\)))) # (!\mar1|MAR_out\(2) & (!\mar1|MAR_out\(3) & ((\mem|out_dat_add~126_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar1|MAR_out\(2),
	datab => \mar1|MAR_out\(3),
	datac => \mem|out_dat_add~124_combout\,
	datad => \mem|out_dat_add~126_combout\,
	combout => \mem|out_dat_add~127_combout\);

-- Location: LCCOMB_X19_Y16_N4
\mem|out_dat_add~128\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem|out_dat_add~128_combout\ = (\mar1|MAR_out\(3) & ((\mem|out_dat_add~127_combout\ & ((\mem|Mem[12][15]~q\))) # (!\mem|out_dat_add~127_combout\ & (\mem|out_dat_add~122_combout\)))) # (!\mar1|MAR_out\(3) & (((\mem|out_dat_add~127_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|out_dat_add~122_combout\,
	datab => \mar1|MAR_out\(3),
	datac => \mem|Mem[12][15]~q\,
	datad => \mem|out_dat_add~127_combout\,
	combout => \mem|out_dat_add~128_combout\);

-- Location: FF_X19_Y16_N5
\mem|out_dat_add[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mem|out_dat_add~128_combout\,
	sclr => \rst~input_o\,
	ena => \mem|out_dat_add[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|out_dat_add\(15));

-- Location: LCCOMB_X20_Y20_N20
\mux1|MD~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux1|MD~16_combout\ = (\cb|md_write_mem~q\ & ((\mem|out_dat_add\(15)))) # (!\cb|md_write_mem~q\ & (\alu1|out\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb|md_write_mem~q\,
	datac => \alu1|out\(15),
	datad => \mem|out_dat_add\(15),
	combout => \mux1|MD~16_combout\);

-- Location: FF_X20_Y20_N21
\mux1|MD[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux1|MD~16_combout\,
	sclr => \rst~input_o\,
	ena => \mux1|MD[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux1|MD\(15));

-- Location: LCCOMB_X17_Y19_N24
\mux1|out_data~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux1|out_data~17_combout\ = (\mux1|MD\(15) & (!\rst~input_o\ & \cb|md_read~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux1|MD\(15),
	datac => \rst~input_o\,
	datad => \cb|md_read~q\,
	combout => \mux1|out_data~17_combout\);

-- Location: FF_X17_Y19_N25
\mux1|out_data[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux1|out_data~17_combout\,
	ena => \mux1|out_data[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux1|out_data\(15));

-- Location: LCCOMB_X20_Y19_N4
\output2[15]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \output2[15]~15_combout\ = (\cb|stack_read~q\ & (\stack1|out_stack_data\(15))) # (!\cb|stack_read~q\ & ((\mux1|out_data\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cb|stack_read~q\,
	datac => \stack1|out_stack_data\(15),
	datad => \mux1|out_data\(15),
	combout => \output2[15]~15_combout\);

-- Location: LCCOMB_X20_Y17_N14
\alu1|Add0~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alu1|Add0~75_combout\ = ((\output2[16]~16_combout\ $ (\mux|out_data\(16) $ (!\alu1|Add0~71\)))) # (GND)
-- \alu1|Add0~76\ = CARRY((\output2[16]~16_combout\ & ((\mux|out_data\(16)) # (!\alu1|Add0~71\))) # (!\output2[16]~16_combout\ & (\mux|out_data\(16) & !\alu1|Add0~71\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \output2[16]~16_combout\,
	datab => \mux|out_data\(16),
	datad => VCC,
	cin => \alu1|Add0~71\,
	combout => \alu1|Add0~75_combout\,
	cout => \alu1|Add0~76\);

-- Location: LCCOMB_X20_Y21_N20
\cb|aluop[0]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb|aluop[0]~12_combout\ = (\mux|opcode\(2)) # ((\mux|opcode\(0)) # ((\mux|opcode\(1) & \cb|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|opcode\(1),
	datab => \mux|opcode\(2),
	datac => \cb|count\(1),
	datad => \mux|opcode\(0),
	combout => \cb|aluop[0]~12_combout\);

-- Location: LCCOMB_X20_Y21_N30
\cb|aluop[0]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb|aluop[0]~10_combout\ = (\mux|opcode\(0) & (!\mux|opcode\(2) & (\mux|opcode\(1) $ (\cb|aluop[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|opcode\(0),
	datab => \mux|opcode\(2),
	datac => \mux|opcode\(1),
	datad => \cb|aluop[2]~4_combout\,
	combout => \cb|aluop[0]~10_combout\);

-- Location: LCCOMB_X20_Y21_N12
\cb|aluop[0]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb|aluop[0]~11_combout\ = (\cb|Equal1~0_combout\ & (\cb|count\(0) $ ((\cb|count\(1))))) # (!\cb|Equal1~0_combout\ & (\cb|aluop\(0) & (\cb|count\(0) $ (\cb|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb|Equal1~0_combout\,
	datab => \cb|count\(0),
	datac => \cb|count\(1),
	datad => \cb|aluop\(0),
	combout => \cb|aluop[0]~11_combout\);

-- Location: LCCOMB_X20_Y21_N28
\cb|aluop[0]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb|aluop[0]~13_combout\ = (\cb|aluop[0]~10_combout\) # ((\cb|aluop[0]~11_combout\) # ((\cb|aluop\(0) & \cb|aluop[0]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb|aluop\(0),
	datab => \cb|aluop[0]~12_combout\,
	datac => \cb|aluop[0]~10_combout\,
	datad => \cb|aluop[0]~11_combout\,
	combout => \cb|aluop[0]~13_combout\);

-- Location: LCCOMB_X20_Y21_N6
\cb|aluop[0]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb|aluop[0]~14_combout\ = (\cb|count\(3) & (((\cb|aluop[0]~13_combout\)))) # (!\cb|count\(3) & (((\cb|aluop\(0))) # (!\cb|aluop[2]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb|count\(3),
	datab => \cb|aluop[2]~19_combout\,
	datac => \cb|aluop\(0),
	datad => \cb|aluop[0]~13_combout\,
	combout => \cb|aluop[0]~14_combout\);

-- Location: FF_X20_Y21_N7
\cb|aluop[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \cb|aluop[0]~14_combout\,
	ena => \cb|aluop[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cb|aluop\(0));

-- Location: LCCOMB_X20_Y21_N4
\alu1|Add0~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alu1|Add0~74_combout\ = (!\cb|aluop\(2) & (\mux|out_data\(16) & (\cb|aluop\(1) $ (\cb|aluop\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb|aluop\(2),
	datab => \cb|aluop\(1),
	datac => \mux|out_data\(16),
	datad => \cb|aluop\(0),
	combout => \alu1|Add0~74_combout\);

-- Location: LCCOMB_X20_Y17_N28
\alu1|Add0~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alu1|Add0~77_combout\ = (\alu1|Add0~82_combout\) # ((\alu1|Add0~74_combout\) # ((\alu1|Add0~10_combout\ & \alu1|Add0~75_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|Add0~10_combout\,
	datab => \alu1|Add0~82_combout\,
	datac => \alu1|Add0~75_combout\,
	datad => \alu1|Add0~74_combout\,
	combout => \alu1|Add0~77_combout\);

-- Location: LCCOMB_X20_Y17_N20
\alu1|out[16]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alu1|out\(16) = (GLOBAL(\alu1|out[17]~0clkctrl_outclk\) & ((\alu1|Add0~77_combout\))) # (!GLOBAL(\alu1|out[17]~0clkctrl_outclk\) & (\alu1|out\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu1|out\(16),
	datac => \alu1|Add0~77_combout\,
	datad => \alu1|out[17]~0clkctrl_outclk\,
	combout => \alu1|out\(16));

-- Location: LCCOMB_X20_Y15_N0
\mux|IR~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux|IR~18_combout\ = (\alu1|out\(16) & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu1|out\(16),
	datad => \rst~input_o\,
	combout => \mux|IR~18_combout\);

-- Location: LCCOMB_X20_Y15_N10
\mux|IR[16]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux|IR[16]~feeder_combout\ = \mux|IR~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux|IR~18_combout\,
	combout => \mux|IR[16]~feeder_combout\);

-- Location: FF_X20_Y15_N11
\mux|IR[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux|IR[16]~feeder_combout\,
	ena => \mux|IR[16]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|IR\(16));

-- Location: FF_X22_Y21_N19
\mux|opcode[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mux|IR\(16),
	sload => VCC,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|opcode\(1));

-- Location: LCCOMB_X21_Y21_N4
\cb|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb|Equal1~1_combout\ = (!\mux|opcode\(2) & (\mux|opcode\(1) & \mux|opcode\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|opcode\(2),
	datab => \mux|opcode\(1),
	datac => \mux|opcode\(0),
	combout => \cb|Equal1~1_combout\);

-- Location: LCCOMB_X21_Y21_N0
\cb|Mux0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb|Mux0~3_combout\ = (\cb|count\(2) & ((\cb|aluop~3_combout\))) # (!\cb|count\(2) & (\cb|Mux0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb|Mux0~2_combout\,
	datab => \cb|count\(2),
	datac => \cb|aluop~3_combout\,
	combout => \cb|Mux0~3_combout\);

-- Location: LCCOMB_X21_Y21_N24
\cb|Mux0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb|Mux0~4_combout\ = (\cb|Mux0~1_combout\ & (\cb|Equal1~1_combout\)) # (!\cb|Mux0~1_combout\ & ((\cb|Mux0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb|Mux0~1_combout\,
	datab => \cb|Equal1~1_combout\,
	datad => \cb|Mux0~3_combout\,
	combout => \cb|Mux0~4_combout\);

-- Location: LCCOMB_X21_Y21_N22
\cb|Mux0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb|Mux0~5_combout\ = (\cb|Mux0~4_combout\ & (!\cb|count\(2) & (\cb|Mux0~1_combout\ $ (!\cb|count\(0))))) # (!\cb|Mux0~4_combout\ & ((\cb|Mux0~1_combout\ & (\cb|count\(2) & !\cb|count\(0))) # (!\cb|Mux0~1_combout\ & ((\cb|count\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb|Mux0~1_combout\,
	datab => \cb|count\(2),
	datac => \cb|count\(0),
	datad => \cb|Mux0~4_combout\,
	combout => \cb|Mux0~5_combout\);

-- Location: LCCOMB_X21_Y21_N28
\cb|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb|Mux0~0_combout\ = (\cb|count\(1) & (!\cb|ir_read~q\ & (\cb|count\(3) $ (\cb|count\(2))))) # (!\cb|count\(1) & (\cb|count\(3) & ((\cb|ir_read~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb|count\(3),
	datab => \cb|count\(2),
	datac => \cb|count\(1),
	datad => \cb|ir_read~q\,
	combout => \cb|Mux0~0_combout\);

-- Location: LCCOMB_X21_Y21_N12
\cb|Mux0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb|Mux0~6_combout\ = (\cb|Mux0~0_combout\ & ((\cb|Mux0~5_combout\))) # (!\cb|Mux0~0_combout\ & (\cb|Mux0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb|Mux0~1_combout\,
	datac => \cb|Mux0~5_combout\,
	datad => \cb|Mux0~0_combout\,
	combout => \cb|Mux0~6_combout\);

-- Location: FF_X21_Y21_N13
\cb|ir_read\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \cb|Mux0~6_combout\,
	sclr => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cb|ir_read~q\);

-- Location: LCCOMB_X21_Y16_N10
\mux|IR[16]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux|IR[16]~1_combout\ = ((\cb|ir_read~q\) # ((\cb|ac_write~q\) # (\cb|ac_read~q\))) # (!\cb|ir_write~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb|ir_write~q\,
	datab => \cb|ir_read~q\,
	datac => \cb|ac_write~q\,
	datad => \cb|ac_read~q\,
	combout => \mux|IR[16]~1_combout\);

-- Location: LCCOMB_X21_Y16_N20
\mux|IR[16]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux|IR[16]~2_combout\ = (\rst~input_o\) # (!\mux|IR[16]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datad => \mux|IR[16]~1_combout\,
	combout => \mux|IR[16]~2_combout\);

-- Location: FF_X20_Y15_N15
\mux|IR[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux|IR[15]~feeder_combout\,
	ena => \mux|IR[16]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|IR\(15));

-- Location: FF_X22_Y21_N29
\mux|opcode[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mux|IR\(15),
	sload => VCC,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|opcode\(0));

-- Location: LCCOMB_X22_Y21_N10
\cb|Mux6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb|Mux6~1_combout\ = ((\cb|Mux6~0_combout\) # ((\mux|opcode\(0)) # (\mux|opcode\(2)))) # (!\cb|count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb|count\(3),
	datab => \cb|Mux6~0_combout\,
	datac => \mux|opcode\(0),
	datad => \mux|opcode\(2),
	combout => \cb|Mux6~1_combout\);

-- Location: LCCOMB_X23_Y21_N0
\cb|Mux6~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb|Mux6~3_combout\ = (\cb|Mux6~2_combout\ & ((\cb|md_write_mem~0_combout\) # ((\cb|ac_read~q\ & \cb|Mux6~1_combout\)))) # (!\cb|Mux6~2_combout\ & (((\cb|ac_read~q\ & \cb|Mux6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb|Mux6~2_combout\,
	datab => \cb|md_write_mem~0_combout\,
	datac => \cb|ac_read~q\,
	datad => \cb|Mux6~1_combout\,
	combout => \cb|Mux6~3_combout\);

-- Location: FF_X23_Y21_N1
\cb|ac_read\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \cb|Mux6~3_combout\,
	sclr => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cb|ac_read~q\);

-- Location: LCCOMB_X20_Y15_N4
\mux|AC[17]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux|AC[17]~feeder_combout\ = \mux|IR~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux|IR~19_combout\,
	combout => \mux|AC[17]~feeder_combout\);

-- Location: FF_X20_Y15_N5
\mux|AC[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux|AC[17]~feeder_combout\,
	ena => \mux|AC[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|AC\(17));

-- Location: LCCOMB_X20_Y19_N22
\mux|out_data~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux|out_data~18_combout\ = (\cb|ac_read~q\ & ((\mux|AC\(17)))) # (!\cb|ac_read~q\ & (\mux|IR\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|IR\(17),
	datac => \cb|ac_read~q\,
	datad => \mux|AC\(17),
	combout => \mux|out_data~18_combout\);

-- Location: FF_X20_Y19_N23
\mux|out_data[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux|out_data~18_combout\,
	sclr => \rst~input_o\,
	ena => \mux|out_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|out_data\(17));

-- Location: LCCOMB_X20_Y21_N26
\alu1|Add0~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alu1|Add0~78_combout\ = (\mux|out_data\(17) & (!\cb|aluop\(2) & (\cb|aluop\(0) $ (\cb|aluop\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb|aluop\(0),
	datab => \mux|out_data\(17),
	datac => \cb|aluop\(1),
	datad => \cb|aluop\(2),
	combout => \alu1|Add0~78_combout\);

-- Location: LCCOMB_X17_Y19_N20
\mux1|out_data~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux1|out_data~19_combout\ = (\mux1|MD\(17) & (!\rst~input_o\ & \cb|md_read~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|MD\(17),
	datac => \rst~input_o\,
	datad => \cb|md_read~q\,
	combout => \mux1|out_data~19_combout\);

-- Location: FF_X17_Y19_N21
\mux1|out_data[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux1|out_data~19_combout\,
	ena => \mux1|out_data[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux1|out_data\(17));

-- Location: LCCOMB_X19_Y19_N0
\output2[17]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \output2[17]~17_combout\ = (\cb|stack_read~q\ & (\stack1|out_stack_data\(17))) # (!\cb|stack_read~q\ & ((\mux1|out_data\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack1|out_stack_data\(17),
	datac => \mux1|out_data\(17),
	datad => \cb|stack_read~q\,
	combout => \output2[17]~17_combout\);

-- Location: LCCOMB_X20_Y21_N14
\alu1|Add0~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alu1|Add0~83_combout\ = (\output2[17]~17_combout\ & ((\cb|aluop\(2)) # ((\cb|aluop\(1) & \cb|aluop\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb|aluop\(2),
	datab => \output2[17]~17_combout\,
	datac => \cb|aluop\(1),
	datad => \cb|aluop\(0),
	combout => \alu1|Add0~83_combout\);

-- Location: LCCOMB_X20_Y17_N16
\alu1|Add0~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alu1|Add0~79_combout\ = \mux|out_data\(17) $ (\alu1|Add0~76\ $ (\output2[17]~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mux|out_data\(17),
	datad => \output2[17]~17_combout\,
	cin => \alu1|Add0~76\,
	combout => \alu1|Add0~79_combout\);

-- Location: LCCOMB_X20_Y17_N22
\alu1|Add0~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alu1|Add0~81_combout\ = (\alu1|Add0~78_combout\) # ((\alu1|Add0~83_combout\) # ((\alu1|Add0~10_combout\ & \alu1|Add0~79_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|Add0~10_combout\,
	datab => \alu1|Add0~78_combout\,
	datac => \alu1|Add0~83_combout\,
	datad => \alu1|Add0~79_combout\,
	combout => \alu1|Add0~81_combout\);

-- Location: LCCOMB_X20_Y17_N30
\alu1|out[17]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alu1|out\(17) = (GLOBAL(\alu1|out[17]~0clkctrl_outclk\) & ((\alu1|Add0~81_combout\))) # (!GLOBAL(\alu1|out[17]~0clkctrl_outclk\) & (\alu1|out\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|out\(17),
	datac => \alu1|Add0~81_combout\,
	datad => \alu1|out[17]~0clkctrl_outclk\,
	combout => \alu1|out\(17));

-- Location: LCCOMB_X20_Y17_N24
\mux|IR~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux|IR~19_combout\ = (\alu1|out\(17) & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu1|out\(17),
	datad => \rst~input_o\,
	combout => \mux|IR~19_combout\);

-- Location: LCCOMB_X20_Y15_N22
\mux|IR[17]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux|IR[17]~feeder_combout\ = \mux|IR~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux|IR~19_combout\,
	combout => \mux|IR[17]~feeder_combout\);

-- Location: FF_X20_Y15_N23
\mux|IR[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \mux|IR[17]~feeder_combout\,
	ena => \mux|IR[16]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|IR\(17));

-- Location: FF_X22_Y21_N25
\mux|opcode[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mux|IR\(17),
	sload => VCC,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|opcode\(2));

-- Location: LCCOMB_X21_Y20_N28
\cb|Mux3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb|Mux3~1_combout\ = (!\cb|count\(2) & (\cb|count\(1) & ((!\mux|opcode\(2)) # (!\cb|count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb|count\(2),
	datab => \cb|count\(1),
	datac => \cb|count\(3),
	datad => \mux|opcode\(2),
	combout => \cb|Mux3~1_combout\);

-- Location: LCCOMB_X22_Y20_N24
\cb|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb|Mux3~0_combout\ = ((\cb|count\(1) & ((\cb|count\(3)) # (!\cb|Mux2~3_combout\))) # (!\cb|count\(1) & ((!\cb|count\(3))))) # (!\cb|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb|Mux2~3_combout\,
	datab => \cb|count\(1),
	datac => \cb|count\(0),
	datad => \cb|count\(3),
	combout => \cb|Mux3~0_combout\);

-- Location: LCCOMB_X21_Y20_N26
\cb|Mux3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb|Mux3~2_combout\ = (\cb|count\(0) & ((\cb|Mux3~1_combout\) # ((\cb|count\(2) & \cb|Mux3~0_combout\)))) # (!\cb|count\(0) & (((\cb|count\(2) & \cb|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb|count\(0),
	datab => \cb|Mux3~1_combout\,
	datac => \cb|count\(2),
	datad => \cb|Mux3~0_combout\,
	combout => \cb|Mux3~2_combout\);

-- Location: FF_X21_Y20_N27
\cb|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \cb|Mux3~2_combout\,
	sclr => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cb|count\(2));

-- Location: LCCOMB_X22_Y20_N6
\cb|Mux5~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb|Mux5~8_combout\ = (!\cb|Mux2~3_combout\ & (\cb|count\(3) & (!\cb|count\(2) & \cb|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb|Mux2~3_combout\,
	datab => \cb|count\(3),
	datac => \cb|count\(2),
	datad => \cb|count\(0),
	combout => \cb|Mux5~8_combout\);

-- Location: LCCOMB_X22_Y21_N22
\cb|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb|Mux4~0_combout\ = (\cb|count\(3) & ((\cb|count\(2)) # ((\mux|opcode\(2) & !\cb|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb|count\(3),
	datab => \mux|opcode\(2),
	datac => \cb|Equal1~0_combout\,
	datad => \cb|count\(2),
	combout => \cb|Mux4~0_combout\);

-- Location: LCCOMB_X22_Y21_N8
\cb|Mux5~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb|Mux5~5_combout\ = ((!\cb|count\(1) & (!\mux|opcode\(2) & \cb|count\(2)))) # (!\cb|Mux4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb|count\(1),
	datab => \mux|opcode\(2),
	datac => \cb|Mux4~0_combout\,
	datad => \cb|count\(2),
	combout => \cb|Mux5~5_combout\);

-- Location: LCCOMB_X23_Y20_N12
\cb|Mux5~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb|Mux5~6_combout\ = (\cb|Mux5~7_combout\) # ((\cb|Mux5~8_combout\) # ((!\cb|count\(0) & \cb|Mux5~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb|Mux5~7_combout\,
	datab => \cb|Mux5~8_combout\,
	datac => \cb|count\(0),
	datad => \cb|Mux5~5_combout\,
	combout => \cb|Mux5~6_combout\);

-- Location: FF_X23_Y20_N13
\cb|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \cb|Mux5~6_combout\,
	sclr => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cb|count\(0));

-- Location: LCCOMB_X22_Y20_N8
\cb|Mux2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb|Mux2~2_combout\ = (\cb|count\(2) & (\cb|count\(0) & \cb|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb|count\(2),
	datac => \cb|count\(0),
	datad => \cb|count\(1),
	combout => \cb|Mux2~2_combout\);

-- Location: LCCOMB_X22_Y20_N10
\cb|Mux2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb|Mux2~5_combout\ = ((\cb|count\(1) & (!\cb|Equal1~0_combout\)) # (!\cb|count\(1) & ((!\cb|count\(2))))) # (!\cb|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb|Equal1~0_combout\,
	datab => \cb|count\(0),
	datac => \cb|count\(2),
	datad => \cb|count\(1),
	combout => \cb|Mux2~5_combout\);

-- Location: LCCOMB_X22_Y20_N0
\cb|Mux2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb|Mux2~4_combout\ = (\cb|Mux2~3_combout\ & ((\cb|Mux2~2_combout\) # ((\cb|count\(3) & \cb|Mux2~5_combout\)))) # (!\cb|Mux2~3_combout\ & (((\cb|count\(3) & \cb|Mux2~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb|Mux2~3_combout\,
	datab => \cb|Mux2~2_combout\,
	datac => \cb|count\(3),
	datad => \cb|Mux2~5_combout\,
	combout => \cb|Mux2~4_combout\);

-- Location: FF_X22_Y20_N1
\cb|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \cb|Mux2~4_combout\,
	sclr => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cb|count\(3));

-- Location: LCCOMB_X22_Y20_N14
\cb|Mux4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb|Mux4~1_combout\ = ((\cb|Mux2~3_combout\ & (\cb|count\(3) & \cb|count\(2))) # (!\cb|Mux2~3_combout\ & ((\cb|count\(3)) # (\cb|count\(2))))) # (!\cb|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb|Mux2~3_combout\,
	datab => \cb|count\(3),
	datac => \cb|count\(2),
	datad => \cb|count\(0),
	combout => \cb|Mux4~1_combout\);

-- Location: LCCOMB_X21_Y20_N24
\cb|Mux4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb|Mux4~2_combout\ = (\cb|count\(1) & (((\cb|Mux4~1_combout\)))) # (!\cb|count\(1) & (\cb|count\(0) & ((!\cb|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb|count\(0),
	datab => \cb|Mux4~1_combout\,
	datac => \cb|count\(1),
	datad => \cb|Mux4~0_combout\,
	combout => \cb|Mux4~2_combout\);

-- Location: FF_X21_Y20_N25
\cb|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \cb|Mux4~2_combout\,
	sclr => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cb|count\(1));

-- Location: LCCOMB_X21_Y20_N4
\cb|Mux12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb|Mux12~0_combout\ = \cb|count\(1) $ (\cb|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cb|count\(1),
	datad => \cb|count\(0),
	combout => \cb|Mux12~0_combout\);

-- Location: LCCOMB_X22_Y21_N4
\cb|aluop[1]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb|aluop[1]~16_combout\ = (\mux|opcode\(0) & ((\cb|count\(1)) # (!\cb|aluop\(1)))) # (!\mux|opcode\(0) & (!\cb|aluop\(1) & \cb|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux|opcode\(0),
	datac => \cb|aluop\(1),
	datad => \cb|count\(1),
	combout => \cb|aluop[1]~16_combout\);

-- Location: LCCOMB_X22_Y21_N6
\cb|aluop[1]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb|aluop[1]~17_combout\ = (\mux|opcode\(2) & (\cb|aluop\(1))) # (!\mux|opcode\(2) & ((\cb|aluop[1]~16_combout\ & (\cb|aluop\(1) & !\mux|opcode\(1))) # (!\cb|aluop[1]~16_combout\ & ((\mux|opcode\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb|aluop\(1),
	datab => \mux|opcode\(2),
	datac => \cb|aluop[1]~16_combout\,
	datad => \mux|opcode\(1),
	combout => \cb|aluop[1]~17_combout\);

-- Location: LCCOMB_X21_Y22_N30
\cb|aluop[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb|aluop[1]~0_combout\ = (\cb|Mux12~0_combout\ & (\cb|aluop~15_combout\)) # (!\cb|Mux12~0_combout\ & ((\cb|aluop[1]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb|aluop~15_combout\,
	datab => \cb|Mux12~0_combout\,
	datad => \cb|aluop[1]~17_combout\,
	combout => \cb|aluop[1]~0_combout\);

-- Location: LCCOMB_X21_Y20_N8
\cb|Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb|Selector4~0_combout\ = (\cb|count\(2) & \cb|count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cb|count\(2),
	datad => \cb|count\(1),
	combout => \cb|Selector4~0_combout\);

-- Location: LCCOMB_X20_Y21_N16
\cb|aluop[1]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb|aluop[1]~18_combout\ = (((\cb|aluop\(1) & \cb|aluop~3_combout\)) # (!\cb|Selector4~0_combout\)) # (!\cb|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb|aluop\(1),
	datab => \cb|count\(0),
	datac => \cb|aluop~3_combout\,
	datad => \cb|Selector4~0_combout\,
	combout => \cb|aluop[1]~18_combout\);

-- Location: FF_X21_Y22_N31
\cb|aluop[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \cb|aluop[1]~0_combout\,
	asdata => \cb|aluop[1]~18_combout\,
	sload => \cb|ALT_INV_count\(3),
	ena => \cb|aluop[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cb|aluop\(1));

-- Location: LCCOMB_X20_Y21_N22
\alu1|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alu1|Mux1~0_combout\ = (\cb|aluop\(2)) # ((\cb|aluop\(0) & \cb|aluop\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb|aluop\(0),
	datac => \cb|aluop\(1),
	datad => \cb|aluop\(2),
	combout => \alu1|Mux1~0_combout\);

-- Location: LCCOMB_X21_Y17_N0
\alu1|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alu1|Add0~12_combout\ = (\alu1|Add0~10_combout\ & ((\alu1|Add0~8_combout\) # ((\mux|out_data\(0) & \alu1|Add0~11_combout\)))) # (!\alu1|Add0~10_combout\ & (\mux|out_data\(0) & (\alu1|Add0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|Add0~10_combout\,
	datab => \mux|out_data\(0),
	datac => \alu1|Add0~11_combout\,
	datad => \alu1|Add0~8_combout\,
	combout => \alu1|Add0~12_combout\);

-- Location: LCCOMB_X21_Y17_N18
\alu1|Add0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alu1|Add0~13_combout\ = (\alu1|Add0~12_combout\) # ((\output2[0]~0_combout\ & \alu1|Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \output2[0]~0_combout\,
	datac => \alu1|Mux1~0_combout\,
	datad => \alu1|Add0~12_combout\,
	combout => \alu1|Add0~13_combout\);

-- Location: LCCOMB_X21_Y17_N16
\alu1|out[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alu1|out\(0) = (GLOBAL(\alu1|out[17]~0clkctrl_outclk\) & ((\alu1|Add0~13_combout\))) # (!GLOBAL(\alu1|out[17]~0clkctrl_outclk\) & (\alu1|out\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu1|out\(0),
	datac => \alu1|Add0~13_combout\,
	datad => \alu1|out[17]~0clkctrl_outclk\,
	combout => \alu1|out\(0));

-- Location: LCCOMB_X19_Y17_N20
\aluOut[0]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \aluOut[0]~reg0feeder_combout\ = \alu1|out\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \alu1|out\(0),
	combout => \aluOut[0]~reg0feeder_combout\);

-- Location: FF_X19_Y17_N21
\aluOut[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \aluOut[0]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aluOut[0]~reg0_q\);

-- Location: LCCOMB_X20_Y20_N10
\aluOut[1]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \aluOut[1]~reg0feeder_combout\ = \alu1|out\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu1|out\(1),
	combout => \aluOut[1]~reg0feeder_combout\);

-- Location: FF_X20_Y20_N11
\aluOut[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \aluOut[1]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aluOut[1]~reg0_q\);

-- Location: LCCOMB_X19_Y19_N22
\aluOut[2]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \aluOut[2]~reg0feeder_combout\ = \alu1|out\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu1|out\(2),
	combout => \aluOut[2]~reg0feeder_combout\);

-- Location: FF_X19_Y19_N23
\aluOut[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \aluOut[2]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aluOut[2]~reg0_q\);

-- Location: LCCOMB_X20_Y19_N16
\aluOut[3]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \aluOut[3]~reg0feeder_combout\ = \alu1|out\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \alu1|out\(3),
	combout => \aluOut[3]~reg0feeder_combout\);

-- Location: FF_X20_Y19_N17
\aluOut[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \aluOut[3]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aluOut[3]~reg0_q\);

-- Location: LCCOMB_X19_Y17_N6
\aluOut[4]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \aluOut[4]~reg0feeder_combout\ = \alu1|out\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu1|out\(4),
	combout => \aluOut[4]~reg0feeder_combout\);

-- Location: FF_X19_Y17_N7
\aluOut[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \aluOut[4]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aluOut[4]~reg0_q\);

-- Location: LCCOMB_X20_Y19_N2
\aluOut[5]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \aluOut[5]~reg0feeder_combout\ = \alu1|out\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \alu1|out\(5),
	combout => \aluOut[5]~reg0feeder_combout\);

-- Location: FF_X20_Y19_N3
\aluOut[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \aluOut[5]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aluOut[5]~reg0_q\);

-- Location: LCCOMB_X20_Y19_N28
\aluOut[6]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \aluOut[6]~reg0feeder_combout\ = \alu1|out\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu1|out\(6),
	combout => \aluOut[6]~reg0feeder_combout\);

-- Location: FF_X20_Y19_N29
\aluOut[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \aluOut[6]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aluOut[6]~reg0_q\);

-- Location: LCCOMB_X20_Y19_N6
\aluOut[7]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \aluOut[7]~reg0feeder_combout\ = \alu1|out\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu1|out\(7),
	combout => \aluOut[7]~reg0feeder_combout\);

-- Location: FF_X20_Y19_N7
\aluOut[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \aluOut[7]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aluOut[7]~reg0_q\);

-- Location: LCCOMB_X20_Y19_N24
\aluOut[8]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \aluOut[8]~reg0feeder_combout\ = \alu1|out\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \alu1|out\(8),
	combout => \aluOut[8]~reg0feeder_combout\);

-- Location: FF_X20_Y19_N25
\aluOut[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \aluOut[8]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aluOut[8]~reg0_q\);

-- Location: LCCOMB_X20_Y19_N26
\aluOut[9]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \aluOut[9]~reg0feeder_combout\ = \alu1|out\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu1|out\(9),
	combout => \aluOut[9]~reg0feeder_combout\);

-- Location: FF_X20_Y19_N27
\aluOut[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \aluOut[9]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aluOut[9]~reg0_q\);

-- Location: LCCOMB_X20_Y19_N12
\aluOut[10]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \aluOut[10]~reg0feeder_combout\ = \alu1|out\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \alu1|out\(10),
	combout => \aluOut[10]~reg0feeder_combout\);

-- Location: FF_X20_Y19_N13
\aluOut[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \aluOut[10]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aluOut[10]~reg0_q\);

-- Location: LCCOMB_X20_Y19_N30
\aluOut[11]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \aluOut[11]~reg0feeder_combout\ = \alu1|out\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \alu1|out\(11),
	combout => \aluOut[11]~reg0feeder_combout\);

-- Location: FF_X20_Y19_N31
\aluOut[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \aluOut[11]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aluOut[11]~reg0_q\);

-- Location: LCCOMB_X20_Y19_N0
\aluOut[12]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \aluOut[12]~reg0feeder_combout\ = \alu1|out\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \alu1|out\(12),
	combout => \aluOut[12]~reg0feeder_combout\);

-- Location: FF_X20_Y19_N1
\aluOut[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \aluOut[12]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aluOut[12]~reg0_q\);

-- Location: LCCOMB_X17_Y20_N26
\aluOut[13]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \aluOut[13]~reg0feeder_combout\ = \alu1|out\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \alu1|out\(13),
	combout => \aluOut[13]~reg0feeder_combout\);

-- Location: FF_X17_Y20_N27
\aluOut[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \aluOut[13]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aluOut[13]~reg0_q\);

-- Location: LCCOMB_X20_Y20_N4
\aluOut[14]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \aluOut[14]~reg0feeder_combout\ = \alu1|out\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \alu1|out\(14),
	combout => \aluOut[14]~reg0feeder_combout\);

-- Location: FF_X20_Y20_N5
\aluOut[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \aluOut[14]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aluOut[14]~reg0_q\);

-- Location: LCCOMB_X20_Y20_N6
\aluOut[15]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \aluOut[15]~reg0feeder_combout\ = \alu1|out\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu1|out\(15),
	combout => \aluOut[15]~reg0feeder_combout\);

-- Location: FF_X20_Y20_N7
\aluOut[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \aluOut[15]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aluOut[15]~reg0_q\);

-- Location: LCCOMB_X20_Y20_N16
\aluOut[16]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \aluOut[16]~reg0feeder_combout\ = \alu1|out\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \alu1|out\(16),
	combout => \aluOut[16]~reg0feeder_combout\);

-- Location: FF_X20_Y20_N17
\aluOut[16]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \aluOut[16]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aluOut[16]~reg0_q\);

-- Location: LCCOMB_X20_Y20_N2
\aluOut[17]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \aluOut[17]~reg0feeder_combout\ = \alu1|out\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu1|out\(17),
	combout => \aluOut[17]~reg0feeder_combout\);

-- Location: FF_X20_Y20_N3
\aluOut[17]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \aluOut[17]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aluOut[17]~reg0_q\);

ww_aluOut(0) <= \aluOut[0]~output_o\;

ww_aluOut(1) <= \aluOut[1]~output_o\;

ww_aluOut(2) <= \aluOut[2]~output_o\;

ww_aluOut(3) <= \aluOut[3]~output_o\;

ww_aluOut(4) <= \aluOut[4]~output_o\;

ww_aluOut(5) <= \aluOut[5]~output_o\;

ww_aluOut(6) <= \aluOut[6]~output_o\;

ww_aluOut(7) <= \aluOut[7]~output_o\;

ww_aluOut(8) <= \aluOut[8]~output_o\;

ww_aluOut(9) <= \aluOut[9]~output_o\;

ww_aluOut(10) <= \aluOut[10]~output_o\;

ww_aluOut(11) <= \aluOut[11]~output_o\;

ww_aluOut(12) <= \aluOut[12]~output_o\;

ww_aluOut(13) <= \aluOut[13]~output_o\;

ww_aluOut(14) <= \aluOut[14]~output_o\;

ww_aluOut(15) <= \aluOut[15]~output_o\;

ww_aluOut(16) <= \aluOut[16]~output_o\;

ww_aluOut(17) <= \aluOut[17]~output_o\;
END structure;


