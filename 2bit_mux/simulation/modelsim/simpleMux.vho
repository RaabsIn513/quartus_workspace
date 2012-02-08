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

-- DATE "01/16/2012 16:09:31"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	simpleMux IS
    PORT (
	mux_out : OUT std_logic;
	A : IN std_logic;
	B : IN std_logic;
	mux_control : IN std_logic
	);
END simpleMux;

-- Design Ports Information
-- mux_out	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mux_control	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF simpleMux IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_mux_out : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_mux_control : std_logic;
SIGNAL \mux_out~output_o\ : std_logic;
SIGNAL \A~input_o\ : std_logic;
SIGNAL \mux_control~input_o\ : std_logic;
SIGNAL \B~input_o\ : std_logic;
SIGNAL \mux_out~0_combout\ : std_logic;

BEGIN

mux_out <= ww_mux_out;
ww_A <= A;
ww_B <= B;
ww_mux_control <= mux_control;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y27_N9
\mux_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_out~0_combout\,
	devoe => ww_devoe,
	o => \mux_out~output_o\);

-- Location: IOIBUF_X0_Y27_N1
\A~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A,
	o => \A~input_o\);

-- Location: IOIBUF_X1_Y29_N8
\mux_control~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mux_control,
	o => \mux_control~input_o\);

-- Location: IOIBUF_X1_Y29_N22
\B~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B,
	o => \B~input_o\);

-- Location: LCCOMB_X1_Y27_N16
\mux_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mux_out~0_combout\ = (\mux_control~input_o\ & ((\B~input_o\))) # (!\mux_control~input_o\ & (\A~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~input_o\,
	datac => \mux_control~input_o\,
	datad => \B~input_o\,
	combout => \mux_out~0_combout\);

ww_mux_out <= \mux_out~output_o\;
END structure;


