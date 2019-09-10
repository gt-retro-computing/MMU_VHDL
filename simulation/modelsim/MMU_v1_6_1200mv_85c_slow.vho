-- Copyright (C) 1991-2013 Altera Corporation
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
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "09/10/2019 15:14:57"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	FancyRegister IS
    PORT (
	d0 : IN std_logic;
	en : IN std_logic;
	clk : IN std_logic;
	q0 : OUT std_logic
	);
END FancyRegister;

-- Design Ports Information
-- q0	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d0	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF FancyRegister IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_d0 : std_logic;
SIGNAL ww_en : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_q0 : std_logic;
SIGNAL \q0~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \en~input_o\ : std_logic;
SIGNAL \d0~input_o\ : std_logic;
SIGNAL \q0~0_combout\ : std_logic;
SIGNAL \q0~reg0_q\ : std_logic;

BEGIN

ww_d0 <= d0;
ww_en <= en;
ww_clk <= clk;
q0 <= ww_q0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X31_Y31_N2
\q0~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q0~reg0_q\,
	devoe => ww_devoe,
	o => \q0~output_o\);

-- Location: IOIBUF_X33_Y28_N1
\clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: IOIBUF_X31_Y31_N8
\en~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_en,
	o => \en~input_o\);

-- Location: IOIBUF_X33_Y28_N8
\d0~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d0,
	o => \d0~input_o\);

-- Location: LCCOMB_X32_Y28_N4
\q0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \q0~0_combout\ = (\en~input_o\ & ((\d0~input_o\))) # (!\en~input_o\ & (\q0~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \en~input_o\,
	datac => \q0~reg0_q\,
	datad => \d0~input_o\,
	combout => \q0~0_combout\);

-- Location: FF_X32_Y28_N5
\q0~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \q0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q0~reg0_q\);

ww_q0 <= \q0~output_o\;
END structure;


