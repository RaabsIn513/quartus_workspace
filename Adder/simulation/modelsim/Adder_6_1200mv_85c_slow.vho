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

-- DATE "02/07/2012 13:13:00"

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

ENTITY 	Adder IS
    PORT (
	result : OUT std_logic_vector(8 DOWNTO 0);
	dataa : IN std_logic_vector(7 DOWNTO 0);
	datab : IN std_logic_vector(7 DOWNTO 0);
	clk : IN std_logic
	);
END Adder;

-- Design Ports Information
-- result[0]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[1]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[2]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[3]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[4]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[5]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[6]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[7]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[8]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datab[0]	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataa[0]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datab[1]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataa[1]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datab[2]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataa[2]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datab[3]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataa[3]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datab[4]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataa[4]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datab[5]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataa[5]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datab[6]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataa[6]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datab[7]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataa[7]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Adder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_result : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_dataa : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_datab : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \datab[0]~input_o\ : std_logic;
SIGNAL \dataa[1]~input_o\ : std_logic;
SIGNAL \datab[2]~input_o\ : std_logic;
SIGNAL \dataa[3]~input_o\ : std_logic;
SIGNAL \datab[4]~input_o\ : std_logic;
SIGNAL \dataa[5]~input_o\ : std_logic;
SIGNAL \dataa[6]~input_o\ : std_logic;
SIGNAL \dataa[7]~input_o\ : std_logic;
SIGNAL \result[0]~output_o\ : std_logic;
SIGNAL \result[1]~output_o\ : std_logic;
SIGNAL \result[2]~output_o\ : std_logic;
SIGNAL \result[3]~output_o\ : std_logic;
SIGNAL \result[4]~output_o\ : std_logic;
SIGNAL \result[5]~output_o\ : std_logic;
SIGNAL \result[6]~output_o\ : std_logic;
SIGNAL \result[7]~output_o\ : std_logic;
SIGNAL \result[8]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \dataa[0]~input_o\ : std_logic;
SIGNAL \result[0]~9_combout\ : std_logic;
SIGNAL \result[0]~reg0_q\ : std_logic;
SIGNAL \datab[1]~input_o\ : std_logic;
SIGNAL \result[0]~10\ : std_logic;
SIGNAL \result[1]~11_combout\ : std_logic;
SIGNAL \result[1]~reg0_q\ : std_logic;
SIGNAL \dataa[2]~input_o\ : std_logic;
SIGNAL \result[1]~12\ : std_logic;
SIGNAL \result[2]~13_combout\ : std_logic;
SIGNAL \result[2]~reg0_q\ : std_logic;
SIGNAL \datab[3]~input_o\ : std_logic;
SIGNAL \result[2]~14\ : std_logic;
SIGNAL \result[3]~15_combout\ : std_logic;
SIGNAL \result[3]~reg0_q\ : std_logic;
SIGNAL \dataa[4]~input_o\ : std_logic;
SIGNAL \result[3]~16\ : std_logic;
SIGNAL \result[4]~17_combout\ : std_logic;
SIGNAL \result[4]~reg0_q\ : std_logic;
SIGNAL \datab[5]~input_o\ : std_logic;
SIGNAL \result[4]~18\ : std_logic;
SIGNAL \result[5]~19_combout\ : std_logic;
SIGNAL \result[5]~reg0_q\ : std_logic;
SIGNAL \datab[6]~input_o\ : std_logic;
SIGNAL \result[5]~20\ : std_logic;
SIGNAL \result[6]~21_combout\ : std_logic;
SIGNAL \result[6]~reg0_q\ : std_logic;
SIGNAL \datab[7]~input_o\ : std_logic;
SIGNAL \result[6]~22\ : std_logic;
SIGNAL \result[7]~23_combout\ : std_logic;
SIGNAL \result[7]~reg0_q\ : std_logic;
SIGNAL \result[7]~24\ : std_logic;
SIGNAL \result[8]~25_combout\ : std_logic;
SIGNAL \result[8]~reg0_q\ : std_logic;

BEGIN

result <= ww_result;
ww_dataa <= dataa;
ww_datab <= datab;
ww_clk <= clk;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: IOIBUF_X0_Y21_N8
\datab[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datab(0),
	o => \datab[0]~input_o\);

-- Location: IOIBUF_X0_Y21_N1
\dataa[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataa(1),
	o => \dataa[1]~input_o\);

-- Location: IOIBUF_X1_Y0_N22
\datab[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datab(2),
	o => \datab[2]~input_o\);

-- Location: IOIBUF_X0_Y12_N1
\dataa[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataa(3),
	o => \dataa[3]~input_o\);

-- Location: IOIBUF_X0_Y23_N15
\datab[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datab(4),
	o => \datab[4]~input_o\);

-- Location: IOIBUF_X0_Y20_N1
\dataa[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataa(5),
	o => \dataa[5]~input_o\);

-- Location: IOIBUF_X5_Y29_N29
\dataa[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataa(6),
	o => \dataa[6]~input_o\);

-- Location: IOIBUF_X0_Y13_N1
\dataa[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataa(7),
	o => \dataa[7]~input_o\);

-- Location: IOOBUF_X0_Y22_N23
\result[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \result[0]~reg0_q\,
	devoe => ww_devoe,
	o => \result[0]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\result[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \result[1]~reg0_q\,
	devoe => ww_devoe,
	o => \result[1]~output_o\);

-- Location: IOOBUF_X0_Y6_N2
\result[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \result[2]~reg0_q\,
	devoe => ww_devoe,
	o => \result[2]~output_o\);

-- Location: IOOBUF_X1_Y29_N2
\result[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \result[3]~reg0_q\,
	devoe => ww_devoe,
	o => \result[3]~output_o\);

-- Location: IOOBUF_X0_Y13_N16
\result[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \result[4]~reg0_q\,
	devoe => ww_devoe,
	o => \result[4]~output_o\);

-- Location: IOOBUF_X28_Y0_N16
\result[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \result[5]~reg0_q\,
	devoe => ww_devoe,
	o => \result[5]~output_o\);

-- Location: IOOBUF_X0_Y22_N9
\result[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \result[6]~reg0_q\,
	devoe => ww_devoe,
	o => \result[6]~output_o\);

-- Location: IOOBUF_X0_Y13_N9
\result[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \result[7]~reg0_q\,
	devoe => ww_devoe,
	o => \result[7]~output_o\);

-- Location: IOOBUF_X0_Y12_N9
\result[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \result[8]~reg0_q\,
	devoe => ww_devoe,
	o => \result[8]~output_o\);

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

-- Location: IOIBUF_X0_Y22_N1
\dataa[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataa(0),
	o => \dataa[0]~input_o\);

-- Location: LCCOMB_X1_Y14_N4
\result[0]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \result[0]~9_combout\ = (\datab[0]~input_o\ & (\dataa[0]~input_o\ $ (VCC))) # (!\datab[0]~input_o\ & (\dataa[0]~input_o\ & VCC))
-- \result[0]~10\ = CARRY((\datab[0]~input_o\ & \dataa[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datab[0]~input_o\,
	datab => \dataa[0]~input_o\,
	datad => VCC,
	combout => \result[0]~9_combout\,
	cout => \result[0]~10\);

-- Location: FF_X1_Y14_N5
\result[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \result[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \result[0]~reg0_q\);

-- Location: IOIBUF_X0_Y22_N15
\datab[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datab(1),
	o => \datab[1]~input_o\);

-- Location: LCCOMB_X1_Y14_N6
\result[1]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \result[1]~11_combout\ = (\dataa[1]~input_o\ & ((\datab[1]~input_o\ & (\result[0]~10\ & VCC)) # (!\datab[1]~input_o\ & (!\result[0]~10\)))) # (!\dataa[1]~input_o\ & ((\datab[1]~input_o\ & (!\result[0]~10\)) # (!\datab[1]~input_o\ & ((\result[0]~10\) # 
-- (GND)))))
-- \result[1]~12\ = CARRY((\dataa[1]~input_o\ & (!\datab[1]~input_o\ & !\result[0]~10\)) # (!\dataa[1]~input_o\ & ((!\result[0]~10\) # (!\datab[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dataa[1]~input_o\,
	datab => \datab[1]~input_o\,
	datad => VCC,
	cin => \result[0]~10\,
	combout => \result[1]~11_combout\,
	cout => \result[1]~12\);

-- Location: FF_X1_Y14_N7
\result[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \result[1]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \result[1]~reg0_q\);

-- Location: IOIBUF_X0_Y21_N15
\dataa[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataa(2),
	o => \dataa[2]~input_o\);

-- Location: LCCOMB_X1_Y14_N8
\result[2]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \result[2]~13_combout\ = ((\datab[2]~input_o\ $ (\dataa[2]~input_o\ $ (!\result[1]~12\)))) # (GND)
-- \result[2]~14\ = CARRY((\datab[2]~input_o\ & ((\dataa[2]~input_o\) # (!\result[1]~12\))) # (!\datab[2]~input_o\ & (\dataa[2]~input_o\ & !\result[1]~12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datab[2]~input_o\,
	datab => \dataa[2]~input_o\,
	datad => VCC,
	cin => \result[1]~12\,
	combout => \result[2]~13_combout\,
	cout => \result[2]~14\);

-- Location: FF_X1_Y14_N9
\result[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \result[2]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \result[2]~reg0_q\);

-- Location: IOIBUF_X0_Y20_N8
\datab[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datab(3),
	o => \datab[3]~input_o\);

-- Location: LCCOMB_X1_Y14_N10
\result[3]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \result[3]~15_combout\ = (\dataa[3]~input_o\ & ((\datab[3]~input_o\ & (\result[2]~14\ & VCC)) # (!\datab[3]~input_o\ & (!\result[2]~14\)))) # (!\dataa[3]~input_o\ & ((\datab[3]~input_o\ & (!\result[2]~14\)) # (!\datab[3]~input_o\ & ((\result[2]~14\) # 
-- (GND)))))
-- \result[3]~16\ = CARRY((\dataa[3]~input_o\ & (!\datab[3]~input_o\ & !\result[2]~14\)) # (!\dataa[3]~input_o\ & ((!\result[2]~14\) # (!\datab[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dataa[3]~input_o\,
	datab => \datab[3]~input_o\,
	datad => VCC,
	cin => \result[2]~14\,
	combout => \result[3]~15_combout\,
	cout => \result[3]~16\);

-- Location: FF_X1_Y14_N11
\result[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \result[3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \result[3]~reg0_q\);

-- Location: IOIBUF_X37_Y29_N8
\dataa[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataa(4),
	o => \dataa[4]~input_o\);

-- Location: LCCOMB_X1_Y14_N12
\result[4]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \result[4]~17_combout\ = ((\datab[4]~input_o\ $ (\dataa[4]~input_o\ $ (!\result[3]~16\)))) # (GND)
-- \result[4]~18\ = CARRY((\datab[4]~input_o\ & ((\dataa[4]~input_o\) # (!\result[3]~16\))) # (!\datab[4]~input_o\ & (\dataa[4]~input_o\ & !\result[3]~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datab[4]~input_o\,
	datab => \dataa[4]~input_o\,
	datad => VCC,
	cin => \result[3]~16\,
	combout => \result[4]~17_combout\,
	cout => \result[4]~18\);

-- Location: FF_X1_Y14_N13
\result[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \result[4]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \result[4]~reg0_q\);

-- Location: IOIBUF_X1_Y0_N8
\datab[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datab(5),
	o => \datab[5]~input_o\);

-- Location: LCCOMB_X1_Y14_N14
\result[5]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \result[5]~19_combout\ = (\dataa[5]~input_o\ & ((\datab[5]~input_o\ & (\result[4]~18\ & VCC)) # (!\datab[5]~input_o\ & (!\result[4]~18\)))) # (!\dataa[5]~input_o\ & ((\datab[5]~input_o\ & (!\result[4]~18\)) # (!\datab[5]~input_o\ & ((\result[4]~18\) # 
-- (GND)))))
-- \result[5]~20\ = CARRY((\dataa[5]~input_o\ & (!\datab[5]~input_o\ & !\result[4]~18\)) # (!\dataa[5]~input_o\ & ((!\result[4]~18\) # (!\datab[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dataa[5]~input_o\,
	datab => \datab[5]~input_o\,
	datad => VCC,
	cin => \result[4]~18\,
	combout => \result[5]~19_combout\,
	cout => \result[5]~20\);

-- Location: FF_X1_Y14_N15
\result[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \result[5]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \result[5]~reg0_q\);

-- Location: IOIBUF_X3_Y0_N8
\datab[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datab(6),
	o => \datab[6]~input_o\);

-- Location: LCCOMB_X1_Y14_N16
\result[6]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \result[6]~21_combout\ = ((\dataa[6]~input_o\ $ (\datab[6]~input_o\ $ (!\result[5]~20\)))) # (GND)
-- \result[6]~22\ = CARRY((\dataa[6]~input_o\ & ((\datab[6]~input_o\) # (!\result[5]~20\))) # (!\dataa[6]~input_o\ & (\datab[6]~input_o\ & !\result[5]~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dataa[6]~input_o\,
	datab => \datab[6]~input_o\,
	datad => VCC,
	cin => \result[5]~20\,
	combout => \result[6]~21_combout\,
	cout => \result[6]~22\);

-- Location: FF_X1_Y14_N17
\result[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \result[6]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \result[6]~reg0_q\);

-- Location: IOIBUF_X1_Y0_N1
\datab[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datab(7),
	o => \datab[7]~input_o\);

-- Location: LCCOMB_X1_Y14_N18
\result[7]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \result[7]~23_combout\ = (\dataa[7]~input_o\ & ((\datab[7]~input_o\ & (\result[6]~22\ & VCC)) # (!\datab[7]~input_o\ & (!\result[6]~22\)))) # (!\dataa[7]~input_o\ & ((\datab[7]~input_o\ & (!\result[6]~22\)) # (!\datab[7]~input_o\ & ((\result[6]~22\) # 
-- (GND)))))
-- \result[7]~24\ = CARRY((\dataa[7]~input_o\ & (!\datab[7]~input_o\ & !\result[6]~22\)) # (!\dataa[7]~input_o\ & ((!\result[6]~22\) # (!\datab[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dataa[7]~input_o\,
	datab => \datab[7]~input_o\,
	datad => VCC,
	cin => \result[6]~22\,
	combout => \result[7]~23_combout\,
	cout => \result[7]~24\);

-- Location: FF_X1_Y14_N19
\result[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \result[7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \result[7]~reg0_q\);

-- Location: LCCOMB_X1_Y14_N20
\result[8]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \result[8]~25_combout\ = !\result[7]~24\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \result[7]~24\,
	combout => \result[8]~25_combout\);

-- Location: FF_X1_Y14_N21
\result[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \result[8]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \result[8]~reg0_q\);

ww_result(0) <= \result[0]~output_o\;

ww_result(1) <= \result[1]~output_o\;

ww_result(2) <= \result[2]~output_o\;

ww_result(3) <= \result[3]~output_o\;

ww_result(4) <= \result[4]~output_o\;

ww_result(5) <= \result[5]~output_o\;

ww_result(6) <= \result[6]~output_o\;

ww_result(7) <= \result[7]~output_o\;

ww_result(8) <= \result[8]~output_o\;
END structure;


