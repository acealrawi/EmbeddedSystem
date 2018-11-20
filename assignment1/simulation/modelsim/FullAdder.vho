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

-- DATE "11/10/2018 20:38:55"

-- 
-- Device: Altera 5CSEBA6U23I7 Package UFBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	FullAdder IS
    PORT (
	O1 : OUT std_logic;
	A2 : IN std_logic;
	B2 : IN std_logic;
	A1 : IN std_logic;
	B1 : IN std_logic;
	Co : OUT std_logic;
	O0 : OUT std_logic
	);
END FullAdder;

-- Design Ports Information
-- O1	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Co	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O0	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A2	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B2	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A1	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B1	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF FullAdder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_O1 : std_logic;
SIGNAL ww_A2 : std_logic;
SIGNAL ww_B2 : std_logic;
SIGNAL ww_A1 : std_logic;
SIGNAL ww_B1 : std_logic;
SIGNAL ww_Co : std_logic;
SIGNAL ww_O0 : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \B1~input_o\ : std_logic;
SIGNAL \B2~input_o\ : std_logic;
SIGNAL \A2~input_o\ : std_logic;
SIGNAL \A1~input_o\ : std_logic;
SIGNAL \inst7~combout\ : std_logic;
SIGNAL \inst8~combout\ : std_logic;
SIGNAL \inst3~combout\ : std_logic;
SIGNAL \ALT_INV_B1~input_o\ : std_logic;
SIGNAL \ALT_INV_A1~input_o\ : std_logic;
SIGNAL \ALT_INV_B2~input_o\ : std_logic;
SIGNAL \ALT_INV_A2~input_o\ : std_logic;

BEGIN

O1 <= ww_O1;
ww_A2 <= A2;
ww_B2 <= B2;
ww_A1 <= A1;
ww_B1 <= B1;
Co <= ww_Co;
O0 <= ww_O0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_B1~input_o\ <= NOT \B1~input_o\;
\ALT_INV_A1~input_o\ <= NOT \A1~input_o\;
\ALT_INV_B2~input_o\ <= NOT \B2~input_o\;
\ALT_INV_A2~input_o\ <= NOT \A2~input_o\;

-- Location: IOOBUF_X89_Y9_N39
\O1~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7~combout\,
	devoe => ww_devoe,
	o => ww_O1);

-- Location: IOOBUF_X89_Y9_N5
\Co~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8~combout\,
	devoe => ww_devoe,
	o => ww_Co);

-- Location: IOOBUF_X89_Y8_N22
\O0~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3~combout\,
	devoe => ww_devoe,
	o => ww_O0);

-- Location: IOIBUF_X89_Y23_N21
\B1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B1,
	o => \B1~input_o\);

-- Location: IOIBUF_X89_Y9_N21
\B2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B2,
	o => \B2~input_o\);

-- Location: IOIBUF_X89_Y9_N55
\A2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A2,
	o => \A2~input_o\);

-- Location: IOIBUF_X89_Y25_N21
\A1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A1,
	o => \A1~input_o\);

-- Location: LABCELL_X88_Y9_N0
inst7 : cyclonev_lcell_comb
-- Equation(s):
-- \inst7~combout\ = ( \A2~input_o\ & ( \A1~input_o\ & ( !\B1~input_o\ $ (\B2~input_o\) ) ) ) # ( !\A2~input_o\ & ( \A1~input_o\ & ( !\B1~input_o\ $ (!\B2~input_o\) ) ) ) # ( \A2~input_o\ & ( !\A1~input_o\ & ( !\B2~input_o\ ) ) ) # ( !\A2~input_o\ & ( 
-- !\A1~input_o\ & ( \B2~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000001011010010110101010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B1~input_o\,
	datac => \ALT_INV_B2~input_o\,
	datae => \ALT_INV_A2~input_o\,
	dataf => \ALT_INV_A1~input_o\,
	combout => \inst7~combout\);

-- Location: LABCELL_X88_Y9_N9
inst8 : cyclonev_lcell_comb
-- Equation(s):
-- \inst8~combout\ = ( \A2~input_o\ & ( \A1~input_o\ & ( (\B1~input_o\) # (\B2~input_o\) ) ) ) # ( !\A2~input_o\ & ( \A1~input_o\ & ( (\B2~input_o\ & \B1~input_o\) ) ) ) # ( \A2~input_o\ & ( !\A1~input_o\ & ( \B2~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000010101010101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B2~input_o\,
	datad => \ALT_INV_B1~input_o\,
	datae => \ALT_INV_A2~input_o\,
	dataf => \ALT_INV_A1~input_o\,
	combout => \inst8~combout\);

-- Location: LABCELL_X88_Y9_N12
inst3 : cyclonev_lcell_comb
-- Equation(s):
-- \inst3~combout\ = ( !\B1~input_o\ & ( \A1~input_o\ ) ) # ( \B1~input_o\ & ( !\A1~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_B1~input_o\,
	dataf => \ALT_INV_A1~input_o\,
	combout => \inst3~combout\);

-- Location: LABCELL_X42_Y65_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


