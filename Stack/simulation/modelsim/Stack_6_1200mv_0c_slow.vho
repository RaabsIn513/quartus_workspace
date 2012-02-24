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

-- DATE "02/14/2012 19:21:52"

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

ENTITY 	Stack IS
    PORT (
	out_stack_data : OUT std_logic_vector(17 DOWNTO 0);
	in_stack_data : IN std_logic_vector(17 DOWNTO 0);
	clk : IN std_logic;
	rst : IN std_logic;
	read_stack_en : IN std_logic;
	write_stack_en : IN std_logic
	);
END Stack;

-- Design Ports Information
-- out_stack_data[0]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_stack_data[1]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_stack_data[2]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_stack_data[3]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_stack_data[4]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_stack_data[5]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_stack_data[6]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_stack_data[7]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_stack_data[8]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_stack_data[9]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_stack_data[10]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_stack_data[11]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_stack_data[12]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_stack_data[13]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_stack_data[14]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_stack_data[15]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_stack_data[16]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_stack_data[17]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_stack_en	=>  Location: PIN_N17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_stack_data[0]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_stack_en	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_stack_data[1]	=>  Location: PIN_N22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_stack_data[2]	=>  Location: PIN_M19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_stack_data[3]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_stack_data[4]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_stack_data[5]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_stack_data[6]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_stack_data[7]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_stack_data[8]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_stack_data[9]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_stack_data[10]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_stack_data[11]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_stack_data[12]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_stack_data[13]	=>  Location: PIN_T16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_stack_data[14]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_stack_data[15]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_stack_data[16]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_stack_data[17]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Stack IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_out_stack_data : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_in_stack_data : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_read_stack_en : std_logic;
SIGNAL ww_write_stack_en : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Stack~54_q\ : std_logic;
SIGNAL \Stack~56_q\ : std_logic;
SIGNAL \Stack~2_q\ : std_logic;
SIGNAL \Stack~58_q\ : std_logic;
SIGNAL \Stack~4_q\ : std_logic;
SIGNAL \Stack~5_q\ : std_logic;
SIGNAL \Stack~60_q\ : std_logic;
SIGNAL \Stack~62_q\ : std_logic;
SIGNAL \Stack~9_q\ : std_logic;
SIGNAL \Stack~64_q\ : std_logic;
SIGNAL \Stack~10_q\ : std_logic;
SIGNAL \Stack~29_q\ : std_logic;
SIGNAL \Stack~66_q\ : std_logic;
SIGNAL \Stack~12_q\ : std_logic;
SIGNAL \Stack~13_q\ : std_logic;
SIGNAL \Stack~50_q\ : std_logic;
SIGNAL \Stack~68_q\ : std_logic;
SIGNAL \Stack~33_q\ : std_logic;
SIGNAL \Stack~52_q\ : std_logic;
SIGNAL \Stack~70_q\ : std_logic;
SIGNAL \Stack~35_q\ : std_logic;
SIGNAL \Stack~4feeder_combout\ : std_logic;
SIGNAL \Stack~62feeder_combout\ : std_logic;
SIGNAL \Stack~10feeder_combout\ : std_logic;
SIGNAL \Stack~64feeder_combout\ : std_logic;
SIGNAL \Stack~29feeder_combout\ : std_logic;
SIGNAL \Stack~66feeder_combout\ : std_logic;
SIGNAL \Stack~68feeder_combout\ : std_logic;
SIGNAL \Stack~50feeder_combout\ : std_logic;
SIGNAL \Stack~33feeder_combout\ : std_logic;
SIGNAL \Stack~70feeder_combout\ : std_logic;
SIGNAL \Stack~52feeder_combout\ : std_logic;
SIGNAL \Stack~35feeder_combout\ : std_logic;
SIGNAL \out_stack_data[0]~output_o\ : std_logic;
SIGNAL \out_stack_data[1]~output_o\ : std_logic;
SIGNAL \out_stack_data[2]~output_o\ : std_logic;
SIGNAL \out_stack_data[3]~output_o\ : std_logic;
SIGNAL \out_stack_data[4]~output_o\ : std_logic;
SIGNAL \out_stack_data[5]~output_o\ : std_logic;
SIGNAL \out_stack_data[6]~output_o\ : std_logic;
SIGNAL \out_stack_data[7]~output_o\ : std_logic;
SIGNAL \out_stack_data[8]~output_o\ : std_logic;
SIGNAL \out_stack_data[9]~output_o\ : std_logic;
SIGNAL \out_stack_data[10]~output_o\ : std_logic;
SIGNAL \out_stack_data[11]~output_o\ : std_logic;
SIGNAL \out_stack_data[12]~output_o\ : std_logic;
SIGNAL \out_stack_data[13]~output_o\ : std_logic;
SIGNAL \out_stack_data[14]~output_o\ : std_logic;
SIGNAL \out_stack_data[15]~output_o\ : std_logic;
SIGNAL \out_stack_data[16]~output_o\ : std_logic;
SIGNAL \out_stack_data[17]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \in_stack_data[0]~input_o\ : std_logic;
SIGNAL \Stack~18feeder_combout\ : std_logic;
SIGNAL \write_stack_en~input_o\ : std_logic;
SIGNAL \read_stack_en~input_o\ : std_logic;
SIGNAL \SP~0_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \SP~1_combout\ : std_logic;
SIGNAL \Stack~108_combout\ : std_logic;
SIGNAL \Stack~18_q\ : std_logic;
SIGNAL \Stack~110_combout\ : std_logic;
SIGNAL \Stack~36_q\ : std_logic;
SIGNAL \Stack~72_combout\ : std_logic;
SIGNAL \Stack~0feeder_combout\ : std_logic;
SIGNAL \Stack~111_combout\ : std_logic;
SIGNAL \Stack~0_q\ : std_logic;
SIGNAL \Stack~73_combout\ : std_logic;
SIGNAL \out_stack_data[0]~0_combout\ : std_logic;
SIGNAL \out_stack_data[0]~reg0_q\ : std_logic;
SIGNAL \in_stack_data[1]~input_o\ : std_logic;
SIGNAL \Stack~19feeder_combout\ : std_logic;
SIGNAL \Stack~19_q\ : std_logic;
SIGNAL \Stack~1feeder_combout\ : std_logic;
SIGNAL \Stack~1_q\ : std_logic;
SIGNAL \Stack~55feeder_combout\ : std_logic;
SIGNAL \Stack~109_combout\ : std_logic;
SIGNAL \Stack~55_q\ : std_logic;
SIGNAL \Stack~37_q\ : std_logic;
SIGNAL \Stack~74_combout\ : std_logic;
SIGNAL \Stack~75_combout\ : std_logic;
SIGNAL \out_stack_data[1]~reg0_q\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \in_stack_data[2]~input_o\ : std_logic;
SIGNAL \Stack~20_q\ : std_logic;
SIGNAL \Stack~38_q\ : std_logic;
SIGNAL \Stack~76_combout\ : std_logic;
SIGNAL \Stack~77_combout\ : std_logic;
SIGNAL \out_stack_data[2]~reg0_q\ : std_logic;
SIGNAL \in_stack_data[3]~input_o\ : std_logic;
SIGNAL \Stack~3feeder_combout\ : std_logic;
SIGNAL \Stack~3_q\ : std_logic;
SIGNAL \Stack~21feeder_combout\ : std_logic;
SIGNAL \Stack~21_q\ : std_logic;
SIGNAL \Stack~57_q\ : std_logic;
SIGNAL \Stack~39_q\ : std_logic;
SIGNAL \Stack~78_combout\ : std_logic;
SIGNAL \Stack~79_combout\ : std_logic;
SIGNAL \out_stack_data[3]~reg0_q\ : std_logic;
SIGNAL \in_stack_data[4]~input_o\ : std_logic;
SIGNAL \Stack~22feeder_combout\ : std_logic;
SIGNAL \Stack~22_q\ : std_logic;
SIGNAL \Stack~40_q\ : std_logic;
SIGNAL \Stack~80_combout\ : std_logic;
SIGNAL \Stack~81_combout\ : std_logic;
SIGNAL \out_stack_data[4]~reg0_q\ : std_logic;
SIGNAL \in_stack_data[5]~input_o\ : std_logic;
SIGNAL \Stack~23_q\ : std_logic;
SIGNAL \Stack~59_q\ : std_logic;
SIGNAL \Stack~41_q\ : std_logic;
SIGNAL \Stack~82_combout\ : std_logic;
SIGNAL \Stack~83_combout\ : std_logic;
SIGNAL \out_stack_data[5]~reg0_q\ : std_logic;
SIGNAL \in_stack_data[6]~input_o\ : std_logic;
SIGNAL \Stack~6_q\ : std_logic;
SIGNAL \Stack~24_q\ : std_logic;
SIGNAL \Stack~42_q\ : std_logic;
SIGNAL \Stack~84_combout\ : std_logic;
SIGNAL \Stack~85_combout\ : std_logic;
SIGNAL \out_stack_data[6]~reg0_q\ : std_logic;
SIGNAL \in_stack_data[7]~input_o\ : std_logic;
SIGNAL \Stack~7_q\ : std_logic;
SIGNAL \Stack~25_q\ : std_logic;
SIGNAL \Stack~61_q\ : std_logic;
SIGNAL \Stack~43_q\ : std_logic;
SIGNAL \Stack~86_combout\ : std_logic;
SIGNAL \Stack~87_combout\ : std_logic;
SIGNAL \out_stack_data[7]~reg0_q\ : std_logic;
SIGNAL \in_stack_data[8]~input_o\ : std_logic;
SIGNAL \Stack~26feeder_combout\ : std_logic;
SIGNAL \Stack~26_q\ : std_logic;
SIGNAL \Stack~8feeder_combout\ : std_logic;
SIGNAL \Stack~8_q\ : std_logic;
SIGNAL \Stack~44_q\ : std_logic;
SIGNAL \Stack~88_combout\ : std_logic;
SIGNAL \Stack~89_combout\ : std_logic;
SIGNAL \out_stack_data[8]~reg0_q\ : std_logic;
SIGNAL \in_stack_data[9]~input_o\ : std_logic;
SIGNAL \Stack~27feeder_combout\ : std_logic;
SIGNAL \Stack~27_q\ : std_logic;
SIGNAL \Stack~63feeder_combout\ : std_logic;
SIGNAL \Stack~63_q\ : std_logic;
SIGNAL \Stack~45_q\ : std_logic;
SIGNAL \Stack~90_combout\ : std_logic;
SIGNAL \Stack~91_combout\ : std_logic;
SIGNAL \out_stack_data[9]~reg0_q\ : std_logic;
SIGNAL \in_stack_data[10]~input_o\ : std_logic;
SIGNAL \Stack~46feeder_combout\ : std_logic;
SIGNAL \Stack~46_q\ : std_logic;
SIGNAL \Stack~28_q\ : std_logic;
SIGNAL \Stack~92_combout\ : std_logic;
SIGNAL \Stack~93_combout\ : std_logic;
SIGNAL \out_stack_data[10]~reg0_q\ : std_logic;
SIGNAL \in_stack_data[11]~input_o\ : std_logic;
SIGNAL \Stack~11feeder_combout\ : std_logic;
SIGNAL \Stack~11_q\ : std_logic;
SIGNAL \Stack~65_q\ : std_logic;
SIGNAL \Stack~47_q\ : std_logic;
SIGNAL \Stack~94_combout\ : std_logic;
SIGNAL \Stack~95_combout\ : std_logic;
SIGNAL \out_stack_data[11]~reg0_q\ : std_logic;
SIGNAL \in_stack_data[12]~input_o\ : std_logic;
SIGNAL \Stack~48feeder_combout\ : std_logic;
SIGNAL \Stack~48_q\ : std_logic;
SIGNAL \Stack~30_q\ : std_logic;
SIGNAL \Stack~96_combout\ : std_logic;
SIGNAL \Stack~97_combout\ : std_logic;
SIGNAL \out_stack_data[12]~reg0_q\ : std_logic;
SIGNAL \in_stack_data[13]~input_o\ : std_logic;
SIGNAL \Stack~31feeder_combout\ : std_logic;
SIGNAL \Stack~31_q\ : std_logic;
SIGNAL \Stack~67_q\ : std_logic;
SIGNAL \Stack~49_q\ : std_logic;
SIGNAL \Stack~98_combout\ : std_logic;
SIGNAL \Stack~99_combout\ : std_logic;
SIGNAL \out_stack_data[13]~reg0_q\ : std_logic;
SIGNAL \in_stack_data[14]~input_o\ : std_logic;
SIGNAL \Stack~14feeder_combout\ : std_logic;
SIGNAL \Stack~14_q\ : std_logic;
SIGNAL \Stack~32_q\ : std_logic;
SIGNAL \Stack~100_combout\ : std_logic;
SIGNAL \Stack~101_combout\ : std_logic;
SIGNAL \out_stack_data[14]~reg0_q\ : std_logic;
SIGNAL \in_stack_data[15]~input_o\ : std_logic;
SIGNAL \Stack~15_q\ : std_logic;
SIGNAL \Stack~69_q\ : std_logic;
SIGNAL \Stack~51_q\ : std_logic;
SIGNAL \Stack~102_combout\ : std_logic;
SIGNAL \Stack~103_combout\ : std_logic;
SIGNAL \out_stack_data[15]~reg0_q\ : std_logic;
SIGNAL \in_stack_data[16]~input_o\ : std_logic;
SIGNAL \Stack~16_q\ : std_logic;
SIGNAL \Stack~34_q\ : std_logic;
SIGNAL \Stack~104_combout\ : std_logic;
SIGNAL \Stack~105_combout\ : std_logic;
SIGNAL \out_stack_data[16]~reg0_q\ : std_logic;
SIGNAL \in_stack_data[17]~input_o\ : std_logic;
SIGNAL \Stack~17feeder_combout\ : std_logic;
SIGNAL \Stack~17_q\ : std_logic;
SIGNAL \Stack~71feeder_combout\ : std_logic;
SIGNAL \Stack~71_q\ : std_logic;
SIGNAL \Stack~53_q\ : std_logic;
SIGNAL \Stack~106_combout\ : std_logic;
SIGNAL \Stack~107_combout\ : std_logic;
SIGNAL \out_stack_data[17]~reg0_q\ : std_logic;
SIGNAL SP : std_logic_vector(1 DOWNTO 0);

BEGIN

out_stack_data <= ww_out_stack_data;
ww_in_stack_data <= in_stack_data;
ww_clk <= clk;
ww_rst <= rst;
ww_read_stack_en <= read_stack_en;
ww_write_stack_en <= write_stack_en;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: FF_X38_Y13_N1
\Stack~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_stack_data[0]~input_o\,
	sload => VCC,
	ena => \Stack~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stack~54_q\);

-- Location: FF_X38_Y13_N9
\Stack~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_stack_data[2]~input_o\,
	sload => VCC,
	ena => \Stack~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stack~56_q\);

-- Location: FF_X32_Y13_N27
\Stack~2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_stack_data[2]~input_o\,
	sload => VCC,
	ena => \Stack~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stack~2_q\);

-- Location: FF_X38_Y13_N17
\Stack~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_stack_data[4]~input_o\,
	sload => VCC,
	ena => \Stack~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stack~58_q\);

-- Location: FF_X37_Y13_N3
\Stack~4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Stack~4feeder_combout\,
	ena => \Stack~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stack~4_q\);

-- Location: FF_X37_Y13_N7
\Stack~5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_stack_data[5]~input_o\,
	sload => VCC,
	ena => \Stack~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stack~5_q\);

-- Location: FF_X38_Y13_N25
\Stack~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_stack_data[6]~input_o\,
	sload => VCC,
	ena => \Stack~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stack~60_q\);

-- Location: FF_X35_Y13_N1
\Stack~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Stack~62feeder_combout\,
	ena => \Stack~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stack~62_q\);

-- Location: FF_X37_Y13_N13
\Stack~9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_stack_data[9]~input_o\,
	sload => VCC,
	ena => \Stack~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stack~9_q\);

-- Location: FF_X35_Y13_N27
\Stack~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Stack~64feeder_combout\,
	ena => \Stack~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stack~64_q\);

-- Location: FF_X32_Y13_N11
\Stack~10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Stack~10feeder_combout\,
	ena => \Stack~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stack~10_q\);

-- Location: FF_X33_Y13_N31
\Stack~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Stack~29feeder_combout\,
	ena => \Stack~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stack~29_q\);

-- Location: FF_X35_Y13_N11
\Stack~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Stack~66feeder_combout\,
	ena => \Stack~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stack~66_q\);

-- Location: FF_X32_Y13_N15
\Stack~12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_stack_data[12]~input_o\,
	sload => VCC,
	ena => \Stack~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stack~12_q\);

-- Location: FF_X37_Y13_N9
\Stack~13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_stack_data[13]~input_o\,
	sload => VCC,
	ena => \Stack~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stack~13_q\);

-- Location: FF_X31_Y13_N25
\Stack~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Stack~50feeder_combout\,
	ena => \Stack~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stack~50_q\);

-- Location: FF_X31_Y13_N11
\Stack~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Stack~68feeder_combout\,
	ena => \Stack~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stack~68_q\);

-- Location: FF_X33_Y13_N11
\Stack~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Stack~33feeder_combout\,
	ena => \Stack~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stack~33_q\);

-- Location: FF_X31_Y13_N21
\Stack~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Stack~52feeder_combout\,
	ena => \Stack~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stack~52_q\);

-- Location: FF_X31_Y13_N15
\Stack~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Stack~70feeder_combout\,
	ena => \Stack~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stack~70_q\);

-- Location: FF_X33_Y13_N13
\Stack~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Stack~35feeder_combout\,
	ena => \Stack~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stack~35_q\);

-- Location: LCCOMB_X37_Y13_N2
\Stack~4feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Stack~4feeder_combout\ = \in_stack_data[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_stack_data[4]~input_o\,
	combout => \Stack~4feeder_combout\);

-- Location: LCCOMB_X35_Y13_N0
\Stack~62feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Stack~62feeder_combout\ = \in_stack_data[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_stack_data[8]~input_o\,
	combout => \Stack~62feeder_combout\);

-- Location: LCCOMB_X32_Y13_N10
\Stack~10feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Stack~10feeder_combout\ = \in_stack_data[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_stack_data[10]~input_o\,
	combout => \Stack~10feeder_combout\);

-- Location: LCCOMB_X35_Y13_N26
\Stack~64feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Stack~64feeder_combout\ = \in_stack_data[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_stack_data[10]~input_o\,
	combout => \Stack~64feeder_combout\);

-- Location: LCCOMB_X33_Y13_N30
\Stack~29feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Stack~29feeder_combout\ = \in_stack_data[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_stack_data[11]~input_o\,
	combout => \Stack~29feeder_combout\);

-- Location: LCCOMB_X35_Y13_N10
\Stack~66feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Stack~66feeder_combout\ = \in_stack_data[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_stack_data[12]~input_o\,
	combout => \Stack~66feeder_combout\);

-- Location: LCCOMB_X31_Y13_N10
\Stack~68feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Stack~68feeder_combout\ = \in_stack_data[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_stack_data[14]~input_o\,
	combout => \Stack~68feeder_combout\);

-- Location: LCCOMB_X31_Y13_N24
\Stack~50feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Stack~50feeder_combout\ = \in_stack_data[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_stack_data[14]~input_o\,
	combout => \Stack~50feeder_combout\);

-- Location: LCCOMB_X33_Y13_N10
\Stack~33feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Stack~33feeder_combout\ = \in_stack_data[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \in_stack_data[15]~input_o\,
	combout => \Stack~33feeder_combout\);

-- Location: LCCOMB_X31_Y13_N14
\Stack~70feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Stack~70feeder_combout\ = \in_stack_data[16]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_stack_data[16]~input_o\,
	combout => \Stack~70feeder_combout\);

-- Location: LCCOMB_X31_Y13_N20
\Stack~52feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Stack~52feeder_combout\ = \in_stack_data[16]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_stack_data[16]~input_o\,
	combout => \Stack~52feeder_combout\);

-- Location: LCCOMB_X33_Y13_N12
\Stack~35feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Stack~35feeder_combout\ = \in_stack_data[17]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_stack_data[17]~input_o\,
	combout => \Stack~35feeder_combout\);

-- Location: IOOBUF_X35_Y0_N23
\out_stack_data[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_stack_data[0]~reg0_q\,
	devoe => ww_devoe,
	o => \out_stack_data[0]~output_o\);

-- Location: IOOBUF_X41_Y12_N16
\out_stack_data[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_stack_data[1]~reg0_q\,
	devoe => ww_devoe,
	o => \out_stack_data[1]~output_o\);

-- Location: IOOBUF_X35_Y0_N9
\out_stack_data[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_stack_data[2]~reg0_q\,
	devoe => ww_devoe,
	o => \out_stack_data[2]~output_o\);

-- Location: IOOBUF_X41_Y14_N16
\out_stack_data[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_stack_data[3]~reg0_q\,
	devoe => ww_devoe,
	o => \out_stack_data[3]~output_o\);

-- Location: IOOBUF_X41_Y17_N9
\out_stack_data[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_stack_data[4]~reg0_q\,
	devoe => ww_devoe,
	o => \out_stack_data[4]~output_o\);

-- Location: IOOBUF_X35_Y0_N30
\out_stack_data[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_stack_data[5]~reg0_q\,
	devoe => ww_devoe,
	o => \out_stack_data[5]~output_o\);

-- Location: IOOBUF_X35_Y0_N2
\out_stack_data[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_stack_data[6]~reg0_q\,
	devoe => ww_devoe,
	o => \out_stack_data[6]~output_o\);

-- Location: IOOBUF_X37_Y0_N23
\out_stack_data[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_stack_data[7]~reg0_q\,
	devoe => ww_devoe,
	o => \out_stack_data[7]~output_o\);

-- Location: IOOBUF_X35_Y29_N30
\out_stack_data[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_stack_data[8]~reg0_q\,
	devoe => ww_devoe,
	o => \out_stack_data[8]~output_o\);

-- Location: IOOBUF_X32_Y0_N16
\out_stack_data[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_stack_data[9]~reg0_q\,
	devoe => ww_devoe,
	o => \out_stack_data[9]~output_o\);

-- Location: IOOBUF_X32_Y0_N23
\out_stack_data[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_stack_data[10]~reg0_q\,
	devoe => ww_devoe,
	o => \out_stack_data[10]~output_o\);

-- Location: IOOBUF_X41_Y12_N9
\out_stack_data[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_stack_data[11]~reg0_q\,
	devoe => ww_devoe,
	o => \out_stack_data[11]~output_o\);

-- Location: IOOBUF_X0_Y13_N2
\out_stack_data[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_stack_data[12]~reg0_q\,
	devoe => ww_devoe,
	o => \out_stack_data[12]~output_o\);

-- Location: IOOBUF_X32_Y29_N16
\out_stack_data[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_stack_data[13]~reg0_q\,
	devoe => ww_devoe,
	o => \out_stack_data[13]~output_o\);

-- Location: IOOBUF_X32_Y0_N2
\out_stack_data[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_stack_data[14]~reg0_q\,
	devoe => ww_devoe,
	o => \out_stack_data[14]~output_o\);

-- Location: IOOBUF_X32_Y0_N30
\out_stack_data[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_stack_data[15]~reg0_q\,
	devoe => ww_devoe,
	o => \out_stack_data[15]~output_o\);

-- Location: IOOBUF_X32_Y29_N23
\out_stack_data[16]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_stack_data[16]~reg0_q\,
	devoe => ww_devoe,
	o => \out_stack_data[16]~output_o\);

-- Location: IOOBUF_X32_Y29_N9
\out_stack_data[17]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_stack_data[17]~reg0_q\,
	devoe => ww_devoe,
	o => \out_stack_data[17]~output_o\);

-- Location: IOIBUF_X0_Y14_N1
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

-- Location: IOIBUF_X41_Y14_N1
\in_stack_data[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_stack_data(0),
	o => \in_stack_data[0]~input_o\);

-- Location: LCCOMB_X32_Y13_N16
\Stack~18feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Stack~18feeder_combout\ = \in_stack_data[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_stack_data[0]~input_o\,
	combout => \Stack~18feeder_combout\);

-- Location: IOIBUF_X41_Y18_N22
\write_stack_en~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_stack_en,
	o => \write_stack_en~input_o\);

-- Location: IOIBUF_X41_Y12_N1
\read_stack_en~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_read_stack_en,
	o => \read_stack_en~input_o\);

-- Location: LCCOMB_X36_Y13_N18
\SP~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SP~0_combout\ = SP(0) $ (((\write_stack_en~input_o\) # (\read_stack_en~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \write_stack_en~input_o\,
	datac => SP(0),
	datad => \read_stack_en~input_o\,
	combout => \SP~0_combout\);

-- Location: IOIBUF_X41_Y17_N1
\rst~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: FF_X36_Y13_N19
\SP[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \SP~0_combout\,
	sclr => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SP(0));

-- Location: LCCOMB_X36_Y13_N4
\SP~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SP~1_combout\ = SP(1) $ (((\read_stack_en~input_o\ & ((!SP(0)))) # (!\read_stack_en~input_o\ & (\write_stack_en~input_o\ & SP(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_stack_en~input_o\,
	datab => \write_stack_en~input_o\,
	datac => SP(1),
	datad => SP(0),
	combout => \SP~1_combout\);

-- Location: FF_X36_Y13_N5
\SP[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \SP~1_combout\,
	sclr => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SP(1));

-- Location: LCCOMB_X36_Y13_N8
\Stack~108\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Stack~108_combout\ = (!\out_stack_data[0]~0_combout\ & (\write_stack_en~input_o\ & (!SP(1) & SP(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_stack_data[0]~0_combout\,
	datab => \write_stack_en~input_o\,
	datac => SP(1),
	datad => SP(0),
	combout => \Stack~108_combout\);

-- Location: FF_X32_Y13_N17
\Stack~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Stack~18feeder_combout\,
	ena => \Stack~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stack~18_q\);

-- Location: LCCOMB_X36_Y13_N12
\Stack~110\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Stack~110_combout\ = (!\out_stack_data[0]~0_combout\ & (!SP(0) & (SP(1) & \write_stack_en~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_stack_data[0]~0_combout\,
	datab => SP(0),
	datac => SP(1),
	datad => \write_stack_en~input_o\,
	combout => \Stack~110_combout\);

-- Location: FF_X38_Y13_N3
\Stack~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_stack_data[0]~input_o\,
	sload => VCC,
	ena => \Stack~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stack~36_q\);

-- Location: LCCOMB_X38_Y13_N2
\Stack~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Stack~72_combout\ = (SP(1) & (((\Stack~36_q\ & SP(0))))) # (!SP(1) & ((\Stack~54_q\) # ((SP(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Stack~54_q\,
	datab => SP(1),
	datac => \Stack~36_q\,
	datad => SP(0),
	combout => \Stack~72_combout\);

-- Location: LCCOMB_X32_Y13_N2
\Stack~0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Stack~0feeder_combout\ = \in_stack_data[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_stack_data[0]~input_o\,
	combout => \Stack~0feeder_combout\);

-- Location: LCCOMB_X36_Y13_N14
\Stack~111\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Stack~111_combout\ = (!\out_stack_data[0]~0_combout\ & (\write_stack_en~input_o\ & (!SP(1) & !SP(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_stack_data[0]~0_combout\,
	datab => \write_stack_en~input_o\,
	datac => SP(1),
	datad => SP(0),
	combout => \Stack~111_combout\);

-- Location: FF_X32_Y13_N3
\Stack~0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Stack~0feeder_combout\,
	ena => \Stack~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stack~0_q\);

-- Location: LCCOMB_X36_Y13_N0
\Stack~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Stack~73_combout\ = (\Add0~0_combout\ & ((\Stack~72_combout\ & ((\Stack~0_q\))) # (!\Stack~72_combout\ & (\Stack~18_q\)))) # (!\Add0~0_combout\ & (((\Stack~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Stack~18_q\,
	datac => \Stack~72_combout\,
	datad => \Stack~0_q\,
	combout => \Stack~73_combout\);

-- Location: LCCOMB_X33_Y13_N2
\out_stack_data[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \out_stack_data[0]~0_combout\ = (\read_stack_en~input_o\) # (\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_stack_en~input_o\,
	datad => \rst~input_o\,
	combout => \out_stack_data[0]~0_combout\);

-- Location: FF_X36_Y13_N1
\out_stack_data[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Stack~73_combout\,
	sclr => \rst~input_o\,
	ena => \out_stack_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_stack_data[0]~reg0_q\);

-- Location: IOIBUF_X41_Y13_N15
\in_stack_data[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_stack_data(1),
	o => \in_stack_data[1]~input_o\);

-- Location: LCCOMB_X32_Y13_N4
\Stack~19feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Stack~19feeder_combout\ = \in_stack_data[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_stack_data[1]~input_o\,
	combout => \Stack~19feeder_combout\);

-- Location: FF_X32_Y13_N5
\Stack~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Stack~19feeder_combout\,
	ena => \Stack~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stack~19_q\);

-- Location: LCCOMB_X32_Y13_N30
\Stack~1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Stack~1feeder_combout\ = \in_stack_data[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_stack_data[1]~input_o\,
	combout => \Stack~1feeder_combout\);

-- Location: FF_X32_Y13_N31
\Stack~1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Stack~1feeder_combout\,
	ena => \Stack~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stack~1_q\);

-- Location: LCCOMB_X38_Y13_N28
\Stack~55feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Stack~55feeder_combout\ = \in_stack_data[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_stack_data[1]~input_o\,
	combout => \Stack~55feeder_combout\);

-- Location: LCCOMB_X36_Y13_N10
\Stack~109\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Stack~109_combout\ = (!\out_stack_data[0]~0_combout\ & (\write_stack_en~input_o\ & (SP(1) & SP(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_stack_data[0]~0_combout\,
	datab => \write_stack_en~input_o\,
	datac => SP(1),
	datad => SP(0),
	combout => \Stack~109_combout\);

-- Location: FF_X38_Y13_N29
\Stack~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Stack~55feeder_combout\,
	ena => \Stack~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stack~55_q\);

-- Location: FF_X38_Y13_N15
\Stack~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_stack_data[1]~input_o\,
	sload => VCC,
	ena => \Stack~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stack~37_q\);

-- Location: LCCOMB_X38_Y13_N14
\Stack~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Stack~74_combout\ = (SP(1) & (((\Stack~37_q\ & SP(0))))) # (!SP(1) & ((\Stack~55_q\) # ((SP(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SP(1),
	datab => \Stack~55_q\,
	datac => \Stack~37_q\,
	datad => SP(0),
	combout => \Stack~74_combout\);

-- Location: LCCOMB_X36_Y13_N2
\Stack~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Stack~75_combout\ = (\Add0~0_combout\ & ((\Stack~74_combout\ & ((\Stack~1_q\))) # (!\Stack~74_combout\ & (\Stack~19_q\)))) # (!\Add0~0_combout\ & (((\Stack~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Stack~19_q\,
	datac => \Stack~1_q\,
	datad => \Stack~74_combout\,
	combout => \Stack~75_combout\);

-- Location: FF_X36_Y13_N3
\out_stack_data[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Stack~75_combout\,
	sclr => \rst~input_o\,
	ena => \out_stack_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_stack_data[1]~reg0_q\);

-- Location: LCCOMB_X36_Y13_N6
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = SP(1) $ (SP(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => SP(1),
	datad => SP(0),
	combout => \Add0~0_combout\);

-- Location: IOIBUF_X41_Y14_N8
\in_stack_data[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_stack_data(2),
	o => \in_stack_data[2]~input_o\);

-- Location: FF_X32_Y13_N1
\Stack~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_stack_data[2]~input_o\,
	sload => VCC,
	ena => \Stack~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stack~20_q\);

-- Location: FF_X38_Y13_N27
\Stack~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_stack_data[2]~input_o\,
	sload => VCC,
	ena => \Stack~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stack~38_q\);

-- Location: LCCOMB_X38_Y13_N26
\Stack~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Stack~76_combout\ = (SP(1) & (((\Stack~38_q\ & SP(0))))) # (!SP(1) & ((\Stack~56_q\) # ((SP(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Stack~56_q\,
	datab => SP(1),
	datac => \Stack~38_q\,
	datad => SP(0),
	combout => \Stack~76_combout\);

-- Location: LCCOMB_X36_Y13_N28
\Stack~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Stack~77_combout\ = (\Add0~0_combout\ & ((\Stack~76_combout\ & (\Stack~2_q\)) # (!\Stack~76_combout\ & ((\Stack~20_q\))))) # (!\Add0~0_combout\ & (((\Stack~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Stack~2_q\,
	datab => \Add0~0_combout\,
	datac => \Stack~20_q\,
	datad => \Stack~76_combout\,
	combout => \Stack~77_combout\);

-- Location: FF_X36_Y13_N29
\out_stack_data[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Stack~77_combout\,
	sclr => \rst~input_o\,
	ena => \out_stack_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_stack_data[2]~reg0_q\);

-- Location: IOIBUF_X35_Y29_N15
\in_stack_data[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_stack_data(3),
	o => \in_stack_data[3]~input_o\);

-- Location: LCCOMB_X32_Y13_N22
\Stack~3feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Stack~3feeder_combout\ = \in_stack_data[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_stack_data[3]~input_o\,
	combout => \Stack~3feeder_combout\);

-- Location: FF_X32_Y13_N23
\Stack~3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Stack~3feeder_combout\,
	ena => \Stack~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stack~3_q\);

-- Location: LCCOMB_X32_Y13_N28
\Stack~21feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Stack~21feeder_combout\ = \in_stack_data[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_stack_data[3]~input_o\,
	combout => \Stack~21feeder_combout\);

-- Location: FF_X32_Y13_N29
\Stack~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Stack~21feeder_combout\,
	ena => \Stack~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stack~21_q\);

-- Location: FF_X38_Y13_N5
\Stack~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_stack_data[3]~input_o\,
	sload => VCC,
	ena => \Stack~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stack~57_q\);

-- Location: FF_X38_Y13_N7
\Stack~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_stack_data[3]~input_o\,
	sload => VCC,
	ena => \Stack~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stack~39_q\);

-- Location: LCCOMB_X38_Y13_N6
\Stack~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Stack~78_combout\ = (SP(1) & (((\Stack~39_q\ & SP(0))))) # (!SP(1) & ((\Stack~57_q\) # ((SP(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SP(1),
	datab => \Stack~57_q\,
	datac => \Stack~39_q\,
	datad => SP(0),
	combout => \Stack~78_combout\);

-- Location: LCCOMB_X36_Y13_N22
\Stack~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Stack~79_combout\ = (\Add0~0_combout\ & ((\Stack~78_combout\ & (\Stack~3_q\)) # (!\Stack~78_combout\ & ((\Stack~21_q\))))) # (!\Add0~0_combout\ & (((\Stack~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Stack~3_q\,
	datac => \Stack~21_q\,
	datad => \Stack~78_combout\,
	combout => \Stack~79_combout\);

-- Location: FF_X36_Y13_N23
\out_stack_data[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Stack~79_combout\,
	sclr => \rst~input_o\,
	ena => \out_stack_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_stack_data[3]~reg0_q\);

-- Location: IOIBUF_X41_Y18_N1
\in_stack_data[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_stack_data(4),
	o => \in_stack_data[4]~input_o\);

-- Location: LCCOMB_X37_Y13_N24
\Stack~22feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Stack~22feeder_combout\ = \in_stack_data[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_stack_data[4]~input_o\,
	combout => \Stack~22feeder_combout\);

-- Location: FF_X37_Y13_N25
\Stack~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Stack~22feeder_combout\,
	ena => \Stack~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stack~22_q\);

-- Location: FF_X38_Y13_N11
\Stack~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_stack_data[4]~input_o\,
	sload => VCC,
	ena => \Stack~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stack~40_q\);

-- Location: LCCOMB_X38_Y13_N10
\Stack~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Stack~80_combout\ = (SP(1) & (((\Stack~40_q\ & SP(0))))) # (!SP(1) & ((\Stack~58_q\) # ((SP(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Stack~58_q\,
	datab => SP(1),
	datac => \Stack~40_q\,
	datad => SP(0),
	combout => \Stack~80_combout\);

-- Location: LCCOMB_X36_Y13_N16
\Stack~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Stack~81_combout\ = (\Add0~0_combout\ & ((\Stack~80_combout\ & (\Stack~4_q\)) # (!\Stack~80_combout\ & ((\Stack~22_q\))))) # (!\Add0~0_combout\ & (((\Stack~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Stack~4_q\,
	datab => \Stack~22_q\,
	datac => \Add0~0_combout\,
	datad => \Stack~80_combout\,
	combout => \Stack~81_combout\);

-- Location: FF_X36_Y13_N17
\out_stack_data[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Stack~81_combout\,
	sclr => \rst~input_o\,
	ena => \out_stack_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_stack_data[4]~reg0_q\);

-- Location: IOIBUF_X41_Y13_N8
\in_stack_data[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_stack_data(5),
	o => \in_stack_data[5]~input_o\);

-- Location: FF_X37_Y13_N29
\Stack~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_stack_data[5]~input_o\,
	sload => VCC,
	ena => \Stack~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stack~23_q\);

-- Location: FF_X38_Y13_N21
\Stack~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_stack_data[5]~input_o\,
	sload => VCC,
	ena => \Stack~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stack~59_q\);

-- Location: FF_X38_Y13_N31
\Stack~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_stack_data[5]~input_o\,
	sload => VCC,
	ena => \Stack~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stack~41_q\);

-- Location: LCCOMB_X38_Y13_N30
\Stack~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Stack~82_combout\ = (SP(1) & (((\Stack~41_q\ & SP(0))))) # (!SP(1) & ((\Stack~59_q\) # ((SP(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SP(1),
	datab => \Stack~59_q\,
	datac => \Stack~41_q\,
	datad => SP(0),
	combout => \Stack~82_combout\);

-- Location: LCCOMB_X36_Y13_N26
\Stack~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Stack~83_combout\ = (\Add0~0_combout\ & ((\Stack~82_combout\ & (\Stack~5_q\)) # (!\Stack~82_combout\ & ((\Stack~23_q\))))) # (!\Add0~0_combout\ & (((\Stack~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Stack~5_q\,
	datab => \Stack~23_q\,
	datac => \Add0~0_combout\,
	datad => \Stack~82_combout\,
	combout => \Stack~83_combout\);

-- Location: FF_X36_Y13_N27
\out_stack_data[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Stack~83_combout\,
	sclr => \rst~input_o\,
	ena => \out_stack_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_stack_data[5]~reg0_q\);

-- Location: IOIBUF_X37_Y29_N29
\in_stack_data[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_stack_data(6),
	o => \in_stack_data[6]~input_o\);

-- Location: FF_X37_Y13_N11
\Stack~6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_stack_data[6]~input_o\,
	sload => VCC,
	ena => \Stack~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stack~6_q\);

-- Location: FF_X37_Y13_N1
\Stack~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_stack_data[6]~input_o\,
	sload => VCC,
	ena => \Stack~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stack~24_q\);

-- Location: FF_X38_Y13_N19
\Stack~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_stack_data[6]~input_o\,
	sload => VCC,
	ena => \Stack~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stack~42_q\);

-- Location: LCCOMB_X38_Y13_N18
\Stack~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Stack~84_combout\ = (SP(1) & (((\Stack~42_q\ & SP(0))))) # (!SP(1) & ((\Stack~60_q\) # ((SP(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Stack~60_q\,
	datab => SP(1),
	datac => \Stack~42_q\,
	datad => SP(0),
	combout => \Stack~84_combout\);

-- Location: LCCOMB_X36_Y13_N20
\Stack~85\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Stack~85_combout\ = (\Add0~0_combout\ & ((\Stack~84_combout\ & (\Stack~6_q\)) # (!\Stack~84_combout\ & ((\Stack~24_q\))))) # (!\Add0~0_combout\ & (((\Stack~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Stack~6_q\,
	datac => \Stack~24_q\,
	datad => \Stack~84_combout\,
	combout => \Stack~85_combout\);

-- Location: FF_X36_Y13_N21
\out_stack_data[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Stack~85_combout\,
	sclr => \rst~input_o\,
	ena => \out_stack_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_stack_data[6]~reg0_q\);

-- Location: IOIBUF_X37_Y0_N15
\in_stack_data[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_stack_data(7),
	o => \in_stack_data[7]~input_o\);

-- Location: FF_X37_Y13_N15
\Stack~7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_stack_data[7]~input_o\,
	sload => VCC,
	ena => \Stack~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stack~7_q\);

-- Location: FF_X37_Y13_N21
\Stack~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_stack_data[7]~input_o\,
	sload => VCC,
	ena => \Stack~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stack~25_q\);

-- Location: FF_X38_Y13_N13
\Stack~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_stack_data[7]~input_o\,
	sload => VCC,
	ena => \Stack~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stack~61_q\);

-- Location: FF_X38_Y13_N23
\Stack~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_stack_data[7]~input_o\,
	sload => VCC,
	ena => \Stack~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stack~43_q\);

-- Location: LCCOMB_X38_Y13_N22
\Stack~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Stack~86_combout\ = (SP(1) & (((\Stack~43_q\ & SP(0))))) # (!SP(1) & ((\Stack~61_q\) # ((SP(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SP(1),
	datab => \Stack~61_q\,
	datac => \Stack~43_q\,
	datad => SP(0),
	combout => \Stack~86_combout\);

-- Location: LCCOMB_X36_Y13_N30
\Stack~87\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Stack~87_combout\ = (\Add0~0_combout\ & ((\Stack~86_combout\ & (\Stack~7_q\)) # (!\Stack~86_combout\ & ((\Stack~25_q\))))) # (!\Add0~0_combout\ & (((\Stack~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Stack~7_q\,
	datac => \Stack~25_q\,
	datad => \Stack~86_combout\,
	combout => \Stack~87_combout\);

-- Location: FF_X36_Y13_N31
\out_stack_data[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Stack~87_combout\,
	sclr => \rst~input_o\,
	ena => \out_stack_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_stack_data[7]~reg0_q\);

-- Location: IOIBUF_X41_Y14_N22
\in_stack_data[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_stack_data(8),
	o => \in_stack_data[8]~input_o\);

-- Location: LCCOMB_X37_Y13_N16
\Stack~26feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Stack~26feeder_combout\ = \in_stack_data[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_stack_data[8]~input_o\,
	combout => \Stack~26feeder_combout\);

-- Location: FF_X37_Y13_N17
\Stack~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Stack~26feeder_combout\,
	ena => \Stack~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stack~26_q\);

-- Location: LCCOMB_X37_Y13_N18
\Stack~8feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Stack~8feeder_combout\ = \in_stack_data[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_stack_data[8]~input_o\,
	combout => \Stack~8feeder_combout\);

-- Location: FF_X37_Y13_N19
\Stack~8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Stack~8feeder_combout\,
	ena => \Stack~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stack~8_q\);

-- Location: FF_X35_Y13_N19
\Stack~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_stack_data[8]~input_o\,
	sload => VCC,
	ena => \Stack~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stack~44_q\);

-- Location: LCCOMB_X35_Y13_N18
\Stack~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Stack~88_combout\ = (SP(0) & (((\Stack~44_q\) # (!SP(1))))) # (!SP(0) & (\Stack~62_q\ & ((!SP(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Stack~62_q\,
	datab => SP(0),
	datac => \Stack~44_q\,
	datad => SP(1),
	combout => \Stack~88_combout\);

-- Location: LCCOMB_X36_Y13_N24
\Stack~89\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Stack~89_combout\ = (\Add0~0_combout\ & ((\Stack~88_combout\ & ((\Stack~8_q\))) # (!\Stack~88_combout\ & (\Stack~26_q\)))) # (!\Add0~0_combout\ & (((\Stack~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Stack~26_q\,
	datac => \Stack~8_q\,
	datad => \Stack~88_combout\,
	combout => \Stack~89_combout\);

-- Location: FF_X36_Y13_N25
\out_stack_data[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Stack~89_combout\,
	sclr => \rst~input_o\,
	ena => \out_stack_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_stack_data[8]~reg0_q\);

-- Location: IOIBUF_X41_Y12_N22
\in_stack_data[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_stack_data(9),
	o => \in_stack_data[9]~input_o\);

-- Location: LCCOMB_X33_Y13_N28
\Stack~27feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Stack~27feeder_combout\ = \in_stack_data[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \in_stack_data[9]~input_o\,
	combout => \Stack~27feeder_combout\);

-- Location: FF_X33_Y13_N29
\Stack~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Stack~27feeder_combout\,
	ena => \Stack~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stack~27_q\);

-- Location: LCCOMB_X35_Y13_N4
\Stack~63feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Stack~63feeder_combout\ = \in_stack_data[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_stack_data[9]~input_o\,
	combout => \Stack~63feeder_combout\);

-- Location: FF_X35_Y13_N5
\Stack~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Stack~63feeder_combout\,
	ena => \Stack~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stack~63_q\);

-- Location: FF_X35_Y13_N23
\Stack~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_stack_data[9]~input_o\,
	sload => VCC,
	ena => \Stack~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stack~45_q\);

-- Location: LCCOMB_X35_Y13_N22
\Stack~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Stack~90_combout\ = (SP(1) & (((\Stack~45_q\ & SP(0))))) # (!SP(1) & ((\Stack~63_q\) # ((SP(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SP(1),
	datab => \Stack~63_q\,
	datac => \Stack~45_q\,
	datad => SP(0),
	combout => \Stack~90_combout\);

-- Location: LCCOMB_X33_Y13_N8
\Stack~91\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Stack~91_combout\ = (\Add0~0_combout\ & ((\Stack~90_combout\ & (\Stack~9_q\)) # (!\Stack~90_combout\ & ((\Stack~27_q\))))) # (!\Add0~0_combout\ & (((\Stack~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Stack~9_q\,
	datab => \Stack~27_q\,
	datac => \Add0~0_combout\,
	datad => \Stack~90_combout\,
	combout => \Stack~91_combout\);

-- Location: FF_X33_Y13_N9
\out_stack_data[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Stack~91_combout\,
	sclr => \rst~input_o\,
	ena => \out_stack_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_stack_data[9]~reg0_q\);

-- Location: IOIBUF_X35_Y0_N15
\in_stack_data[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_stack_data(10),
	o => \in_stack_data[10]~input_o\);

-- Location: LCCOMB_X35_Y13_N24
\Stack~46feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Stack~46feeder_combout\ = \in_stack_data[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_stack_data[10]~input_o\,
	combout => \Stack~46feeder_combout\);

-- Location: FF_X35_Y13_N25
\Stack~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Stack~46feeder_combout\,
	ena => \Stack~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stack~46_q\);

-- Location: FF_X32_Y13_N25
\Stack~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_stack_data[10]~input_o\,
	sload => VCC,
	ena => \Stack~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stack~28_q\);

-- Location: LCCOMB_X32_Y13_N24
\Stack~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Stack~92_combout\ = (SP(0) & (((!SP(1))))) # (!SP(0) & ((SP(1) & ((\Stack~28_q\))) # (!SP(1) & (\Stack~64_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Stack~64_q\,
	datab => SP(0),
	datac => \Stack~28_q\,
	datad => SP(1),
	combout => \Stack~92_combout\);

-- Location: LCCOMB_X33_Y13_N26
\Stack~93\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Stack~93_combout\ = (SP(0) & ((\Stack~92_combout\ & (\Stack~10_q\)) # (!\Stack~92_combout\ & ((\Stack~46_q\))))) # (!SP(0) & (((\Stack~92_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Stack~10_q\,
	datab => \Stack~46_q\,
	datac => SP(0),
	datad => \Stack~92_combout\,
	combout => \Stack~93_combout\);

-- Location: FF_X33_Y13_N27
\out_stack_data[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Stack~93_combout\,
	sclr => \rst~input_o\,
	ena => \out_stack_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_stack_data[10]~reg0_q\);

-- Location: IOIBUF_X41_Y18_N8
\in_stack_data[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_stack_data(11),
	o => \in_stack_data[11]~input_o\);

-- Location: LCCOMB_X37_Y13_N22
\Stack~11feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Stack~11feeder_combout\ = \in_stack_data[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_stack_data[11]~input_o\,
	combout => \Stack~11feeder_combout\);

-- Location: FF_X37_Y13_N23
\Stack~11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Stack~11feeder_combout\,
	ena => \Stack~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stack~11_q\);

-- Location: FF_X35_Y13_N13
\Stack~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_stack_data[11]~input_o\,
	sload => VCC,
	ena => \Stack~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stack~65_q\);

-- Location: FF_X35_Y13_N15
\Stack~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_stack_data[11]~input_o\,
	sload => VCC,
	ena => \Stack~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stack~47_q\);

-- Location: LCCOMB_X35_Y13_N14
\Stack~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Stack~94_combout\ = (SP(1) & (((\Stack~47_q\ & SP(0))))) # (!SP(1) & ((\Stack~65_q\) # ((SP(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SP(1),
	datab => \Stack~65_q\,
	datac => \Stack~47_q\,
	datad => SP(0),
	combout => \Stack~94_combout\);

-- Location: LCCOMB_X33_Y13_N20
\Stack~95\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Stack~95_combout\ = (\Add0~0_combout\ & ((\Stack~94_combout\ & ((\Stack~11_q\))) # (!\Stack~94_combout\ & (\Stack~29_q\)))) # (!\Add0~0_combout\ & (((\Stack~94_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Stack~29_q\,
	datab => \Stack~11_q\,
	datac => \Add0~0_combout\,
	datad => \Stack~94_combout\,
	combout => \Stack~95_combout\);

-- Location: FF_X33_Y13_N21
\out_stack_data[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Stack~95_combout\,
	sclr => \rst~input_o\,
	ena => \out_stack_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_stack_data[11]~reg0_q\);

-- Location: IOIBUF_X41_Y13_N1
\in_stack_data[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_stack_data(12),
	o => \in_stack_data[12]~input_o\);

-- Location: LCCOMB_X35_Y13_N8
\Stack~48feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Stack~48feeder_combout\ = \in_stack_data[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_stack_data[12]~input_o\,
	combout => \Stack~48feeder_combout\);

-- Location: FF_X35_Y13_N9
\Stack~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Stack~48feeder_combout\,
	ena => \Stack~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stack~48_q\);

-- Location: FF_X32_Y13_N13
\Stack~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_stack_data[12]~input_o\,
	sload => VCC,
	ena => \Stack~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stack~30_q\);

-- Location: LCCOMB_X32_Y13_N12
\Stack~96\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Stack~96_combout\ = (SP(0) & (((!SP(1))))) # (!SP(0) & ((SP(1) & ((\Stack~30_q\))) # (!SP(1) & (\Stack~66_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Stack~66_q\,
	datab => SP(0),
	datac => \Stack~30_q\,
	datad => SP(1),
	combout => \Stack~96_combout\);

-- Location: LCCOMB_X33_Y13_N22
\Stack~97\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Stack~97_combout\ = (SP(0) & ((\Stack~96_combout\ & (\Stack~12_q\)) # (!\Stack~96_combout\ & ((\Stack~48_q\))))) # (!SP(0) & (((\Stack~96_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Stack~12_q\,
	datab => \Stack~48_q\,
	datac => SP(0),
	datad => \Stack~96_combout\,
	combout => \Stack~97_combout\);

-- Location: FF_X33_Y13_N23
\out_stack_data[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Stack~97_combout\,
	sclr => \rst~input_o\,
	ena => \out_stack_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_stack_data[12]~reg0_q\);

-- Location: IOIBUF_X37_Y0_N8
\in_stack_data[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_stack_data(13),
	o => \in_stack_data[13]~input_o\);

-- Location: LCCOMB_X33_Y13_N0
\Stack~31feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Stack~31feeder_combout\ = \in_stack_data[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \in_stack_data[13]~input_o\,
	combout => \Stack~31feeder_combout\);

-- Location: FF_X33_Y13_N1
\Stack~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Stack~31feeder_combout\,
	ena => \Stack~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stack~31_q\);

-- Location: FF_X35_Y13_N29
\Stack~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_stack_data[13]~input_o\,
	sload => VCC,
	ena => \Stack~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stack~67_q\);

-- Location: FF_X35_Y13_N7
\Stack~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_stack_data[13]~input_o\,
	sload => VCC,
	ena => \Stack~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stack~49_q\);

-- Location: LCCOMB_X35_Y13_N6
\Stack~98\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Stack~98_combout\ = (SP(1) & (((\Stack~49_q\ & SP(0))))) # (!SP(1) & ((\Stack~67_q\) # ((SP(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SP(1),
	datab => \Stack~67_q\,
	datac => \Stack~49_q\,
	datad => SP(0),
	combout => \Stack~98_combout\);

-- Location: LCCOMB_X33_Y13_N16
\Stack~99\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Stack~99_combout\ = (\Add0~0_combout\ & ((\Stack~98_combout\ & (\Stack~13_q\)) # (!\Stack~98_combout\ & ((\Stack~31_q\))))) # (!\Add0~0_combout\ & (((\Stack~98_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Stack~13_q\,
	datab => \Stack~31_q\,
	datac => \Add0~0_combout\,
	datad => \Stack~98_combout\,
	combout => \Stack~99_combout\);

-- Location: FF_X33_Y13_N17
\out_stack_data[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Stack~99_combout\,
	sclr => \rst~input_o\,
	ena => \out_stack_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_stack_data[13]~reg0_q\);

-- Location: IOIBUF_X32_Y0_N8
\in_stack_data[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_stack_data(14),
	o => \in_stack_data[14]~input_o\);

-- Location: LCCOMB_X32_Y13_N18
\Stack~14feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Stack~14feeder_combout\ = \in_stack_data[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_stack_data[14]~input_o\,
	combout => \Stack~14feeder_combout\);

-- Location: FF_X32_Y13_N19
\Stack~14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Stack~14feeder_combout\,
	ena => \Stack~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stack~14_q\);

-- Location: FF_X32_Y13_N9
\Stack~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_stack_data[14]~input_o\,
	sload => VCC,
	ena => \Stack~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stack~32_q\);

-- Location: LCCOMB_X32_Y13_N8
\Stack~100\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Stack~100_combout\ = (SP(0) & (((!SP(1))))) # (!SP(0) & ((SP(1) & ((\Stack~32_q\))) # (!SP(1) & (\Stack~68_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Stack~68_q\,
	datab => SP(0),
	datac => \Stack~32_q\,
	datad => SP(1),
	combout => \Stack~100_combout\);

-- Location: LCCOMB_X33_Y13_N18
\Stack~101\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Stack~101_combout\ = (SP(0) & ((\Stack~100_combout\ & ((\Stack~14_q\))) # (!\Stack~100_combout\ & (\Stack~50_q\)))) # (!SP(0) & (((\Stack~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Stack~50_q\,
	datab => \Stack~14_q\,
	datac => SP(0),
	datad => \Stack~100_combout\,
	combout => \Stack~101_combout\);

-- Location: FF_X33_Y13_N19
\out_stack_data[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Stack~101_combout\,
	sclr => \rst~input_o\,
	ena => \out_stack_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_stack_data[14]~reg0_q\);

-- Location: IOIBUF_X41_Y13_N22
\in_stack_data[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_stack_data(15),
	o => \in_stack_data[15]~input_o\);

-- Location: FF_X37_Y13_N27
\Stack~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_stack_data[15]~input_o\,
	sload => VCC,
	ena => \Stack~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stack~15_q\);

-- Location: FF_X35_Y13_N17
\Stack~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_stack_data[15]~input_o\,
	sload => VCC,
	ena => \Stack~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stack~69_q\);

-- Location: FF_X35_Y13_N3
\Stack~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_stack_data[15]~input_o\,
	sload => VCC,
	ena => \Stack~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stack~51_q\);

-- Location: LCCOMB_X35_Y13_N2
\Stack~102\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Stack~102_combout\ = (SP(1) & (((\Stack~51_q\ & SP(0))))) # (!SP(1) & ((\Stack~69_q\) # ((SP(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SP(1),
	datab => \Stack~69_q\,
	datac => \Stack~51_q\,
	datad => SP(0),
	combout => \Stack~102_combout\);

-- Location: LCCOMB_X33_Y13_N4
\Stack~103\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Stack~103_combout\ = (\Add0~0_combout\ & ((\Stack~102_combout\ & ((\Stack~15_q\))) # (!\Stack~102_combout\ & (\Stack~33_q\)))) # (!\Add0~0_combout\ & (((\Stack~102_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Stack~33_q\,
	datab => \Stack~15_q\,
	datac => \Add0~0_combout\,
	datad => \Stack~102_combout\,
	combout => \Stack~103_combout\);

-- Location: FF_X33_Y13_N5
\out_stack_data[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Stack~103_combout\,
	sclr => \rst~input_o\,
	ena => \out_stack_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_stack_data[15]~reg0_q\);

-- Location: IOIBUF_X30_Y29_N29
\in_stack_data[16]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_stack_data(16),
	o => \in_stack_data[16]~input_o\);

-- Location: FF_X32_Y13_N7
\Stack~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_stack_data[16]~input_o\,
	sload => VCC,
	ena => \Stack~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stack~16_q\);

-- Location: FF_X32_Y13_N21
\Stack~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_stack_data[16]~input_o\,
	sload => VCC,
	ena => \Stack~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stack~34_q\);

-- Location: LCCOMB_X32_Y13_N20
\Stack~104\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Stack~104_combout\ = (SP(0) & (((!SP(1))))) # (!SP(0) & ((SP(1) & ((\Stack~34_q\))) # (!SP(1) & (\Stack~70_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Stack~70_q\,
	datab => SP(0),
	datac => \Stack~34_q\,
	datad => SP(1),
	combout => \Stack~104_combout\);

-- Location: LCCOMB_X33_Y13_N6
\Stack~105\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Stack~105_combout\ = (SP(0) & ((\Stack~104_combout\ & ((\Stack~16_q\))) # (!\Stack~104_combout\ & (\Stack~52_q\)))) # (!SP(0) & (((\Stack~104_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Stack~52_q\,
	datab => \Stack~16_q\,
	datac => SP(0),
	datad => \Stack~104_combout\,
	combout => \Stack~105_combout\);

-- Location: FF_X33_Y13_N7
\out_stack_data[16]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Stack~105_combout\,
	sclr => \rst~input_o\,
	ena => \out_stack_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_stack_data[16]~reg0_q\);

-- Location: IOIBUF_X37_Y0_N29
\in_stack_data[17]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_stack_data(17),
	o => \in_stack_data[17]~input_o\);

-- Location: LCCOMB_X37_Y13_N4
\Stack~17feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Stack~17feeder_combout\ = \in_stack_data[17]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_stack_data[17]~input_o\,
	combout => \Stack~17feeder_combout\);

-- Location: FF_X37_Y13_N5
\Stack~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Stack~17feeder_combout\,
	ena => \Stack~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stack~17_q\);

-- Location: LCCOMB_X35_Y13_N20
\Stack~71feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Stack~71feeder_combout\ = \in_stack_data[17]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_stack_data[17]~input_o\,
	combout => \Stack~71feeder_combout\);

-- Location: FF_X35_Y13_N21
\Stack~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Stack~71feeder_combout\,
	ena => \Stack~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stack~71_q\);

-- Location: FF_X35_Y13_N31
\Stack~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_stack_data[17]~input_o\,
	sload => VCC,
	ena => \Stack~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stack~53_q\);

-- Location: LCCOMB_X35_Y13_N30
\Stack~106\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Stack~106_combout\ = (SP(1) & (((\Stack~53_q\ & SP(0))))) # (!SP(1) & ((\Stack~71_q\) # ((SP(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SP(1),
	datab => \Stack~71_q\,
	datac => \Stack~53_q\,
	datad => SP(0),
	combout => \Stack~106_combout\);

-- Location: LCCOMB_X33_Y13_N24
\Stack~107\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Stack~107_combout\ = (\Add0~0_combout\ & ((\Stack~106_combout\ & ((\Stack~17_q\))) # (!\Stack~106_combout\ & (\Stack~35_q\)))) # (!\Add0~0_combout\ & (((\Stack~106_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Stack~35_q\,
	datab => \Stack~17_q\,
	datac => \Add0~0_combout\,
	datad => \Stack~106_combout\,
	combout => \Stack~107_combout\);

-- Location: FF_X33_Y13_N25
\out_stack_data[17]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Stack~107_combout\,
	sclr => \rst~input_o\,
	ena => \out_stack_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_stack_data[17]~reg0_q\);

ww_out_stack_data(0) <= \out_stack_data[0]~output_o\;

ww_out_stack_data(1) <= \out_stack_data[1]~output_o\;

ww_out_stack_data(2) <= \out_stack_data[2]~output_o\;

ww_out_stack_data(3) <= \out_stack_data[3]~output_o\;

ww_out_stack_data(4) <= \out_stack_data[4]~output_o\;

ww_out_stack_data(5) <= \out_stack_data[5]~output_o\;

ww_out_stack_data(6) <= \out_stack_data[6]~output_o\;

ww_out_stack_data(7) <= \out_stack_data[7]~output_o\;

ww_out_stack_data(8) <= \out_stack_data[8]~output_o\;

ww_out_stack_data(9) <= \out_stack_data[9]~output_o\;

ww_out_stack_data(10) <= \out_stack_data[10]~output_o\;

ww_out_stack_data(11) <= \out_stack_data[11]~output_o\;

ww_out_stack_data(12) <= \out_stack_data[12]~output_o\;

ww_out_stack_data(13) <= \out_stack_data[13]~output_o\;

ww_out_stack_data(14) <= \out_stack_data[14]~output_o\;

ww_out_stack_data(15) <= \out_stack_data[15]~output_o\;

ww_out_stack_data(16) <= \out_stack_data[16]~output_o\;

ww_out_stack_data(17) <= \out_stack_data[17]~output_o\;
END structure;


