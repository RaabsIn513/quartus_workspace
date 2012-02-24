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

-- DATE "02/14/2012 12:35:00"

-- 
-- Device: Altera EP3C5F256C6 Package FBGA256
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

ENTITY 	Memory IS
    PORT (
	out_data : OUT std_logic_vector(17 DOWNTO 0);
	in_data : IN std_logic_vector(17 DOWNTO 0);
	address : IN std_logic_vector(12 DOWNTO 0);
	clk : IN std_logic;
	rst : IN std_logic;
	read_en : IN std_logic;
	write_en : IN std_logic
	);
END Memory;

-- Design Ports Information
-- out_data[0]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[1]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[2]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[3]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[4]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[5]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[6]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[7]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[8]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[9]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[10]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[11]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[12]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[13]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[14]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[15]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[16]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[17]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[4]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[5]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[6]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[7]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[8]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[9]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[10]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[11]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[12]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[1]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[0]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[3]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[2]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_en	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_en	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[0]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[1]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[2]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[3]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[4]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[5]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[6]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[7]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[8]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[9]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[10]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[11]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[12]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[13]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[14]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[15]	=>  Location: PIN_L10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[16]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[17]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Memory IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_out_data : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_in_data : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_address : std_logic_vector(12 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_read_en : std_logic;
SIGNAL ww_write_en : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mem~198_q\ : std_logic;
SIGNAL \mem~108_q\ : std_logic;
SIGNAL \mem~36_q\ : std_logic;
SIGNAL \mem~216_q\ : std_logic;
SIGNAL \mem~241_combout\ : std_logic;
SIGNAL \mem~109_q\ : std_logic;
SIGNAL \mem~91_q\ : std_logic;
SIGNAL \mem~73_q\ : std_logic;
SIGNAL \mem~243_combout\ : std_logic;
SIGNAL \mem~127_q\ : std_logic;
SIGNAL \mem~244_combout\ : std_logic;
SIGNAL \mem~163_q\ : std_logic;
SIGNAL \mem~200_q\ : std_logic;
SIGNAL \mem~218_q\ : std_logic;
SIGNAL \mem~259_combout\ : std_logic;
SIGNAL \mem~165_q\ : std_logic;
SIGNAL \mem~202_q\ : std_logic;
SIGNAL \mem~113_q\ : std_logic;
SIGNAL \mem~95_q\ : std_logic;
SIGNAL \mem~77_q\ : std_logic;
SIGNAL \mem~279_combout\ : std_logic;
SIGNAL \mem~131_q\ : std_logic;
SIGNAL \mem~280_combout\ : std_logic;
SIGNAL \mem~167_q\ : std_logic;
SIGNAL \mem~23_q\ : std_logic;
SIGNAL \mem~204_q\ : std_logic;
SIGNAL \mem~42_q\ : std_logic;
SIGNAL \mem~133_q\ : std_logic;
SIGNAL \mem~206_q\ : std_logic;
SIGNAL \mem~44_q\ : std_logic;
SIGNAL \mem~117_q\ : std_logic;
SIGNAL \mem~99_q\ : std_logic;
SIGNAL \mem~81_q\ : std_logic;
SIGNAL \mem~315_combout\ : std_logic;
SIGNAL \mem~135_q\ : std_logic;
SIGNAL \mem~316_combout\ : std_logic;
SIGNAL \mem~171_q\ : std_logic;
SIGNAL \mem~208_q\ : std_logic;
SIGNAL \mem~28_q\ : std_logic;
SIGNAL \mem~137_q\ : std_logic;
SIGNAL \mem~173_q\ : std_logic;
SIGNAL \mem~29_q\ : std_logic;
SIGNAL \mem~227_q\ : std_logic;
SIGNAL \mem~340_combout\ : std_logic;
SIGNAL \mem~174_q\ : std_logic;
SIGNAL \mem~210_q\ : std_logic;
SIGNAL \mem~102_q\ : std_logic;
SIGNAL \mem~48_q\ : std_logic;
SIGNAL \mem~228_q\ : std_logic;
SIGNAL \mem~349_combout\ : std_logic;
SIGNAL \mem~139_q\ : std_logic;
SIGNAL \mem~193_q\ : std_logic;
SIGNAL \mem~157_q\ : std_logic;
SIGNAL \mem~353_combout\ : std_logic;
SIGNAL \mem~49_q\ : std_logic;
SIGNAL \mem~13_q\ : std_logic;
SIGNAL \mem~355_combout\ : std_logic;
SIGNAL \mem~212_q\ : std_logic;
SIGNAL \mem~33_q\ : std_logic;
SIGNAL \mem~231_q\ : std_logic;
SIGNAL \mem~376_combout\ : std_logic;
SIGNAL \mem~52_q\ : std_logic;
SIGNAL \mem~35_q\ : std_logic;
SIGNAL \address[4]~input_o\ : std_logic;
SIGNAL \address[5]~input_o\ : std_logic;
SIGNAL \address[6]~input_o\ : std_logic;
SIGNAL \address[7]~input_o\ : std_logic;
SIGNAL \address[8]~input_o\ : std_logic;
SIGNAL \address[9]~input_o\ : std_logic;
SIGNAL \address[10]~input_o\ : std_logic;
SIGNAL \address[11]~input_o\ : std_logic;
SIGNAL \address[12]~input_o\ : std_logic;
SIGNAL \in_data[0]~input_o\ : std_logic;
SIGNAL \in_data[2]~input_o\ : std_logic;
SIGNAL \in_data[4]~input_o\ : std_logic;
SIGNAL \in_data[8]~input_o\ : std_logic;
SIGNAL \in_data[10]~input_o\ : std_logic;
SIGNAL \in_data[12]~input_o\ : std_logic;
SIGNAL \in_data[14]~input_o\ : std_logic;
SIGNAL \mem~202feeder_combout\ : std_logic;
SIGNAL \mem~23feeder_combout\ : std_logic;
SIGNAL \mem~167feeder_combout\ : std_logic;
SIGNAL \mem~44feeder_combout\ : std_logic;
SIGNAL \mem~171feeder_combout\ : std_logic;
SIGNAL \mem~28feeder_combout\ : std_logic;
SIGNAL \mem~173feeder_combout\ : std_logic;
SIGNAL \mem~210feeder_combout\ : std_logic;
SIGNAL \mem~193feeder_combout\ : std_logic;
SIGNAL \mem~33feeder_combout\ : std_logic;
SIGNAL \mem~35feeder_combout\ : std_logic;
SIGNAL \out_data[0]~output_o\ : std_logic;
SIGNAL \out_data[1]~output_o\ : std_logic;
SIGNAL \out_data[2]~output_o\ : std_logic;
SIGNAL \out_data[3]~output_o\ : std_logic;
SIGNAL \out_data[4]~output_o\ : std_logic;
SIGNAL \out_data[5]~output_o\ : std_logic;
SIGNAL \out_data[6]~output_o\ : std_logic;
SIGNAL \out_data[7]~output_o\ : std_logic;
SIGNAL \out_data[8]~output_o\ : std_logic;
SIGNAL \out_data[9]~output_o\ : std_logic;
SIGNAL \out_data[10]~output_o\ : std_logic;
SIGNAL \out_data[11]~output_o\ : std_logic;
SIGNAL \out_data[12]~output_o\ : std_logic;
SIGNAL \out_data[13]~output_o\ : std_logic;
SIGNAL \out_data[14]~output_o\ : std_logic;
SIGNAL \out_data[15]~output_o\ : std_logic;
SIGNAL \out_data[16]~output_o\ : std_logic;
SIGNAL \out_data[17]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \address[3]~input_o\ : std_logic;
SIGNAL \address[0]~input_o\ : std_logic;
SIGNAL \read_en~input_o\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \write_en~input_o\ : std_logic;
SIGNAL \mem~396_combout\ : std_logic;
SIGNAL \address[1]~input_o\ : std_logic;
SIGNAL \mem~403_combout\ : std_logic;
SIGNAL \mem~72_q\ : std_logic;
SIGNAL \mem~236_combout\ : std_logic;
SIGNAL \mem~404_combout\ : std_logic;
SIGNAL \mem~126_q\ : std_logic;
SIGNAL \mem~401_combout\ : std_logic;
SIGNAL \mem~90_q\ : std_logic;
SIGNAL \mem~237_combout\ : std_logic;
SIGNAL \mem~408_combout\ : std_logic;
SIGNAL \mem~54_q\ : std_logic;
SIGNAL \mem~18feeder_combout\ : std_logic;
SIGNAL \mem~406_combout\ : std_logic;
SIGNAL \mem~18_q\ : std_logic;
SIGNAL \mem~407_combout\ : std_logic;
SIGNAL \mem~0_q\ : std_logic;
SIGNAL \mem~238_combout\ : std_logic;
SIGNAL \mem~239_combout\ : std_logic;
SIGNAL \mem~240_combout\ : std_logic;
SIGNAL \mem~397_combout\ : std_logic;
SIGNAL \mem~180_q\ : std_logic;
SIGNAL \mem~399_combout\ : std_logic;
SIGNAL \mem~144_q\ : std_logic;
SIGNAL \mem~398_combout\ : std_logic;
SIGNAL \mem~162_q\ : std_logic;
SIGNAL \mem~234_combout\ : std_logic;
SIGNAL \mem~235_combout\ : std_logic;
SIGNAL \mem~242_combout\ : std_logic;
SIGNAL \out_data[0]~0_combout\ : std_logic;
SIGNAL \out_data[0]~reg0_q\ : std_logic;
SIGNAL \address[2]~input_o\ : std_logic;
SIGNAL \in_data[1]~input_o\ : std_logic;
SIGNAL \mem~410_combout\ : std_logic;
SIGNAL \mem~409_combout\ : std_logic;
SIGNAL \mem~217_q\ : std_logic;
SIGNAL \mem~250_combout\ : std_logic;
SIGNAL \mem~19feeder_combout\ : std_logic;
SIGNAL \mem~19_q\ : std_logic;
SIGNAL \mem~55_q\ : std_logic;
SIGNAL \mem~1_q\ : std_logic;
SIGNAL \mem~37feeder_combout\ : std_logic;
SIGNAL \mem~405_combout\ : std_logic;
SIGNAL \mem~37_q\ : std_logic;
SIGNAL \mem~247_combout\ : std_logic;
SIGNAL \mem~248_combout\ : std_logic;
SIGNAL \mem~400_combout\ : std_logic;
SIGNAL \mem~199_q\ : std_logic;
SIGNAL \mem~145_q\ : std_logic;
SIGNAL \mem~181_q\ : std_logic;
SIGNAL \mem~245_combout\ : std_logic;
SIGNAL \mem~246_combout\ : std_logic;
SIGNAL \mem~249_combout\ : std_logic;
SIGNAL \mem~251_combout\ : std_logic;
SIGNAL \out_data[1]~reg0_q\ : std_logic;
SIGNAL \mem~411_combout\ : std_logic;
SIGNAL \mem~182_q\ : std_logic;
SIGNAL \mem~146_q\ : std_logic;
SIGNAL \mem~164_q\ : std_logic;
SIGNAL \mem~252_combout\ : std_logic;
SIGNAL \mem~253_combout\ : std_logic;
SIGNAL \mem~74_q\ : std_logic;
SIGNAL \mem~402_combout\ : std_logic;
SIGNAL \mem~110_q\ : std_logic;
SIGNAL \mem~254_combout\ : std_logic;
SIGNAL \mem~128_q\ : std_logic;
SIGNAL \mem~92feeder_combout\ : std_logic;
SIGNAL \mem~92_q\ : std_logic;
SIGNAL \mem~255_combout\ : std_logic;
SIGNAL \mem~38_q\ : std_logic;
SIGNAL \mem~56_q\ : std_logic;
SIGNAL \mem~2_q\ : std_logic;
SIGNAL \mem~20feeder_combout\ : std_logic;
SIGNAL \mem~20_q\ : std_logic;
SIGNAL \mem~256_combout\ : std_logic;
SIGNAL \mem~257_combout\ : std_logic;
SIGNAL \mem~258_combout\ : std_logic;
SIGNAL \mem~260_combout\ : std_logic;
SIGNAL \out_data[2]~reg0_q\ : std_logic;
SIGNAL \in_data[3]~input_o\ : std_logic;
SIGNAL \mem~412_combout\ : std_logic;
SIGNAL \mem~129feeder_combout\ : std_logic;
SIGNAL \mem~129_q\ : std_logic;
SIGNAL \mem~111_q\ : std_logic;
SIGNAL \mem~75_q\ : std_logic;
SIGNAL \mem~93_q\ : std_logic;
SIGNAL \mem~261_combout\ : std_logic;
SIGNAL \mem~262_combout\ : std_logic;
SIGNAL \mem~219_q\ : std_logic;
SIGNAL \mem~268_combout\ : std_logic;
SIGNAL \mem~3_q\ : std_logic;
SIGNAL \mem~39_q\ : std_logic;
SIGNAL \mem~265_combout\ : std_logic;
SIGNAL \mem~57_q\ : std_logic;
SIGNAL \mem~21_q\ : std_logic;
SIGNAL \mem~266_combout\ : std_logic;
SIGNAL \mem~201_q\ : std_logic;
SIGNAL \mem~147_q\ : std_logic;
SIGNAL \mem~183feeder_combout\ : std_logic;
SIGNAL \mem~183_q\ : std_logic;
SIGNAL \mem~263_combout\ : std_logic;
SIGNAL \mem~264_combout\ : std_logic;
SIGNAL \mem~267_combout\ : std_logic;
SIGNAL \mem~269_combout\ : std_logic;
SIGNAL \out_data[3]~reg0_q\ : std_logic;
SIGNAL \mem~413_combout\ : std_logic;
SIGNAL \mem~220_q\ : std_logic;
SIGNAL \mem~277_combout\ : std_logic;
SIGNAL \mem~76_q\ : std_logic;
SIGNAL \mem~112feeder_combout\ : std_logic;
SIGNAL \mem~112_q\ : std_logic;
SIGNAL \mem~272_combout\ : std_logic;
SIGNAL \mem~130_q\ : std_logic;
SIGNAL \mem~94feeder_combout\ : std_logic;
SIGNAL \mem~94_q\ : std_logic;
SIGNAL \mem~273_combout\ : std_logic;
SIGNAL \mem~40feeder_combout\ : std_logic;
SIGNAL \mem~40_q\ : std_logic;
SIGNAL \mem~58_q\ : std_logic;
SIGNAL \mem~4_q\ : std_logic;
SIGNAL \mem~22feeder_combout\ : std_logic;
SIGNAL \mem~22_q\ : std_logic;
SIGNAL \mem~274_combout\ : std_logic;
SIGNAL \mem~275_combout\ : std_logic;
SIGNAL \mem~276_combout\ : std_logic;
SIGNAL \mem~184_q\ : std_logic;
SIGNAL \mem~148_q\ : std_logic;
SIGNAL \mem~166_q\ : std_logic;
SIGNAL \mem~270_combout\ : std_logic;
SIGNAL \mem~271_combout\ : std_logic;
SIGNAL \mem~278_combout\ : std_logic;
SIGNAL \out_data[4]~reg0_q\ : std_logic;
SIGNAL \in_data[5]~input_o\ : std_logic;
SIGNAL \mem~414_combout\ : std_logic;
SIGNAL \mem~221_q\ : std_logic;
SIGNAL \mem~286_combout\ : std_logic;
SIGNAL \mem~59_q\ : std_logic;
SIGNAL \mem~5_q\ : std_logic;
SIGNAL \mem~41feeder_combout\ : std_logic;
SIGNAL \mem~41_q\ : std_logic;
SIGNAL \mem~283_combout\ : std_logic;
SIGNAL \mem~284_combout\ : std_logic;
SIGNAL \mem~203_q\ : std_logic;
SIGNAL \mem~149_q\ : std_logic;
SIGNAL \mem~185_q\ : std_logic;
SIGNAL \mem~281_combout\ : std_logic;
SIGNAL \mem~282_combout\ : std_logic;
SIGNAL \mem~285_combout\ : std_logic;
SIGNAL \mem~287_combout\ : std_logic;
SIGNAL \out_data[5]~reg0_q\ : std_logic;
SIGNAL \in_data[6]~input_o\ : std_logic;
SIGNAL \mem~415_combout\ : std_logic;
SIGNAL \mem~222_q\ : std_logic;
SIGNAL \mem~295_combout\ : std_logic;
SIGNAL \mem~96feeder_combout\ : std_logic;
SIGNAL \mem~96_q\ : std_logic;
SIGNAL \mem~132_q\ : std_logic;
SIGNAL \mem~78_q\ : std_logic;
SIGNAL \mem~114_q\ : std_logic;
SIGNAL \mem~290_combout\ : std_logic;
SIGNAL \mem~291_combout\ : std_logic;
SIGNAL \mem~60_q\ : std_logic;
SIGNAL \mem~6_q\ : std_logic;
SIGNAL \mem~24feeder_combout\ : std_logic;
SIGNAL \mem~24_q\ : std_logic;
SIGNAL \mem~292_combout\ : std_logic;
SIGNAL \mem~293_combout\ : std_logic;
SIGNAL \mem~294_combout\ : std_logic;
SIGNAL \mem~186_q\ : std_logic;
SIGNAL \mem~150_q\ : std_logic;
SIGNAL \mem~168_q\ : std_logic;
SIGNAL \mem~288_combout\ : std_logic;
SIGNAL \mem~289_combout\ : std_logic;
SIGNAL \mem~296_combout\ : std_logic;
SIGNAL \out_data[6]~reg0_q\ : std_logic;
SIGNAL \in_data[7]~input_o\ : std_logic;
SIGNAL \mem~416_combout\ : std_logic;
SIGNAL \mem~223_q\ : std_logic;
SIGNAL \mem~304_combout\ : std_logic;
SIGNAL \mem~115_q\ : std_logic;
SIGNAL \mem~79_q\ : std_logic;
SIGNAL \mem~97_q\ : std_logic;
SIGNAL \mem~297_combout\ : std_logic;
SIGNAL \mem~298_combout\ : std_logic;
SIGNAL \mem~25feeder_combout\ : std_logic;
SIGNAL \mem~25_q\ : std_logic;
SIGNAL \mem~61_q\ : std_logic;
SIGNAL \mem~7_q\ : std_logic;
SIGNAL \mem~43feeder_combout\ : std_logic;
SIGNAL \mem~43_q\ : std_logic;
SIGNAL \mem~301_combout\ : std_logic;
SIGNAL \mem~302_combout\ : std_logic;
SIGNAL \mem~169_q\ : std_logic;
SIGNAL \mem~205_q\ : std_logic;
SIGNAL \mem~151_q\ : std_logic;
SIGNAL \mem~187_q\ : std_logic;
SIGNAL \mem~299_combout\ : std_logic;
SIGNAL \mem~300_combout\ : std_logic;
SIGNAL \mem~303_combout\ : std_logic;
SIGNAL \mem~305_combout\ : std_logic;
SIGNAL \out_data[7]~reg0_q\ : std_logic;
SIGNAL \mem~417_combout\ : std_logic;
SIGNAL \mem~62_q\ : std_logic;
SIGNAL \mem~8_q\ : std_logic;
SIGNAL \mem~26feeder_combout\ : std_logic;
SIGNAL \mem~26_q\ : std_logic;
SIGNAL \mem~310_combout\ : std_logic;
SIGNAL \mem~311_combout\ : std_logic;
SIGNAL \mem~98_q\ : std_logic;
SIGNAL \mem~134_q\ : std_logic;
SIGNAL \mem~80_q\ : std_logic;
SIGNAL \mem~116feeder_combout\ : std_logic;
SIGNAL \mem~116_q\ : std_logic;
SIGNAL \mem~308_combout\ : std_logic;
SIGNAL \mem~309_combout\ : std_logic;
SIGNAL \mem~312_combout\ : std_logic;
SIGNAL \mem~224_q\ : std_logic;
SIGNAL \mem~313_combout\ : std_logic;
SIGNAL \mem~188_q\ : std_logic;
SIGNAL \mem~152_q\ : std_logic;
SIGNAL \mem~170_q\ : std_logic;
SIGNAL \mem~306_combout\ : std_logic;
SIGNAL \mem~307_combout\ : std_logic;
SIGNAL \mem~314_combout\ : std_logic;
SIGNAL \out_data[8]~reg0_q\ : std_logic;
SIGNAL \in_data[9]~input_o\ : std_logic;
SIGNAL \mem~418_combout\ : std_logic;
SIGNAL \mem~225_q\ : std_logic;
SIGNAL \mem~322_combout\ : std_logic;
SIGNAL \mem~27_q\ : std_logic;
SIGNAL \mem~63_q\ : std_logic;
SIGNAL \mem~9_q\ : std_logic;
SIGNAL \mem~45_q\ : std_logic;
SIGNAL \mem~319_combout\ : std_logic;
SIGNAL \mem~320_combout\ : std_logic;
SIGNAL \mem~207_q\ : std_logic;
SIGNAL \mem~153_q\ : std_logic;
SIGNAL \mem~189_q\ : std_logic;
SIGNAL \mem~317_combout\ : std_logic;
SIGNAL \mem~318_combout\ : std_logic;
SIGNAL \mem~321_combout\ : std_logic;
SIGNAL \mem~323_combout\ : std_logic;
SIGNAL \out_data[9]~reg0_q\ : std_logic;
SIGNAL \mem~419_combout\ : std_logic;
SIGNAL \mem~190_q\ : std_logic;
SIGNAL \mem~154_q\ : std_logic;
SIGNAL \mem~172_q\ : std_logic;
SIGNAL \mem~324_combout\ : std_logic;
SIGNAL \mem~325_combout\ : std_logic;
SIGNAL \mem~226_q\ : std_logic;
SIGNAL \mem~331_combout\ : std_logic;
SIGNAL \mem~100feeder_combout\ : std_logic;
SIGNAL \mem~100_q\ : std_logic;
SIGNAL \mem~136_q\ : std_logic;
SIGNAL \mem~82_q\ : std_logic;
SIGNAL \mem~118feeder_combout\ : std_logic;
SIGNAL \mem~118_q\ : std_logic;
SIGNAL \mem~326_combout\ : std_logic;
SIGNAL \mem~327_combout\ : std_logic;
SIGNAL \mem~46_q\ : std_logic;
SIGNAL \mem~64_q\ : std_logic;
SIGNAL \mem~10_q\ : std_logic;
SIGNAL \mem~328_combout\ : std_logic;
SIGNAL \mem~329_combout\ : std_logic;
SIGNAL \mem~330_combout\ : std_logic;
SIGNAL \mem~332_combout\ : std_logic;
SIGNAL \out_data[10]~reg0_q\ : std_logic;
SIGNAL \in_data[11]~input_o\ : std_logic;
SIGNAL \mem~420_combout\ : std_logic;
SIGNAL \mem~119_q\ : std_logic;
SIGNAL \mem~83_q\ : std_logic;
SIGNAL \mem~101_q\ : std_logic;
SIGNAL \mem~333_combout\ : std_logic;
SIGNAL \mem~334_combout\ : std_logic;
SIGNAL \mem~65_q\ : std_logic;
SIGNAL \mem~11_q\ : std_logic;
SIGNAL \mem~47feeder_combout\ : std_logic;
SIGNAL \mem~47_q\ : std_logic;
SIGNAL \mem~337_combout\ : std_logic;
SIGNAL \mem~338_combout\ : std_logic;
SIGNAL \mem~209_q\ : std_logic;
SIGNAL \mem~155_q\ : std_logic;
SIGNAL \mem~191feeder_combout\ : std_logic;
SIGNAL \mem~191_q\ : std_logic;
SIGNAL \mem~335_combout\ : std_logic;
SIGNAL \mem~336_combout\ : std_logic;
SIGNAL \mem~339_combout\ : std_logic;
SIGNAL \mem~341_combout\ : std_logic;
SIGNAL \out_data[11]~reg0_q\ : std_logic;
SIGNAL \mem~421_combout\ : std_logic;
SIGNAL \mem~138_q\ : std_logic;
SIGNAL \mem~84_q\ : std_logic;
SIGNAL \mem~120_q\ : std_logic;
SIGNAL \mem~344_combout\ : std_logic;
SIGNAL \mem~345_combout\ : std_logic;
SIGNAL \mem~66_q\ : std_logic;
SIGNAL \mem~12_q\ : std_logic;
SIGNAL \mem~30_q\ : std_logic;
SIGNAL \mem~346_combout\ : std_logic;
SIGNAL \mem~347_combout\ : std_logic;
SIGNAL \mem~348_combout\ : std_logic;
SIGNAL \mem~192_q\ : std_logic;
SIGNAL \mem~156_q\ : std_logic;
SIGNAL \mem~342_combout\ : std_logic;
SIGNAL \mem~343_combout\ : std_logic;
SIGNAL \mem~350_combout\ : std_logic;
SIGNAL \out_data[12]~reg0_q\ : std_logic;
SIGNAL \in_data[13]~input_o\ : std_logic;
SIGNAL \mem~422_combout\ : std_logic;
SIGNAL \mem~229_q\ : std_logic;
SIGNAL \mem~358_combout\ : std_logic;
SIGNAL \mem~121_q\ : std_logic;
SIGNAL \mem~85_q\ : std_logic;
SIGNAL \mem~103_q\ : std_logic;
SIGNAL \mem~351_combout\ : std_logic;
SIGNAL \mem~352_combout\ : std_logic;
SIGNAL \mem~67_q\ : std_logic;
SIGNAL \mem~31feeder_combout\ : std_logic;
SIGNAL \mem~31_q\ : std_logic;
SIGNAL \mem~356_combout\ : std_logic;
SIGNAL \mem~211_q\ : std_logic;
SIGNAL \mem~175_q\ : std_logic;
SIGNAL \mem~354_combout\ : std_logic;
SIGNAL \mem~357_combout\ : std_logic;
SIGNAL \mem~359_combout\ : std_logic;
SIGNAL \out_data[13]~reg0_q\ : std_logic;
SIGNAL \mem~423_combout\ : std_logic;
SIGNAL \mem~194_q\ : std_logic;
SIGNAL \mem~158_q\ : std_logic;
SIGNAL \mem~176_q\ : std_logic;
SIGNAL \mem~360_combout\ : std_logic;
SIGNAL \mem~361_combout\ : std_logic;
SIGNAL \mem~230_q\ : std_logic;
SIGNAL \mem~367_combout\ : std_logic;
SIGNAL \mem~86_q\ : std_logic;
SIGNAL \mem~122feeder_combout\ : std_logic;
SIGNAL \mem~122_q\ : std_logic;
SIGNAL \mem~362_combout\ : std_logic;
SIGNAL \mem~140_q\ : std_logic;
SIGNAL \mem~104_q\ : std_logic;
SIGNAL \mem~363_combout\ : std_logic;
SIGNAL \mem~50_q\ : std_logic;
SIGNAL \mem~68_q\ : std_logic;
SIGNAL \mem~14_q\ : std_logic;
SIGNAL \mem~32_q\ : std_logic;
SIGNAL \mem~364_combout\ : std_logic;
SIGNAL \mem~365_combout\ : std_logic;
SIGNAL \mem~366_combout\ : std_logic;
SIGNAL \mem~368_combout\ : std_logic;
SIGNAL \out_data[14]~reg0_q\ : std_logic;
SIGNAL \in_data[15]~input_o\ : std_logic;
SIGNAL \mem~424_combout\ : std_logic;
SIGNAL \mem~141_q\ : std_logic;
SIGNAL \mem~123_q\ : std_logic;
SIGNAL \mem~87_q\ : std_logic;
SIGNAL \mem~105_q\ : std_logic;
SIGNAL \mem~369_combout\ : std_logic;
SIGNAL \mem~370_combout\ : std_logic;
SIGNAL \mem~69_q\ : std_logic;
SIGNAL \mem~15_q\ : std_logic;
SIGNAL \mem~51_q\ : std_logic;
SIGNAL \mem~373_combout\ : std_logic;
SIGNAL \mem~374_combout\ : std_logic;
SIGNAL \mem~159_q\ : std_logic;
SIGNAL \mem~195_q\ : std_logic;
SIGNAL \mem~371_combout\ : std_logic;
SIGNAL \mem~213_q\ : std_logic;
SIGNAL \mem~177feeder_combout\ : std_logic;
SIGNAL \mem~177_q\ : std_logic;
SIGNAL \mem~372_combout\ : std_logic;
SIGNAL \mem~375_combout\ : std_logic;
SIGNAL \mem~377_combout\ : std_logic;
SIGNAL \out_data[15]~reg0_q\ : std_logic;
SIGNAL \in_data[16]~input_o\ : std_logic;
SIGNAL \mem~425_combout\ : std_logic;
SIGNAL \mem~214feeder_combout\ : std_logic;
SIGNAL \mem~214_q\ : std_logic;
SIGNAL \mem~196_q\ : std_logic;
SIGNAL \mem~160_q\ : std_logic;
SIGNAL \mem~178_q\ : std_logic;
SIGNAL \mem~378_combout\ : std_logic;
SIGNAL \mem~379_combout\ : std_logic;
SIGNAL \mem~232_q\ : std_logic;
SIGNAL \mem~385_combout\ : std_logic;
SIGNAL \mem~88_q\ : std_logic;
SIGNAL \mem~124_q\ : std_logic;
SIGNAL \mem~380_combout\ : std_logic;
SIGNAL \mem~142_q\ : std_logic;
SIGNAL \mem~106_q\ : std_logic;
SIGNAL \mem~381_combout\ : std_logic;
SIGNAL \mem~70_q\ : std_logic;
SIGNAL \mem~16_q\ : std_logic;
SIGNAL \mem~34_q\ : std_logic;
SIGNAL \mem~382_combout\ : std_logic;
SIGNAL \mem~383_combout\ : std_logic;
SIGNAL \mem~384_combout\ : std_logic;
SIGNAL \mem~386_combout\ : std_logic;
SIGNAL \out_data[16]~reg0_q\ : std_logic;
SIGNAL \in_data[17]~input_o\ : std_logic;
SIGNAL \mem~426_combout\ : std_logic;
SIGNAL \mem~143_q\ : std_logic;
SIGNAL \mem~125_q\ : std_logic;
SIGNAL \mem~89_q\ : std_logic;
SIGNAL \mem~107_q\ : std_logic;
SIGNAL \mem~387_combout\ : std_logic;
SIGNAL \mem~388_combout\ : std_logic;
SIGNAL \mem~233_q\ : std_logic;
SIGNAL \mem~394_combout\ : std_logic;
SIGNAL \mem~179_q\ : std_logic;
SIGNAL \mem~215_q\ : std_logic;
SIGNAL \mem~161_q\ : std_logic;
SIGNAL \mem~197_q\ : std_logic;
SIGNAL \mem~389_combout\ : std_logic;
SIGNAL \mem~390_combout\ : std_logic;
SIGNAL \mem~71_q\ : std_logic;
SIGNAL \mem~17_q\ : std_logic;
SIGNAL \mem~53_q\ : std_logic;
SIGNAL \mem~391_combout\ : std_logic;
SIGNAL \mem~392_combout\ : std_logic;
SIGNAL \mem~393_combout\ : std_logic;
SIGNAL \mem~395_combout\ : std_logic;
SIGNAL \out_data[17]~reg0_q\ : std_logic;

BEGIN

out_data <= ww_out_data;
ww_in_data <= in_data;
ww_address <= address;
ww_clk <= clk;
ww_rst <= rst;
ww_read_en <= read_en;
ww_write_en <= write_en;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: FF_X23_Y21_N17
\mem~198\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~396_combout\,
	sload => VCC,
	ena => \mem~400_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~198_q\);

-- Location: FF_X23_Y21_N27
\mem~108\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~396_combout\,
	sload => VCC,
	ena => \mem~402_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~108_q\);

-- Location: FF_X25_Y21_N25
\mem~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~396_combout\,
	sload => VCC,
	ena => \mem~405_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~36_q\);

-- Location: FF_X19_Y22_N19
\mem~216\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~396_combout\,
	sload => VCC,
	ena => \mem~409_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~216_q\);

-- Location: LCCOMB_X19_Y22_N18
\mem~241\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~241_combout\ = (!\address[0]~input_o\ & (\mem~216_q\ & !\address[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \address[0]~input_o\,
	datac => \mem~216_q\,
	datad => \address[1]~input_o\,
	combout => \mem~241_combout\);

-- Location: FF_X23_Y21_N13
\mem~109\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~410_combout\,
	sload => VCC,
	ena => \mem~402_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~109_q\);

-- Location: FF_X25_Y23_N11
\mem~91\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem~410_combout\,
	ena => \mem~401_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~91_q\);

-- Location: FF_X24_Y21_N13
\mem~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~410_combout\,
	sload => VCC,
	ena => \mem~403_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~73_q\);

-- Location: LCCOMB_X24_Y21_N12
\mem~243\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~243_combout\ = (\address[1]~input_o\ & (\address[0]~input_o\)) # (!\address[1]~input_o\ & ((\address[0]~input_o\ & ((\mem~91_q\))) # (!\address[0]~input_o\ & (\mem~73_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[0]~input_o\,
	datac => \mem~73_q\,
	datad => \mem~91_q\,
	combout => \mem~243_combout\);

-- Location: FF_X24_Y21_N23
\mem~127\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~410_combout\,
	sload => VCC,
	ena => \mem~404_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~127_q\);

-- Location: LCCOMB_X23_Y21_N12
\mem~244\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~244_combout\ = (\address[1]~input_o\ & ((\mem~243_combout\ & (\mem~127_q\)) # (!\mem~243_combout\ & ((\mem~109_q\))))) # (!\address[1]~input_o\ & (((\mem~243_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~127_q\,
	datab => \address[1]~input_o\,
	datac => \mem~109_q\,
	datad => \mem~243_combout\,
	combout => \mem~244_combout\);

-- Location: FF_X25_Y22_N19
\mem~163\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~410_combout\,
	sload => VCC,
	ena => \mem~398_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~163_q\);

-- Location: FF_X23_Y21_N1
\mem~200\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~411_combout\,
	sload => VCC,
	ena => \mem~400_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~200_q\);

-- Location: FF_X19_Y22_N1
\mem~218\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~411_combout\,
	sload => VCC,
	ena => \mem~409_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~218_q\);

-- Location: LCCOMB_X19_Y22_N0
\mem~259\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~259_combout\ = (!\address[0]~input_o\ & (\mem~218_q\ & !\address[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \address[0]~input_o\,
	datac => \mem~218_q\,
	datad => \address[1]~input_o\,
	combout => \mem~259_combout\);

-- Location: FF_X25_Y22_N15
\mem~165\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~412_combout\,
	sload => VCC,
	ena => \mem~398_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~165_q\);

-- Location: FF_X23_Y21_N25
\mem~202\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem~202feeder_combout\,
	ena => \mem~400_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~202_q\);

-- Location: FF_X23_Y21_N21
\mem~113\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~414_combout\,
	sload => VCC,
	ena => \mem~402_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~113_q\);

-- Location: FF_X25_Y23_N27
\mem~95\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem~414_combout\,
	ena => \mem~401_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~95_q\);

-- Location: FF_X24_Y21_N5
\mem~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~414_combout\,
	sload => VCC,
	ena => \mem~403_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~77_q\);

-- Location: LCCOMB_X24_Y21_N4
\mem~279\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~279_combout\ = (\address[1]~input_o\ & (\address[0]~input_o\)) # (!\address[1]~input_o\ & ((\address[0]~input_o\ & ((\mem~95_q\))) # (!\address[0]~input_o\ & (\mem~77_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[0]~input_o\,
	datac => \mem~77_q\,
	datad => \mem~95_q\,
	combout => \mem~279_combout\);

-- Location: FF_X24_Y21_N31
\mem~131\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~414_combout\,
	sload => VCC,
	ena => \mem~404_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~131_q\);

-- Location: LCCOMB_X23_Y21_N20
\mem~280\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~280_combout\ = (\address[1]~input_o\ & ((\mem~279_combout\ & (\mem~131_q\)) # (!\mem~279_combout\ & ((\mem~113_q\))))) # (!\address[1]~input_o\ & (((\mem~279_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \mem~131_q\,
	datac => \mem~113_q\,
	datad => \mem~279_combout\,
	combout => \mem~280_combout\);

-- Location: FF_X25_Y22_N11
\mem~167\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem~167feeder_combout\,
	ena => \mem~398_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~167_q\);

-- Location: FF_X22_Y21_N3
\mem~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem~23feeder_combout\,
	ena => \mem~406_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~23_q\);

-- Location: FF_X23_Y21_N9
\mem~204\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~415_combout\,
	sload => VCC,
	ena => \mem~400_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~204_q\);

-- Location: FF_X21_Y23_N17
\mem~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~415_combout\,
	sload => VCC,
	ena => \mem~405_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~42_q\);

-- Location: FF_X24_Y23_N3
\mem~133\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~416_combout\,
	sload => VCC,
	ena => \mem~404_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~133_q\);

-- Location: FF_X26_Y22_N11
\mem~206\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~417_combout\,
	sload => VCC,
	ena => \mem~400_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~206_q\);

-- Location: FF_X21_Y23_N13
\mem~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem~44feeder_combout\,
	ena => \mem~405_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~44_q\);

-- Location: FF_X23_Y23_N5
\mem~117\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~418_combout\,
	sload => VCC,
	ena => \mem~402_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~117_q\);

-- Location: FF_X25_Y23_N3
\mem~99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem~418_combout\,
	ena => \mem~401_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~99_q\);

-- Location: FF_X24_Y23_N17
\mem~81\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~418_combout\,
	sload => VCC,
	ena => \mem~403_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~81_q\);

-- Location: LCCOMB_X24_Y23_N16
\mem~315\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~315_combout\ = (\address[0]~input_o\ & ((\address[1]~input_o\) # ((\mem~99_q\)))) # (!\address[0]~input_o\ & (!\address[1]~input_o\ & (\mem~81_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \mem~81_q\,
	datad => \mem~99_q\,
	combout => \mem~315_combout\);

-- Location: FF_X24_Y23_N27
\mem~135\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~418_combout\,
	sload => VCC,
	ena => \mem~404_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~135_q\);

-- Location: LCCOMB_X23_Y23_N4
\mem~316\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~316_combout\ = (\address[1]~input_o\ & ((\mem~315_combout\ & (\mem~135_q\)) # (!\mem~315_combout\ & ((\mem~117_q\))))) # (!\address[1]~input_o\ & (((\mem~315_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \mem~135_q\,
	datac => \mem~117_q\,
	datad => \mem~315_combout\,
	combout => \mem~316_combout\);

-- Location: FF_X25_Y22_N27
\mem~171\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem~171feeder_combout\,
	ena => \mem~398_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~171_q\);

-- Location: FF_X26_Y22_N23
\mem~208\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~419_combout\,
	sload => VCC,
	ena => \mem~400_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~208_q\);

-- Location: FF_X22_Y21_N21
\mem~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem~28feeder_combout\,
	ena => \mem~406_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~28_q\);

-- Location: FF_X24_Y23_N19
\mem~137\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~420_combout\,
	sload => VCC,
	ena => \mem~404_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~137_q\);

-- Location: FF_X25_Y22_N31
\mem~173\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem~173feeder_combout\,
	ena => \mem~398_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~173_q\);

-- Location: FF_X22_Y21_N7
\mem~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~420_combout\,
	sload => VCC,
	ena => \mem~406_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~29_q\);

-- Location: FF_X28_Y22_N25
\mem~227\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~420_combout\,
	sload => VCC,
	ena => \mem~409_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~227_q\);

-- Location: LCCOMB_X28_Y22_N24
\mem~340\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~340_combout\ = (!\address[1]~input_o\ & (\mem~227_q\ & !\address[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \address[1]~input_o\,
	datac => \mem~227_q\,
	datad => \address[0]~input_o\,
	combout => \mem~340_combout\);

-- Location: FF_X25_Y22_N1
\mem~174\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem~421_combout\,
	ena => \mem~398_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~174_q\);

-- Location: FF_X26_Y22_N19
\mem~210\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem~210feeder_combout\,
	ena => \mem~400_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~210_q\);

-- Location: FF_X26_Y21_N17
\mem~102\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~421_combout\,
	sload => VCC,
	ena => \mem~401_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~102_q\);

-- Location: FF_X21_Y23_N29
\mem~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~421_combout\,
	sload => VCC,
	ena => \mem~405_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~48_q\);

-- Location: FF_X28_Y22_N13
\mem~228\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~421_combout\,
	sload => VCC,
	ena => \mem~409_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~228_q\);

-- Location: LCCOMB_X28_Y22_N12
\mem~349\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~349_combout\ = (!\address[1]~input_o\ & (\mem~228_q\ & !\address[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \address[1]~input_o\,
	datac => \mem~228_q\,
	datad => \address[0]~input_o\,
	combout => \mem~349_combout\);

-- Location: FF_X24_Y23_N15
\mem~139\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~422_combout\,
	sload => VCC,
	ena => \mem~404_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~139_q\);

-- Location: FF_X28_Y22_N15
\mem~193\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem~193feeder_combout\,
	ena => \mem~397_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~193_q\);

-- Location: FF_X26_Y22_N13
\mem~157\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~422_combout\,
	sload => VCC,
	ena => \mem~399_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~157_q\);

-- Location: LCCOMB_X26_Y22_N12
\mem~353\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~353_combout\ = (\address[0]~input_o\ & (\address[1]~input_o\)) # (!\address[0]~input_o\ & ((\address[1]~input_o\ & ((\mem~193_q\))) # (!\address[1]~input_o\ & (\mem~157_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \mem~157_q\,
	datad => \mem~193_q\,
	combout => \mem~353_combout\);

-- Location: FF_X25_Y21_N13
\mem~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~422_combout\,
	sload => VCC,
	ena => \mem~405_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~49_q\);

-- Location: FF_X25_Y21_N7
\mem~13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~422_combout\,
	sload => VCC,
	ena => \mem~407_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~13_q\);

-- Location: LCCOMB_X25_Y21_N6
\mem~355\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~355_combout\ = (\address[0]~input_o\ & (\address[1]~input_o\)) # (!\address[0]~input_o\ & ((\address[1]~input_o\ & ((\mem~49_q\))) # (!\address[1]~input_o\ & (\mem~13_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \mem~13_q\,
	datad => \mem~49_q\,
	combout => \mem~355_combout\);

-- Location: FF_X26_Y22_N27
\mem~212\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~423_combout\,
	sload => VCC,
	ena => \mem~400_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~212_q\);

-- Location: FF_X26_Y21_N7
\mem~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem~33feeder_combout\,
	ena => \mem~406_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~33_q\);

-- Location: FF_X28_Y22_N23
\mem~231\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~424_combout\,
	sload => VCC,
	ena => \mem~409_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~231_q\);

-- Location: LCCOMB_X28_Y22_N22
\mem~376\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~376_combout\ = (!\address[1]~input_o\ & (\mem~231_q\ & !\address[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \address[1]~input_o\,
	datac => \mem~231_q\,
	datad => \address[0]~input_o\,
	combout => \mem~376_combout\);

-- Location: FF_X25_Y21_N17
\mem~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~425_combout\,
	sload => VCC,
	ena => \mem~405_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~52_q\);

-- Location: FF_X22_Y21_N13
\mem~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem~35feeder_combout\,
	ena => \mem~406_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~35_q\);

-- Location: IOIBUF_X23_Y24_N8
\in_data[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(0),
	o => \in_data[0]~input_o\);

-- Location: IOIBUF_X34_Y9_N1
\in_data[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(2),
	o => \in_data[2]~input_o\);

-- Location: IOIBUF_X0_Y22_N1
\in_data[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(4),
	o => \in_data[4]~input_o\);

-- Location: IOIBUF_X34_Y19_N8
\in_data[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(8),
	o => \in_data[8]~input_o\);

-- Location: IOIBUF_X34_Y12_N1
\in_data[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(10),
	o => \in_data[10]~input_o\);

-- Location: IOIBUF_X25_Y0_N15
\in_data[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(12),
	o => \in_data[12]~input_o\);

-- Location: IOIBUF_X23_Y0_N8
\in_data[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(14),
	o => \in_data[14]~input_o\);

-- Location: LCCOMB_X23_Y21_N24
\mem~202feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~202feeder_combout\ = \mem~413_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem~413_combout\,
	combout => \mem~202feeder_combout\);

-- Location: LCCOMB_X22_Y21_N2
\mem~23feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~23feeder_combout\ = \mem~414_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem~414_combout\,
	combout => \mem~23feeder_combout\);

-- Location: LCCOMB_X25_Y22_N10
\mem~167feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~167feeder_combout\ = \mem~414_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem~414_combout\,
	combout => \mem~167feeder_combout\);

-- Location: LCCOMB_X21_Y23_N12
\mem~44feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~44feeder_combout\ = \mem~417_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem~417_combout\,
	combout => \mem~44feeder_combout\);

-- Location: LCCOMB_X25_Y22_N26
\mem~171feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~171feeder_combout\ = \mem~418_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem~418_combout\,
	combout => \mem~171feeder_combout\);

-- Location: LCCOMB_X22_Y21_N20
\mem~28feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~28feeder_combout\ = \mem~419_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem~419_combout\,
	combout => \mem~28feeder_combout\);

-- Location: LCCOMB_X25_Y22_N30
\mem~173feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~173feeder_combout\ = \mem~420_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem~420_combout\,
	combout => \mem~173feeder_combout\);

-- Location: LCCOMB_X26_Y22_N18
\mem~210feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~210feeder_combout\ = \mem~421_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem~421_combout\,
	combout => \mem~210feeder_combout\);

-- Location: LCCOMB_X28_Y22_N14
\mem~193feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~193feeder_combout\ = \mem~422_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem~422_combout\,
	combout => \mem~193feeder_combout\);

-- Location: LCCOMB_X26_Y21_N6
\mem~33feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~33feeder_combout\ = \mem~424_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem~424_combout\,
	combout => \mem~33feeder_combout\);

-- Location: LCCOMB_X22_Y21_N12
\mem~35feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~35feeder_combout\ = \mem~426_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem~426_combout\,
	combout => \mem~35feeder_combout\);

-- Location: IOOBUF_X16_Y24_N9
\out_data[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_data[0]~reg0_q\,
	devoe => ww_devoe,
	o => \out_data[0]~output_o\);

-- Location: IOOBUF_X34_Y18_N16
\out_data[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_data[1]~reg0_q\,
	devoe => ww_devoe,
	o => \out_data[1]~output_o\);

-- Location: IOOBUF_X21_Y24_N16
\out_data[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_data[2]~reg0_q\,
	devoe => ww_devoe,
	o => \out_data[2]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\out_data[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_data[3]~reg0_q\,
	devoe => ww_devoe,
	o => \out_data[3]~output_o\);

-- Location: IOOBUF_X18_Y0_N2
\out_data[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_data[4]~reg0_q\,
	devoe => ww_devoe,
	o => \out_data[4]~output_o\);

-- Location: IOOBUF_X21_Y24_N9
\out_data[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_data[5]~reg0_q\,
	devoe => ww_devoe,
	o => \out_data[5]~output_o\);

-- Location: IOOBUF_X0_Y21_N9
\out_data[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_data[6]~reg0_q\,
	devoe => ww_devoe,
	o => \out_data[6]~output_o\);

-- Location: IOOBUF_X18_Y24_N9
\out_data[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_data[7]~reg0_q\,
	devoe => ww_devoe,
	o => \out_data[7]~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\out_data[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_data[8]~reg0_q\,
	devoe => ww_devoe,
	o => \out_data[8]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\out_data[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_data[9]~reg0_q\,
	devoe => ww_devoe,
	o => \out_data[9]~output_o\);

-- Location: IOOBUF_X21_Y0_N16
\out_data[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_data[10]~reg0_q\,
	devoe => ww_devoe,
	o => \out_data[10]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\out_data[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_data[11]~reg0_q\,
	devoe => ww_devoe,
	o => \out_data[11]~output_o\);

-- Location: IOOBUF_X34_Y20_N9
\out_data[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_data[12]~reg0_q\,
	devoe => ww_devoe,
	o => \out_data[12]~output_o\);

-- Location: IOOBUF_X25_Y24_N2
\out_data[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_data[13]~reg0_q\,
	devoe => ww_devoe,
	o => \out_data[13]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\out_data[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_data[14]~reg0_q\,
	devoe => ww_devoe,
	o => \out_data[14]~output_o\);

-- Location: IOOBUF_X25_Y24_N9
\out_data[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_data[15]~reg0_q\,
	devoe => ww_devoe,
	o => \out_data[15]~output_o\);

-- Location: IOOBUF_X21_Y24_N2
\out_data[16]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_data[16]~reg0_q\,
	devoe => ww_devoe,
	o => \out_data[16]~output_o\);

-- Location: IOOBUF_X0_Y22_N16
\out_data[17]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_data[17]~reg0_q\,
	devoe => ww_devoe,
	o => \out_data[17]~output_o\);

-- Location: IOIBUF_X0_Y11_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
\clk~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X34_Y18_N1
\address[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(3),
	o => \address[3]~input_o\);

-- Location: IOIBUF_X34_Y17_N22
\address[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(0),
	o => \address[0]~input_o\);

-- Location: IOIBUF_X23_Y24_N1
\read_en~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_read_en,
	o => \read_en~input_o\);

-- Location: IOIBUF_X34_Y20_N15
\rst~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: IOIBUF_X23_Y24_N22
\write_en~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_en,
	o => \write_en~input_o\);

-- Location: LCCOMB_X25_Y22_N16
\mem~396\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~396_combout\ = (!\rst~input_o\ & ((\in_data[0]~input_o\) # ((\read_en~input_o\) # (!\write_en~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[0]~input_o\,
	datab => \read_en~input_o\,
	datac => \rst~input_o\,
	datad => \write_en~input_o\,
	combout => \mem~396_combout\);

-- Location: IOIBUF_X23_Y0_N15
\address[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(1),
	o => \address[1]~input_o\);

-- Location: LCCOMB_X18_Y21_N10
\mem~403\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~403_combout\ = (\address[2]~input_o\ & (!\address[1]~input_o\ & (!\address[3]~input_o\ & !\address[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \address[1]~input_o\,
	datac => \address[3]~input_o\,
	datad => \address[0]~input_o\,
	combout => \mem~403_combout\);

-- Location: FF_X24_Y21_N25
\mem~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~396_combout\,
	sload => VCC,
	ena => \mem~403_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~72_q\);

-- Location: LCCOMB_X24_Y21_N24
\mem~236\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~236_combout\ = (\address[0]~input_o\ & (((\address[1]~input_o\)))) # (!\address[0]~input_o\ & ((\address[1]~input_o\ & (\mem~108_q\)) # (!\address[1]~input_o\ & ((\mem~72_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~108_q\,
	datab => \address[0]~input_o\,
	datac => \mem~72_q\,
	datad => \address[1]~input_o\,
	combout => \mem~236_combout\);

-- Location: LCCOMB_X18_Y21_N28
\mem~404\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~404_combout\ = (\address[2]~input_o\ & (\address[1]~input_o\ & (!\address[3]~input_o\ & \address[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \address[1]~input_o\,
	datac => \address[3]~input_o\,
	datad => \address[0]~input_o\,
	combout => \mem~404_combout\);

-- Location: FF_X24_Y21_N27
\mem~126\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~396_combout\,
	sload => VCC,
	ena => \mem~404_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~126_q\);

-- Location: LCCOMB_X18_Y21_N30
\mem~401\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~401_combout\ = (\address[2]~input_o\ & (!\address[1]~input_o\ & (!\address[3]~input_o\ & \address[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \address[1]~input_o\,
	datac => \address[3]~input_o\,
	datad => \address[0]~input_o\,
	combout => \mem~401_combout\);

-- Location: FF_X25_Y23_N9
\mem~90\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~396_combout\,
	sload => VCC,
	ena => \mem~401_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~90_q\);

-- Location: LCCOMB_X24_Y21_N26
\mem~237\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~237_combout\ = (\address[0]~input_o\ & ((\mem~236_combout\ & (\mem~126_q\)) # (!\mem~236_combout\ & ((\mem~90_q\))))) # (!\address[0]~input_o\ & (\mem~236_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \mem~236_combout\,
	datac => \mem~126_q\,
	datad => \mem~90_q\,
	combout => \mem~237_combout\);

-- Location: LCCOMB_X18_Y21_N20
\mem~408\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~408_combout\ = (!\address[2]~input_o\ & (\address[1]~input_o\ & (!\address[3]~input_o\ & \address[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \address[1]~input_o\,
	datac => \address[3]~input_o\,
	datad => \address[0]~input_o\,
	combout => \mem~408_combout\);

-- Location: FF_X18_Y21_N27
\mem~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~396_combout\,
	sload => VCC,
	ena => \mem~408_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~54_q\);

-- Location: LCCOMB_X22_Y21_N0
\mem~18feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~18feeder_combout\ = \mem~396_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem~396_combout\,
	combout => \mem~18feeder_combout\);

-- Location: LCCOMB_X18_Y21_N16
\mem~406\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~406_combout\ = (!\address[2]~input_o\ & (!\address[1]~input_o\ & (!\address[3]~input_o\ & \address[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \address[1]~input_o\,
	datac => \address[3]~input_o\,
	datad => \address[0]~input_o\,
	combout => \mem~406_combout\);

-- Location: FF_X22_Y21_N1
\mem~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem~18feeder_combout\,
	ena => \mem~406_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~18_q\);

-- Location: LCCOMB_X18_Y21_N18
\mem~407\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~407_combout\ = (!\address[2]~input_o\ & (!\address[1]~input_o\ & (!\address[3]~input_o\ & !\address[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \address[1]~input_o\,
	datac => \address[3]~input_o\,
	datad => \address[0]~input_o\,
	combout => \mem~407_combout\);

-- Location: FF_X21_Y21_N17
\mem~0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~396_combout\,
	sload => VCC,
	ena => \mem~407_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~0_q\);

-- Location: LCCOMB_X21_Y21_N16
\mem~238\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~238_combout\ = (\address[1]~input_o\ & (((\address[0]~input_o\)))) # (!\address[1]~input_o\ & ((\address[0]~input_o\ & (\mem~18_q\)) # (!\address[0]~input_o\ & ((\mem~0_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \mem~18_q\,
	datac => \mem~0_q\,
	datad => \address[0]~input_o\,
	combout => \mem~238_combout\);

-- Location: LCCOMB_X18_Y21_N26
\mem~239\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~239_combout\ = (\address[1]~input_o\ & ((\mem~238_combout\ & ((\mem~54_q\))) # (!\mem~238_combout\ & (\mem~36_q\)))) # (!\address[1]~input_o\ & (((\mem~238_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~36_q\,
	datab => \address[1]~input_o\,
	datac => \mem~54_q\,
	datad => \mem~238_combout\,
	combout => \mem~239_combout\);

-- Location: LCCOMB_X18_Y21_N4
\mem~240\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~240_combout\ = (\address[2]~input_o\ & ((\address[3]~input_o\) # ((\mem~237_combout\)))) # (!\address[2]~input_o\ & (!\address[3]~input_o\ & ((\mem~239_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \address[3]~input_o\,
	datac => \mem~237_combout\,
	datad => \mem~239_combout\,
	combout => \mem~240_combout\);

-- Location: LCCOMB_X18_Y21_N6
\mem~397\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~397_combout\ = (!\address[2]~input_o\ & (\address[1]~input_o\ & (\address[3]~input_o\ & !\address[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \address[1]~input_o\,
	datac => \address[3]~input_o\,
	datad => \address[0]~input_o\,
	combout => \mem~397_combout\);

-- Location: FF_X19_Y22_N9
\mem~180\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~396_combout\,
	sload => VCC,
	ena => \mem~397_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~180_q\);

-- Location: LCCOMB_X18_Y21_N2
\mem~399\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~399_combout\ = (!\address[2]~input_o\ & (!\address[1]~input_o\ & (\address[3]~input_o\ & !\address[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \address[1]~input_o\,
	datac => \address[3]~input_o\,
	datad => \address[0]~input_o\,
	combout => \mem~399_combout\);

-- Location: FF_X24_Y22_N25
\mem~144\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~396_combout\,
	sload => VCC,
	ena => \mem~399_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~144_q\);

-- Location: LCCOMB_X18_Y21_N0
\mem~398\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~398_combout\ = (!\address[2]~input_o\ & (!\address[1]~input_o\ & (\address[3]~input_o\ & \address[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \address[1]~input_o\,
	datac => \address[3]~input_o\,
	datad => \address[0]~input_o\,
	combout => \mem~398_combout\);

-- Location: FF_X25_Y22_N17
\mem~162\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem~396_combout\,
	ena => \mem~398_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~162_q\);

-- Location: LCCOMB_X24_Y22_N24
\mem~234\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~234_combout\ = (\address[0]~input_o\ & ((\address[1]~input_o\) # ((\mem~162_q\)))) # (!\address[0]~input_o\ & (!\address[1]~input_o\ & (\mem~144_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \mem~144_q\,
	datad => \mem~162_q\,
	combout => \mem~234_combout\);

-- Location: LCCOMB_X19_Y22_N8
\mem~235\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~235_combout\ = (\address[1]~input_o\ & ((\mem~234_combout\ & (\mem~198_q\)) # (!\mem~234_combout\ & ((\mem~180_q\))))) # (!\address[1]~input_o\ & (((\mem~234_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~198_q\,
	datab => \address[1]~input_o\,
	datac => \mem~180_q\,
	datad => \mem~234_combout\,
	combout => \mem~235_combout\);

-- Location: LCCOMB_X18_Y21_N24
\mem~242\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~242_combout\ = (\address[3]~input_o\ & ((\mem~240_combout\ & (\mem~241_combout\)) # (!\mem~240_combout\ & ((\mem~235_combout\))))) # (!\address[3]~input_o\ & (((\mem~240_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~241_combout\,
	datab => \address[3]~input_o\,
	datac => \mem~240_combout\,
	datad => \mem~235_combout\,
	combout => \mem~242_combout\);

-- Location: LCCOMB_X22_Y22_N2
\out_data[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \out_data[0]~0_combout\ = (!\write_en~input_o\ & (!\rst~input_o\ & \read_en~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \write_en~input_o\,
	datab => \rst~input_o\,
	datac => \read_en~input_o\,
	combout => \out_data[0]~0_combout\);

-- Location: FF_X18_Y21_N25
\out_data[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem~242_combout\,
	ena => \out_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_data[0]~reg0_q\);

-- Location: IOIBUF_X18_Y24_N15
\address[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(2),
	o => \address[2]~input_o\);

-- Location: IOIBUF_X34_Y20_N1
\in_data[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(1),
	o => \in_data[1]~input_o\);

-- Location: LCCOMB_X25_Y23_N10
\mem~410\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~410_combout\ = (\write_en~input_o\ & (\in_data[1]~input_o\ & (!\read_en~input_o\ & !\rst~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \write_en~input_o\,
	datab => \in_data[1]~input_o\,
	datac => \read_en~input_o\,
	datad => \rst~input_o\,
	combout => \mem~410_combout\);

-- Location: LCCOMB_X18_Y21_N22
\mem~409\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~409_combout\ = (\address[2]~input_o\ & (!\address[1]~input_o\ & (\address[3]~input_o\ & !\address[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \address[1]~input_o\,
	datac => \address[3]~input_o\,
	datad => \address[0]~input_o\,
	combout => \mem~409_combout\);

-- Location: FF_X19_Y22_N29
\mem~217\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~410_combout\,
	sload => VCC,
	ena => \mem~409_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~217_q\);

-- Location: LCCOMB_X19_Y22_N28
\mem~250\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~250_combout\ = (!\address[0]~input_o\ & (\mem~217_q\ & !\address[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \address[0]~input_o\,
	datac => \mem~217_q\,
	datad => \address[1]~input_o\,
	combout => \mem~250_combout\);

-- Location: LCCOMB_X22_Y21_N10
\mem~19feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~19feeder_combout\ = \mem~410_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem~410_combout\,
	combout => \mem~19feeder_combout\);

-- Location: FF_X22_Y21_N11
\mem~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem~19feeder_combout\,
	ena => \mem~406_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~19_q\);

-- Location: FF_X19_Y21_N17
\mem~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~410_combout\,
	sload => VCC,
	ena => \mem~408_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~55_q\);

-- Location: FF_X21_Y21_N27
\mem~1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~410_combout\,
	sload => VCC,
	ena => \mem~407_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~1_q\);

-- Location: LCCOMB_X25_Y21_N10
\mem~37feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~37feeder_combout\ = \mem~410_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem~410_combout\,
	combout => \mem~37feeder_combout\);

-- Location: LCCOMB_X18_Y21_N14
\mem~405\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~405_combout\ = (!\address[2]~input_o\ & (\address[1]~input_o\ & (!\address[3]~input_o\ & !\address[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \address[1]~input_o\,
	datac => \address[3]~input_o\,
	datad => \address[0]~input_o\,
	combout => \mem~405_combout\);

-- Location: FF_X25_Y21_N11
\mem~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem~37feeder_combout\,
	ena => \mem~405_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~37_q\);

-- Location: LCCOMB_X21_Y21_N26
\mem~247\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~247_combout\ = (\address[1]~input_o\ & ((\address[0]~input_o\) # ((\mem~37_q\)))) # (!\address[1]~input_o\ & (!\address[0]~input_o\ & (\mem~1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[0]~input_o\,
	datac => \mem~1_q\,
	datad => \mem~37_q\,
	combout => \mem~247_combout\);

-- Location: LCCOMB_X19_Y21_N16
\mem~248\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~248_combout\ = (\address[0]~input_o\ & ((\mem~247_combout\ & ((\mem~55_q\))) # (!\mem~247_combout\ & (\mem~19_q\)))) # (!\address[0]~input_o\ & (((\mem~247_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \mem~19_q\,
	datac => \mem~55_q\,
	datad => \mem~247_combout\,
	combout => \mem~248_combout\);

-- Location: LCCOMB_X18_Y21_N12
\mem~400\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~400_combout\ = (!\address[2]~input_o\ & (\address[1]~input_o\ & (\address[3]~input_o\ & \address[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \address[1]~input_o\,
	datac => \address[3]~input_o\,
	datad => \address[0]~input_o\,
	combout => \mem~400_combout\);

-- Location: FF_X23_Y21_N7
\mem~199\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~410_combout\,
	sload => VCC,
	ena => \mem~400_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~199_q\);

-- Location: FF_X24_Y22_N27
\mem~145\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~410_combout\,
	sload => VCC,
	ena => \mem~399_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~145_q\);

-- Location: FF_X22_Y22_N29
\mem~181\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~410_combout\,
	sload => VCC,
	ena => \mem~397_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~181_q\);

-- Location: LCCOMB_X24_Y22_N26
\mem~245\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~245_combout\ = (\address[0]~input_o\ & (\address[1]~input_o\)) # (!\address[0]~input_o\ & ((\address[1]~input_o\ & ((\mem~181_q\))) # (!\address[1]~input_o\ & (\mem~145_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \mem~145_q\,
	datad => \mem~181_q\,
	combout => \mem~245_combout\);

-- Location: LCCOMB_X23_Y21_N6
\mem~246\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~246_combout\ = (\address[0]~input_o\ & ((\mem~245_combout\ & ((\mem~199_q\))) # (!\mem~245_combout\ & (\mem~163_q\)))) # (!\address[0]~input_o\ & (((\mem~245_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~163_q\,
	datab => \address[0]~input_o\,
	datac => \mem~199_q\,
	datad => \mem~245_combout\,
	combout => \mem~246_combout\);

-- Location: LCCOMB_X19_Y21_N2
\mem~249\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~249_combout\ = (\address[3]~input_o\ & (((\address[2]~input_o\) # (\mem~246_combout\)))) # (!\address[3]~input_o\ & (\mem~248_combout\ & (!\address[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \mem~248_combout\,
	datac => \address[2]~input_o\,
	datad => \mem~246_combout\,
	combout => \mem~249_combout\);

-- Location: LCCOMB_X19_Y21_N8
\mem~251\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~251_combout\ = (\address[2]~input_o\ & ((\mem~249_combout\ & ((\mem~250_combout\))) # (!\mem~249_combout\ & (\mem~244_combout\)))) # (!\address[2]~input_o\ & (((\mem~249_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~244_combout\,
	datab => \address[2]~input_o\,
	datac => \mem~250_combout\,
	datad => \mem~249_combout\,
	combout => \mem~251_combout\);

-- Location: FF_X19_Y21_N9
\out_data[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem~251_combout\,
	ena => \out_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_data[1]~reg0_q\);

-- Location: LCCOMB_X25_Y22_N4
\mem~411\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~411_combout\ = (\in_data[2]~input_o\ & (!\read_en~input_o\ & (!\rst~input_o\ & \write_en~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[2]~input_o\,
	datab => \read_en~input_o\,
	datac => \rst~input_o\,
	datad => \write_en~input_o\,
	combout => \mem~411_combout\);

-- Location: FF_X19_Y22_N31
\mem~182\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~411_combout\,
	sload => VCC,
	ena => \mem~397_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~182_q\);

-- Location: FF_X24_Y22_N29
\mem~146\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~411_combout\,
	sload => VCC,
	ena => \mem~399_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~146_q\);

-- Location: FF_X25_Y22_N5
\mem~164\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem~411_combout\,
	ena => \mem~398_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~164_q\);

-- Location: LCCOMB_X24_Y22_N28
\mem~252\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~252_combout\ = (\address[0]~input_o\ & ((\address[1]~input_o\) # ((\mem~164_q\)))) # (!\address[0]~input_o\ & (!\address[1]~input_o\ & (\mem~146_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \mem~146_q\,
	datad => \mem~164_q\,
	combout => \mem~252_combout\);

-- Location: LCCOMB_X19_Y22_N30
\mem~253\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~253_combout\ = (\address[1]~input_o\ & ((\mem~252_combout\ & (\mem~200_q\)) # (!\mem~252_combout\ & ((\mem~182_q\))))) # (!\address[1]~input_o\ & (((\mem~252_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~200_q\,
	datab => \address[1]~input_o\,
	datac => \mem~182_q\,
	datad => \mem~252_combout\,
	combout => \mem~253_combout\);

-- Location: FF_X24_Y21_N1
\mem~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~411_combout\,
	sload => VCC,
	ena => \mem~403_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~74_q\);

-- Location: LCCOMB_X18_Y21_N8
\mem~402\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~402_combout\ = (\address[2]~input_o\ & (\address[1]~input_o\ & (!\address[3]~input_o\ & !\address[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \address[1]~input_o\,
	datac => \address[3]~input_o\,
	datad => \address[0]~input_o\,
	combout => \mem~402_combout\);

-- Location: FF_X23_Y21_N19
\mem~110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~411_combout\,
	sload => VCC,
	ena => \mem~402_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~110_q\);

-- Location: LCCOMB_X24_Y21_N0
\mem~254\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~254_combout\ = (\address[1]~input_o\ & ((\address[0]~input_o\) # ((\mem~110_q\)))) # (!\address[1]~input_o\ & (!\address[0]~input_o\ & (\mem~74_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[0]~input_o\,
	datac => \mem~74_q\,
	datad => \mem~110_q\,
	combout => \mem~254_combout\);

-- Location: FF_X24_Y21_N19
\mem~128\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~411_combout\,
	sload => VCC,
	ena => \mem~404_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~128_q\);

-- Location: LCCOMB_X25_Y23_N12
\mem~92feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~92feeder_combout\ = \mem~411_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem~411_combout\,
	combout => \mem~92feeder_combout\);

-- Location: FF_X25_Y23_N13
\mem~92\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem~92feeder_combout\,
	ena => \mem~401_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~92_q\);

-- Location: LCCOMB_X24_Y21_N18
\mem~255\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~255_combout\ = (\address[0]~input_o\ & ((\mem~254_combout\ & (\mem~128_q\)) # (!\mem~254_combout\ & ((\mem~92_q\))))) # (!\address[0]~input_o\ & (\mem~254_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \mem~254_combout\,
	datac => \mem~128_q\,
	datad => \mem~92_q\,
	combout => \mem~255_combout\);

-- Location: FF_X25_Y21_N5
\mem~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~411_combout\,
	sload => VCC,
	ena => \mem~405_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~38_q\);

-- Location: FF_X19_Y21_N21
\mem~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~411_combout\,
	sload => VCC,
	ena => \mem~408_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~56_q\);

-- Location: FF_X21_Y21_N5
\mem~2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~411_combout\,
	sload => VCC,
	ena => \mem~407_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~2_q\);

-- Location: LCCOMB_X22_Y21_N28
\mem~20feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~20feeder_combout\ = \mem~411_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem~411_combout\,
	combout => \mem~20feeder_combout\);

-- Location: FF_X22_Y21_N29
\mem~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem~20feeder_combout\,
	ena => \mem~406_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~20_q\);

-- Location: LCCOMB_X21_Y21_N4
\mem~256\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~256_combout\ = (\address[1]~input_o\ & (\address[0]~input_o\)) # (!\address[1]~input_o\ & ((\address[0]~input_o\ & ((\mem~20_q\))) # (!\address[0]~input_o\ & (\mem~2_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[0]~input_o\,
	datac => \mem~2_q\,
	datad => \mem~20_q\,
	combout => \mem~256_combout\);

-- Location: LCCOMB_X19_Y21_N20
\mem~257\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~257_combout\ = (\address[1]~input_o\ & ((\mem~256_combout\ & ((\mem~56_q\))) # (!\mem~256_combout\ & (\mem~38_q\)))) # (!\address[1]~input_o\ & (((\mem~256_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \mem~38_q\,
	datac => \mem~56_q\,
	datad => \mem~256_combout\,
	combout => \mem~257_combout\);

-- Location: LCCOMB_X19_Y21_N6
\mem~258\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~258_combout\ = (\address[3]~input_o\ & (\address[2]~input_o\)) # (!\address[3]~input_o\ & ((\address[2]~input_o\ & (\mem~255_combout\)) # (!\address[2]~input_o\ & ((\mem~257_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \address[2]~input_o\,
	datac => \mem~255_combout\,
	datad => \mem~257_combout\,
	combout => \mem~258_combout\);

-- Location: LCCOMB_X19_Y21_N26
\mem~260\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~260_combout\ = (\address[3]~input_o\ & ((\mem~258_combout\ & (\mem~259_combout\)) # (!\mem~258_combout\ & ((\mem~253_combout\))))) # (!\address[3]~input_o\ & (((\mem~258_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~259_combout\,
	datab => \address[3]~input_o\,
	datac => \mem~253_combout\,
	datad => \mem~258_combout\,
	combout => \mem~260_combout\);

-- Location: FF_X19_Y21_N27
\out_data[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem~260_combout\,
	ena => \out_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_data[2]~reg0_q\);

-- Location: IOIBUF_X25_Y24_N22
\in_data[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(3),
	o => \in_data[3]~input_o\);

-- Location: LCCOMB_X25_Y23_N30
\mem~412\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~412_combout\ = (!\rst~input_o\ & (((\in_data[3]~input_o\) # (\read_en~input_o\)) # (!\write_en~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \write_en~input_o\,
	datab => \in_data[3]~input_o\,
	datac => \read_en~input_o\,
	datad => \rst~input_o\,
	combout => \mem~412_combout\);

-- Location: LCCOMB_X24_Y21_N14
\mem~129feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~129feeder_combout\ = \mem~412_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem~412_combout\,
	combout => \mem~129feeder_combout\);

-- Location: FF_X24_Y21_N15
\mem~129\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem~129feeder_combout\,
	ena => \mem~404_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~129_q\);

-- Location: FF_X23_Y21_N29
\mem~111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~412_combout\,
	sload => VCC,
	ena => \mem~402_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~111_q\);

-- Location: FF_X24_Y21_N21
\mem~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~412_combout\,
	sload => VCC,
	ena => \mem~403_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~75_q\);

-- Location: FF_X25_Y23_N31
\mem~93\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem~412_combout\,
	ena => \mem~401_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~93_q\);

-- Location: LCCOMB_X24_Y21_N20
\mem~261\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~261_combout\ = (\address[1]~input_o\ & (\address[0]~input_o\)) # (!\address[1]~input_o\ & ((\address[0]~input_o\ & ((\mem~93_q\))) # (!\address[0]~input_o\ & (\mem~75_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[0]~input_o\,
	datac => \mem~75_q\,
	datad => \mem~93_q\,
	combout => \mem~261_combout\);

-- Location: LCCOMB_X23_Y21_N28
\mem~262\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~262_combout\ = (\address[1]~input_o\ & ((\mem~261_combout\ & (\mem~129_q\)) # (!\mem~261_combout\ & ((\mem~111_q\))))) # (!\address[1]~input_o\ & (((\mem~261_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \mem~129_q\,
	datac => \mem~111_q\,
	datad => \mem~261_combout\,
	combout => \mem~262_combout\);

-- Location: FF_X19_Y22_N27
\mem~219\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~412_combout\,
	sload => VCC,
	ena => \mem~409_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~219_q\);

-- Location: LCCOMB_X19_Y22_N26
\mem~268\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~268_combout\ = (!\address[0]~input_o\ & (\mem~219_q\ & !\address[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \address[0]~input_o\,
	datac => \mem~219_q\,
	datad => \address[1]~input_o\,
	combout => \mem~268_combout\);

-- Location: FF_X21_Y21_N23
\mem~3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~412_combout\,
	sload => VCC,
	ena => \mem~407_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~3_q\);

-- Location: FF_X25_Y21_N15
\mem~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~412_combout\,
	sload => VCC,
	ena => \mem~405_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~39_q\);

-- Location: LCCOMB_X21_Y21_N22
\mem~265\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~265_combout\ = (\address[1]~input_o\ & ((\address[0]~input_o\) # ((\mem~39_q\)))) # (!\address[1]~input_o\ & (!\address[0]~input_o\ & (\mem~3_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[0]~input_o\,
	datac => \mem~3_q\,
	datad => \mem~39_q\,
	combout => \mem~265_combout\);

-- Location: FF_X19_Y21_N25
\mem~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~412_combout\,
	sload => VCC,
	ena => \mem~408_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~57_q\);

-- Location: FF_X22_Y21_N23
\mem~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~412_combout\,
	sload => VCC,
	ena => \mem~406_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~21_q\);

-- Location: LCCOMB_X19_Y21_N24
\mem~266\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~266_combout\ = (\address[0]~input_o\ & ((\mem~265_combout\ & (\mem~57_q\)) # (!\mem~265_combout\ & ((\mem~21_q\))))) # (!\address[0]~input_o\ & (\mem~265_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \mem~265_combout\,
	datac => \mem~57_q\,
	datad => \mem~21_q\,
	combout => \mem~266_combout\);

-- Location: FF_X23_Y21_N31
\mem~201\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~412_combout\,
	sload => VCC,
	ena => \mem~400_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~201_q\);

-- Location: FF_X24_Y22_N15
\mem~147\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~412_combout\,
	sload => VCC,
	ena => \mem~399_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~147_q\);

-- Location: LCCOMB_X22_Y22_N14
\mem~183feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~183feeder_combout\ = \mem~412_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem~412_combout\,
	combout => \mem~183feeder_combout\);

-- Location: FF_X22_Y22_N15
\mem~183\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem~183feeder_combout\,
	ena => \mem~397_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~183_q\);

-- Location: LCCOMB_X24_Y22_N14
\mem~263\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~263_combout\ = (\address[0]~input_o\ & (\address[1]~input_o\)) # (!\address[0]~input_o\ & ((\address[1]~input_o\ & ((\mem~183_q\))) # (!\address[1]~input_o\ & (\mem~147_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \mem~147_q\,
	datad => \mem~183_q\,
	combout => \mem~263_combout\);

-- Location: LCCOMB_X23_Y21_N30
\mem~264\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~264_combout\ = (\address[0]~input_o\ & ((\mem~263_combout\ & ((\mem~201_q\))) # (!\mem~263_combout\ & (\mem~165_q\)))) # (!\address[0]~input_o\ & (((\mem~263_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~165_q\,
	datab => \address[0]~input_o\,
	datac => \mem~201_q\,
	datad => \mem~263_combout\,
	combout => \mem~264_combout\);

-- Location: LCCOMB_X19_Y21_N10
\mem~267\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~267_combout\ = (\address[3]~input_o\ & (((\address[2]~input_o\) # (\mem~264_combout\)))) # (!\address[3]~input_o\ & (\mem~266_combout\ & (!\address[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \mem~266_combout\,
	datac => \address[2]~input_o\,
	datad => \mem~264_combout\,
	combout => \mem~267_combout\);

-- Location: LCCOMB_X19_Y21_N4
\mem~269\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~269_combout\ = (\address[2]~input_o\ & ((\mem~267_combout\ & ((\mem~268_combout\))) # (!\mem~267_combout\ & (\mem~262_combout\)))) # (!\address[2]~input_o\ & (((\mem~267_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \mem~262_combout\,
	datac => \mem~268_combout\,
	datad => \mem~267_combout\,
	combout => \mem~269_combout\);

-- Location: FF_X19_Y21_N5
\out_data[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem~269_combout\,
	ena => \out_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_data[3]~reg0_q\);

-- Location: LCCOMB_X25_Y22_N8
\mem~413\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~413_combout\ = (\in_data[4]~input_o\ & (!\read_en~input_o\ & (!\rst~input_o\ & \write_en~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[4]~input_o\,
	datab => \read_en~input_o\,
	datac => \rst~input_o\,
	datad => \write_en~input_o\,
	combout => \mem~413_combout\);

-- Location: FF_X19_Y22_N23
\mem~220\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~413_combout\,
	sload => VCC,
	ena => \mem~409_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~220_q\);

-- Location: LCCOMB_X19_Y22_N22
\mem~277\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~277_combout\ = (!\address[0]~input_o\ & (\mem~220_q\ & !\address[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \address[0]~input_o\,
	datac => \mem~220_q\,
	datad => \address[1]~input_o\,
	combout => \mem~277_combout\);

-- Location: FF_X24_Y21_N9
\mem~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~413_combout\,
	sload => VCC,
	ena => \mem~403_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~76_q\);

-- Location: LCCOMB_X23_Y21_N2
\mem~112feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~112feeder_combout\ = \mem~413_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem~413_combout\,
	combout => \mem~112feeder_combout\);

-- Location: FF_X23_Y21_N3
\mem~112\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem~112feeder_combout\,
	ena => \mem~402_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~112_q\);

-- Location: LCCOMB_X24_Y21_N8
\mem~272\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~272_combout\ = (\address[1]~input_o\ & ((\address[0]~input_o\) # ((\mem~112_q\)))) # (!\address[1]~input_o\ & (!\address[0]~input_o\ & (\mem~76_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[0]~input_o\,
	datac => \mem~76_q\,
	datad => \mem~112_q\,
	combout => \mem~272_combout\);

-- Location: FF_X24_Y21_N11
\mem~130\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~413_combout\,
	sload => VCC,
	ena => \mem~404_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~130_q\);

-- Location: LCCOMB_X25_Y23_N24
\mem~94feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~94feeder_combout\ = \mem~413_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem~413_combout\,
	combout => \mem~94feeder_combout\);

-- Location: FF_X25_Y23_N25
\mem~94\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem~94feeder_combout\,
	ena => \mem~401_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~94_q\);

-- Location: LCCOMB_X24_Y21_N10
\mem~273\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~273_combout\ = (\address[0]~input_o\ & ((\mem~272_combout\ & (\mem~130_q\)) # (!\mem~272_combout\ & ((\mem~94_q\))))) # (!\address[0]~input_o\ & (\mem~272_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \mem~272_combout\,
	datac => \mem~130_q\,
	datad => \mem~94_q\,
	combout => \mem~273_combout\);

-- Location: LCCOMB_X25_Y21_N8
\mem~40feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~40feeder_combout\ = \mem~413_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem~413_combout\,
	combout => \mem~40feeder_combout\);

-- Location: FF_X25_Y21_N9
\mem~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem~40feeder_combout\,
	ena => \mem~405_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~40_q\);

-- Location: FF_X19_Y21_N13
\mem~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~413_combout\,
	sload => VCC,
	ena => \mem~408_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~58_q\);

-- Location: FF_X21_Y21_N25
\mem~4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~413_combout\,
	sload => VCC,
	ena => \mem~407_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~4_q\);

-- Location: LCCOMB_X22_Y21_N8
\mem~22feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~22feeder_combout\ = \mem~413_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem~413_combout\,
	combout => \mem~22feeder_combout\);

-- Location: FF_X22_Y21_N9
\mem~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem~22feeder_combout\,
	ena => \mem~406_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~22_q\);

-- Location: LCCOMB_X21_Y21_N24
\mem~274\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~274_combout\ = (\address[1]~input_o\ & (\address[0]~input_o\)) # (!\address[1]~input_o\ & ((\address[0]~input_o\ & ((\mem~22_q\))) # (!\address[0]~input_o\ & (\mem~4_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[0]~input_o\,
	datac => \mem~4_q\,
	datad => \mem~22_q\,
	combout => \mem~274_combout\);

-- Location: LCCOMB_X19_Y21_N12
\mem~275\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~275_combout\ = (\address[1]~input_o\ & ((\mem~274_combout\ & ((\mem~58_q\))) # (!\mem~274_combout\ & (\mem~40_q\)))) # (!\address[1]~input_o\ & (((\mem~274_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \mem~40_q\,
	datac => \mem~58_q\,
	datad => \mem~274_combout\,
	combout => \mem~275_combout\);

-- Location: LCCOMB_X19_Y21_N22
\mem~276\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~276_combout\ = (\address[3]~input_o\ & (\address[2]~input_o\)) # (!\address[3]~input_o\ & ((\address[2]~input_o\ & (\mem~273_combout\)) # (!\address[2]~input_o\ & ((\mem~275_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \address[2]~input_o\,
	datac => \mem~273_combout\,
	datad => \mem~275_combout\,
	combout => \mem~276_combout\);

-- Location: FF_X19_Y22_N13
\mem~184\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~413_combout\,
	sload => VCC,
	ena => \mem~397_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~184_q\);

-- Location: FF_X24_Y22_N17
\mem~148\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~413_combout\,
	sload => VCC,
	ena => \mem~399_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~148_q\);

-- Location: FF_X25_Y22_N9
\mem~166\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem~413_combout\,
	ena => \mem~398_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~166_q\);

-- Location: LCCOMB_X24_Y22_N16
\mem~270\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~270_combout\ = (\address[0]~input_o\ & ((\address[1]~input_o\) # ((\mem~166_q\)))) # (!\address[0]~input_o\ & (!\address[1]~input_o\ & (\mem~148_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \mem~148_q\,
	datad => \mem~166_q\,
	combout => \mem~270_combout\);

-- Location: LCCOMB_X19_Y22_N12
\mem~271\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~271_combout\ = (\address[1]~input_o\ & ((\mem~270_combout\ & (\mem~202_q\)) # (!\mem~270_combout\ & ((\mem~184_q\))))) # (!\address[1]~input_o\ & (((\mem~270_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~202_q\,
	datab => \address[1]~input_o\,
	datac => \mem~184_q\,
	datad => \mem~270_combout\,
	combout => \mem~271_combout\);

-- Location: LCCOMB_X19_Y21_N30
\mem~278\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~278_combout\ = (\address[3]~input_o\ & ((\mem~276_combout\ & (\mem~277_combout\)) # (!\mem~276_combout\ & ((\mem~271_combout\))))) # (!\address[3]~input_o\ & (((\mem~276_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \mem~277_combout\,
	datac => \mem~276_combout\,
	datad => \mem~271_combout\,
	combout => \mem~278_combout\);

-- Location: FF_X19_Y21_N31
\out_data[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem~278_combout\,
	ena => \out_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_data[4]~reg0_q\);

-- Location: IOIBUF_X34_Y19_N15
\in_data[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(5),
	o => \in_data[5]~input_o\);

-- Location: LCCOMB_X25_Y23_N26
\mem~414\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~414_combout\ = (\write_en~input_o\ & (!\read_en~input_o\ & (\in_data[5]~input_o\ & !\rst~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \write_en~input_o\,
	datab => \read_en~input_o\,
	datac => \in_data[5]~input_o\,
	datad => \rst~input_o\,
	combout => \mem~414_combout\);

-- Location: FF_X19_Y22_N3
\mem~221\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~414_combout\,
	sload => VCC,
	ena => \mem~409_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~221_q\);

-- Location: LCCOMB_X19_Y22_N2
\mem~286\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~286_combout\ = (!\address[0]~input_o\ & (\mem~221_q\ & !\address[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \address[0]~input_o\,
	datac => \mem~221_q\,
	datad => \address[1]~input_o\,
	combout => \mem~286_combout\);

-- Location: FF_X21_Y21_N29
\mem~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~414_combout\,
	sload => VCC,
	ena => \mem~408_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~59_q\);

-- Location: FF_X21_Y21_N19
\mem~5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~414_combout\,
	sload => VCC,
	ena => \mem~407_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~5_q\);

-- Location: LCCOMB_X25_Y21_N26
\mem~41feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~41feeder_combout\ = \mem~414_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem~414_combout\,
	combout => \mem~41feeder_combout\);

-- Location: FF_X25_Y21_N27
\mem~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem~41feeder_combout\,
	ena => \mem~405_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~41_q\);

-- Location: LCCOMB_X21_Y21_N18
\mem~283\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~283_combout\ = (\address[1]~input_o\ & ((\address[0]~input_o\) # ((\mem~41_q\)))) # (!\address[1]~input_o\ & (!\address[0]~input_o\ & (\mem~5_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[0]~input_o\,
	datac => \mem~5_q\,
	datad => \mem~41_q\,
	combout => \mem~283_combout\);

-- Location: LCCOMB_X21_Y21_N28
\mem~284\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~284_combout\ = (\address[0]~input_o\ & ((\mem~283_combout\ & ((\mem~59_q\))) # (!\mem~283_combout\ & (\mem~23_q\)))) # (!\address[0]~input_o\ & (((\mem~283_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~23_q\,
	datab => \address[0]~input_o\,
	datac => \mem~59_q\,
	datad => \mem~283_combout\,
	combout => \mem~284_combout\);

-- Location: FF_X23_Y21_N15
\mem~203\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~414_combout\,
	sload => VCC,
	ena => \mem~400_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~203_q\);

-- Location: FF_X24_Y22_N19
\mem~149\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~414_combout\,
	sload => VCC,
	ena => \mem~399_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~149_q\);

-- Location: FF_X19_Y22_N25
\mem~185\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~414_combout\,
	sload => VCC,
	ena => \mem~397_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~185_q\);

-- Location: LCCOMB_X24_Y22_N18
\mem~281\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~281_combout\ = (\address[0]~input_o\ & (\address[1]~input_o\)) # (!\address[0]~input_o\ & ((\address[1]~input_o\ & ((\mem~185_q\))) # (!\address[1]~input_o\ & (\mem~149_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \mem~149_q\,
	datad => \mem~185_q\,
	combout => \mem~281_combout\);

-- Location: LCCOMB_X23_Y21_N14
\mem~282\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~282_combout\ = (\address[0]~input_o\ & ((\mem~281_combout\ & ((\mem~203_q\))) # (!\mem~281_combout\ & (\mem~167_q\)))) # (!\address[0]~input_o\ & (((\mem~281_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~167_q\,
	datab => \address[0]~input_o\,
	datac => \mem~203_q\,
	datad => \mem~281_combout\,
	combout => \mem~282_combout\);

-- Location: LCCOMB_X19_Y21_N0
\mem~285\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~285_combout\ = (\address[3]~input_o\ & ((\address[2]~input_o\) # ((\mem~282_combout\)))) # (!\address[3]~input_o\ & (!\address[2]~input_o\ & (\mem~284_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \address[2]~input_o\,
	datac => \mem~284_combout\,
	datad => \mem~282_combout\,
	combout => \mem~285_combout\);

-- Location: LCCOMB_X22_Y22_N8
\mem~287\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~287_combout\ = (\address[2]~input_o\ & ((\mem~285_combout\ & ((\mem~286_combout\))) # (!\mem~285_combout\ & (\mem~280_combout\)))) # (!\address[2]~input_o\ & (((\mem~285_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~280_combout\,
	datab => \address[2]~input_o\,
	datac => \mem~286_combout\,
	datad => \mem~285_combout\,
	combout => \mem~287_combout\);

-- Location: FF_X22_Y22_N9
\out_data[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem~287_combout\,
	ena => \out_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_data[5]~reg0_q\);

-- Location: IOIBUF_X34_Y12_N22
\in_data[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(6),
	o => \in_data[6]~input_o\);

-- Location: LCCOMB_X25_Y22_N28
\mem~415\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~415_combout\ = (!\rst~input_o\ & (\in_data[6]~input_o\ & (!\read_en~input_o\ & \write_en~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \in_data[6]~input_o\,
	datac => \read_en~input_o\,
	datad => \write_en~input_o\,
	combout => \mem~415_combout\);

-- Location: FF_X19_Y22_N15
\mem~222\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~415_combout\,
	sload => VCC,
	ena => \mem~409_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~222_q\);

-- Location: LCCOMB_X19_Y22_N14
\mem~295\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~295_combout\ = (!\address[0]~input_o\ & (\mem~222_q\ & !\address[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \address[0]~input_o\,
	datac => \mem~222_q\,
	datad => \address[1]~input_o\,
	combout => \mem~295_combout\);

-- Location: LCCOMB_X25_Y23_N20
\mem~96feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~96feeder_combout\ = \mem~415_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem~415_combout\,
	combout => \mem~96feeder_combout\);

-- Location: FF_X25_Y23_N21
\mem~96\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem~96feeder_combout\,
	ena => \mem~401_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~96_q\);

-- Location: FF_X24_Y21_N3
\mem~132\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~415_combout\,
	sload => VCC,
	ena => \mem~404_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~132_q\);

-- Location: FF_X24_Y21_N17
\mem~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~415_combout\,
	sload => VCC,
	ena => \mem~403_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~78_q\);

-- Location: FF_X23_Y21_N11
\mem~114\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~415_combout\,
	sload => VCC,
	ena => \mem~402_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~114_q\);

-- Location: LCCOMB_X24_Y21_N16
\mem~290\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~290_combout\ = (\address[1]~input_o\ & ((\address[0]~input_o\) # ((\mem~114_q\)))) # (!\address[1]~input_o\ & (!\address[0]~input_o\ & (\mem~78_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[0]~input_o\,
	datac => \mem~78_q\,
	datad => \mem~114_q\,
	combout => \mem~290_combout\);

-- Location: LCCOMB_X24_Y21_N2
\mem~291\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~291_combout\ = (\address[0]~input_o\ & ((\mem~290_combout\ & ((\mem~132_q\))) # (!\mem~290_combout\ & (\mem~96_q\)))) # (!\address[0]~input_o\ & (((\mem~290_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \mem~96_q\,
	datac => \mem~132_q\,
	datad => \mem~290_combout\,
	combout => \mem~291_combout\);

-- Location: FF_X21_Y22_N25
\mem~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~415_combout\,
	sload => VCC,
	ena => \mem~408_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~60_q\);

-- Location: FF_X21_Y21_N15
\mem~6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~415_combout\,
	sload => VCC,
	ena => \mem~407_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~6_q\);

-- Location: LCCOMB_X22_Y21_N4
\mem~24feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~24feeder_combout\ = \mem~415_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem~415_combout\,
	combout => \mem~24feeder_combout\);

-- Location: FF_X22_Y21_N5
\mem~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem~24feeder_combout\,
	ena => \mem~406_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~24_q\);

-- Location: LCCOMB_X21_Y21_N14
\mem~292\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~292_combout\ = (\address[1]~input_o\ & (\address[0]~input_o\)) # (!\address[1]~input_o\ & ((\address[0]~input_o\ & ((\mem~24_q\))) # (!\address[0]~input_o\ & (\mem~6_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[0]~input_o\,
	datac => \mem~6_q\,
	datad => \mem~24_q\,
	combout => \mem~292_combout\);

-- Location: LCCOMB_X21_Y22_N24
\mem~293\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~293_combout\ = (\address[1]~input_o\ & ((\mem~292_combout\ & ((\mem~60_q\))) # (!\mem~292_combout\ & (\mem~42_q\)))) # (!\address[1]~input_o\ & (((\mem~292_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~42_q\,
	datab => \address[1]~input_o\,
	datac => \mem~60_q\,
	datad => \mem~292_combout\,
	combout => \mem~293_combout\);

-- Location: LCCOMB_X21_Y22_N26
\mem~294\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~294_combout\ = (\address[3]~input_o\ & (\address[2]~input_o\)) # (!\address[3]~input_o\ & ((\address[2]~input_o\ & (\mem~291_combout\)) # (!\address[2]~input_o\ & ((\mem~293_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \address[2]~input_o\,
	datac => \mem~291_combout\,
	datad => \mem~293_combout\,
	combout => \mem~294_combout\);

-- Location: FF_X19_Y22_N5
\mem~186\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~415_combout\,
	sload => VCC,
	ena => \mem~397_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~186_q\);

-- Location: FF_X24_Y22_N5
\mem~150\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~415_combout\,
	sload => VCC,
	ena => \mem~399_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~150_q\);

-- Location: FF_X25_Y22_N29
\mem~168\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem~415_combout\,
	ena => \mem~398_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~168_q\);

-- Location: LCCOMB_X24_Y22_N4
\mem~288\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~288_combout\ = (\address[0]~input_o\ & ((\address[1]~input_o\) # ((\mem~168_q\)))) # (!\address[0]~input_o\ & (!\address[1]~input_o\ & (\mem~150_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \mem~150_q\,
	datad => \mem~168_q\,
	combout => \mem~288_combout\);

-- Location: LCCOMB_X19_Y22_N4
\mem~289\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~289_combout\ = (\address[1]~input_o\ & ((\mem~288_combout\ & (\mem~204_q\)) # (!\mem~288_combout\ & ((\mem~186_q\))))) # (!\address[1]~input_o\ & (((\mem~288_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~204_q\,
	datab => \address[1]~input_o\,
	datac => \mem~186_q\,
	datad => \mem~288_combout\,
	combout => \mem~289_combout\);

-- Location: LCCOMB_X21_Y22_N16
\mem~296\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~296_combout\ = (\address[3]~input_o\ & ((\mem~294_combout\ & (\mem~295_combout\)) # (!\mem~294_combout\ & ((\mem~289_combout\))))) # (!\address[3]~input_o\ & (((\mem~294_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \mem~295_combout\,
	datac => \mem~294_combout\,
	datad => \mem~289_combout\,
	combout => \mem~296_combout\);

-- Location: FF_X21_Y22_N17
\out_data[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem~296_combout\,
	ena => \out_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_data[6]~reg0_q\);

-- Location: IOIBUF_X34_Y12_N15
\in_data[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(7),
	o => \in_data[7]~input_o\);

-- Location: LCCOMB_X25_Y23_N6
\mem~416\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~416_combout\ = (\write_en~input_o\ & (!\read_en~input_o\ & (\in_data[7]~input_o\ & !\rst~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \write_en~input_o\,
	datab => \read_en~input_o\,
	datac => \in_data[7]~input_o\,
	datad => \rst~input_o\,
	combout => \mem~416_combout\);

-- Location: FF_X19_Y22_N11
\mem~223\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~416_combout\,
	sload => VCC,
	ena => \mem~409_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~223_q\);

-- Location: LCCOMB_X19_Y22_N10
\mem~304\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~304_combout\ = (!\address[0]~input_o\ & (\mem~223_q\ & !\address[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \address[0]~input_o\,
	datac => \mem~223_q\,
	datad => \address[1]~input_o\,
	combout => \mem~304_combout\);

-- Location: FF_X23_Y23_N25
\mem~115\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~416_combout\,
	sload => VCC,
	ena => \mem~402_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~115_q\);

-- Location: FF_X24_Y23_N25
\mem~79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~416_combout\,
	sload => VCC,
	ena => \mem~403_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~79_q\);

-- Location: FF_X25_Y23_N7
\mem~97\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem~416_combout\,
	ena => \mem~401_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~97_q\);

-- Location: LCCOMB_X24_Y23_N24
\mem~297\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~297_combout\ = (\address[0]~input_o\ & ((\address[1]~input_o\) # ((\mem~97_q\)))) # (!\address[0]~input_o\ & (!\address[1]~input_o\ & (\mem~79_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \mem~79_q\,
	datad => \mem~97_q\,
	combout => \mem~297_combout\);

-- Location: LCCOMB_X23_Y23_N24
\mem~298\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~298_combout\ = (\address[1]~input_o\ & ((\mem~297_combout\ & (\mem~133_q\)) # (!\mem~297_combout\ & ((\mem~115_q\))))) # (!\address[1]~input_o\ & (((\mem~297_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~133_q\,
	datab => \address[1]~input_o\,
	datac => \mem~115_q\,
	datad => \mem~297_combout\,
	combout => \mem~298_combout\);

-- Location: LCCOMB_X22_Y21_N30
\mem~25feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~25feeder_combout\ = \mem~416_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem~416_combout\,
	combout => \mem~25feeder_combout\);

-- Location: FF_X22_Y21_N31
\mem~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem~25feeder_combout\,
	ena => \mem~406_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~25_q\);

-- Location: FF_X21_Y22_N21
\mem~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~416_combout\,
	sload => VCC,
	ena => \mem~408_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~61_q\);

-- Location: FF_X21_Y21_N9
\mem~7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~416_combout\,
	sload => VCC,
	ena => \mem~407_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~7_q\);

-- Location: LCCOMB_X21_Y23_N10
\mem~43feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~43feeder_combout\ = \mem~416_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem~416_combout\,
	combout => \mem~43feeder_combout\);

-- Location: FF_X21_Y23_N11
\mem~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem~43feeder_combout\,
	ena => \mem~405_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~43_q\);

-- Location: LCCOMB_X21_Y21_N8
\mem~301\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~301_combout\ = (\address[1]~input_o\ & ((\address[0]~input_o\) # ((\mem~43_q\)))) # (!\address[1]~input_o\ & (!\address[0]~input_o\ & (\mem~7_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[0]~input_o\,
	datac => \mem~7_q\,
	datad => \mem~43_q\,
	combout => \mem~301_combout\);

-- Location: LCCOMB_X21_Y22_N20
\mem~302\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~302_combout\ = (\address[0]~input_o\ & ((\mem~301_combout\ & ((\mem~61_q\))) # (!\mem~301_combout\ & (\mem~25_q\)))) # (!\address[0]~input_o\ & (((\mem~301_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \mem~25_q\,
	datac => \mem~61_q\,
	datad => \mem~301_combout\,
	combout => \mem~302_combout\);

-- Location: FF_X25_Y22_N7
\mem~169\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~416_combout\,
	sload => VCC,
	ena => \mem~398_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~169_q\);

-- Location: FF_X26_Y22_N9
\mem~205\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~416_combout\,
	sload => VCC,
	ena => \mem~400_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~205_q\);

-- Location: FF_X24_Y22_N23
\mem~151\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~416_combout\,
	sload => VCC,
	ena => \mem~399_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~151_q\);

-- Location: FF_X19_Y22_N17
\mem~187\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~416_combout\,
	sload => VCC,
	ena => \mem~397_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~187_q\);

-- Location: LCCOMB_X24_Y22_N22
\mem~299\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~299_combout\ = (\address[0]~input_o\ & (\address[1]~input_o\)) # (!\address[0]~input_o\ & ((\address[1]~input_o\ & ((\mem~187_q\))) # (!\address[1]~input_o\ & (\mem~151_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \mem~151_q\,
	datad => \mem~187_q\,
	combout => \mem~299_combout\);

-- Location: LCCOMB_X26_Y22_N8
\mem~300\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~300_combout\ = (\address[0]~input_o\ & ((\mem~299_combout\ & ((\mem~205_q\))) # (!\mem~299_combout\ & (\mem~169_q\)))) # (!\address[0]~input_o\ & (((\mem~299_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \mem~169_q\,
	datac => \mem~205_q\,
	datad => \mem~299_combout\,
	combout => \mem~300_combout\);

-- Location: LCCOMB_X21_Y22_N6
\mem~303\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~303_combout\ = (\address[3]~input_o\ & (((\address[2]~input_o\) # (\mem~300_combout\)))) # (!\address[3]~input_o\ & (\mem~302_combout\ & (!\address[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \mem~302_combout\,
	datac => \address[2]~input_o\,
	datad => \mem~300_combout\,
	combout => \mem~303_combout\);

-- Location: LCCOMB_X21_Y22_N10
\mem~305\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~305_combout\ = (\address[2]~input_o\ & ((\mem~303_combout\ & (\mem~304_combout\)) # (!\mem~303_combout\ & ((\mem~298_combout\))))) # (!\address[2]~input_o\ & (((\mem~303_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \mem~304_combout\,
	datac => \mem~298_combout\,
	datad => \mem~303_combout\,
	combout => \mem~305_combout\);

-- Location: FF_X21_Y22_N11
\out_data[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem~305_combout\,
	ena => \out_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_data[7]~reg0_q\);

-- Location: LCCOMB_X25_Y22_N24
\mem~417\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~417_combout\ = (\in_data[8]~input_o\ & (!\read_en~input_o\ & (!\rst~input_o\ & \write_en~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[8]~input_o\,
	datab => \read_en~input_o\,
	datac => \rst~input_o\,
	datad => \write_en~input_o\,
	combout => \mem~417_combout\);

-- Location: FF_X21_Y22_N1
\mem~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~417_combout\,
	sload => VCC,
	ena => \mem~408_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~62_q\);

-- Location: FF_X21_Y21_N11
\mem~8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~417_combout\,
	sload => VCC,
	ena => \mem~407_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~8_q\);

-- Location: LCCOMB_X22_Y21_N16
\mem~26feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~26feeder_combout\ = \mem~417_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem~417_combout\,
	combout => \mem~26feeder_combout\);

-- Location: FF_X22_Y21_N17
\mem~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem~26feeder_combout\,
	ena => \mem~406_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~26_q\);

-- Location: LCCOMB_X21_Y21_N10
\mem~310\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~310_combout\ = (\address[1]~input_o\ & (\address[0]~input_o\)) # (!\address[1]~input_o\ & ((\address[0]~input_o\ & ((\mem~26_q\))) # (!\address[0]~input_o\ & (\mem~8_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[0]~input_o\,
	datac => \mem~8_q\,
	datad => \mem~26_q\,
	combout => \mem~310_combout\);

-- Location: LCCOMB_X21_Y22_N0
\mem~311\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~311_combout\ = (\address[1]~input_o\ & ((\mem~310_combout\ & ((\mem~62_q\))) # (!\mem~310_combout\ & (\mem~44_q\)))) # (!\address[1]~input_o\ & (((\mem~310_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~44_q\,
	datab => \address[1]~input_o\,
	datac => \mem~62_q\,
	datad => \mem~310_combout\,
	combout => \mem~311_combout\);

-- Location: FF_X25_Y23_N17
\mem~98\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~417_combout\,
	sload => VCC,
	ena => \mem~401_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~98_q\);

-- Location: FF_X24_Y23_N7
\mem~134\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~417_combout\,
	sload => VCC,
	ena => \mem~404_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~134_q\);

-- Location: FF_X24_Y23_N13
\mem~80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~417_combout\,
	sload => VCC,
	ena => \mem~403_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~80_q\);

-- Location: LCCOMB_X23_Y23_N18
\mem~116feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~116feeder_combout\ = \mem~417_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem~417_combout\,
	combout => \mem~116feeder_combout\);

-- Location: FF_X23_Y23_N19
\mem~116\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem~116feeder_combout\,
	ena => \mem~402_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~116_q\);

-- Location: LCCOMB_X24_Y23_N12
\mem~308\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~308_combout\ = (\address[0]~input_o\ & (\address[1]~input_o\)) # (!\address[0]~input_o\ & ((\address[1]~input_o\ & ((\mem~116_q\))) # (!\address[1]~input_o\ & (\mem~80_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \mem~80_q\,
	datad => \mem~116_q\,
	combout => \mem~308_combout\);

-- Location: LCCOMB_X24_Y23_N6
\mem~309\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~309_combout\ = (\address[0]~input_o\ & ((\mem~308_combout\ & ((\mem~134_q\))) # (!\mem~308_combout\ & (\mem~98_q\)))) # (!\address[0]~input_o\ & (((\mem~308_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \mem~98_q\,
	datac => \mem~134_q\,
	datad => \mem~308_combout\,
	combout => \mem~309_combout\);

-- Location: LCCOMB_X21_Y22_N2
\mem~312\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~312_combout\ = (\address[3]~input_o\ & (((\address[2]~input_o\)))) # (!\address[3]~input_o\ & ((\address[2]~input_o\ & ((\mem~309_combout\))) # (!\address[2]~input_o\ & (\mem~311_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \mem~311_combout\,
	datac => \address[2]~input_o\,
	datad => \mem~309_combout\,
	combout => \mem~312_combout\);

-- Location: FF_X19_Y22_N7
\mem~224\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~417_combout\,
	sload => VCC,
	ena => \mem~409_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~224_q\);

-- Location: LCCOMB_X19_Y22_N6
\mem~313\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~313_combout\ = (!\address[0]~input_o\ & (\mem~224_q\ & !\address[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \address[0]~input_o\,
	datac => \mem~224_q\,
	datad => \address[1]~input_o\,
	combout => \mem~313_combout\);

-- Location: FF_X19_Y22_N21
\mem~188\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~417_combout\,
	sload => VCC,
	ena => \mem~397_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~188_q\);

-- Location: FF_X24_Y22_N9
\mem~152\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~417_combout\,
	sload => VCC,
	ena => \mem~399_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~152_q\);

-- Location: FF_X25_Y22_N25
\mem~170\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem~417_combout\,
	ena => \mem~398_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~170_q\);

-- Location: LCCOMB_X24_Y22_N8
\mem~306\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~306_combout\ = (\address[0]~input_o\ & ((\address[1]~input_o\) # ((\mem~170_q\)))) # (!\address[0]~input_o\ & (!\address[1]~input_o\ & (\mem~152_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \mem~152_q\,
	datad => \mem~170_q\,
	combout => \mem~306_combout\);

-- Location: LCCOMB_X19_Y22_N20
\mem~307\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~307_combout\ = (\address[1]~input_o\ & ((\mem~306_combout\ & (\mem~206_q\)) # (!\mem~306_combout\ & ((\mem~188_q\))))) # (!\address[1]~input_o\ & (((\mem~306_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~206_q\,
	datab => \address[1]~input_o\,
	datac => \mem~188_q\,
	datad => \mem~306_combout\,
	combout => \mem~307_combout\);

-- Location: LCCOMB_X21_Y22_N12
\mem~314\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~314_combout\ = (\address[3]~input_o\ & ((\mem~312_combout\ & (\mem~313_combout\)) # (!\mem~312_combout\ & ((\mem~307_combout\))))) # (!\address[3]~input_o\ & (\mem~312_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \mem~312_combout\,
	datac => \mem~313_combout\,
	datad => \mem~307_combout\,
	combout => \mem~314_combout\);

-- Location: FF_X21_Y22_N13
\out_data[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem~314_combout\,
	ena => \out_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_data[8]~reg0_q\);

-- Location: IOIBUF_X34_Y12_N8
\in_data[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(9),
	o => \in_data[9]~input_o\);

-- Location: LCCOMB_X25_Y23_N2
\mem~418\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~418_combout\ = (\write_en~input_o\ & (\in_data[9]~input_o\ & (!\read_en~input_o\ & !\rst~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \write_en~input_o\,
	datab => \in_data[9]~input_o\,
	datac => \read_en~input_o\,
	datad => \rst~input_o\,
	combout => \mem~418_combout\);

-- Location: FF_X28_Y22_N3
\mem~225\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~418_combout\,
	sload => VCC,
	ena => \mem~409_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~225_q\);

-- Location: LCCOMB_X28_Y22_N2
\mem~322\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~322_combout\ = (!\address[1]~input_o\ & (\mem~225_q\ & !\address[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \address[1]~input_o\,
	datac => \mem~225_q\,
	datad => \address[0]~input_o\,
	combout => \mem~322_combout\);

-- Location: FF_X22_Y21_N27
\mem~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~418_combout\,
	sload => VCC,
	ena => \mem~406_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~27_q\);

-- Location: FF_X21_Y22_N29
\mem~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~418_combout\,
	sload => VCC,
	ena => \mem~408_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~63_q\);

-- Location: FF_X21_Y21_N21
\mem~9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~418_combout\,
	sload => VCC,
	ena => \mem~407_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~9_q\);

-- Location: FF_X21_Y23_N7
\mem~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~418_combout\,
	sload => VCC,
	ena => \mem~405_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~45_q\);

-- Location: LCCOMB_X21_Y21_N20
\mem~319\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~319_combout\ = (\address[1]~input_o\ & ((\address[0]~input_o\) # ((\mem~45_q\)))) # (!\address[1]~input_o\ & (!\address[0]~input_o\ & (\mem~9_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[0]~input_o\,
	datac => \mem~9_q\,
	datad => \mem~45_q\,
	combout => \mem~319_combout\);

-- Location: LCCOMB_X21_Y22_N28
\mem~320\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~320_combout\ = (\address[0]~input_o\ & ((\mem~319_combout\ & ((\mem~63_q\))) # (!\mem~319_combout\ & (\mem~27_q\)))) # (!\address[0]~input_o\ & (((\mem~319_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \mem~27_q\,
	datac => \mem~63_q\,
	datad => \mem~319_combout\,
	combout => \mem~320_combout\);

-- Location: FF_X26_Y22_N21
\mem~207\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~418_combout\,
	sload => VCC,
	ena => \mem~400_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~207_q\);

-- Location: FF_X24_Y22_N3
\mem~153\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~418_combout\,
	sload => VCC,
	ena => \mem~399_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~153_q\);

-- Location: FF_X28_Y22_N9
\mem~189\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~418_combout\,
	sload => VCC,
	ena => \mem~397_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~189_q\);

-- Location: LCCOMB_X24_Y22_N2
\mem~317\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~317_combout\ = (\address[0]~input_o\ & (\address[1]~input_o\)) # (!\address[0]~input_o\ & ((\address[1]~input_o\ & ((\mem~189_q\))) # (!\address[1]~input_o\ & (\mem~153_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \mem~153_q\,
	datad => \mem~189_q\,
	combout => \mem~317_combout\);

-- Location: LCCOMB_X26_Y22_N20
\mem~318\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~318_combout\ = (\address[0]~input_o\ & ((\mem~317_combout\ & ((\mem~207_q\))) # (!\mem~317_combout\ & (\mem~171_q\)))) # (!\address[0]~input_o\ & (((\mem~317_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~171_q\,
	datab => \address[0]~input_o\,
	datac => \mem~207_q\,
	datad => \mem~317_combout\,
	combout => \mem~318_combout\);

-- Location: LCCOMB_X21_Y22_N22
\mem~321\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~321_combout\ = (\address[3]~input_o\ & (((\address[2]~input_o\) # (\mem~318_combout\)))) # (!\address[3]~input_o\ & (\mem~320_combout\ & (!\address[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \mem~320_combout\,
	datac => \address[2]~input_o\,
	datad => \mem~318_combout\,
	combout => \mem~321_combout\);

-- Location: LCCOMB_X21_Y22_N30
\mem~323\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~323_combout\ = (\mem~321_combout\ & (((\mem~322_combout\) # (!\address[2]~input_o\)))) # (!\mem~321_combout\ & (\mem~316_combout\ & ((\address[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~316_combout\,
	datab => \mem~322_combout\,
	datac => \mem~321_combout\,
	datad => \address[2]~input_o\,
	combout => \mem~323_combout\);

-- Location: FF_X21_Y22_N31
\out_data[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem~323_combout\,
	ena => \out_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_data[9]~reg0_q\);

-- Location: LCCOMB_X25_Y22_N12
\mem~419\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~419_combout\ = (\in_data[10]~input_o\ & (!\read_en~input_o\ & (!\rst~input_o\ & \write_en~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[10]~input_o\,
	datab => \read_en~input_o\,
	datac => \rst~input_o\,
	datad => \write_en~input_o\,
	combout => \mem~419_combout\);

-- Location: FF_X22_Y22_N1
\mem~190\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~419_combout\,
	sload => VCC,
	ena => \mem~397_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~190_q\);

-- Location: FF_X24_Y22_N21
\mem~154\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~419_combout\,
	sload => VCC,
	ena => \mem~399_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~154_q\);

-- Location: FF_X25_Y22_N13
\mem~172\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem~419_combout\,
	ena => \mem~398_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~172_q\);

-- Location: LCCOMB_X24_Y22_N20
\mem~324\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~324_combout\ = (\address[0]~input_o\ & ((\address[1]~input_o\) # ((\mem~172_q\)))) # (!\address[0]~input_o\ & (!\address[1]~input_o\ & (\mem~154_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \mem~154_q\,
	datad => \mem~172_q\,
	combout => \mem~324_combout\);

-- Location: LCCOMB_X22_Y22_N0
\mem~325\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~325_combout\ = (\address[1]~input_o\ & ((\mem~324_combout\ & (\mem~208_q\)) # (!\mem~324_combout\ & ((\mem~190_q\))))) # (!\address[1]~input_o\ & (((\mem~324_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~208_q\,
	datab => \address[1]~input_o\,
	datac => \mem~190_q\,
	datad => \mem~324_combout\,
	combout => \mem~325_combout\);

-- Location: FF_X28_Y22_N21
\mem~226\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~419_combout\,
	sload => VCC,
	ena => \mem~409_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~226_q\);

-- Location: LCCOMB_X28_Y22_N20
\mem~331\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~331_combout\ = (!\address[1]~input_o\ & (\mem~226_q\ & !\address[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \address[1]~input_o\,
	datac => \mem~226_q\,
	datad => \address[0]~input_o\,
	combout => \mem~331_combout\);

-- Location: LCCOMB_X25_Y23_N28
\mem~100feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~100feeder_combout\ = \mem~419_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem~419_combout\,
	combout => \mem~100feeder_combout\);

-- Location: FF_X25_Y23_N29
\mem~100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem~100feeder_combout\,
	ena => \mem~401_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~100_q\);

-- Location: FF_X24_Y23_N31
\mem~136\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~419_combout\,
	sload => VCC,
	ena => \mem~404_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~136_q\);

-- Location: FF_X24_Y23_N29
\mem~82\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~419_combout\,
	sload => VCC,
	ena => \mem~403_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~82_q\);

-- Location: LCCOMB_X23_Y23_N14
\mem~118feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~118feeder_combout\ = \mem~419_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem~419_combout\,
	combout => \mem~118feeder_combout\);

-- Location: FF_X23_Y23_N15
\mem~118\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem~118feeder_combout\,
	ena => \mem~402_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~118_q\);

-- Location: LCCOMB_X24_Y23_N28
\mem~326\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~326_combout\ = (\address[0]~input_o\ & (\address[1]~input_o\)) # (!\address[0]~input_o\ & ((\address[1]~input_o\ & ((\mem~118_q\))) # (!\address[1]~input_o\ & (\mem~82_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \mem~82_q\,
	datad => \mem~118_q\,
	combout => \mem~326_combout\);

-- Location: LCCOMB_X24_Y23_N30
\mem~327\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~327_combout\ = (\address[0]~input_o\ & ((\mem~326_combout\ & ((\mem~136_q\))) # (!\mem~326_combout\ & (\mem~100_q\)))) # (!\address[0]~input_o\ & (((\mem~326_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \mem~100_q\,
	datac => \mem~136_q\,
	datad => \mem~326_combout\,
	combout => \mem~327_combout\);

-- Location: FF_X21_Y23_N9
\mem~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~419_combout\,
	sload => VCC,
	ena => \mem~405_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~46_q\);

-- Location: FF_X21_Y21_N1
\mem~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~419_combout\,
	sload => VCC,
	ena => \mem~408_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~64_q\);

-- Location: FF_X21_Y21_N7
\mem~10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~419_combout\,
	sload => VCC,
	ena => \mem~407_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~10_q\);

-- Location: LCCOMB_X21_Y21_N6
\mem~328\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~328_combout\ = (\address[0]~input_o\ & ((\mem~28_q\) # ((\address[1]~input_o\)))) # (!\address[0]~input_o\ & (((\mem~10_q\ & !\address[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~28_q\,
	datab => \address[0]~input_o\,
	datac => \mem~10_q\,
	datad => \address[1]~input_o\,
	combout => \mem~328_combout\);

-- Location: LCCOMB_X21_Y21_N0
\mem~329\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~329_combout\ = (\address[1]~input_o\ & ((\mem~328_combout\ & ((\mem~64_q\))) # (!\mem~328_combout\ & (\mem~46_q\)))) # (!\address[1]~input_o\ & (((\mem~328_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \mem~46_q\,
	datac => \mem~64_q\,
	datad => \mem~328_combout\,
	combout => \mem~329_combout\);

-- Location: LCCOMB_X21_Y22_N8
\mem~330\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~330_combout\ = (\address[3]~input_o\ & (\address[2]~input_o\)) # (!\address[3]~input_o\ & ((\address[2]~input_o\ & (\mem~327_combout\)) # (!\address[2]~input_o\ & ((\mem~329_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \address[2]~input_o\,
	datac => \mem~327_combout\,
	datad => \mem~329_combout\,
	combout => \mem~330_combout\);

-- Location: LCCOMB_X22_Y22_N26
\mem~332\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~332_combout\ = (\address[3]~input_o\ & ((\mem~330_combout\ & ((\mem~331_combout\))) # (!\mem~330_combout\ & (\mem~325_combout\)))) # (!\address[3]~input_o\ & (((\mem~330_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \mem~325_combout\,
	datac => \mem~331_combout\,
	datad => \mem~330_combout\,
	combout => \mem~332_combout\);

-- Location: FF_X22_Y22_N27
\out_data[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem~332_combout\,
	ena => \out_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_data[10]~reg0_q\);

-- Location: IOIBUF_X25_Y0_N22
\in_data[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(11),
	o => \in_data[11]~input_o\);

-- Location: LCCOMB_X25_Y23_N22
\mem~420\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~420_combout\ = (\write_en~input_o\ & (\in_data[11]~input_o\ & (!\read_en~input_o\ & !\rst~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \write_en~input_o\,
	datab => \in_data[11]~input_o\,
	datac => \read_en~input_o\,
	datad => \rst~input_o\,
	combout => \mem~420_combout\);

-- Location: FF_X23_Y21_N5
\mem~119\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~420_combout\,
	sload => VCC,
	ena => \mem~402_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~119_q\);

-- Location: FF_X24_Y23_N9
\mem~83\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~420_combout\,
	sload => VCC,
	ena => \mem~403_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~83_q\);

-- Location: FF_X25_Y23_N23
\mem~101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem~420_combout\,
	ena => \mem~401_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~101_q\);

-- Location: LCCOMB_X24_Y23_N8
\mem~333\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~333_combout\ = (\address[0]~input_o\ & ((\address[1]~input_o\) # ((\mem~101_q\)))) # (!\address[0]~input_o\ & (!\address[1]~input_o\ & (\mem~83_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \mem~83_q\,
	datad => \mem~101_q\,
	combout => \mem~333_combout\);

-- Location: LCCOMB_X23_Y21_N4
\mem~334\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~334_combout\ = (\address[1]~input_o\ & ((\mem~333_combout\ & (\mem~137_q\)) # (!\mem~333_combout\ & ((\mem~119_q\))))) # (!\address[1]~input_o\ & (((\mem~333_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~137_q\,
	datab => \address[1]~input_o\,
	datac => \mem~119_q\,
	datad => \mem~333_combout\,
	combout => \mem~334_combout\);

-- Location: FF_X23_Y22_N9
\mem~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~420_combout\,
	sload => VCC,
	ena => \mem~408_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~65_q\);

-- Location: FF_X21_Y21_N3
\mem~11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~420_combout\,
	sload => VCC,
	ena => \mem~407_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~11_q\);

-- Location: LCCOMB_X21_Y23_N18
\mem~47feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~47feeder_combout\ = \mem~420_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem~420_combout\,
	combout => \mem~47feeder_combout\);

-- Location: FF_X21_Y23_N19
\mem~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem~47feeder_combout\,
	ena => \mem~405_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~47_q\);

-- Location: LCCOMB_X21_Y21_N2
\mem~337\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~337_combout\ = (\address[1]~input_o\ & ((\address[0]~input_o\) # ((\mem~47_q\)))) # (!\address[1]~input_o\ & (!\address[0]~input_o\ & (\mem~11_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[0]~input_o\,
	datac => \mem~11_q\,
	datad => \mem~47_q\,
	combout => \mem~337_combout\);

-- Location: LCCOMB_X23_Y22_N8
\mem~338\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~338_combout\ = (\address[0]~input_o\ & ((\mem~337_combout\ & ((\mem~65_q\))) # (!\mem~337_combout\ & (\mem~29_q\)))) # (!\address[0]~input_o\ & (((\mem~337_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~29_q\,
	datab => \address[0]~input_o\,
	datac => \mem~65_q\,
	datad => \mem~337_combout\,
	combout => \mem~338_combout\);

-- Location: FF_X23_Y21_N23
\mem~209\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~420_combout\,
	sload => VCC,
	ena => \mem~400_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~209_q\);

-- Location: FF_X24_Y22_N7
\mem~155\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~420_combout\,
	sload => VCC,
	ena => \mem~399_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~155_q\);

-- Location: LCCOMB_X28_Y22_N30
\mem~191feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~191feeder_combout\ = \mem~420_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem~420_combout\,
	combout => \mem~191feeder_combout\);

-- Location: FF_X28_Y22_N31
\mem~191\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem~191feeder_combout\,
	ena => \mem~397_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~191_q\);

-- Location: LCCOMB_X24_Y22_N6
\mem~335\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~335_combout\ = (\address[0]~input_o\ & (\address[1]~input_o\)) # (!\address[0]~input_o\ & ((\address[1]~input_o\ & ((\mem~191_q\))) # (!\address[1]~input_o\ & (\mem~155_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \mem~155_q\,
	datad => \mem~191_q\,
	combout => \mem~335_combout\);

-- Location: LCCOMB_X23_Y21_N22
\mem~336\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~336_combout\ = (\address[0]~input_o\ & ((\mem~335_combout\ & ((\mem~209_q\))) # (!\mem~335_combout\ & (\mem~173_q\)))) # (!\address[0]~input_o\ & (((\mem~335_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~173_q\,
	datab => \address[0]~input_o\,
	datac => \mem~209_q\,
	datad => \mem~335_combout\,
	combout => \mem~336_combout\);

-- Location: LCCOMB_X23_Y22_N10
\mem~339\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~339_combout\ = (\address[3]~input_o\ & ((\address[2]~input_o\) # ((\mem~336_combout\)))) # (!\address[3]~input_o\ & (!\address[2]~input_o\ & (\mem~338_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \address[2]~input_o\,
	datac => \mem~338_combout\,
	datad => \mem~336_combout\,
	combout => \mem~339_combout\);

-- Location: LCCOMB_X23_Y22_N0
\mem~341\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~341_combout\ = (\address[2]~input_o\ & ((\mem~339_combout\ & (\mem~340_combout\)) # (!\mem~339_combout\ & ((\mem~334_combout\))))) # (!\address[2]~input_o\ & (((\mem~339_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~340_combout\,
	datab => \address[2]~input_o\,
	datac => \mem~334_combout\,
	datad => \mem~339_combout\,
	combout => \mem~341_combout\);

-- Location: FF_X23_Y22_N1
\out_data[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem~341_combout\,
	ena => \out_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_data[11]~reg0_q\);

-- Location: LCCOMB_X25_Y22_N0
\mem~421\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~421_combout\ = (\in_data[12]~input_o\ & (!\read_en~input_o\ & (!\rst~input_o\ & \write_en~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[12]~input_o\,
	datab => \read_en~input_o\,
	datac => \rst~input_o\,
	datad => \write_en~input_o\,
	combout => \mem~421_combout\);

-- Location: FF_X24_Y21_N7
\mem~138\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~421_combout\,
	sload => VCC,
	ena => \mem~404_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~138_q\);

-- Location: FF_X24_Y21_N29
\mem~84\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~421_combout\,
	sload => VCC,
	ena => \mem~403_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~84_q\);

-- Location: FF_X23_Y23_N9
\mem~120\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~421_combout\,
	sload => VCC,
	ena => \mem~402_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~120_q\);

-- Location: LCCOMB_X24_Y21_N28
\mem~344\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~344_combout\ = (\address[1]~input_o\ & ((\address[0]~input_o\) # ((\mem~120_q\)))) # (!\address[1]~input_o\ & (!\address[0]~input_o\ & (\mem~84_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[0]~input_o\,
	datac => \mem~84_q\,
	datad => \mem~120_q\,
	combout => \mem~344_combout\);

-- Location: LCCOMB_X24_Y21_N6
\mem~345\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~345_combout\ = (\address[0]~input_o\ & ((\mem~344_combout\ & ((\mem~138_q\))) # (!\mem~344_combout\ & (\mem~102_q\)))) # (!\address[0]~input_o\ & (((\mem~344_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~102_q\,
	datab => \address[0]~input_o\,
	datac => \mem~138_q\,
	datad => \mem~344_combout\,
	combout => \mem~345_combout\);

-- Location: FF_X23_Y22_N13
\mem~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~421_combout\,
	sload => VCC,
	ena => \mem~408_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~66_q\);

-- Location: FF_X21_Y21_N13
\mem~12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~421_combout\,
	sload => VCC,
	ena => \mem~407_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~12_q\);

-- Location: FF_X22_Y21_N25
\mem~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~421_combout\,
	sload => VCC,
	ena => \mem~406_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~30_q\);

-- Location: LCCOMB_X21_Y21_N12
\mem~346\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~346_combout\ = (\address[1]~input_o\ & (\address[0]~input_o\)) # (!\address[1]~input_o\ & ((\address[0]~input_o\ & ((\mem~30_q\))) # (!\address[0]~input_o\ & (\mem~12_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[0]~input_o\,
	datac => \mem~12_q\,
	datad => \mem~30_q\,
	combout => \mem~346_combout\);

-- Location: LCCOMB_X23_Y22_N12
\mem~347\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~347_combout\ = (\address[1]~input_o\ & ((\mem~346_combout\ & ((\mem~66_q\))) # (!\mem~346_combout\ & (\mem~48_q\)))) # (!\address[1]~input_o\ & (((\mem~346_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~48_q\,
	datab => \address[1]~input_o\,
	datac => \mem~66_q\,
	datad => \mem~346_combout\,
	combout => \mem~347_combout\);

-- Location: LCCOMB_X23_Y22_N30
\mem~348\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~348_combout\ = (\address[3]~input_o\ & (\address[2]~input_o\)) # (!\address[3]~input_o\ & ((\address[2]~input_o\ & (\mem~345_combout\)) # (!\address[2]~input_o\ & ((\mem~347_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \address[2]~input_o\,
	datac => \mem~345_combout\,
	datad => \mem~347_combout\,
	combout => \mem~348_combout\);

-- Location: FF_X28_Y22_N27
\mem~192\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~421_combout\,
	sload => VCC,
	ena => \mem~397_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~192_q\);

-- Location: FF_X26_Y22_N1
\mem~156\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~421_combout\,
	sload => VCC,
	ena => \mem~399_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~156_q\);

-- Location: LCCOMB_X26_Y22_N0
\mem~342\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~342_combout\ = (\address[1]~input_o\ & (((\address[0]~input_o\)))) # (!\address[1]~input_o\ & ((\address[0]~input_o\ & (\mem~174_q\)) # (!\address[0]~input_o\ & ((\mem~156_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~174_q\,
	datab => \address[1]~input_o\,
	datac => \mem~156_q\,
	datad => \address[0]~input_o\,
	combout => \mem~342_combout\);

-- Location: LCCOMB_X28_Y22_N26
\mem~343\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~343_combout\ = (\address[1]~input_o\ & ((\mem~342_combout\ & (\mem~210_q\)) # (!\mem~342_combout\ & ((\mem~192_q\))))) # (!\address[1]~input_o\ & (((\mem~342_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~210_q\,
	datab => \address[1]~input_o\,
	datac => \mem~192_q\,
	datad => \mem~342_combout\,
	combout => \mem~343_combout\);

-- Location: LCCOMB_X23_Y22_N18
\mem~350\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~350_combout\ = (\address[3]~input_o\ & ((\mem~348_combout\ & (\mem~349_combout\)) # (!\mem~348_combout\ & ((\mem~343_combout\))))) # (!\address[3]~input_o\ & (((\mem~348_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~349_combout\,
	datab => \address[3]~input_o\,
	datac => \mem~348_combout\,
	datad => \mem~343_combout\,
	combout => \mem~350_combout\);

-- Location: FF_X23_Y22_N19
\out_data[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem~350_combout\,
	ena => \out_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_data[12]~reg0_q\);

-- Location: IOIBUF_X21_Y0_N22
\in_data[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(13),
	o => \in_data[13]~input_o\);

-- Location: LCCOMB_X25_Y23_N18
\mem~422\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~422_combout\ = (\write_en~input_o\ & (\in_data[13]~input_o\ & (!\read_en~input_o\ & !\rst~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \write_en~input_o\,
	datab => \in_data[13]~input_o\,
	datac => \read_en~input_o\,
	datad => \rst~input_o\,
	combout => \mem~422_combout\);

-- Location: FF_X28_Y22_N17
\mem~229\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~422_combout\,
	sload => VCC,
	ena => \mem~409_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~229_q\);

-- Location: LCCOMB_X28_Y22_N16
\mem~358\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~358_combout\ = (!\address[1]~input_o\ & (\mem~229_q\ & !\address[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \address[1]~input_o\,
	datac => \mem~229_q\,
	datad => \address[0]~input_o\,
	combout => \mem~358_combout\);

-- Location: FF_X25_Y23_N1
\mem~121\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~422_combout\,
	sload => VCC,
	ena => \mem~402_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~121_q\);

-- Location: FF_X24_Y23_N21
\mem~85\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~422_combout\,
	sload => VCC,
	ena => \mem~403_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~85_q\);

-- Location: FF_X25_Y23_N19
\mem~103\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem~422_combout\,
	ena => \mem~401_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~103_q\);

-- Location: LCCOMB_X24_Y23_N20
\mem~351\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~351_combout\ = (\address[0]~input_o\ & ((\address[1]~input_o\) # ((\mem~103_q\)))) # (!\address[0]~input_o\ & (!\address[1]~input_o\ & (\mem~85_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \mem~85_q\,
	datad => \mem~103_q\,
	combout => \mem~351_combout\);

-- Location: LCCOMB_X25_Y23_N0
\mem~352\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~352_combout\ = (\address[1]~input_o\ & ((\mem~351_combout\ & (\mem~139_q\)) # (!\mem~351_combout\ & ((\mem~121_q\))))) # (!\address[1]~input_o\ & (((\mem~351_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~139_q\,
	datab => \address[1]~input_o\,
	datac => \mem~121_q\,
	datad => \mem~351_combout\,
	combout => \mem~352_combout\);

-- Location: FF_X23_Y22_N17
\mem~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~422_combout\,
	sload => VCC,
	ena => \mem~408_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~67_q\);

-- Location: LCCOMB_X22_Y21_N18
\mem~31feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~31feeder_combout\ = \mem~422_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem~422_combout\,
	combout => \mem~31feeder_combout\);

-- Location: FF_X22_Y21_N19
\mem~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem~31feeder_combout\,
	ena => \mem~406_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~31_q\);

-- Location: LCCOMB_X23_Y22_N16
\mem~356\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~356_combout\ = (\mem~355_combout\ & (((\mem~67_q\)) # (!\address[0]~input_o\))) # (!\mem~355_combout\ & (\address[0]~input_o\ & ((\mem~31_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~355_combout\,
	datab => \address[0]~input_o\,
	datac => \mem~67_q\,
	datad => \mem~31_q\,
	combout => \mem~356_combout\);

-- Location: FF_X26_Y22_N15
\mem~211\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~422_combout\,
	sload => VCC,
	ena => \mem~400_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~211_q\);

-- Location: FF_X23_Y23_N11
\mem~175\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~422_combout\,
	sload => VCC,
	ena => \mem~398_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~175_q\);

-- Location: LCCOMB_X26_Y22_N14
\mem~354\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~354_combout\ = (\mem~353_combout\ & (((\mem~211_q\)) # (!\address[0]~input_o\))) # (!\mem~353_combout\ & (\address[0]~input_o\ & ((\mem~175_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~353_combout\,
	datab => \address[0]~input_o\,
	datac => \mem~211_q\,
	datad => \mem~175_q\,
	combout => \mem~354_combout\);

-- Location: LCCOMB_X23_Y22_N2
\mem~357\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~357_combout\ = (\address[2]~input_o\ & (((\address[3]~input_o\)))) # (!\address[2]~input_o\ & ((\address[3]~input_o\ & ((\mem~354_combout\))) # (!\address[3]~input_o\ & (\mem~356_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \mem~356_combout\,
	datac => \address[3]~input_o\,
	datad => \mem~354_combout\,
	combout => \mem~357_combout\);

-- Location: LCCOMB_X23_Y22_N4
\mem~359\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~359_combout\ = (\address[2]~input_o\ & ((\mem~357_combout\ & (\mem~358_combout\)) # (!\mem~357_combout\ & ((\mem~352_combout\))))) # (!\address[2]~input_o\ & (((\mem~357_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \mem~358_combout\,
	datac => \mem~352_combout\,
	datad => \mem~357_combout\,
	combout => \mem~359_combout\);

-- Location: FF_X23_Y22_N5
\out_data[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem~359_combout\,
	ena => \out_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_data[13]~reg0_q\);

-- Location: LCCOMB_X25_Y22_N2
\mem~423\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~423_combout\ = (\in_data[14]~input_o\ & (!\read_en~input_o\ & (!\rst~input_o\ & \write_en~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[14]~input_o\,
	datab => \read_en~input_o\,
	datac => \rst~input_o\,
	datad => \write_en~input_o\,
	combout => \mem~423_combout\);

-- Location: FF_X22_Y22_N19
\mem~194\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~423_combout\,
	sload => VCC,
	ena => \mem~397_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~194_q\);

-- Location: FF_X26_Y22_N25
\mem~158\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~423_combout\,
	sload => VCC,
	ena => \mem~399_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~158_q\);

-- Location: FF_X25_Y22_N3
\mem~176\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem~423_combout\,
	ena => \mem~398_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~176_q\);

-- Location: LCCOMB_X26_Y22_N24
\mem~360\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~360_combout\ = (\address[0]~input_o\ & ((\address[1]~input_o\) # ((\mem~176_q\)))) # (!\address[0]~input_o\ & (!\address[1]~input_o\ & (\mem~158_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \mem~158_q\,
	datad => \mem~176_q\,
	combout => \mem~360_combout\);

-- Location: LCCOMB_X22_Y22_N18
\mem~361\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~361_combout\ = (\address[1]~input_o\ & ((\mem~360_combout\ & (\mem~212_q\)) # (!\mem~360_combout\ & ((\mem~194_q\))))) # (!\address[1]~input_o\ & (((\mem~360_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~212_q\,
	datab => \address[1]~input_o\,
	datac => \mem~194_q\,
	datad => \mem~360_combout\,
	combout => \mem~361_combout\);

-- Location: FF_X28_Y22_N11
\mem~230\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~423_combout\,
	sload => VCC,
	ena => \mem~409_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~230_q\);

-- Location: LCCOMB_X28_Y22_N10
\mem~367\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~367_combout\ = (!\address[1]~input_o\ & (\mem~230_q\ & !\address[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \address[1]~input_o\,
	datac => \mem~230_q\,
	datad => \address[0]~input_o\,
	combout => \mem~367_combout\);

-- Location: FF_X24_Y23_N1
\mem~86\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~423_combout\,
	sload => VCC,
	ena => \mem~403_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~86_q\);

-- Location: LCCOMB_X23_Y23_N12
\mem~122feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~122feeder_combout\ = \mem~423_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem~423_combout\,
	combout => \mem~122feeder_combout\);

-- Location: FF_X23_Y23_N13
\mem~122\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem~122feeder_combout\,
	ena => \mem~402_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~122_q\);

-- Location: LCCOMB_X24_Y23_N0
\mem~362\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~362_combout\ = (\address[0]~input_o\ & (\address[1]~input_o\)) # (!\address[0]~input_o\ & ((\address[1]~input_o\ & ((\mem~122_q\))) # (!\address[1]~input_o\ & (\mem~86_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \mem~86_q\,
	datad => \mem~122_q\,
	combout => \mem~362_combout\);

-- Location: FF_X24_Y23_N11
\mem~140\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~423_combout\,
	sload => VCC,
	ena => \mem~404_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~140_q\);

-- Location: FF_X26_Y21_N11
\mem~104\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~423_combout\,
	sload => VCC,
	ena => \mem~401_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~104_q\);

-- Location: LCCOMB_X24_Y23_N10
\mem~363\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~363_combout\ = (\address[0]~input_o\ & ((\mem~362_combout\ & (\mem~140_q\)) # (!\mem~362_combout\ & ((\mem~104_q\))))) # (!\address[0]~input_o\ & (\mem~362_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \mem~362_combout\,
	datac => \mem~140_q\,
	datad => \mem~104_q\,
	combout => \mem~363_combout\);

-- Location: FF_X25_Y21_N1
\mem~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~423_combout\,
	sload => VCC,
	ena => \mem~405_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~50_q\);

-- Location: FF_X25_Y22_N21
\mem~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~423_combout\,
	sload => VCC,
	ena => \mem~408_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~68_q\);

-- Location: FF_X25_Y21_N3
\mem~14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~423_combout\,
	sload => VCC,
	ena => \mem~407_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~14_q\);

-- Location: FF_X26_Y21_N29
\mem~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~423_combout\,
	sload => VCC,
	ena => \mem~406_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~32_q\);

-- Location: LCCOMB_X25_Y21_N2
\mem~364\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~364_combout\ = (\address[0]~input_o\ & ((\address[1]~input_o\) # ((\mem~32_q\)))) # (!\address[0]~input_o\ & (!\address[1]~input_o\ & (\mem~14_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \mem~14_q\,
	datad => \mem~32_q\,
	combout => \mem~364_combout\);

-- Location: LCCOMB_X25_Y22_N20
\mem~365\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~365_combout\ = (\address[1]~input_o\ & ((\mem~364_combout\ & ((\mem~68_q\))) # (!\mem~364_combout\ & (\mem~50_q\)))) # (!\address[1]~input_o\ & (((\mem~364_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \mem~50_q\,
	datac => \mem~68_q\,
	datad => \mem~364_combout\,
	combout => \mem~365_combout\);

-- Location: LCCOMB_X23_Y22_N28
\mem~366\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~366_combout\ = (\address[2]~input_o\ & ((\mem~363_combout\) # ((\address[3]~input_o\)))) # (!\address[2]~input_o\ & (((!\address[3]~input_o\ & \mem~365_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \mem~363_combout\,
	datac => \address[3]~input_o\,
	datad => \mem~365_combout\,
	combout => \mem~366_combout\);

-- Location: LCCOMB_X22_Y22_N4
\mem~368\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~368_combout\ = (\address[3]~input_o\ & ((\mem~366_combout\ & ((\mem~367_combout\))) # (!\mem~366_combout\ & (\mem~361_combout\)))) # (!\address[3]~input_o\ & (((\mem~366_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \mem~361_combout\,
	datac => \mem~367_combout\,
	datad => \mem~366_combout\,
	combout => \mem~368_combout\);

-- Location: FF_X22_Y22_N5
\out_data[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem~368_combout\,
	ena => \out_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_data[14]~reg0_q\);

-- Location: IOIBUF_X25_Y0_N8
\in_data[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(15),
	o => \in_data[15]~input_o\);

-- Location: LCCOMB_X25_Y23_N4
\mem~424\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~424_combout\ = (\write_en~input_o\ & (\in_data[15]~input_o\ & (!\read_en~input_o\ & !\rst~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \write_en~input_o\,
	datab => \in_data[15]~input_o\,
	datac => \read_en~input_o\,
	datad => \rst~input_o\,
	combout => \mem~424_combout\);

-- Location: FF_X24_Y23_N23
\mem~141\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~424_combout\,
	sload => VCC,
	ena => \mem~404_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~141_q\);

-- Location: FF_X23_Y23_N31
\mem~123\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~424_combout\,
	sload => VCC,
	ena => \mem~402_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~123_q\);

-- Location: FF_X24_Y23_N5
\mem~87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~424_combout\,
	sload => VCC,
	ena => \mem~403_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~87_q\);

-- Location: FF_X25_Y23_N5
\mem~105\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem~424_combout\,
	ena => \mem~401_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~105_q\);

-- Location: LCCOMB_X24_Y23_N4
\mem~369\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~369_combout\ = (\address[0]~input_o\ & ((\address[1]~input_o\) # ((\mem~105_q\)))) # (!\address[0]~input_o\ & (!\address[1]~input_o\ & (\mem~87_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \mem~87_q\,
	datad => \mem~105_q\,
	combout => \mem~369_combout\);

-- Location: LCCOMB_X23_Y23_N30
\mem~370\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~370_combout\ = (\address[1]~input_o\ & ((\mem~369_combout\ & (\mem~141_q\)) # (!\mem~369_combout\ & ((\mem~123_q\))))) # (!\address[1]~input_o\ & (((\mem~369_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \mem~141_q\,
	datac => \mem~123_q\,
	datad => \mem~369_combout\,
	combout => \mem~370_combout\);

-- Location: FF_X23_Y22_N23
\mem~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~424_combout\,
	sload => VCC,
	ena => \mem~408_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~69_q\);

-- Location: FF_X25_Y21_N31
\mem~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~424_combout\,
	sload => VCC,
	ena => \mem~407_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~15_q\);

-- Location: FF_X25_Y21_N21
\mem~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~424_combout\,
	sload => VCC,
	ena => \mem~405_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~51_q\);

-- Location: LCCOMB_X25_Y21_N30
\mem~373\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~373_combout\ = (\address[0]~input_o\ & (\address[1]~input_o\)) # (!\address[0]~input_o\ & ((\address[1]~input_o\ & ((\mem~51_q\))) # (!\address[1]~input_o\ & (\mem~15_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \mem~15_q\,
	datad => \mem~51_q\,
	combout => \mem~373_combout\);

-- Location: LCCOMB_X23_Y22_N22
\mem~374\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~374_combout\ = (\address[0]~input_o\ & ((\mem~373_combout\ & ((\mem~69_q\))) # (!\mem~373_combout\ & (\mem~33_q\)))) # (!\address[0]~input_o\ & (((\mem~373_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~33_q\,
	datab => \address[0]~input_o\,
	datac => \mem~69_q\,
	datad => \mem~373_combout\,
	combout => \mem~374_combout\);

-- Location: FF_X26_Y22_N5
\mem~159\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~424_combout\,
	sload => VCC,
	ena => \mem~399_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~159_q\);

-- Location: FF_X28_Y22_N5
\mem~195\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~424_combout\,
	sload => VCC,
	ena => \mem~397_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~195_q\);

-- Location: LCCOMB_X26_Y22_N4
\mem~371\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~371_combout\ = (\address[0]~input_o\ & (\address[1]~input_o\)) # (!\address[0]~input_o\ & ((\address[1]~input_o\ & ((\mem~195_q\))) # (!\address[1]~input_o\ & (\mem~159_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \mem~159_q\,
	datad => \mem~195_q\,
	combout => \mem~371_combout\);

-- Location: FF_X26_Y22_N7
\mem~213\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~424_combout\,
	sload => VCC,
	ena => \mem~400_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~213_q\);

-- Location: LCCOMB_X23_Y23_N16
\mem~177feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~177feeder_combout\ = \mem~424_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem~424_combout\,
	combout => \mem~177feeder_combout\);

-- Location: FF_X23_Y23_N17
\mem~177\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem~177feeder_combout\,
	ena => \mem~398_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~177_q\);

-- Location: LCCOMB_X26_Y22_N6
\mem~372\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~372_combout\ = (\address[0]~input_o\ & ((\mem~371_combout\ & (\mem~213_q\)) # (!\mem~371_combout\ & ((\mem~177_q\))))) # (!\address[0]~input_o\ & (\mem~371_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \mem~371_combout\,
	datac => \mem~213_q\,
	datad => \mem~177_q\,
	combout => \mem~372_combout\);

-- Location: LCCOMB_X23_Y22_N24
\mem~375\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~375_combout\ = (\address[3]~input_o\ & ((\address[2]~input_o\) # ((\mem~372_combout\)))) # (!\address[3]~input_o\ & (!\address[2]~input_o\ & (\mem~374_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \address[2]~input_o\,
	datac => \mem~374_combout\,
	datad => \mem~372_combout\,
	combout => \mem~375_combout\);

-- Location: LCCOMB_X23_Y22_N6
\mem~377\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~377_combout\ = (\address[2]~input_o\ & ((\mem~375_combout\ & (\mem~376_combout\)) # (!\mem~375_combout\ & ((\mem~370_combout\))))) # (!\address[2]~input_o\ & (((\mem~375_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~376_combout\,
	datab => \address[2]~input_o\,
	datac => \mem~370_combout\,
	datad => \mem~375_combout\,
	combout => \mem~377_combout\);

-- Location: FF_X23_Y22_N7
\out_data[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem~377_combout\,
	ena => \out_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_data[15]~reg0_q\);

-- Location: IOIBUF_X25_Y24_N15
\in_data[16]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(16),
	o => \in_data[16]~input_o\);

-- Location: LCCOMB_X25_Y22_N22
\mem~425\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~425_combout\ = (!\rst~input_o\ & (\write_en~input_o\ & (!\read_en~input_o\ & \in_data[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \write_en~input_o\,
	datac => \read_en~input_o\,
	datad => \in_data[16]~input_o\,
	combout => \mem~425_combout\);

-- Location: LCCOMB_X26_Y22_N16
\mem~214feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~214feeder_combout\ = \mem~425_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem~425_combout\,
	combout => \mem~214feeder_combout\);

-- Location: FF_X26_Y22_N17
\mem~214\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem~214feeder_combout\,
	ena => \mem~400_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~214_q\);

-- Location: FF_X22_Y22_N21
\mem~196\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~425_combout\,
	sload => VCC,
	ena => \mem~397_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~196_q\);

-- Location: FF_X24_Y22_N1
\mem~160\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~425_combout\,
	sload => VCC,
	ena => \mem~399_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~160_q\);

-- Location: FF_X25_Y22_N23
\mem~178\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem~425_combout\,
	ena => \mem~398_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~178_q\);

-- Location: LCCOMB_X24_Y22_N0
\mem~378\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~378_combout\ = (\address[0]~input_o\ & ((\address[1]~input_o\) # ((\mem~178_q\)))) # (!\address[0]~input_o\ & (!\address[1]~input_o\ & (\mem~160_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \mem~160_q\,
	datad => \mem~178_q\,
	combout => \mem~378_combout\);

-- Location: LCCOMB_X22_Y22_N20
\mem~379\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~379_combout\ = (\address[1]~input_o\ & ((\mem~378_combout\ & (\mem~214_q\)) # (!\mem~378_combout\ & ((\mem~196_q\))))) # (!\address[1]~input_o\ & (((\mem~378_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \mem~214_q\,
	datac => \mem~196_q\,
	datad => \mem~378_combout\,
	combout => \mem~379_combout\);

-- Location: FF_X28_Y22_N1
\mem~232\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~425_combout\,
	sload => VCC,
	ena => \mem~409_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~232_q\);

-- Location: LCCOMB_X28_Y22_N0
\mem~385\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~385_combout\ = (!\address[1]~input_o\ & (\mem~232_q\ & !\address[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \address[1]~input_o\,
	datac => \mem~232_q\,
	datad => \address[0]~input_o\,
	combout => \mem~385_combout\);

-- Location: FF_X22_Y23_N1
\mem~88\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~425_combout\,
	sload => VCC,
	ena => \mem~403_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~88_q\);

-- Location: FF_X23_Y23_N27
\mem~124\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~425_combout\,
	sload => VCC,
	ena => \mem~402_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~124_q\);

-- Location: LCCOMB_X22_Y23_N0
\mem~380\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~380_combout\ = (\address[0]~input_o\ & (\address[1]~input_o\)) # (!\address[0]~input_o\ & ((\address[1]~input_o\ & ((\mem~124_q\))) # (!\address[1]~input_o\ & (\mem~88_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \mem~88_q\,
	datad => \mem~124_q\,
	combout => \mem~380_combout\);

-- Location: FF_X22_Y23_N19
\mem~142\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~425_combout\,
	sload => VCC,
	ena => \mem~404_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~142_q\);

-- Location: FF_X26_Y21_N25
\mem~106\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~425_combout\,
	sload => VCC,
	ena => \mem~401_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~106_q\);

-- Location: LCCOMB_X22_Y23_N18
\mem~381\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~381_combout\ = (\address[0]~input_o\ & ((\mem~380_combout\ & (\mem~142_q\)) # (!\mem~380_combout\ & ((\mem~106_q\))))) # (!\address[0]~input_o\ & (\mem~380_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \mem~380_combout\,
	datac => \mem~142_q\,
	datad => \mem~106_q\,
	combout => \mem~381_combout\);

-- Location: FF_X24_Y22_N11
\mem~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~425_combout\,
	sload => VCC,
	ena => \mem~408_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~70_q\);

-- Location: FF_X25_Y21_N19
\mem~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~425_combout\,
	sload => VCC,
	ena => \mem~407_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~16_q\);

-- Location: FF_X26_Y21_N3
\mem~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~425_combout\,
	sload => VCC,
	ena => \mem~406_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~34_q\);

-- Location: LCCOMB_X25_Y21_N18
\mem~382\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~382_combout\ = (\address[0]~input_o\ & ((\address[1]~input_o\) # ((\mem~34_q\)))) # (!\address[0]~input_o\ & (!\address[1]~input_o\ & (\mem~16_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \mem~16_q\,
	datad => \mem~34_q\,
	combout => \mem~382_combout\);

-- Location: LCCOMB_X24_Y22_N10
\mem~383\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~383_combout\ = (\address[1]~input_o\ & ((\mem~382_combout\ & ((\mem~70_q\))) # (!\mem~382_combout\ & (\mem~52_q\)))) # (!\address[1]~input_o\ & (((\mem~382_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~52_q\,
	datab => \address[1]~input_o\,
	datac => \mem~70_q\,
	datad => \mem~382_combout\,
	combout => \mem~383_combout\);

-- Location: LCCOMB_X22_Y22_N6
\mem~384\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~384_combout\ = (\address[3]~input_o\ & (\address[2]~input_o\)) # (!\address[3]~input_o\ & ((\address[2]~input_o\ & (\mem~381_combout\)) # (!\address[2]~input_o\ & ((\mem~383_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \address[2]~input_o\,
	datac => \mem~381_combout\,
	datad => \mem~383_combout\,
	combout => \mem~384_combout\);

-- Location: LCCOMB_X22_Y22_N22
\mem~386\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~386_combout\ = (\address[3]~input_o\ & ((\mem~384_combout\ & ((\mem~385_combout\))) # (!\mem~384_combout\ & (\mem~379_combout\)))) # (!\address[3]~input_o\ & (((\mem~384_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \mem~379_combout\,
	datac => \mem~385_combout\,
	datad => \mem~384_combout\,
	combout => \mem~386_combout\);

-- Location: FF_X22_Y22_N23
\out_data[16]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem~386_combout\,
	ena => \out_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_data[16]~reg0_q\);

-- Location: IOIBUF_X34_Y19_N1
\in_data[17]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(17),
	o => \in_data[17]~input_o\);

-- Location: LCCOMB_X25_Y23_N14
\mem~426\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~426_combout\ = (\write_en~input_o\ & (!\read_en~input_o\ & (\in_data[17]~input_o\ & !\rst~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \write_en~input_o\,
	datab => \read_en~input_o\,
	datac => \in_data[17]~input_o\,
	datad => \rst~input_o\,
	combout => \mem~426_combout\);

-- Location: FF_X22_Y23_N15
\mem~143\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~426_combout\,
	sload => VCC,
	ena => \mem~404_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~143_q\);

-- Location: FF_X23_Y23_N29
\mem~125\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~426_combout\,
	sload => VCC,
	ena => \mem~402_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~125_q\);

-- Location: FF_X22_Y23_N21
\mem~89\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~426_combout\,
	sload => VCC,
	ena => \mem~403_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~89_q\);

-- Location: FF_X25_Y23_N15
\mem~107\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem~426_combout\,
	ena => \mem~401_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~107_q\);

-- Location: LCCOMB_X22_Y23_N20
\mem~387\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~387_combout\ = (\address[0]~input_o\ & ((\address[1]~input_o\) # ((\mem~107_q\)))) # (!\address[0]~input_o\ & (!\address[1]~input_o\ & (\mem~89_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \mem~89_q\,
	datad => \mem~107_q\,
	combout => \mem~387_combout\);

-- Location: LCCOMB_X23_Y23_N28
\mem~388\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~388_combout\ = (\address[1]~input_o\ & ((\mem~387_combout\ & (\mem~143_q\)) # (!\mem~387_combout\ & ((\mem~125_q\))))) # (!\address[1]~input_o\ & (((\mem~387_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \mem~143_q\,
	datac => \mem~125_q\,
	datad => \mem~387_combout\,
	combout => \mem~388_combout\);

-- Location: FF_X28_Y22_N29
\mem~233\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~426_combout\,
	sload => VCC,
	ena => \mem~409_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~233_q\);

-- Location: LCCOMB_X28_Y22_N28
\mem~394\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~394_combout\ = (!\address[1]~input_o\ & (\mem~233_q\ & !\address[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \address[1]~input_o\,
	datac => \mem~233_q\,
	datad => \address[0]~input_o\,
	combout => \mem~394_combout\);

-- Location: FF_X23_Y23_N23
\mem~179\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~426_combout\,
	sload => VCC,
	ena => \mem~398_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~179_q\);

-- Location: FF_X26_Y22_N29
\mem~215\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~426_combout\,
	sload => VCC,
	ena => \mem~400_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~215_q\);

-- Location: FF_X26_Y22_N3
\mem~161\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~426_combout\,
	sload => VCC,
	ena => \mem~399_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~161_q\);

-- Location: FF_X28_Y22_N19
\mem~197\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~426_combout\,
	sload => VCC,
	ena => \mem~397_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~197_q\);

-- Location: LCCOMB_X26_Y22_N2
\mem~389\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~389_combout\ = (\address[0]~input_o\ & (\address[1]~input_o\)) # (!\address[0]~input_o\ & ((\address[1]~input_o\ & ((\mem~197_q\))) # (!\address[1]~input_o\ & (\mem~161_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \mem~161_q\,
	datad => \mem~197_q\,
	combout => \mem~389_combout\);

-- Location: LCCOMB_X26_Y22_N28
\mem~390\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~390_combout\ = (\address[0]~input_o\ & ((\mem~389_combout\ & ((\mem~215_q\))) # (!\mem~389_combout\ & (\mem~179_q\)))) # (!\address[0]~input_o\ & (((\mem~389_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \mem~179_q\,
	datac => \mem~215_q\,
	datad => \mem~389_combout\,
	combout => \mem~390_combout\);

-- Location: FF_X22_Y21_N15
\mem~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~426_combout\,
	sload => VCC,
	ena => \mem~408_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~71_q\);

-- Location: FF_X25_Y21_N23
\mem~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~426_combout\,
	sload => VCC,
	ena => \mem~407_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~17_q\);

-- Location: FF_X25_Y21_N29
\mem~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem~426_combout\,
	sload => VCC,
	ena => \mem~405_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~53_q\);

-- Location: LCCOMB_X25_Y21_N22
\mem~391\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~391_combout\ = (\address[0]~input_o\ & (\address[1]~input_o\)) # (!\address[0]~input_o\ & ((\address[1]~input_o\ & ((\mem~53_q\))) # (!\address[1]~input_o\ & (\mem~17_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \mem~17_q\,
	datad => \mem~53_q\,
	combout => \mem~391_combout\);

-- Location: LCCOMB_X22_Y21_N14
\mem~392\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~392_combout\ = (\address[0]~input_o\ & ((\mem~391_combout\ & ((\mem~71_q\))) # (!\mem~391_combout\ & (\mem~35_q\)))) # (!\address[0]~input_o\ & (((\mem~391_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~35_q\,
	datab => \address[0]~input_o\,
	datac => \mem~71_q\,
	datad => \mem~391_combout\,
	combout => \mem~392_combout\);

-- Location: LCCOMB_X22_Y22_N16
\mem~393\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~393_combout\ = (\address[3]~input_o\ & ((\address[2]~input_o\) # ((\mem~390_combout\)))) # (!\address[3]~input_o\ & (!\address[2]~input_o\ & ((\mem~392_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \address[2]~input_o\,
	datac => \mem~390_combout\,
	datad => \mem~392_combout\,
	combout => \mem~393_combout\);

-- Location: LCCOMB_X22_Y22_N24
\mem~395\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem~395_combout\ = (\address[2]~input_o\ & ((\mem~393_combout\ & ((\mem~394_combout\))) # (!\mem~393_combout\ & (\mem~388_combout\)))) # (!\address[2]~input_o\ & (((\mem~393_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \mem~388_combout\,
	datac => \mem~394_combout\,
	datad => \mem~393_combout\,
	combout => \mem~395_combout\);

-- Location: FF_X22_Y22_N25
\out_data[17]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem~395_combout\,
	ena => \out_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_data[17]~reg0_q\);

-- Location: IOIBUF_X7_Y0_N15
\address[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(4),
	o => \address[4]~input_o\);

-- Location: IOIBUF_X32_Y0_N22
\address[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(5),
	o => \address[5]~input_o\);

-- Location: IOIBUF_X3_Y24_N8
\address[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(6),
	o => \address[6]~input_o\);

-- Location: IOIBUF_X3_Y0_N1
\address[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(7),
	o => \address[7]~input_o\);

-- Location: IOIBUF_X32_Y0_N1
\address[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(8),
	o => \address[8]~input_o\);

-- Location: IOIBUF_X0_Y8_N8
\address[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(9),
	o => \address[9]~input_o\);

-- Location: IOIBUF_X11_Y0_N22
\address[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(10),
	o => \address[10]~input_o\);

-- Location: IOIBUF_X34_Y7_N22
\address[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(11),
	o => \address[11]~input_o\);

-- Location: IOIBUF_X13_Y24_N22
\address[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(12),
	o => \address[12]~input_o\);

ww_out_data(0) <= \out_data[0]~output_o\;

ww_out_data(1) <= \out_data[1]~output_o\;

ww_out_data(2) <= \out_data[2]~output_o\;

ww_out_data(3) <= \out_data[3]~output_o\;

ww_out_data(4) <= \out_data[4]~output_o\;

ww_out_data(5) <= \out_data[5]~output_o\;

ww_out_data(6) <= \out_data[6]~output_o\;

ww_out_data(7) <= \out_data[7]~output_o\;

ww_out_data(8) <= \out_data[8]~output_o\;

ww_out_data(9) <= \out_data[9]~output_o\;

ww_out_data(10) <= \out_data[10]~output_o\;

ww_out_data(11) <= \out_data[11]~output_o\;

ww_out_data(12) <= \out_data[12]~output_o\;

ww_out_data(13) <= \out_data[13]~output_o\;

ww_out_data(14) <= \out_data[14]~output_o\;

ww_out_data(15) <= \out_data[15]~output_o\;

ww_out_data(16) <= \out_data[16]~output_o\;

ww_out_data(17) <= \out_data[17]~output_o\;
END structure;


