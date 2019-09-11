-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "09/11/2019 16:50:34"

-- 
-- Device: Altera EP4CE15F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	F2 IS
    PORT (
	fi : IN std_logic;
	out1 : BUFFER std_logic;
	out2 : BUFFER std_logic
	);
END F2;

-- Design Ports Information
-- out1	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out2	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fi	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF F2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_fi : std_logic;
SIGNAL ww_out1 : std_logic;
SIGNAL ww_out2 : std_logic;
SIGNAL \fi~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \vclk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \out1~output_o\ : std_logic;
SIGNAL \out2~output_o\ : std_logic;
SIGNAL \fi~input_o\ : std_logic;
SIGNAL \fi~inputclkctrl_outclk\ : std_logic;
SIGNAL \counter[1]~0_combout\ : std_logic;
SIGNAL \counter~2_combout\ : std_logic;
SIGNAL \counter~1_combout\ : std_logic;
SIGNAL \clk~0_combout\ : std_logic;
SIGNAL \clk~feeder_combout\ : std_logic;
SIGNAL \clk~q\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \hcounter~1_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \hcounter~0_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \hcounter~2_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \hsync~0_combout\ : std_logic;
SIGNAL \hsync~1_combout\ : std_logic;
SIGNAL \hsync~2_combout\ : std_logic;
SIGNAL \hsync~q\ : std_logic;
SIGNAL \vclk~0_combout\ : std_logic;
SIGNAL \vclk~feeder_combout\ : std_logic;
SIGNAL \vclk~q\ : std_logic;
SIGNAL \vclk~clkctrl_outclk\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \vcounter~2_combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \vcounter~5_combout\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \vcounter~1_combout\ : std_logic;
SIGNAL \Equal7~1_combout\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \vcounter~4_combout\ : std_logic;
SIGNAL \Equal7~0_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \vcounter~3_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \Add2~15\ : std_logic;
SIGNAL \Add2~16_combout\ : std_logic;
SIGNAL \Equal8~0_combout\ : std_logic;
SIGNAL \Add2~17\ : std_logic;
SIGNAL \Add2~18_combout\ : std_logic;
SIGNAL \vcounter~0_combout\ : std_logic;
SIGNAL \vdisplay~1_combout\ : std_logic;
SIGNAL \vdisplay~0_combout\ : std_logic;
SIGNAL \vdisplay~2_combout\ : std_logic;
SIGNAL \vdisplay~q\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \hdisplay~0_combout\ : std_logic;
SIGNAL \hdisplay~1_combout\ : std_logic;
SIGNAL \hdisplay~q\ : std_logic;
SIGNAL \display_pixel~0_combout\ : std_logic;
SIGNAL counter : std_logic_vector(2 DOWNTO 0);
SIGNAL vcounter : std_logic_vector(9 DOWNTO 0);
SIGNAL hcounter : std_logic_vector(8 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_fi <= fi;
out1 <= ww_out1;
out2 <= ww_out2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\fi~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \fi~input_o\);

\clk~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~q\);

\vclk~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \vclk~q\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X32_Y29_N9
\out1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hsync~q\,
	devoe => ww_devoe,
	o => \out1~output_o\);

-- Location: IOOBUF_X35_Y29_N2
\out2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_pixel~0_combout\,
	devoe => ww_devoe,
	o => \out2~output_o\);

-- Location: IOIBUF_X0_Y14_N15
\fi~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fi,
	o => \fi~input_o\);

-- Location: CLKCTRL_G4
\fi~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \fi~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \fi~inputclkctrl_outclk\);

-- Location: LCCOMB_X22_Y1_N12
\counter[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[1]~0_combout\ = counter(0) $ (counter(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datac => counter(1),
	combout => \counter[1]~0_combout\);

-- Location: FF_X22_Y1_N13
\counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fi~inputclkctrl_outclk\,
	d => \counter[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(1));

-- Location: LCCOMB_X22_Y1_N26
\counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~2_combout\ = (counter(0) & (counter(1) $ (counter(2)))) # (!counter(0) & (counter(1) & counter(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datab => counter(1),
	datac => counter(2),
	combout => \counter~2_combout\);

-- Location: FF_X22_Y1_N27
\counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fi~inputclkctrl_outclk\,
	d => \counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(2));

-- Location: LCCOMB_X22_Y1_N30
\counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~1_combout\ = (!counter(0) & ((counter(1)) # (!counter(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datab => counter(1),
	datac => counter(0),
	combout => \counter~1_combout\);

-- Location: FF_X22_Y1_N31
\counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fi~inputclkctrl_outclk\,
	d => \counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(0));

-- Location: LCCOMB_X22_Y1_N22
\clk~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk~0_combout\ = (counter(0) & (\clk~q\)) # (!counter(0) & ((\clk~q\ & ((counter(1)) # (!counter(2)))) # (!\clk~q\ & (!counter(2) & counter(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datab => \clk~q\,
	datac => counter(2),
	datad => counter(1),
	combout => \clk~0_combout\);

-- Location: LCCOMB_X22_Y1_N18
\clk~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk~feeder_combout\ = \clk~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk~0_combout\,
	combout => \clk~feeder_combout\);

-- Location: FF_X22_Y1_N19
clk : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fi~inputclkctrl_outclk\,
	d => \clk~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk~q\);

-- Location: CLKCTRL_G18
\clk~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: LCCOMB_X32_Y25_N20
\Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (hcounter(5) & (!\Add1~9\)) # (!hcounter(5) & ((\Add1~9\) # (GND)))
-- \Add1~11\ = CARRY((!\Add1~9\) # (!hcounter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hcounter(5),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X32_Y25_N22
\Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (hcounter(6) & (\Add1~11\ $ (GND))) # (!hcounter(6) & (!\Add1~11\ & VCC))
-- \Add1~13\ = CARRY((hcounter(6) & !\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hcounter(6),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: FF_X32_Y25_N23
\hcounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \Add1~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hcounter(6));

-- Location: LCCOMB_X32_Y25_N24
\Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (hcounter(7) & (!\Add1~13\)) # (!hcounter(7) & ((\Add1~13\) # (GND)))
-- \Add1~15\ = CARRY((!\Add1~13\) # (!hcounter(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hcounter(7),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: FF_X32_Y25_N25
\hcounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \Add1~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hcounter(7));

-- Location: LCCOMB_X32_Y25_N10
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = hcounter(0) $ (VCC)
-- \Add1~1\ = CARRY(hcounter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hcounter(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X32_Y25_N6
\hcounter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hcounter~1_combout\ = (\Add1~0_combout\ & (((!hcounter(8)) # (!\Equal2~1_combout\)) # (!hcounter(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hcounter(3),
	datab => \Equal2~1_combout\,
	datac => hcounter(8),
	datad => \Add1~0_combout\,
	combout => \hcounter~1_combout\);

-- Location: FF_X32_Y25_N7
\hcounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \hcounter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hcounter(0));

-- Location: LCCOMB_X32_Y25_N12
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (hcounter(1) & (!\Add1~1\)) # (!hcounter(1) & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!hcounter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hcounter(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: FF_X32_Y25_N13
\hcounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \Add1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hcounter(1));

-- Location: LCCOMB_X32_Y25_N14
\Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (hcounter(2) & (\Add1~3\ $ (GND))) # (!hcounter(2) & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((hcounter(2) & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hcounter(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: FF_X32_Y25_N15
\hcounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \Add1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hcounter(2));

-- Location: LCCOMB_X32_Y25_N0
\Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!hcounter(1) & (!hcounter(4) & (!hcounter(2) & !hcounter(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hcounter(1),
	datab => hcounter(4),
	datac => hcounter(2),
	datad => hcounter(0),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X32_Y25_N2
\Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (!hcounter(6) & (!hcounter(7) & (!hcounter(5) & \Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hcounter(6),
	datab => hcounter(7),
	datac => hcounter(5),
	datad => \Equal2~0_combout\,
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X32_Y25_N26
\Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = \Add1~15\ $ (!hcounter(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => hcounter(8),
	cin => \Add1~15\,
	combout => \Add1~16_combout\);

-- Location: LCCOMB_X32_Y25_N28
\hcounter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hcounter~0_combout\ = (\Add1~16_combout\ & (((!hcounter(8)) # (!\Equal2~1_combout\)) # (!hcounter(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hcounter(3),
	datab => \Equal2~1_combout\,
	datac => hcounter(8),
	datad => \Add1~16_combout\,
	combout => \hcounter~0_combout\);

-- Location: FF_X32_Y25_N29
\hcounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \hcounter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hcounter(8));

-- Location: LCCOMB_X32_Y25_N16
\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (hcounter(3) & (!\Add1~5\)) # (!hcounter(3) & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!hcounter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hcounter(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X32_Y25_N8
\hcounter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \hcounter~2_combout\ = (\Add1~6_combout\ & (((!hcounter(3)) # (!\Equal2~1_combout\)) # (!hcounter(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hcounter(8),
	datab => \Equal2~1_combout\,
	datac => hcounter(3),
	datad => \Add1~6_combout\,
	combout => \hcounter~2_combout\);

-- Location: FF_X32_Y25_N9
\hcounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \hcounter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hcounter(3));

-- Location: LCCOMB_X32_Y25_N18
\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (hcounter(4) & (\Add1~7\ $ (GND))) # (!hcounter(4) & (!\Add1~7\ & VCC))
-- \Add1~9\ = CARRY((hcounter(4) & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hcounter(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: FF_X32_Y25_N19
\hcounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \Add1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hcounter(4));

-- Location: FF_X32_Y25_N21
\hcounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \Add1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hcounter(5));

-- Location: LCCOMB_X31_Y25_N24
\hsync~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hsync~0_combout\ = (hcounter(7) & (hcounter(6) & (hcounter(1) & !hcounter(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hcounter(7),
	datab => hcounter(6),
	datac => hcounter(1),
	datad => hcounter(8),
	combout => \hsync~0_combout\);

-- Location: LCCOMB_X32_Y25_N30
\hsync~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hsync~1_combout\ = (!hcounter(3) & (!hcounter(2) & (!hcounter(0) & hcounter(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hcounter(3),
	datab => hcounter(2),
	datac => hcounter(0),
	datad => hcounter(4),
	combout => \hsync~1_combout\);

-- Location: LCCOMB_X31_Y25_N8
\hsync~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \hsync~2_combout\ = (\hsync~0_combout\ & ((\hsync~1_combout\ & (!hcounter(5))) # (!\hsync~1_combout\ & ((\hsync~q\))))) # (!\hsync~0_combout\ & (((\hsync~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hcounter(5),
	datab => \hsync~0_combout\,
	datac => \hsync~q\,
	datad => \hsync~1_combout\,
	combout => \hsync~2_combout\);

-- Location: FF_X31_Y25_N9
hsync : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \hsync~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hsync~q\);

-- Location: LCCOMB_X31_Y25_N4
\vclk~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclk~0_combout\ = (hcounter(3) & ((\vclk~q\) # ((hcounter(8) & \Equal2~1_combout\)))) # (!hcounter(3) & (\vclk~q\ & ((hcounter(8)) # (!\Equal2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hcounter(3),
	datab => hcounter(8),
	datac => \vclk~q\,
	datad => \Equal2~1_combout\,
	combout => \vclk~0_combout\);

-- Location: LCCOMB_X31_Y25_N16
\vclk~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclk~feeder_combout\ = \vclk~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vclk~0_combout\,
	combout => \vclk~feeder_combout\);

-- Location: FF_X31_Y25_N17
vclk : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \vclk~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vclk~q\);

-- Location: CLKCTRL_G12
\vclk~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \vclk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \vclk~clkctrl_outclk\);

-- Location: LCCOMB_X30_Y25_N12
\Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (vcounter(1) & (!\Add2~1\)) # (!vcounter(1) & ((\Add2~1\) # (GND)))
-- \Add2~3\ = CARRY((!\Add2~1\) # (!vcounter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => vcounter(1),
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X30_Y25_N14
\Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (vcounter(2) & (\Add2~3\ $ (GND))) # (!vcounter(2) & (!\Add2~3\ & VCC))
-- \Add2~5\ = CARRY((vcounter(2) & !\Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => vcounter(2),
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X31_Y25_N2
\vcounter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vcounter~2_combout\ = (\Add2~4_combout\ & (((!\Equal8~0_combout\) # (!\Equal7~0_combout\)) # (!\Equal7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~1_combout\,
	datab => \Equal7~0_combout\,
	datac => \Equal8~0_combout\,
	datad => \Add2~4_combout\,
	combout => \vcounter~2_combout\);

-- Location: FF_X31_Y25_N3
\vcounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vclk~clkctrl_outclk\,
	d => \vcounter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vcounter(2));

-- Location: LCCOMB_X30_Y25_N16
\Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (vcounter(3) & (!\Add2~5\)) # (!vcounter(3) & ((\Add2~5\) # (GND)))
-- \Add2~7\ = CARRY((!\Add2~5\) # (!vcounter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vcounter(3),
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: FF_X30_Y25_N17
\vcounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vclk~clkctrl_outclk\,
	d => \Add2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vcounter(3));

-- Location: LCCOMB_X30_Y25_N18
\Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (vcounter(4) & (\Add2~7\ $ (GND))) # (!vcounter(4) & (!\Add2~7\ & VCC))
-- \Add2~9\ = CARRY((vcounter(4) & !\Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => vcounter(4),
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X30_Y25_N30
\vcounter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \vcounter~5_combout\ = (\Add2~8_combout\ & (((!\Equal7~1_combout\) # (!\Equal7~0_combout\)) # (!\Equal8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~0_combout\,
	datab => \Equal7~0_combout\,
	datac => \Equal7~1_combout\,
	datad => \Add2~8_combout\,
	combout => \vcounter~5_combout\);

-- Location: FF_X30_Y25_N31
\vcounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vclk~clkctrl_outclk\,
	d => \vcounter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vcounter(4));

-- Location: LCCOMB_X30_Y25_N20
\Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (vcounter(5) & (!\Add2~9\)) # (!vcounter(5) & ((\Add2~9\) # (GND)))
-- \Add2~11\ = CARRY((!\Add2~9\) # (!vcounter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vcounter(5),
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: LCCOMB_X30_Y25_N2
\vcounter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vcounter~1_combout\ = (\Add2~10_combout\ & (((!\Equal7~1_combout\) # (!\Equal7~0_combout\)) # (!\Equal8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~0_combout\,
	datab => \Equal7~0_combout\,
	datac => \Equal7~1_combout\,
	datad => \Add2~10_combout\,
	combout => \vcounter~1_combout\);

-- Location: FF_X30_Y25_N3
\vcounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vclk~clkctrl_outclk\,
	d => \vcounter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vcounter(5));

-- Location: LCCOMB_X31_Y25_N26
\Equal7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal7~1_combout\ = (vcounter(2) & (!vcounter(3) & vcounter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => vcounter(2),
	datac => vcounter(3),
	datad => vcounter(5),
	combout => \Equal7~1_combout\);

-- Location: LCCOMB_X30_Y25_N22
\Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = (vcounter(6) & (\Add2~11\ $ (GND))) # (!vcounter(6) & (!\Add2~11\ & VCC))
-- \Add2~13\ = CARRY((vcounter(6) & !\Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vcounter(6),
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCCOMB_X30_Y25_N4
\vcounter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \vcounter~4_combout\ = (\Add2~12_combout\ & (((!\Equal7~0_combout\) # (!\Equal7~1_combout\)) # (!\Equal8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~0_combout\,
	datab => \Equal7~1_combout\,
	datac => \Add2~12_combout\,
	datad => \Equal7~0_combout\,
	combout => \vcounter~4_combout\);

-- Location: FF_X30_Y25_N5
\vcounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vclk~clkctrl_outclk\,
	d => \vcounter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vcounter(6));

-- Location: LCCOMB_X31_Y25_N28
\Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal7~0_combout\ = (vcounter(6) & (vcounter(9) & vcounter(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => vcounter(6),
	datac => vcounter(9),
	datad => vcounter(4),
	combout => \Equal7~0_combout\);

-- Location: LCCOMB_X30_Y25_N10
\Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = vcounter(0) $ (VCC)
-- \Add2~1\ = CARRY(vcounter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => vcounter(0),
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X30_Y25_N8
\vcounter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \vcounter~3_combout\ = (\Add2~0_combout\ & (((!\Equal7~1_combout\) # (!\Equal7~0_combout\)) # (!\Equal8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~0_combout\,
	datab => \Equal7~0_combout\,
	datac => \Add2~0_combout\,
	datad => \Equal7~1_combout\,
	combout => \vcounter~3_combout\);

-- Location: FF_X30_Y25_N9
\vcounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vclk~clkctrl_outclk\,
	d => \vcounter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vcounter(0));

-- Location: FF_X30_Y25_N13
\vcounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vclk~clkctrl_outclk\,
	d => \Add2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vcounter(1));

-- Location: LCCOMB_X30_Y25_N24
\Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (vcounter(7) & (!\Add2~13\)) # (!vcounter(7) & ((\Add2~13\) # (GND)))
-- \Add2~15\ = CARRY((!\Add2~13\) # (!vcounter(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vcounter(7),
	datad => VCC,
	cin => \Add2~13\,
	combout => \Add2~14_combout\,
	cout => \Add2~15\);

-- Location: FF_X30_Y25_N25
\vcounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vclk~clkctrl_outclk\,
	d => \Add2~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vcounter(7));

-- Location: LCCOMB_X30_Y25_N26
\Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~16_combout\ = (vcounter(8) & (\Add2~15\ $ (GND))) # (!vcounter(8) & (!\Add2~15\ & VCC))
-- \Add2~17\ = CARRY((vcounter(8) & !\Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => vcounter(8),
	datad => VCC,
	cin => \Add2~15\,
	combout => \Add2~16_combout\,
	cout => \Add2~17\);

-- Location: FF_X30_Y25_N27
\vcounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vclk~clkctrl_outclk\,
	d => \Add2~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vcounter(8));

-- Location: LCCOMB_X30_Y25_N6
\Equal8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal8~0_combout\ = (!vcounter(1) & (!vcounter(0) & (!vcounter(8) & !vcounter(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => vcounter(1),
	datab => vcounter(0),
	datac => vcounter(8),
	datad => vcounter(7),
	combout => \Equal8~0_combout\);

-- Location: LCCOMB_X30_Y25_N28
\Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~18_combout\ = \Add2~17\ $ (vcounter(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => vcounter(9),
	cin => \Add2~17\,
	combout => \Add2~18_combout\);

-- Location: LCCOMB_X30_Y25_N0
\vcounter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vcounter~0_combout\ = (\Add2~18_combout\ & (((!\Equal7~1_combout\) # (!\Equal7~0_combout\)) # (!\Equal8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~0_combout\,
	datab => \Equal7~0_combout\,
	datac => \Equal7~1_combout\,
	datad => \Add2~18_combout\,
	combout => \vcounter~0_combout\);

-- Location: FF_X30_Y25_N1
\vcounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vclk~clkctrl_outclk\,
	d => \vcounter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vcounter(9));

-- Location: LCCOMB_X31_Y25_N0
\vdisplay~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vdisplay~1_combout\ = (\vdisplay~q\ & (vcounter(6) & (vcounter(3) & vcounter(4)))) # (!\vdisplay~q\ & ((vcounter(6)) # ((vcounter(3)) # (vcounter(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vdisplay~q\,
	datab => vcounter(6),
	datac => vcounter(3),
	datad => vcounter(4),
	combout => \vdisplay~1_combout\);

-- Location: LCCOMB_X31_Y25_N20
\vdisplay~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vdisplay~0_combout\ = (!vcounter(2) & (\Equal8~0_combout\ & !vcounter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => vcounter(2),
	datac => \Equal8~0_combout\,
	datad => vcounter(5),
	combout => \vdisplay~0_combout\);

-- Location: LCCOMB_X31_Y25_N22
\vdisplay~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vdisplay~2_combout\ = (vcounter(9) & (\vdisplay~q\ & ((!\vdisplay~0_combout\) # (!\vdisplay~1_combout\)))) # (!vcounter(9) & ((\vdisplay~q\) # ((!\vdisplay~1_combout\ & \vdisplay~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => vcounter(9),
	datab => \vdisplay~1_combout\,
	datac => \vdisplay~q\,
	datad => \vdisplay~0_combout\,
	combout => \vdisplay~2_combout\);

-- Location: FF_X31_Y25_N23
vdisplay : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vclk~clkctrl_outclk\,
	d => \vdisplay~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vdisplay~q\);

-- Location: LCCOMB_X32_Y25_N4
\Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (hcounter(3) & (!hcounter(8) & (hcounter(6) & hcounter(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hcounter(3),
	datab => hcounter(8),
	datac => hcounter(6),
	datad => hcounter(7),
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X31_Y25_N18
\hdisplay~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hdisplay~0_combout\ = (\hdisplay~q\ & (((hcounter(5)) # (!\Equal3~0_combout\)) # (!\Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hdisplay~q\,
	datab => \Equal2~0_combout\,
	datac => hcounter(5),
	datad => \Equal3~0_combout\,
	combout => \hdisplay~0_combout\);

-- Location: LCCOMB_X31_Y25_N30
\hdisplay~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hdisplay~1_combout\ = (\hdisplay~0_combout\) # ((\Equal2~1_combout\ & (!hcounter(8) & !hcounter(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~1_combout\,
	datab => hcounter(8),
	datac => hcounter(3),
	datad => \hdisplay~0_combout\,
	combout => \hdisplay~1_combout\);

-- Location: FF_X31_Y25_N31
hdisplay : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \hdisplay~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hdisplay~q\);

-- Location: LCCOMB_X31_Y25_N10
\display_pixel~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_pixel~0_combout\ = (\vdisplay~q\ & \hdisplay~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vdisplay~q\,
	datac => \hdisplay~q\,
	combout => \display_pixel~0_combout\);

ww_out1 <= \out1~output_o\;

ww_out2 <= \out2~output_o\;
END structure;


