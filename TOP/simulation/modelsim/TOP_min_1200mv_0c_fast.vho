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

-- DATE "02/14/2012 19:56:00"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	TOP IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	GIE : IN std_logic;
	I_en : IN std_logic;
	O_en : IN std_logic;
	inpr_input : IN std_logic_vector(17 DOWNTO 0)
	);
END TOP;

-- Design Ports Information
-- clk	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GIE	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I_en	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O_en	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inpr_input[0]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inpr_input[1]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inpr_input[2]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inpr_input[3]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inpr_input[4]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inpr_input[5]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inpr_input[6]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inpr_input[7]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inpr_input[8]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inpr_input[9]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inpr_input[10]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inpr_input[11]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inpr_input[12]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inpr_input[13]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inpr_input[14]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inpr_input[15]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inpr_input[16]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inpr_input[17]	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_GIE : std_logic;
SIGNAL ww_I_en : std_logic;
SIGNAL ww_O_en : std_logic;
SIGNAL ww_inpr_input : std_logic_vector(17 DOWNTO 0);
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \GIE~input_o\ : std_logic;
SIGNAL \I_en~input_o\ : std_logic;
SIGNAL \O_en~input_o\ : std_logic;
SIGNAL \inpr_input[0]~input_o\ : std_logic;
SIGNAL \inpr_input[1]~input_o\ : std_logic;
SIGNAL \inpr_input[2]~input_o\ : std_logic;
SIGNAL \inpr_input[3]~input_o\ : std_logic;
SIGNAL \inpr_input[4]~input_o\ : std_logic;
SIGNAL \inpr_input[5]~input_o\ : std_logic;
SIGNAL \inpr_input[6]~input_o\ : std_logic;
SIGNAL \inpr_input[7]~input_o\ : std_logic;
SIGNAL \inpr_input[8]~input_o\ : std_logic;
SIGNAL \inpr_input[9]~input_o\ : std_logic;
SIGNAL \inpr_input[10]~input_o\ : std_logic;
SIGNAL \inpr_input[11]~input_o\ : std_logic;
SIGNAL \inpr_input[12]~input_o\ : std_logic;
SIGNAL \inpr_input[13]~input_o\ : std_logic;
SIGNAL \inpr_input[14]~input_o\ : std_logic;
SIGNAL \inpr_input[15]~input_o\ : std_logic;
SIGNAL \inpr_input[16]~input_o\ : std_logic;
SIGNAL \inpr_input[17]~input_o\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_GIE <= GIE;
ww_I_en <= I_en;
ww_O_en <= O_en;
ww_inpr_input <= inpr_input;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOIBUF_X16_Y0_N8
\clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\rst~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: IOIBUF_X29_Y31_N8
\GIE~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GIE,
	o => \GIE~input_o\);

-- Location: IOIBUF_X33_Y15_N8
\I_en~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I_en,
	o => \I_en~input_o\);

-- Location: IOIBUF_X24_Y0_N1
\O_en~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_O_en,
	o => \O_en~input_o\);

-- Location: IOIBUF_X24_Y0_N8
\inpr_input[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inpr_input(0),
	o => \inpr_input[0]~input_o\);

-- Location: IOIBUF_X22_Y0_N8
\inpr_input[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inpr_input(1),
	o => \inpr_input[1]~input_o\);

-- Location: IOIBUF_X26_Y0_N8
\inpr_input[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inpr_input(2),
	o => \inpr_input[2]~input_o\);

-- Location: IOIBUF_X26_Y0_N1
\inpr_input[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inpr_input(3),
	o => \inpr_input[3]~input_o\);

-- Location: IOIBUF_X29_Y0_N8
\inpr_input[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inpr_input(4),
	o => \inpr_input[4]~input_o\);

-- Location: IOIBUF_X29_Y0_N1
\inpr_input[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inpr_input(5),
	o => \inpr_input[5]~input_o\);

-- Location: IOIBUF_X31_Y0_N8
\inpr_input[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inpr_input(6),
	o => \inpr_input[6]~input_o\);

-- Location: IOIBUF_X12_Y31_N1
\inpr_input[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inpr_input(7),
	o => \inpr_input[7]~input_o\);

-- Location: IOIBUF_X33_Y10_N8
\inpr_input[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inpr_input(8),
	o => \inpr_input[8]~input_o\);

-- Location: IOIBUF_X33_Y27_N8
\inpr_input[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inpr_input(9),
	o => \inpr_input[9]~input_o\);

-- Location: IOIBUF_X31_Y31_N8
\inpr_input[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inpr_input(10),
	o => \inpr_input[10]~input_o\);

-- Location: IOIBUF_X33_Y12_N8
\inpr_input[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inpr_input(11),
	o => \inpr_input[11]~input_o\);

-- Location: IOIBUF_X22_Y0_N1
\inpr_input[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inpr_input(12),
	o => \inpr_input[12]~input_o\);

-- Location: IOIBUF_X33_Y12_N1
\inpr_input[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inpr_input(13),
	o => \inpr_input[13]~input_o\);

-- Location: IOIBUF_X20_Y31_N8
\inpr_input[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inpr_input(14),
	o => \inpr_input[14]~input_o\);

-- Location: IOIBUF_X12_Y31_N8
\inpr_input[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inpr_input(15),
	o => \inpr_input[15]~input_o\);

-- Location: IOIBUF_X26_Y31_N8
\inpr_input[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inpr_input(16),
	o => \inpr_input[16]~input_o\);

-- Location: IOIBUF_X33_Y10_N1
\inpr_input[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inpr_input(17),
	o => \inpr_input[17]~input_o\);
END structure;


