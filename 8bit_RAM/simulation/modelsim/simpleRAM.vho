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

-- DATE "01/16/2012 22:18:14"

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

ENTITY 	simpleRAM IS
    PORT (
	address : IN std_logic_vector(2 DOWNTO 0);
	data : INOUT std_logic_vector(7 DOWNTO 0);
	rw : IN std_logic;
	clock : IN std_logic;
	reset : IN std_logic
	);
END simpleRAM;

-- Design Ports Information
-- clock	=>  Location: PIN_U19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[0]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[1]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[2]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[3]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[4]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[5]	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[6]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[7]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rw	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[0]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[1]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[2]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF simpleRAM IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_address : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_rw : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL \rw~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Decoder0~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Decoder0~2clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Decoder0~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Decoder0~3clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Decoder0~5clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Decoder0~7clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Decoder0~4clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Decoder0~6clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \data[0]~output_o\ : std_logic;
SIGNAL \data[1]~output_o\ : std_logic;
SIGNAL \data[2]~output_o\ : std_logic;
SIGNAL \data[3]~output_o\ : std_logic;
SIGNAL \data[4]~output_o\ : std_logic;
SIGNAL \data[5]~output_o\ : std_logic;
SIGNAL \data[6]~output_o\ : std_logic;
SIGNAL \data[7]~output_o\ : std_logic;
SIGNAL \rw~input_o\ : std_logic;
SIGNAL \rw~inputclkctrl_outclk\ : std_logic;
SIGNAL \address[2]~input_o\ : std_logic;
SIGNAL \address[1]~input_o\ : std_logic;
SIGNAL \data[0]~input_o\ : std_logic;
SIGNAL \address[0]~input_o\ : std_logic;
SIGNAL \Decoder0~4_combout\ : std_logic;
SIGNAL \Decoder0~4clkctrl_outclk\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \Decoder0~6_combout\ : std_logic;
SIGNAL \Decoder0~6clkctrl_outclk\ : std_logic;
SIGNAL \Decoder0~5_combout\ : std_logic;
SIGNAL \Decoder0~5clkctrl_outclk\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \Mux7~3_combout\ : std_logic;
SIGNAL \Decoder0~3_combout\ : std_logic;
SIGNAL \Decoder0~3clkctrl_outclk\ : std_logic;
SIGNAL \Decoder0~1_combout\ : std_logic;
SIGNAL \Decoder0~1clkctrl_outclk\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Mux7~4_combout\ : std_logic;
SIGNAL \data[1]~input_o\ : std_logic;
SIGNAL \Decoder0~2_combout\ : std_logic;
SIGNAL \Decoder0~2clkctrl_outclk\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux6~4_combout\ : std_logic;
SIGNAL \data[2]~input_o\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \Mux5~4_combout\ : std_logic;
SIGNAL \data[3]~input_o\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux4~4_combout\ : std_logic;
SIGNAL \data[4]~input_o\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Decoder0~7_combout\ : std_logic;
SIGNAL \Decoder0~7clkctrl_outclk\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \data[5]~input_o\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \data[6]~input_o\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \Decoder0~0_combout\ : std_logic;
SIGNAL \Decoder0~0clkctrl_outclk\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux1~4_combout\ : std_logic;
SIGNAL \data[7]~input_o\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL RAM0 : std_logic_vector(7 DOWNTO 0);
SIGNAL RAM1 : std_logic_vector(7 DOWNTO 0);
SIGNAL RAM2 : std_logic_vector(7 DOWNTO 0);
SIGNAL RAM3 : std_logic_vector(7 DOWNTO 0);
SIGNAL RAM4 : std_logic_vector(7 DOWNTO 0);
SIGNAL RAM5 : std_logic_vector(7 DOWNTO 0);
SIGNAL RAM6 : std_logic_vector(7 DOWNTO 0);
SIGNAL RAM7 : std_logic_vector(7 DOWNTO 0);
SIGNAL word : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_address <= address;
ww_rw <= rw;
ww_clock <= clock;
ww_reset <= reset;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rw~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rw~input_o\);

\Decoder0~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Decoder0~0_combout\);

\Decoder0~2clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Decoder0~2_combout\);

\Decoder0~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Decoder0~1_combout\);

\Decoder0~3clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Decoder0~3_combout\);

\Decoder0~5clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Decoder0~5_combout\);

\Decoder0~7clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Decoder0~7_combout\);

\Decoder0~4clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Decoder0~4_combout\);

\Decoder0~6clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Decoder0~6_combout\);

-- Location: LCCOMB_X40_Y18_N16
\Mux6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (\address[1]~input_o\ & (\address[0]~input_o\)) # (!\address[1]~input_o\ & ((\address[0]~input_o\ & (RAM1(1))) # (!\address[0]~input_o\ & ((RAM0(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[0]~input_o\,
	datac => RAM1(1),
	datad => RAM0(1),
	combout => \Mux6~2_combout\);

-- Location: LCCOMB_X40_Y18_N10
\Mux6~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~3_combout\ = (\address[1]~input_o\ & ((\Mux6~2_combout\ & (RAM3(1))) # (!\Mux6~2_combout\ & ((RAM2(1)))))) # (!\address[1]~input_o\ & (((\Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => RAM3(1),
	datac => RAM2(1),
	datad => \Mux6~2_combout\,
	combout => \Mux6~3_combout\);

-- Location: LCCOMB_X39_Y18_N16
\Mux0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (\address[0]~input_o\ & ((\address[1]~input_o\) # ((RAM1(7))))) # (!\address[0]~input_o\ & (!\address[1]~input_o\ & (RAM0(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => RAM0(7),
	datad => RAM1(7),
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X39_Y18_N10
\Mux0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (\address[1]~input_o\ & ((\Mux0~2_combout\ & (RAM3(7))) # (!\Mux0~2_combout\ & ((RAM2(7)))))) # (!\address[1]~input_o\ & (((\Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => RAM3(7),
	datac => RAM2(7),
	datad => \Mux0~2_combout\,
	combout => \Mux0~3_combout\);

-- Location: LCCOMB_X40_Y19_N8
\RAM5[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- RAM5(0) = (!\reset~input_o\ & ((GLOBAL(\Decoder0~0clkctrl_outclk\) & (\data[0]~input_o\)) # (!GLOBAL(\Decoder0~0clkctrl_outclk\) & ((RAM5(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \data[0]~input_o\,
	datac => RAM5(0),
	datad => \Decoder0~0clkctrl_outclk\,
	combout => RAM5(0));

-- Location: LCCOMB_X40_Y15_N10
\RAM4[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- RAM4(0) = (!\reset~input_o\ & ((GLOBAL(\Decoder0~2clkctrl_outclk\) & (\data[0]~input_o\)) # (!GLOBAL(\Decoder0~2clkctrl_outclk\) & ((RAM4(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[0]~input_o\,
	datab => \reset~input_o\,
	datac => RAM4(0),
	datad => \Decoder0~2clkctrl_outclk\,
	combout => RAM4(0));

-- Location: LCCOMB_X40_Y19_N4
\RAM3[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- RAM3(0) = (!\reset~input_o\ & ((GLOBAL(\Decoder0~7clkctrl_outclk\) & (\data[0]~input_o\)) # (!GLOBAL(\Decoder0~7clkctrl_outclk\) & ((RAM3(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \data[0]~input_o\,
	datac => RAM3(0),
	datad => \Decoder0~7clkctrl_outclk\,
	combout => RAM3(0));

-- Location: LCCOMB_X40_Y19_N14
\RAM5[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- RAM5(1) = (!\reset~input_o\ & ((GLOBAL(\Decoder0~0clkctrl_outclk\) & (\data[1]~input_o\)) # (!GLOBAL(\Decoder0~0clkctrl_outclk\) & ((RAM5(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \data[1]~input_o\,
	datac => RAM5(1),
	datad => \Decoder0~0clkctrl_outclk\,
	combout => RAM5(1));

-- Location: LCCOMB_X40_Y19_N0
\RAM2[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- RAM2(1) = (!\reset~input_o\ & ((GLOBAL(\Decoder0~4clkctrl_outclk\) & (\data[1]~input_o\)) # (!GLOBAL(\Decoder0~4clkctrl_outclk\) & ((RAM2(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \data[1]~input_o\,
	datac => \Decoder0~4clkctrl_outclk\,
	datad => RAM2(1),
	combout => RAM2(1));

-- Location: LCCOMB_X40_Y18_N14
\RAM1[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- RAM1(1) = (!\reset~input_o\ & ((GLOBAL(\Decoder0~5clkctrl_outclk\) & (\data[1]~input_o\)) # (!GLOBAL(\Decoder0~5clkctrl_outclk\) & ((RAM1(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[1]~input_o\,
	datab => \reset~input_o\,
	datac => \Decoder0~5clkctrl_outclk\,
	datad => RAM1(1),
	combout => RAM1(1));

-- Location: LCCOMB_X40_Y18_N24
\RAM0[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- RAM0(1) = (!\reset~input_o\ & ((GLOBAL(\Decoder0~6clkctrl_outclk\) & ((\data[1]~input_o\))) # (!GLOBAL(\Decoder0~6clkctrl_outclk\) & (RAM0(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => RAM0(1),
	datac => \data[1]~input_o\,
	datad => \Decoder0~6clkctrl_outclk\,
	combout => RAM0(1));

-- Location: LCCOMB_X40_Y19_N10
\RAM3[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- RAM3(1) = (!\reset~input_o\ & ((GLOBAL(\Decoder0~7clkctrl_outclk\) & (\data[1]~input_o\)) # (!GLOBAL(\Decoder0~7clkctrl_outclk\) & ((RAM3(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \data[1]~input_o\,
	datac => RAM3(1),
	datad => \Decoder0~7clkctrl_outclk\,
	combout => RAM3(1));

-- Location: LCCOMB_X40_Y19_N20
\RAM5[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- RAM5(2) = (!\reset~input_o\ & ((GLOBAL(\Decoder0~0clkctrl_outclk\) & ((\data[2]~input_o\))) # (!GLOBAL(\Decoder0~0clkctrl_outclk\) & (RAM5(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => RAM5(2),
	datac => \data[2]~input_o\,
	datad => \Decoder0~0clkctrl_outclk\,
	combout => RAM5(2));

-- Location: LCCOMB_X40_Y19_N24
\RAM3[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- RAM3(2) = (!\reset~input_o\ & ((GLOBAL(\Decoder0~7clkctrl_outclk\) & ((\data[2]~input_o\))) # (!GLOBAL(\Decoder0~7clkctrl_outclk\) & (RAM3(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => RAM3(2),
	datac => \data[2]~input_o\,
	datad => \Decoder0~7clkctrl_outclk\,
	combout => RAM3(2));

-- Location: LCCOMB_X40_Y19_N2
\RAM5[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- RAM5(3) = (!\reset~input_o\ & ((GLOBAL(\Decoder0~0clkctrl_outclk\) & ((\data[3]~input_o\))) # (!GLOBAL(\Decoder0~0clkctrl_outclk\) & (RAM5(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => RAM5(3),
	datac => \data[3]~input_o\,
	datad => \Decoder0~0clkctrl_outclk\,
	combout => RAM5(3));

-- Location: LCCOMB_X40_Y19_N22
\RAM3[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- RAM3(3) = (!\reset~input_o\ & ((GLOBAL(\Decoder0~7clkctrl_outclk\) & (\data[3]~input_o\)) # (!GLOBAL(\Decoder0~7clkctrl_outclk\) & ((RAM3(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \data[3]~input_o\,
	datac => RAM3(3),
	datad => \Decoder0~7clkctrl_outclk\,
	combout => RAM3(3));

-- Location: LCCOMB_X40_Y19_N16
\RAM5[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- RAM5(4) = (!\reset~input_o\ & ((GLOBAL(\Decoder0~0clkctrl_outclk\) & ((\data[4]~input_o\))) # (!GLOBAL(\Decoder0~0clkctrl_outclk\) & (RAM5(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => RAM5(4),
	datac => \data[4]~input_o\,
	datad => \Decoder0~0clkctrl_outclk\,
	combout => RAM5(4));

-- Location: LCCOMB_X39_Y17_N8
\RAM5[5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- RAM5(5) = (!\reset~input_o\ & ((GLOBAL(\Decoder0~0clkctrl_outclk\) & (\data[5]~input_o\)) # (!GLOBAL(\Decoder0~0clkctrl_outclk\) & ((RAM5(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[5]~input_o\,
	datab => \reset~input_o\,
	datac => RAM5(5),
	datad => \Decoder0~0clkctrl_outclk\,
	combout => RAM5(5));

-- Location: LCCOMB_X39_Y17_N12
\RAM2[6]\ : cycloneiii_lcell_comb
-- Equation(s):
-- RAM2(6) = (!\reset~input_o\ & ((GLOBAL(\Decoder0~4clkctrl_outclk\) & ((\data[6]~input_o\))) # (!GLOBAL(\Decoder0~4clkctrl_outclk\) & (RAM2(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RAM2(6),
	datab => \reset~input_o\,
	datac => \data[6]~input_o\,
	datad => \Decoder0~4clkctrl_outclk\,
	combout => RAM2(6));

-- Location: LCCOMB_X40_Y19_N26
\RAM5[7]\ : cycloneiii_lcell_comb
-- Equation(s):
-- RAM5(7) = (!\reset~input_o\ & ((GLOBAL(\Decoder0~0clkctrl_outclk\) & (\data[7]~input_o\)) # (!GLOBAL(\Decoder0~0clkctrl_outclk\) & ((RAM5(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \data[7]~input_o\,
	datac => RAM5(7),
	datad => \Decoder0~0clkctrl_outclk\,
	combout => RAM5(7));

-- Location: LCCOMB_X40_Y19_N28
\RAM2[7]\ : cycloneiii_lcell_comb
-- Equation(s):
-- RAM2(7) = (!\reset~input_o\ & ((GLOBAL(\Decoder0~4clkctrl_outclk\) & (\data[7]~input_o\)) # (!GLOBAL(\Decoder0~4clkctrl_outclk\) & ((RAM2(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \data[7]~input_o\,
	datac => \Decoder0~4clkctrl_outclk\,
	datad => RAM2(7),
	combout => RAM2(7));

-- Location: LCCOMB_X39_Y18_N12
\RAM1[7]\ : cycloneiii_lcell_comb
-- Equation(s):
-- RAM1(7) = (!\reset~input_o\ & ((GLOBAL(\Decoder0~5clkctrl_outclk\) & (\data[7]~input_o\)) # (!GLOBAL(\Decoder0~5clkctrl_outclk\) & ((RAM1(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[7]~input_o\,
	datab => \reset~input_o\,
	datac => \Decoder0~5clkctrl_outclk\,
	datad => RAM1(7),
	combout => RAM1(7));

-- Location: LCCOMB_X39_Y18_N30
\RAM0[7]\ : cycloneiii_lcell_comb
-- Equation(s):
-- RAM0(7) = (!\reset~input_o\ & ((GLOBAL(\Decoder0~6clkctrl_outclk\) & ((\data[7]~input_o\))) # (!GLOBAL(\Decoder0~6clkctrl_outclk\) & (RAM0(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RAM0(7),
	datab => \reset~input_o\,
	datac => \data[7]~input_o\,
	datad => \Decoder0~6clkctrl_outclk\,
	combout => RAM0(7));

-- Location: LCCOMB_X40_Y19_N30
\RAM3[7]\ : cycloneiii_lcell_comb
-- Equation(s):
-- RAM3(7) = (!\reset~input_o\ & ((GLOBAL(\Decoder0~7clkctrl_outclk\) & (\data[7]~input_o\)) # (!GLOBAL(\Decoder0~7clkctrl_outclk\) & ((RAM3(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \data[7]~input_o\,
	datac => RAM3(7),
	datad => \Decoder0~7clkctrl_outclk\,
	combout => RAM3(7));

-- Location: IOOBUF_X41_Y17_N2
\data[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => word(0),
	oe => \rw~input_o\,
	devoe => ww_devoe,
	o => \data[0]~output_o\);

-- Location: IOOBUF_X41_Y19_N9
\data[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => word(1),
	oe => \rw~input_o\,
	devoe => ww_devoe,
	o => \data[1]~output_o\);

-- Location: IOOBUF_X41_Y18_N9
\data[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => word(2),
	oe => \rw~input_o\,
	devoe => ww_devoe,
	o => \data[2]~output_o\);

-- Location: IOOBUF_X41_Y18_N2
\data[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => word(3),
	oe => \rw~input_o\,
	devoe => ww_devoe,
	o => \data[3]~output_o\);

-- Location: IOOBUF_X41_Y20_N2
\data[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => word(4),
	oe => \rw~input_o\,
	devoe => ww_devoe,
	o => \data[4]~output_o\);

-- Location: IOOBUF_X41_Y18_N16
\data[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => word(5),
	oe => \rw~input_o\,
	devoe => ww_devoe,
	o => \data[5]~output_o\);

-- Location: IOOBUF_X41_Y17_N9
\data[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => word(6),
	oe => \rw~input_o\,
	devoe => ww_devoe,
	o => \data[6]~output_o\);

-- Location: IOOBUF_X41_Y19_N2
\data[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => word(7),
	oe => \rw~input_o\,
	devoe => ww_devoe,
	o => \data[7]~output_o\);

-- Location: IOIBUF_X0_Y14_N1
\rw~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rw,
	o => \rw~input_o\);

-- Location: CLKCTRL_G4
\rw~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rw~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rw~inputclkctrl_outclk\);

-- Location: IOIBUF_X41_Y14_N22
\address[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(2),
	o => \address[2]~input_o\);

-- Location: IOIBUF_X41_Y18_N22
\address[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(1),
	o => \address[1]~input_o\);

-- Location: IOIBUF_X41_Y17_N1
\data[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => data(0),
	o => \data[0]~input_o\);

-- Location: IOIBUF_X41_Y14_N1
\address[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(0),
	o => \address[0]~input_o\);

-- Location: LCCOMB_X40_Y15_N22
\Decoder0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~4_combout\ = (\address[1]~input_o\ & (!\address[2]~input_o\ & (!\address[0]~input_o\ & !\rw~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[2]~input_o\,
	datac => \address[0]~input_o\,
	datad => \rw~input_o\,
	combout => \Decoder0~4_combout\);

-- Location: CLKCTRL_G5
\Decoder0~4clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Decoder0~4clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Decoder0~4clkctrl_outclk\);

-- Location: LCCOMB_X40_Y19_N18
\RAM2[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- RAM2(0) = (!\reset~input_o\ & ((GLOBAL(\Decoder0~4clkctrl_outclk\) & (\data[0]~input_o\)) # (!GLOBAL(\Decoder0~4clkctrl_outclk\) & ((RAM2(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \data[0]~input_o\,
	datac => \Decoder0~4clkctrl_outclk\,
	datad => RAM2(0),
	combout => RAM2(0));

-- Location: IOIBUF_X41_Y20_N22
\reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LCCOMB_X40_Y15_N20
\Decoder0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~6_combout\ = (!\address[1]~input_o\ & (!\address[2]~input_o\ & (!\address[0]~input_o\ & !\rw~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[2]~input_o\,
	datac => \address[0]~input_o\,
	datad => \rw~input_o\,
	combout => \Decoder0~6_combout\);

-- Location: CLKCTRL_G17
\Decoder0~6clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Decoder0~6clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Decoder0~6clkctrl_outclk\);

-- Location: LCCOMB_X40_Y15_N26
\RAM0[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- RAM0(0) = (!\reset~input_o\ & ((GLOBAL(\Decoder0~6clkctrl_outclk\) & (\data[0]~input_o\)) # (!GLOBAL(\Decoder0~6clkctrl_outclk\) & ((RAM0(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[0]~input_o\,
	datab => \reset~input_o\,
	datac => RAM0(0),
	datad => \Decoder0~6clkctrl_outclk\,
	combout => RAM0(0));

-- Location: LCCOMB_X40_Y15_N2
\Decoder0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~5_combout\ = (!\address[1]~input_o\ & (!\address[2]~input_o\ & (\address[0]~input_o\ & !\rw~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[2]~input_o\,
	datac => \address[0]~input_o\,
	datad => \rw~input_o\,
	combout => \Decoder0~5_combout\);

-- Location: CLKCTRL_G16
\Decoder0~5clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Decoder0~5clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Decoder0~5clkctrl_outclk\);

-- Location: LCCOMB_X40_Y15_N30
\RAM1[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- RAM1(0) = (!\reset~input_o\ & ((GLOBAL(\Decoder0~5clkctrl_outclk\) & (\data[0]~input_o\)) # (!GLOBAL(\Decoder0~5clkctrl_outclk\) & ((RAM1(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[0]~input_o\,
	datab => \reset~input_o\,
	datac => \Decoder0~5clkctrl_outclk\,
	datad => RAM1(0),
	combout => RAM1(0));

-- Location: LCCOMB_X40_Y15_N6
\Mux7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = (\address[0]~input_o\ & ((\address[1]~input_o\) # ((RAM1(0))))) # (!\address[0]~input_o\ & (!\address[1]~input_o\ & (RAM0(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => RAM0(0),
	datad => RAM1(0),
	combout => \Mux7~2_combout\);

-- Location: LCCOMB_X40_Y15_N4
\Mux7~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~3_combout\ = (\address[1]~input_o\ & ((\Mux7~2_combout\ & (RAM3(0))) # (!\Mux7~2_combout\ & ((RAM2(0)))))) # (!\address[1]~input_o\ & (((\Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RAM3(0),
	datab => \address[1]~input_o\,
	datac => RAM2(0),
	datad => \Mux7~2_combout\,
	combout => \Mux7~3_combout\);

-- Location: LCCOMB_X40_Y15_N24
\Decoder0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~3_combout\ = (\address[1]~input_o\ & (\address[2]~input_o\ & (\address[0]~input_o\ & !\rw~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[2]~input_o\,
	datac => \address[0]~input_o\,
	datad => \rw~input_o\,
	combout => \Decoder0~3_combout\);

-- Location: CLKCTRL_G6
\Decoder0~3clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Decoder0~3clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Decoder0~3clkctrl_outclk\);

-- Location: LCCOMB_X39_Y19_N2
\RAM7[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- RAM7(0) = (!\reset~input_o\ & ((GLOBAL(\Decoder0~3clkctrl_outclk\) & ((\data[0]~input_o\))) # (!GLOBAL(\Decoder0~3clkctrl_outclk\) & (RAM7(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => RAM7(0),
	datac => \data[0]~input_o\,
	datad => \Decoder0~3clkctrl_outclk\,
	combout => RAM7(0));

-- Location: LCCOMB_X40_Y15_N28
\Decoder0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~1_combout\ = (\address[1]~input_o\ & (\address[2]~input_o\ & (!\address[0]~input_o\ & !\rw~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[2]~input_o\,
	datac => \address[0]~input_o\,
	datad => \rw~input_o\,
	combout => \Decoder0~1_combout\);

-- Location: CLKCTRL_G13
\Decoder0~1clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Decoder0~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Decoder0~1clkctrl_outclk\);

-- Location: LCCOMB_X39_Y19_N8
\RAM6[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- RAM6(0) = (!\reset~input_o\ & ((GLOBAL(\Decoder0~1clkctrl_outclk\) & (\data[0]~input_o\)) # (!GLOBAL(\Decoder0~1clkctrl_outclk\) & ((RAM6(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \data[0]~input_o\,
	datac => \Decoder0~1clkctrl_outclk\,
	datad => RAM6(0),
	combout => RAM6(0));

-- Location: LCCOMB_X40_Y15_N16
\Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\address[1]~input_o\ & (((\address[0]~input_o\) # (RAM6(0))))) # (!\address[1]~input_o\ & (RAM4(0) & (!\address[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RAM4(0),
	datab => \address[1]~input_o\,
	datac => \address[0]~input_o\,
	datad => RAM6(0),
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X40_Y15_N0
\Mux7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\address[0]~input_o\ & ((\Mux7~0_combout\ & ((RAM7(0)))) # (!\Mux7~0_combout\ & (RAM5(0))))) # (!\address[0]~input_o\ & (((\Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RAM5(0),
	datab => \address[0]~input_o\,
	datac => RAM7(0),
	datad => \Mux7~0_combout\,
	combout => \Mux7~1_combout\);

-- Location: LCCOMB_X40_Y15_N18
\Mux7~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~4_combout\ = (\address[2]~input_o\ & ((\Mux7~1_combout\))) # (!\address[2]~input_o\ & (\Mux7~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \address[2]~input_o\,
	datac => \Mux7~3_combout\,
	datad => \Mux7~1_combout\,
	combout => \Mux7~4_combout\);

-- Location: FF_X40_Y15_N19
\word[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rw~inputclkctrl_outclk\,
	d => \Mux7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => word(0));

-- Location: IOIBUF_X41_Y19_N8
\data[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => data(1),
	o => \data[1]~input_o\);

-- Location: LCCOMB_X39_Y19_N22
\RAM7[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- RAM7(1) = (!\reset~input_o\ & ((GLOBAL(\Decoder0~3clkctrl_outclk\) & (\data[1]~input_o\)) # (!GLOBAL(\Decoder0~3clkctrl_outclk\) & ((RAM7(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \data[1]~input_o\,
	datac => RAM7(1),
	datad => \Decoder0~3clkctrl_outclk\,
	combout => RAM7(1));

-- Location: LCCOMB_X40_Y15_N14
\Decoder0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~2_combout\ = (!\address[1]~input_o\ & (\address[2]~input_o\ & (!\address[0]~input_o\ & !\rw~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[2]~input_o\,
	datac => \address[0]~input_o\,
	datad => \rw~input_o\,
	combout => \Decoder0~2_combout\);

-- Location: CLKCTRL_G8
\Decoder0~2clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Decoder0~2clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Decoder0~2clkctrl_outclk\);

-- Location: LCCOMB_X40_Y18_N4
\RAM4[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- RAM4(1) = (!\reset~input_o\ & ((GLOBAL(\Decoder0~2clkctrl_outclk\) & (\data[1]~input_o\)) # (!GLOBAL(\Decoder0~2clkctrl_outclk\) & ((RAM4(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[1]~input_o\,
	datab => \reset~input_o\,
	datac => RAM4(1),
	datad => \Decoder0~2clkctrl_outclk\,
	combout => RAM4(1));

-- Location: LCCOMB_X39_Y19_N12
\RAM6[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- RAM6(1) = (!\reset~input_o\ & ((GLOBAL(\Decoder0~1clkctrl_outclk\) & (\data[1]~input_o\)) # (!GLOBAL(\Decoder0~1clkctrl_outclk\) & ((RAM6(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \data[1]~input_o\,
	datac => \Decoder0~1clkctrl_outclk\,
	datad => RAM6(1),
	combout => RAM6(1));

-- Location: LCCOMB_X40_Y18_N28
\Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\address[1]~input_o\ & ((\address[0]~input_o\) # ((RAM6(1))))) # (!\address[1]~input_o\ & (!\address[0]~input_o\ & (RAM4(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[0]~input_o\,
	datac => RAM4(1),
	datad => RAM6(1),
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X40_Y18_N6
\Mux6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\address[0]~input_o\ & ((\Mux6~0_combout\ & ((RAM7(1)))) # (!\Mux6~0_combout\ & (RAM5(1))))) # (!\address[0]~input_o\ & (((\Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RAM5(1),
	datab => \address[0]~input_o\,
	datac => RAM7(1),
	datad => \Mux6~0_combout\,
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X40_Y18_N8
\Mux6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~4_combout\ = (\address[2]~input_o\ & ((\Mux6~1_combout\))) # (!\address[2]~input_o\ & (\Mux6~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~3_combout\,
	datac => \address[2]~input_o\,
	datad => \Mux6~1_combout\,
	combout => \Mux6~4_combout\);

-- Location: FF_X40_Y18_N9
\word[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rw~inputclkctrl_outclk\,
	d => \Mux6~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => word(1));

-- Location: IOIBUF_X41_Y18_N8
\data[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => data(2),
	o => \data[2]~input_o\);

-- Location: LCCOMB_X39_Y19_N26
\RAM7[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- RAM7(2) = (!\reset~input_o\ & ((GLOBAL(\Decoder0~3clkctrl_outclk\) & (\data[2]~input_o\)) # (!GLOBAL(\Decoder0~3clkctrl_outclk\) & ((RAM7(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \data[2]~input_o\,
	datac => RAM7(2),
	datad => \Decoder0~3clkctrl_outclk\,
	combout => RAM7(2));

-- Location: LCCOMB_X40_Y18_N2
\RAM4[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- RAM4(2) = (!\reset~input_o\ & ((GLOBAL(\Decoder0~2clkctrl_outclk\) & (\data[2]~input_o\)) # (!GLOBAL(\Decoder0~2clkctrl_outclk\) & ((RAM4(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[2]~input_o\,
	datab => RAM4(2),
	datac => \reset~input_o\,
	datad => \Decoder0~2clkctrl_outclk\,
	combout => RAM4(2));

-- Location: LCCOMB_X39_Y19_N0
\RAM6[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- RAM6(2) = (!\reset~input_o\ & ((GLOBAL(\Decoder0~1clkctrl_outclk\) & (\data[2]~input_o\)) # (!GLOBAL(\Decoder0~1clkctrl_outclk\) & ((RAM6(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \data[2]~input_o\,
	datac => \Decoder0~1clkctrl_outclk\,
	datad => RAM6(2),
	combout => RAM6(2));

-- Location: LCCOMB_X40_Y18_N20
\Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\address[1]~input_o\ & (((\address[0]~input_o\) # (RAM6(2))))) # (!\address[1]~input_o\ & (RAM4(2) & (!\address[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => RAM4(2),
	datac => \address[0]~input_o\,
	datad => RAM6(2),
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X40_Y18_N22
\Mux5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\address[0]~input_o\ & ((\Mux5~0_combout\ & ((RAM7(2)))) # (!\Mux5~0_combout\ & (RAM5(2))))) # (!\address[0]~input_o\ & (((\Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RAM5(2),
	datab => \address[0]~input_o\,
	datac => RAM7(2),
	datad => \Mux5~0_combout\,
	combout => \Mux5~1_combout\);

-- Location: LCCOMB_X40_Y19_N6
\RAM2[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- RAM2(2) = (!\reset~input_o\ & ((GLOBAL(\Decoder0~4clkctrl_outclk\) & (\data[2]~input_o\)) # (!GLOBAL(\Decoder0~4clkctrl_outclk\) & ((RAM2(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \data[2]~input_o\,
	datac => \Decoder0~4clkctrl_outclk\,
	datad => RAM2(2),
	combout => RAM2(2));

-- Location: LCCOMB_X40_Y18_N30
\RAM0[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- RAM0(2) = (!\reset~input_o\ & ((GLOBAL(\Decoder0~6clkctrl_outclk\) & (\data[2]~input_o\)) # (!GLOBAL(\Decoder0~6clkctrl_outclk\) & ((RAM0(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[2]~input_o\,
	datab => \reset~input_o\,
	datac => RAM0(2),
	datad => \Decoder0~6clkctrl_outclk\,
	combout => RAM0(2));

-- Location: LCCOMB_X40_Y18_N12
\RAM1[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- RAM1(2) = (!\reset~input_o\ & ((GLOBAL(\Decoder0~5clkctrl_outclk\) & (\data[2]~input_o\)) # (!GLOBAL(\Decoder0~5clkctrl_outclk\) & ((RAM1(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[2]~input_o\,
	datab => \reset~input_o\,
	datac => \Decoder0~5clkctrl_outclk\,
	datad => RAM1(2),
	combout => RAM1(2));

-- Location: LCCOMB_X40_Y18_N0
\Mux5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (\address[1]~input_o\ & (\address[0]~input_o\)) # (!\address[1]~input_o\ & ((\address[0]~input_o\ & ((RAM1(2)))) # (!\address[0]~input_o\ & (RAM0(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[0]~input_o\,
	datac => RAM0(2),
	datad => RAM1(2),
	combout => \Mux5~2_combout\);

-- Location: LCCOMB_X40_Y18_N26
\Mux5~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~3_combout\ = (\address[1]~input_o\ & ((\Mux5~2_combout\ & (RAM3(2))) # (!\Mux5~2_combout\ & ((RAM2(2)))))) # (!\address[1]~input_o\ & (((\Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RAM3(2),
	datab => \address[1]~input_o\,
	datac => RAM2(2),
	datad => \Mux5~2_combout\,
	combout => \Mux5~3_combout\);

-- Location: LCCOMB_X40_Y18_N18
\Mux5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~4_combout\ = (\address[2]~input_o\ & (\Mux5~1_combout\)) # (!\address[2]~input_o\ & ((\Mux5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \address[2]~input_o\,
	datac => \Mux5~1_combout\,
	datad => \Mux5~3_combout\,
	combout => \Mux5~4_combout\);

-- Location: FF_X40_Y18_N19
\word[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rw~inputclkctrl_outclk\,
	d => \Mux5~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => word(2));

-- Location: IOIBUF_X41_Y18_N1
\data[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => data(3),
	o => \data[3]~input_o\);

-- Location: LCCOMB_X40_Y19_N12
\RAM2[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- RAM2(3) = (!\reset~input_o\ & ((GLOBAL(\Decoder0~4clkctrl_outclk\) & (\data[3]~input_o\)) # (!GLOBAL(\Decoder0~4clkctrl_outclk\) & ((RAM2(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \data[3]~input_o\,
	datac => \Decoder0~4clkctrl_outclk\,
	datad => RAM2(3),
	combout => RAM2(3));

-- Location: LCCOMB_X39_Y18_N8
\RAM0[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- RAM0(3) = (!\reset~input_o\ & ((GLOBAL(\Decoder0~6clkctrl_outclk\) & (\data[3]~input_o\)) # (!GLOBAL(\Decoder0~6clkctrl_outclk\) & ((RAM0(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[3]~input_o\,
	datab => \reset~input_o\,
	datac => RAM0(3),
	datad => \Decoder0~6clkctrl_outclk\,
	combout => RAM0(3));

-- Location: LCCOMB_X39_Y18_N22
\RAM1[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- RAM1(3) = (!\reset~input_o\ & ((GLOBAL(\Decoder0~5clkctrl_outclk\) & (\data[3]~input_o\)) # (!GLOBAL(\Decoder0~5clkctrl_outclk\) & ((RAM1(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[3]~input_o\,
	datab => \reset~input_o\,
	datac => \Decoder0~5clkctrl_outclk\,
	datad => RAM1(3),
	combout => RAM1(3));

-- Location: LCCOMB_X39_Y18_N0
\Mux4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (\address[0]~input_o\ & ((\address[1]~input_o\) # ((RAM1(3))))) # (!\address[0]~input_o\ & (!\address[1]~input_o\ & (RAM0(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => RAM0(3),
	datad => RAM1(3),
	combout => \Mux4~2_combout\);

-- Location: LCCOMB_X39_Y18_N26
\Mux4~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~3_combout\ = (\address[1]~input_o\ & ((\Mux4~2_combout\ & (RAM3(3))) # (!\Mux4~2_combout\ & ((RAM2(3)))))) # (!\address[1]~input_o\ & (((\Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RAM3(3),
	datab => \address[1]~input_o\,
	datac => RAM2(3),
	datad => \Mux4~2_combout\,
	combout => \Mux4~3_combout\);

-- Location: LCCOMB_X39_Y19_N14
\RAM7[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- RAM7(3) = (!\reset~input_o\ & ((GLOBAL(\Decoder0~3clkctrl_outclk\) & (\data[3]~input_o\)) # (!GLOBAL(\Decoder0~3clkctrl_outclk\) & ((RAM7(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \data[3]~input_o\,
	datac => RAM7(3),
	datad => \Decoder0~3clkctrl_outclk\,
	combout => RAM7(3));

-- Location: LCCOMB_X39_Y18_N4
\RAM4[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- RAM4(3) = (!\reset~input_o\ & ((GLOBAL(\Decoder0~2clkctrl_outclk\) & (\data[3]~input_o\)) # (!GLOBAL(\Decoder0~2clkctrl_outclk\) & ((RAM4(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[3]~input_o\,
	datab => \reset~input_o\,
	datac => RAM4(3),
	datad => \Decoder0~2clkctrl_outclk\,
	combout => RAM4(3));

-- Location: LCCOMB_X39_Y19_N28
\RAM6[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- RAM6(3) = (!\reset~input_o\ & ((GLOBAL(\Decoder0~1clkctrl_outclk\) & (\data[3]~input_o\)) # (!GLOBAL(\Decoder0~1clkctrl_outclk\) & ((RAM6(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \data[3]~input_o\,
	datac => \Decoder0~1clkctrl_outclk\,
	datad => RAM6(3),
	combout => RAM6(3));

-- Location: LCCOMB_X39_Y18_N20
\Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\address[0]~input_o\ & (\address[1]~input_o\)) # (!\address[0]~input_o\ & ((\address[1]~input_o\ & ((RAM6(3)))) # (!\address[1]~input_o\ & (RAM4(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => RAM4(3),
	datad => RAM6(3),
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X39_Y18_N6
\Mux4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\address[0]~input_o\ & ((\Mux4~0_combout\ & ((RAM7(3)))) # (!\Mux4~0_combout\ & (RAM5(3))))) # (!\address[0]~input_o\ & (((\Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RAM5(3),
	datab => \address[0]~input_o\,
	datac => RAM7(3),
	datad => \Mux4~0_combout\,
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X39_Y18_N24
\Mux4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~4_combout\ = (\address[2]~input_o\ & ((\Mux4~1_combout\))) # (!\address[2]~input_o\ & (\Mux4~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datac => \Mux4~3_combout\,
	datad => \Mux4~1_combout\,
	combout => \Mux4~4_combout\);

-- Location: FF_X39_Y18_N25
\word[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rw~inputclkctrl_outclk\,
	d => \Mux4~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => word(3));

-- Location: IOIBUF_X41_Y20_N1
\data[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => data(4),
	o => \data[4]~input_o\);

-- Location: LCCOMB_X39_Y19_N18
\RAM7[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- RAM7(4) = (!\reset~input_o\ & ((GLOBAL(\Decoder0~3clkctrl_outclk\) & ((\data[4]~input_o\))) # (!GLOBAL(\Decoder0~3clkctrl_outclk\) & (RAM7(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => RAM7(4),
	datac => \data[4]~input_o\,
	datad => \Decoder0~3clkctrl_outclk\,
	combout => RAM7(4));

-- Location: LCCOMB_X38_Y18_N4
\RAM4[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- RAM4(4) = (!\reset~input_o\ & ((GLOBAL(\Decoder0~2clkctrl_outclk\) & (\data[4]~input_o\)) # (!GLOBAL(\Decoder0~2clkctrl_outclk\) & ((RAM4(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[4]~input_o\,
	datab => \reset~input_o\,
	datac => RAM4(4),
	datad => \Decoder0~2clkctrl_outclk\,
	combout => RAM4(4));

-- Location: LCCOMB_X39_Y19_N24
\RAM6[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- RAM6(4) = (!\reset~input_o\ & ((GLOBAL(\Decoder0~1clkctrl_outclk\) & (\data[4]~input_o\)) # (!GLOBAL(\Decoder0~1clkctrl_outclk\) & ((RAM6(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \data[4]~input_o\,
	datac => \Decoder0~1clkctrl_outclk\,
	datad => RAM6(4),
	combout => RAM6(4));

-- Location: LCCOMB_X38_Y18_N12
\Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\address[1]~input_o\ & ((\address[0]~input_o\) # ((RAM6(4))))) # (!\address[1]~input_o\ & (!\address[0]~input_o\ & (RAM4(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[0]~input_o\,
	datac => RAM4(4),
	datad => RAM6(4),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X38_Y18_N22
\Mux3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\address[0]~input_o\ & ((\Mux3~0_combout\ & ((RAM7(4)))) # (!\Mux3~0_combout\ & (RAM5(4))))) # (!\address[0]~input_o\ & (((\Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RAM5(4),
	datab => \address[0]~input_o\,
	datac => RAM7(4),
	datad => \Mux3~0_combout\,
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X40_Y15_N8
\Decoder0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~7_combout\ = (\address[1]~input_o\ & (!\address[2]~input_o\ & (\address[0]~input_o\ & !\rw~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[2]~input_o\,
	datac => \address[0]~input_o\,
	datad => \rw~input_o\,
	combout => \Decoder0~7_combout\);

-- Location: CLKCTRL_G7
\Decoder0~7clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Decoder0~7clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Decoder0~7clkctrl_outclk\);

-- Location: LCCOMB_X38_Y19_N24
\RAM3[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- RAM3(4) = (!\reset~input_o\ & ((GLOBAL(\Decoder0~7clkctrl_outclk\) & (\data[4]~input_o\)) # (!GLOBAL(\Decoder0~7clkctrl_outclk\) & ((RAM3(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[4]~input_o\,
	datab => RAM3(4),
	datac => \reset~input_o\,
	datad => \Decoder0~7clkctrl_outclk\,
	combout => RAM3(4));

-- Location: LCCOMB_X39_Y19_N4
\RAM2[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- RAM2(4) = (!\reset~input_o\ & ((GLOBAL(\Decoder0~4clkctrl_outclk\) & (\data[4]~input_o\)) # (!GLOBAL(\Decoder0~4clkctrl_outclk\) & ((RAM2(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \data[4]~input_o\,
	datac => RAM2(4),
	datad => \Decoder0~4clkctrl_outclk\,
	combout => RAM2(4));

-- Location: LCCOMB_X38_Y18_N14
\RAM1[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- RAM1(4) = (!\reset~input_o\ & ((GLOBAL(\Decoder0~5clkctrl_outclk\) & (\data[4]~input_o\)) # (!GLOBAL(\Decoder0~5clkctrl_outclk\) & ((RAM1(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[4]~input_o\,
	datab => \reset~input_o\,
	datac => RAM1(4),
	datad => \Decoder0~5clkctrl_outclk\,
	combout => RAM1(4));

-- Location: LCCOMB_X38_Y18_N16
\RAM0[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- RAM0(4) = (!\reset~input_o\ & ((GLOBAL(\Decoder0~6clkctrl_outclk\) & (\data[4]~input_o\)) # (!GLOBAL(\Decoder0~6clkctrl_outclk\) & ((RAM0(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[4]~input_o\,
	datab => \reset~input_o\,
	datac => \Decoder0~6clkctrl_outclk\,
	datad => RAM0(4),
	combout => RAM0(4));

-- Location: LCCOMB_X38_Y18_N0
\Mux3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\address[1]~input_o\ & (\address[0]~input_o\)) # (!\address[1]~input_o\ & ((\address[0]~input_o\ & (RAM1(4))) # (!\address[0]~input_o\ & ((RAM0(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[0]~input_o\,
	datac => RAM1(4),
	datad => RAM0(4),
	combout => \Mux3~2_combout\);

-- Location: LCCOMB_X38_Y18_N2
\Mux3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (\address[1]~input_o\ & ((\Mux3~2_combout\ & (RAM3(4))) # (!\Mux3~2_combout\ & ((RAM2(4)))))) # (!\address[1]~input_o\ & (((\Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => RAM3(4),
	datac => RAM2(4),
	datad => \Mux3~2_combout\,
	combout => \Mux3~3_combout\);

-- Location: LCCOMB_X38_Y18_N8
\Mux3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~4_combout\ = (\address[2]~input_o\ & (\Mux3~1_combout\)) # (!\address[2]~input_o\ & ((\Mux3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \address[2]~input_o\,
	datac => \Mux3~1_combout\,
	datad => \Mux3~3_combout\,
	combout => \Mux3~4_combout\);

-- Location: FF_X38_Y18_N9
\word[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rw~inputclkctrl_outclk\,
	d => \Mux3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => word(4));

-- Location: IOIBUF_X41_Y18_N15
\data[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => data(5),
	o => \data[5]~input_o\);

-- Location: LCCOMB_X38_Y19_N10
\RAM3[5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- RAM3(5) = (!\reset~input_o\ & ((GLOBAL(\Decoder0~7clkctrl_outclk\) & ((\data[5]~input_o\))) # (!GLOBAL(\Decoder0~7clkctrl_outclk\) & (RAM3(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RAM3(5),
	datab => \data[5]~input_o\,
	datac => \reset~input_o\,
	datad => \Decoder0~7clkctrl_outclk\,
	combout => RAM3(5));

-- Location: LCCOMB_X39_Y19_N10
\RAM2[5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- RAM2(5) = (!\reset~input_o\ & ((GLOBAL(\Decoder0~4clkctrl_outclk\) & ((\data[5]~input_o\))) # (!GLOBAL(\Decoder0~4clkctrl_outclk\) & (RAM2(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RAM2(5),
	datab => \data[5]~input_o\,
	datac => \reset~input_o\,
	datad => \Decoder0~4clkctrl_outclk\,
	combout => RAM2(5));

-- Location: LCCOMB_X38_Y18_N30
\RAM0[5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- RAM0(5) = (!\reset~input_o\ & ((GLOBAL(\Decoder0~6clkctrl_outclk\) & (\data[5]~input_o\)) # (!GLOBAL(\Decoder0~6clkctrl_outclk\) & ((RAM0(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[5]~input_o\,
	datab => \reset~input_o\,
	datac => \Decoder0~6clkctrl_outclk\,
	datad => RAM0(5),
	combout => RAM0(5));

-- Location: LCCOMB_X38_Y18_N20
\RAM1[5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- RAM1(5) = (!\reset~input_o\ & ((GLOBAL(\Decoder0~5clkctrl_outclk\) & (\data[5]~input_o\)) # (!GLOBAL(\Decoder0~5clkctrl_outclk\) & ((RAM1(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[5]~input_o\,
	datab => RAM1(5),
	datac => \reset~input_o\,
	datad => \Decoder0~5clkctrl_outclk\,
	combout => RAM1(5));

-- Location: LCCOMB_X38_Y18_N24
\Mux2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (\address[1]~input_o\ & (\address[0]~input_o\)) # (!\address[1]~input_o\ & ((\address[0]~input_o\ & ((RAM1(5)))) # (!\address[0]~input_o\ & (RAM0(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[0]~input_o\,
	datac => RAM0(5),
	datad => RAM1(5),
	combout => \Mux2~2_combout\);

-- Location: LCCOMB_X38_Y18_N26
\Mux2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = (\address[1]~input_o\ & ((\Mux2~2_combout\ & (RAM3(5))) # (!\Mux2~2_combout\ & ((RAM2(5)))))) # (!\address[1]~input_o\ & (((\Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => RAM3(5),
	datac => RAM2(5),
	datad => \Mux2~2_combout\,
	combout => \Mux2~3_combout\);

-- Location: LCCOMB_X39_Y19_N16
\RAM7[5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- RAM7(5) = (!\reset~input_o\ & ((GLOBAL(\Decoder0~3clkctrl_outclk\) & (\data[5]~input_o\)) # (!GLOBAL(\Decoder0~3clkctrl_outclk\) & ((RAM7(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \data[5]~input_o\,
	datac => \Decoder0~3clkctrl_outclk\,
	datad => RAM7(5),
	combout => RAM7(5));

-- Location: LCCOMB_X39_Y19_N30
\RAM6[5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- RAM6(5) = (!\reset~input_o\ & ((GLOBAL(\Decoder0~1clkctrl_outclk\) & ((\data[5]~input_o\))) # (!GLOBAL(\Decoder0~1clkctrl_outclk\) & (RAM6(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RAM6(5),
	datab => \data[5]~input_o\,
	datac => \Decoder0~1clkctrl_outclk\,
	datad => \reset~input_o\,
	combout => RAM6(5));

-- Location: LCCOMB_X38_Y18_N10
\RAM4[5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- RAM4(5) = (!\reset~input_o\ & ((GLOBAL(\Decoder0~2clkctrl_outclk\) & ((\data[5]~input_o\))) # (!GLOBAL(\Decoder0~2clkctrl_outclk\) & (RAM4(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RAM4(5),
	datab => \reset~input_o\,
	datac => \data[5]~input_o\,
	datad => \Decoder0~2clkctrl_outclk\,
	combout => RAM4(5));

-- Location: LCCOMB_X38_Y18_N28
\Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\address[1]~input_o\ & ((\address[0]~input_o\) # ((RAM6(5))))) # (!\address[1]~input_o\ & (!\address[0]~input_o\ & ((RAM4(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[0]~input_o\,
	datac => RAM6(5),
	datad => RAM4(5),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X38_Y18_N6
\Mux2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\address[0]~input_o\ & ((\Mux2~0_combout\ & ((RAM7(5)))) # (!\Mux2~0_combout\ & (RAM5(5))))) # (!\address[0]~input_o\ & (((\Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RAM5(5),
	datab => \address[0]~input_o\,
	datac => RAM7(5),
	datad => \Mux2~0_combout\,
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X38_Y18_N18
\Mux2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~4_combout\ = (\address[2]~input_o\ & ((\Mux2~1_combout\))) # (!\address[2]~input_o\ & (\Mux2~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \address[2]~input_o\,
	datac => \Mux2~3_combout\,
	datad => \Mux2~1_combout\,
	combout => \Mux2~4_combout\);

-- Location: FF_X38_Y18_N19
\word[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rw~inputclkctrl_outclk\,
	d => \Mux2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => word(5));

-- Location: LCCOMB_X38_Y19_N28
\RAM3[6]\ : cycloneiii_lcell_comb
-- Equation(s):
-- RAM3(6) = (!\reset~input_o\ & ((GLOBAL(\Decoder0~7clkctrl_outclk\) & (\data[6]~input_o\)) # (!GLOBAL(\Decoder0~7clkctrl_outclk\) & ((RAM3(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[6]~input_o\,
	datab => RAM3(6),
	datac => \reset~input_o\,
	datad => \Decoder0~7clkctrl_outclk\,
	combout => RAM3(6));

-- Location: IOIBUF_X41_Y17_N8
\data[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => data(6),
	o => \data[6]~input_o\);

-- Location: LCCOMB_X38_Y17_N22
\RAM0[6]\ : cycloneiii_lcell_comb
-- Equation(s):
-- RAM0(6) = (!\reset~input_o\ & ((GLOBAL(\Decoder0~6clkctrl_outclk\) & (\data[6]~input_o\)) # (!GLOBAL(\Decoder0~6clkctrl_outclk\) & ((RAM0(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \data[6]~input_o\,
	datac => RAM0(6),
	datad => \Decoder0~6clkctrl_outclk\,
	combout => RAM0(6));

-- Location: LCCOMB_X38_Y17_N12
\RAM1[6]\ : cycloneiii_lcell_comb
-- Equation(s):
-- RAM1(6) = (!\reset~input_o\ & ((GLOBAL(\Decoder0~5clkctrl_outclk\) & (\data[6]~input_o\)) # (!GLOBAL(\Decoder0~5clkctrl_outclk\) & ((RAM1(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \data[6]~input_o\,
	datac => \Decoder0~5clkctrl_outclk\,
	datad => RAM1(6),
	combout => RAM1(6));

-- Location: LCCOMB_X38_Y17_N6
\Mux1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (\address[0]~input_o\ & ((\address[1]~input_o\) # ((RAM1(6))))) # (!\address[0]~input_o\ & (!\address[1]~input_o\ & (RAM0(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => RAM0(6),
	datad => RAM1(6),
	combout => \Mux1~2_combout\);

-- Location: LCCOMB_X38_Y17_N8
\Mux1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = (\address[1]~input_o\ & ((\Mux1~2_combout\ & ((RAM3(6)))) # (!\Mux1~2_combout\ & (RAM2(6))))) # (!\address[1]~input_o\ & (((\Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RAM2(6),
	datab => \address[1]~input_o\,
	datac => RAM3(6),
	datad => \Mux1~2_combout\,
	combout => \Mux1~3_combout\);

-- Location: LCCOMB_X40_Y15_N12
\Decoder0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~0_combout\ = (!\address[1]~input_o\ & (\address[2]~input_o\ & (\address[0]~input_o\ & !\rw~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[2]~input_o\,
	datac => \address[0]~input_o\,
	datad => \rw~input_o\,
	combout => \Decoder0~0_combout\);

-- Location: CLKCTRL_G9
\Decoder0~0clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Decoder0~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Decoder0~0clkctrl_outclk\);

-- Location: LCCOMB_X39_Y17_N26
\RAM5[6]\ : cycloneiii_lcell_comb
-- Equation(s):
-- RAM5(6) = (!\reset~input_o\ & ((GLOBAL(\Decoder0~0clkctrl_outclk\) & (\data[6]~input_o\)) # (!GLOBAL(\Decoder0~0clkctrl_outclk\) & ((RAM5(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[6]~input_o\,
	datab => \reset~input_o\,
	datac => RAM5(6),
	datad => \Decoder0~0clkctrl_outclk\,
	combout => RAM5(6));

-- Location: LCCOMB_X39_Y19_N6
\RAM7[6]\ : cycloneiii_lcell_comb
-- Equation(s):
-- RAM7(6) = (!\reset~input_o\ & ((GLOBAL(\Decoder0~3clkctrl_outclk\) & (\data[6]~input_o\)) # (!GLOBAL(\Decoder0~3clkctrl_outclk\) & ((RAM7(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \data[6]~input_o\,
	datac => RAM7(6),
	datad => \Decoder0~3clkctrl_outclk\,
	combout => RAM7(6));

-- Location: LCCOMB_X38_Y17_N26
\RAM4[6]\ : cycloneiii_lcell_comb
-- Equation(s):
-- RAM4(6) = (!\reset~input_o\ & ((GLOBAL(\Decoder0~2clkctrl_outclk\) & (\data[6]~input_o\)) # (!GLOBAL(\Decoder0~2clkctrl_outclk\) & ((RAM4(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \data[6]~input_o\,
	datac => RAM4(6),
	datad => \Decoder0~2clkctrl_outclk\,
	combout => RAM4(6));

-- Location: LCCOMB_X39_Y19_N20
\RAM6[6]\ : cycloneiii_lcell_comb
-- Equation(s):
-- RAM6(6) = (!\reset~input_o\ & ((GLOBAL(\Decoder0~1clkctrl_outclk\) & (\data[6]~input_o\)) # (!GLOBAL(\Decoder0~1clkctrl_outclk\) & ((RAM6(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \data[6]~input_o\,
	datac => \Decoder0~1clkctrl_outclk\,
	datad => RAM6(6),
	combout => RAM6(6));

-- Location: LCCOMB_X38_Y17_N10
\Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\address[0]~input_o\ & (\address[1]~input_o\)) # (!\address[0]~input_o\ & ((\address[1]~input_o\ & ((RAM6(6)))) # (!\address[1]~input_o\ & (RAM4(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => RAM4(6),
	datad => RAM6(6),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X38_Y17_N28
\Mux1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\address[0]~input_o\ & ((\Mux1~0_combout\ & ((RAM7(6)))) # (!\Mux1~0_combout\ & (RAM5(6))))) # (!\address[0]~input_o\ & (((\Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => RAM5(6),
	datac => RAM7(6),
	datad => \Mux1~0_combout\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X38_Y17_N0
\Mux1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~4_combout\ = (\address[2]~input_o\ & ((\Mux1~1_combout\))) # (!\address[2]~input_o\ & (\Mux1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \address[2]~input_o\,
	datac => \Mux1~3_combout\,
	datad => \Mux1~1_combout\,
	combout => \Mux1~4_combout\);

-- Location: FF_X38_Y17_N1
\word[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rw~inputclkctrl_outclk\,
	d => \Mux1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => word(6));

-- Location: IOIBUF_X41_Y19_N1
\data[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => data(7),
	o => \data[7]~input_o\);

-- Location: LCCOMB_X38_Y19_N0
\RAM7[7]\ : cycloneiii_lcell_comb
-- Equation(s):
-- RAM7(7) = (!\reset~input_o\ & ((GLOBAL(\Decoder0~3clkctrl_outclk\) & (\data[7]~input_o\)) # (!GLOBAL(\Decoder0~3clkctrl_outclk\) & ((RAM7(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \data[7]~input_o\,
	datac => \Decoder0~3clkctrl_outclk\,
	datad => RAM7(7),
	combout => RAM7(7));

-- Location: LCCOMB_X39_Y18_N2
\RAM4[7]\ : cycloneiii_lcell_comb
-- Equation(s):
-- RAM4(7) = (!\reset~input_o\ & ((GLOBAL(\Decoder0~2clkctrl_outclk\) & ((\data[7]~input_o\))) # (!GLOBAL(\Decoder0~2clkctrl_outclk\) & (RAM4(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => RAM4(7),
	datac => \data[7]~input_o\,
	datad => \Decoder0~2clkctrl_outclk\,
	combout => RAM4(7));

-- Location: LCCOMB_X38_Y19_N30
\RAM6[7]\ : cycloneiii_lcell_comb
-- Equation(s):
-- RAM6(7) = (!\reset~input_o\ & ((GLOBAL(\Decoder0~1clkctrl_outclk\) & (\data[7]~input_o\)) # (!GLOBAL(\Decoder0~1clkctrl_outclk\) & ((RAM6(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[7]~input_o\,
	datab => \reset~input_o\,
	datac => RAM6(7),
	datad => \Decoder0~1clkctrl_outclk\,
	combout => RAM6(7));

-- Location: LCCOMB_X39_Y18_N28
\Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\address[0]~input_o\ & (((\address[1]~input_o\)))) # (!\address[0]~input_o\ & ((\address[1]~input_o\ & ((RAM6(7)))) # (!\address[1]~input_o\ & (RAM4(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => RAM4(7),
	datac => \address[1]~input_o\,
	datad => RAM6(7),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X39_Y18_N14
\Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\address[0]~input_o\ & ((\Mux0~0_combout\ & ((RAM7(7)))) # (!\Mux0~0_combout\ & (RAM5(7))))) # (!\address[0]~input_o\ & (((\Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RAM5(7),
	datab => \address[0]~input_o\,
	datac => RAM7(7),
	datad => \Mux0~0_combout\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X39_Y18_N18
\Mux0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~4_combout\ = (\address[2]~input_o\ & ((\Mux0~1_combout\))) # (!\address[2]~input_o\ & (\Mux0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~3_combout\,
	datab => \address[2]~input_o\,
	datac => \Mux0~1_combout\,
	combout => \Mux0~4_combout\);

-- Location: FF_X39_Y18_N19
\word[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rw~inputclkctrl_outclk\,
	d => \Mux0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => word(7));

-- Location: IOIBUF_X41_Y5_N22
\clock~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

data(0) <= \data[0]~output_o\;

data(1) <= \data[1]~output_o\;

data(2) <= \data[2]~output_o\;

data(3) <= \data[3]~output_o\;

data(4) <= \data[4]~output_o\;

data(5) <= \data[5]~output_o\;

data(6) <= \data[6]~output_o\;

data(7) <= \data[7]~output_o\;
END structure;


