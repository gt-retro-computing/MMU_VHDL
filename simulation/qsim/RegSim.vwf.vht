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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "09/10/2019 16:59:15"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          FancyRegister
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY FancyRegister_vhd_vec_tst IS
END FancyRegister_vhd_vec_tst;
ARCHITECTURE FancyRegister_arch OF FancyRegister_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL clr : STD_LOGIC;
SIGNAL data : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL en : STD_LOGIC;
SIGNAL q : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT FancyRegister
	PORT (
	clk : IN STD_LOGIC;
	clr : IN STD_LOGIC;
	data : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	en : IN STD_LOGIC;
	q : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : FancyRegister
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	clr => clr,
	data => data,
	en => en,
	q => q
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
	clk <= '0';
	WAIT FOR 12000 ps;
	clk <= '1';
	WAIT FOR 8000 ps;
	FOR i IN 1 TO 52
	LOOP
		clk <= '0';
		WAIT FOR 32000 ps;
		clk <= '1';
		WAIT FOR 8000 ps;
	END LOOP;
WAIT;
END PROCESS t_prcs_clk;

-- en
t_prcs_en: PROCESS
BEGIN
	en <= '1';
	WAIT FOR 1999000 ps;
	en <= '0';
WAIT;
END PROCESS t_prcs_en;
-- data[7]
t_prcs_data_7: PROCESS
BEGIN
	data(7) <= '0';
WAIT;
END PROCESS t_prcs_data_7;
-- data[6]
t_prcs_data_6: PROCESS
BEGIN
	data(6) <= '0';
WAIT;
END PROCESS t_prcs_data_6;
-- data[5]
t_prcs_data_5: PROCESS
BEGIN
	data(5) <= '0';
	WAIT FOR 1280000 ps;
	data(5) <= '1';
WAIT;
END PROCESS t_prcs_data_5;
-- data[4]
t_prcs_data_4: PROCESS
BEGIN
	data(4) <= '0';
	WAIT FOR 640000 ps;
	data(4) <= '1';
	WAIT FOR 640000 ps;
	data(4) <= '0';
	WAIT FOR 640000 ps;
	data(4) <= '1';
WAIT;
END PROCESS t_prcs_data_4;
-- data[3]
t_prcs_data_3: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		data(3) <= '0';
		WAIT FOR 320000 ps;
		data(3) <= '1';
		WAIT FOR 320000 ps;
	END LOOP;
	data(3) <= '0';
WAIT;
END PROCESS t_prcs_data_3;
-- data[2]
t_prcs_data_2: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		data(2) <= '0';
		WAIT FOR 160000 ps;
		data(2) <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	data(2) <= '0';
	WAIT FOR 160000 ps;
	data(2) <= '1';
WAIT;
END PROCESS t_prcs_data_2;
-- data[1]
t_prcs_data_1: PROCESS
BEGIN
	FOR i IN 1 TO 13
	LOOP
		data(1) <= '0';
		WAIT FOR 80000 ps;
		data(1) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	data(1) <= '0';
WAIT;
END PROCESS t_prcs_data_1;
-- data[0]
t_prcs_data_0: PROCESS
BEGIN
	FOR i IN 1 TO 26
	LOOP
		data(0) <= '0';
		WAIT FOR 40000 ps;
		data(0) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	data(0) <= '0';
WAIT;
END PROCESS t_prcs_data_0;

-- clr
t_prcs_clr: PROCESS
BEGIN
	clr <= '0';
	WAIT FOR 2000000 ps;
	clr <= '1';
	WAIT FOR 20000 ps;
	clr <= '0';
WAIT;
END PROCESS t_prcs_clr;
END FancyRegister_arch;
