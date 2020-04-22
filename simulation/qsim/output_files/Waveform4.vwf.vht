-- Copyright (C) 2019  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "04/20/2020 15:02:48"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ucs1903
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ucs1903_vhd_vec_tst IS
END ucs1903_vhd_vec_tst;
ARCHITECTURE ucs1903_arch OF ucs1903_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clock : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL sin_ucs1903 : STD_LOGIC;
COMPONENT ucs1903
	PORT (
	clock : IN STD_LOGIC;
	reset : IN STD_LOGIC;
	sin_ucs1903 : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : ucs1903
	PORT MAP (
-- list connections between master ports and signals
	clock => clock,
	reset => reset,
	sin_ucs1903 => sin_ucs1903
	);

-- clock
t_prcs_clock: PROCESS
BEGIN
LOOP
	clock <= '0';
	WAIT FOR 2500 ps;
	clock <= '1';
	WAIT FOR 2500 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '1';
WAIT;
END PROCESS t_prcs_reset;
END ucs1903_arch;
