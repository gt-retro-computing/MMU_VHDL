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
-- Generated on "09/11/2019 16:50:33"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          F2
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY F2_vhd_vec_tst IS
END F2_vhd_vec_tst;
ARCHITECTURE F2_arch OF F2_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL fi : STD_LOGIC;
SIGNAL out1 : STD_LOGIC;
SIGNAL out2 : STD_LOGIC;
COMPONENT F2
	PORT (
	fi : IN STD_LOGIC;
	out1 : BUFFER STD_LOGIC;
	out2 : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : F2
	PORT MAP (
-- list connections between master ports and signals
	fi => fi,
	out1 => out1,
	out2 => out2
	);

-- fi
t_prcs_fi: PROCESS
BEGIN
LOOP
	fi <= '0';
	WAIT FOR 10000 ps;
	fi <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 53000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_fi;
END F2_arch;
