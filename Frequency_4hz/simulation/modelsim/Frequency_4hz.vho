-- Copyright (C) 2020  Intel Corporation. All rights reserved.
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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "09/16/2023 15:21:00"

-- 
-- Device: Altera EPM1270T144C5 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXII;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXII.MAXII_COMPONENTS.ALL;

ENTITY 	Frequency_4hz IS
    PORT (
	rst : IN std_logic;
	clk : IN std_logic;
	clock_out : BUFFER std_logic
	);
END Frequency_4hz;

-- Design Ports Information


ARCHITECTURE structure OF Frequency_4hz IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_clock_out : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \rst~combout\ : std_logic;
SIGNAL \counter_slow[0]~31\ : std_logic;
SIGNAL \counter_slow[0]~31COUT1_57\ : std_logic;
SIGNAL \counter_slow[1]~33\ : std_logic;
SIGNAL \counter_slow[1]~33COUT1_58\ : std_logic;
SIGNAL \counter_slow[2]~35\ : std_logic;
SIGNAL \counter_slow[2]~35COUT1_59\ : std_logic;
SIGNAL \counter_slow[3]~37\ : std_logic;
SIGNAL \counter_slow[4]~49\ : std_logic;
SIGNAL \counter_slow[4]~49COUT1_60\ : std_logic;
SIGNAL \counter_slow[5]~39\ : std_logic;
SIGNAL \counter_slow[5]~39COUT1_61\ : std_logic;
SIGNAL \counter_slow[6]~41\ : std_logic;
SIGNAL \counter_slow[6]~41COUT1_62\ : std_logic;
SIGNAL \counter_slow[7]~43\ : std_logic;
SIGNAL \counter_slow[7]~43COUT1_63\ : std_logic;
SIGNAL \counter_slow[8]~45\ : std_logic;
SIGNAL \counter_slow[9]~51\ : std_logic;
SIGNAL \counter_slow[9]~51COUT1_64\ : std_logic;
SIGNAL \counter_slow[10]~53\ : std_logic;
SIGNAL \counter_slow[10]~53COUT1_65\ : std_logic;
SIGNAL \counter_slow[11]~55\ : std_logic;
SIGNAL \counter_slow[11]~55COUT1_66\ : std_logic;
SIGNAL \counter_slow[12]~15\ : std_logic;
SIGNAL \counter_slow[12]~15COUT1_67\ : std_logic;
SIGNAL \counter_slow[13]~17\ : std_logic;
SIGNAL \counter_slow[14]~19\ : std_logic;
SIGNAL \counter_slow[14]~19COUT1_68\ : std_logic;
SIGNAL \counter_slow[15]~21\ : std_logic;
SIGNAL \counter_slow[15]~21COUT1_69\ : std_logic;
SIGNAL \counter_slow[16]~23\ : std_logic;
SIGNAL \counter_slow[16]~23COUT1_70\ : std_logic;
SIGNAL \counter_slow[17]~25\ : std_logic;
SIGNAL \counter_slow[17]~25COUT1_71\ : std_logic;
SIGNAL \counter_slow[18]~27\ : std_logic;
SIGNAL \counter_slow[19]~29\ : std_logic;
SIGNAL \counter_slow[19]~29COUT1_72\ : std_logic;
SIGNAL \counter_slow[20]~47\ : std_logic;
SIGNAL \counter_slow[20]~47COUT1_73\ : std_logic;
SIGNAL \counter_slow[21]~11\ : std_logic;
SIGNAL \counter_slow[21]~11COUT1_74\ : std_logic;
SIGNAL \counter_slow[22]~13\ : std_logic;
SIGNAL \counter_slow[22]~13COUT1_75\ : std_logic;
SIGNAL \counter_slow[23]~1\ : std_logic;
SIGNAL \counter_slow[24]~3\ : std_logic;
SIGNAL \counter_slow[24]~3COUT1_76\ : std_logic;
SIGNAL \counter_slow[25]~7\ : std_logic;
SIGNAL \counter_slow[25]~7COUT1_77\ : std_logic;
SIGNAL \counter_slow[26]~9\ : std_logic;
SIGNAL \counter_slow[26]~9COUT1_78\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \clock_out$latch~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \clock_out$latch~0_combout\ : std_logic;
SIGNAL \clock_out$latch~2_combout\ : std_logic;
SIGNAL counter_slow : std_logic_vector(27 DOWNTO 0);
SIGNAL \ALT_INV_rst~combout\ : std_logic;

BEGIN

ww_rst <= rst;
ww_clk <= clk;
clock_out <= ww_clock_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_rst~combout\ <= NOT \rst~combout\;

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rst~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rst,
	combout => \rst~combout\);

-- Location: LC_X2_Y5_N1
\counter_slow[0]\ : maxii_lcell
-- Equation(s):
-- counter_slow(0) = DFFEAS(((!counter_slow(0))), GLOBAL(\clk~combout\), GLOBAL(\rst~combout\), , , , , \LessThan0~5_combout\, )
-- \counter_slow[0]~31\ = CARRY(((counter_slow(0))))
-- \counter_slow[0]~31COUT1_57\ = CARRY(((counter_slow(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => counter_slow(0),
	aclr => \ALT_INV_rst~combout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_slow(0),
	cout0 => \counter_slow[0]~31\,
	cout1 => \counter_slow[0]~31COUT1_57\);

-- Location: LC_X2_Y5_N2
\counter_slow[1]\ : maxii_lcell
-- Equation(s):
-- counter_slow(1) = DFFEAS((counter_slow(1) $ ((\counter_slow[0]~31\))), GLOBAL(\clk~combout\), GLOBAL(\rst~combout\), , , , , \LessThan0~5_combout\, )
-- \counter_slow[1]~33\ = CARRY(((!\counter_slow[0]~31\) # (!counter_slow(1))))
-- \counter_slow[1]~33COUT1_58\ = CARRY(((!\counter_slow[0]~31COUT1_57\) # (!counter_slow(1))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => counter_slow(1),
	aclr => \ALT_INV_rst~combout\,
	sclr => \LessThan0~5_combout\,
	cin0 => \counter_slow[0]~31\,
	cin1 => \counter_slow[0]~31COUT1_57\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_slow(1),
	cout0 => \counter_slow[1]~33\,
	cout1 => \counter_slow[1]~33COUT1_58\);

-- Location: LC_X2_Y5_N3
\counter_slow[2]\ : maxii_lcell
-- Equation(s):
-- counter_slow(2) = DFFEAS(counter_slow(2) $ ((((!\counter_slow[1]~33\)))), GLOBAL(\clk~combout\), GLOBAL(\rst~combout\), , , , , \LessThan0~5_combout\, )
-- \counter_slow[2]~35\ = CARRY((counter_slow(2) & ((!\counter_slow[1]~33\))))
-- \counter_slow[2]~35COUT1_59\ = CARRY((counter_slow(2) & ((!\counter_slow[1]~33COUT1_58\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => counter_slow(2),
	aclr => \ALT_INV_rst~combout\,
	sclr => \LessThan0~5_combout\,
	cin0 => \counter_slow[1]~33\,
	cin1 => \counter_slow[1]~33COUT1_58\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_slow(2),
	cout0 => \counter_slow[2]~35\,
	cout1 => \counter_slow[2]~35COUT1_59\);

-- Location: LC_X2_Y5_N4
\counter_slow[3]\ : maxii_lcell
-- Equation(s):
-- counter_slow(3) = DFFEAS((counter_slow(3) $ ((\counter_slow[2]~35\))), GLOBAL(\clk~combout\), GLOBAL(\rst~combout\), , , , , \LessThan0~5_combout\, )
-- \counter_slow[3]~37\ = CARRY(((!\counter_slow[2]~35COUT1_59\) # (!counter_slow(3))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => counter_slow(3),
	aclr => \ALT_INV_rst~combout\,
	sclr => \LessThan0~5_combout\,
	cin0 => \counter_slow[2]~35\,
	cin1 => \counter_slow[2]~35COUT1_59\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_slow(3),
	cout => \counter_slow[3]~37\);

-- Location: LC_X2_Y5_N5
\counter_slow[4]\ : maxii_lcell
-- Equation(s):
-- counter_slow(4) = DFFEAS(counter_slow(4) $ ((((!\counter_slow[3]~37\)))), GLOBAL(\clk~combout\), GLOBAL(\rst~combout\), , , , , \LessThan0~5_combout\, )
-- \counter_slow[4]~49\ = CARRY((counter_slow(4) & ((!\counter_slow[3]~37\))))
-- \counter_slow[4]~49COUT1_60\ = CARRY((counter_slow(4) & ((!\counter_slow[3]~37\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => counter_slow(4),
	aclr => \ALT_INV_rst~combout\,
	sclr => \LessThan0~5_combout\,
	cin => \counter_slow[3]~37\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_slow(4),
	cout0 => \counter_slow[4]~49\,
	cout1 => \counter_slow[4]~49COUT1_60\);

-- Location: LC_X2_Y5_N6
\counter_slow[5]\ : maxii_lcell
-- Equation(s):
-- counter_slow(5) = DFFEAS(counter_slow(5) $ (((((!\counter_slow[3]~37\ & \counter_slow[4]~49\) # (\counter_slow[3]~37\ & \counter_slow[4]~49COUT1_60\))))), GLOBAL(\clk~combout\), GLOBAL(\rst~combout\), , , , , \LessThan0~5_combout\, )
-- \counter_slow[5]~39\ = CARRY(((!\counter_slow[4]~49\)) # (!counter_slow(5)))
-- \counter_slow[5]~39COUT1_61\ = CARRY(((!\counter_slow[4]~49COUT1_60\)) # (!counter_slow(5)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => counter_slow(5),
	aclr => \ALT_INV_rst~combout\,
	sclr => \LessThan0~5_combout\,
	cin => \counter_slow[3]~37\,
	cin0 => \counter_slow[4]~49\,
	cin1 => \counter_slow[4]~49COUT1_60\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_slow(5),
	cout0 => \counter_slow[5]~39\,
	cout1 => \counter_slow[5]~39COUT1_61\);

-- Location: LC_X2_Y5_N7
\counter_slow[6]\ : maxii_lcell
-- Equation(s):
-- counter_slow(6) = DFFEAS((counter_slow(6) $ ((!(!\counter_slow[3]~37\ & \counter_slow[5]~39\) # (\counter_slow[3]~37\ & \counter_slow[5]~39COUT1_61\)))), GLOBAL(\clk~combout\), GLOBAL(\rst~combout\), , , , , \LessThan0~5_combout\, )
-- \counter_slow[6]~41\ = CARRY(((counter_slow(6) & !\counter_slow[5]~39\)))
-- \counter_slow[6]~41COUT1_62\ = CARRY(((counter_slow(6) & !\counter_slow[5]~39COUT1_61\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => counter_slow(6),
	aclr => \ALT_INV_rst~combout\,
	sclr => \LessThan0~5_combout\,
	cin => \counter_slow[3]~37\,
	cin0 => \counter_slow[5]~39\,
	cin1 => \counter_slow[5]~39COUT1_61\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_slow(6),
	cout0 => \counter_slow[6]~41\,
	cout1 => \counter_slow[6]~41COUT1_62\);

-- Location: LC_X2_Y5_N8
\counter_slow[7]\ : maxii_lcell
-- Equation(s):
-- counter_slow(7) = DFFEAS(counter_slow(7) $ (((((!\counter_slow[3]~37\ & \counter_slow[6]~41\) # (\counter_slow[3]~37\ & \counter_slow[6]~41COUT1_62\))))), GLOBAL(\clk~combout\), GLOBAL(\rst~combout\), , , , , \LessThan0~5_combout\, )
-- \counter_slow[7]~43\ = CARRY(((!\counter_slow[6]~41\)) # (!counter_slow(7)))
-- \counter_slow[7]~43COUT1_63\ = CARRY(((!\counter_slow[6]~41COUT1_62\)) # (!counter_slow(7)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => counter_slow(7),
	aclr => \ALT_INV_rst~combout\,
	sclr => \LessThan0~5_combout\,
	cin => \counter_slow[3]~37\,
	cin0 => \counter_slow[6]~41\,
	cin1 => \counter_slow[6]~41COUT1_62\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_slow(7),
	cout0 => \counter_slow[7]~43\,
	cout1 => \counter_slow[7]~43COUT1_63\);

-- Location: LC_X2_Y5_N9
\counter_slow[8]\ : maxii_lcell
-- Equation(s):
-- counter_slow(8) = DFFEAS((counter_slow(8) $ ((!(!\counter_slow[3]~37\ & \counter_slow[7]~43\) # (\counter_slow[3]~37\ & \counter_slow[7]~43COUT1_63\)))), GLOBAL(\clk~combout\), GLOBAL(\rst~combout\), , , , , \LessThan0~5_combout\, )
-- \counter_slow[8]~45\ = CARRY(((counter_slow(8) & !\counter_slow[7]~43COUT1_63\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => counter_slow(8),
	aclr => \ALT_INV_rst~combout\,
	sclr => \LessThan0~5_combout\,
	cin => \counter_slow[3]~37\,
	cin0 => \counter_slow[7]~43\,
	cin1 => \counter_slow[7]~43COUT1_63\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_slow(8),
	cout => \counter_slow[8]~45\);

-- Location: LC_X3_Y5_N0
\counter_slow[9]\ : maxii_lcell
-- Equation(s):
-- counter_slow(9) = DFFEAS((counter_slow(9) $ ((\counter_slow[8]~45\))), GLOBAL(\clk~combout\), GLOBAL(\rst~combout\), , , , , \LessThan0~5_combout\, )
-- \counter_slow[9]~51\ = CARRY(((!\counter_slow[8]~45\) # (!counter_slow(9))))
-- \counter_slow[9]~51COUT1_64\ = CARRY(((!\counter_slow[8]~45\) # (!counter_slow(9))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => counter_slow(9),
	aclr => \ALT_INV_rst~combout\,
	sclr => \LessThan0~5_combout\,
	cin => \counter_slow[8]~45\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_slow(9),
	cout0 => \counter_slow[9]~51\,
	cout1 => \counter_slow[9]~51COUT1_64\);

-- Location: LC_X3_Y5_N1
\counter_slow[10]\ : maxii_lcell
-- Equation(s):
-- counter_slow(10) = DFFEAS((counter_slow(10) $ ((!(!\counter_slow[8]~45\ & \counter_slow[9]~51\) # (\counter_slow[8]~45\ & \counter_slow[9]~51COUT1_64\)))), GLOBAL(\clk~combout\), GLOBAL(\rst~combout\), , , , , \LessThan0~5_combout\, )
-- \counter_slow[10]~53\ = CARRY(((counter_slow(10) & !\counter_slow[9]~51\)))
-- \counter_slow[10]~53COUT1_65\ = CARRY(((counter_slow(10) & !\counter_slow[9]~51COUT1_64\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => counter_slow(10),
	aclr => \ALT_INV_rst~combout\,
	sclr => \LessThan0~5_combout\,
	cin => \counter_slow[8]~45\,
	cin0 => \counter_slow[9]~51\,
	cin1 => \counter_slow[9]~51COUT1_64\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_slow(10),
	cout0 => \counter_slow[10]~53\,
	cout1 => \counter_slow[10]~53COUT1_65\);

-- Location: LC_X3_Y5_N2
\counter_slow[11]\ : maxii_lcell
-- Equation(s):
-- counter_slow(11) = DFFEAS((counter_slow(11) $ (((!\counter_slow[8]~45\ & \counter_slow[10]~53\) # (\counter_slow[8]~45\ & \counter_slow[10]~53COUT1_65\)))), GLOBAL(\clk~combout\), GLOBAL(\rst~combout\), , , , , \LessThan0~5_combout\, )
-- \counter_slow[11]~55\ = CARRY(((!\counter_slow[10]~53\) # (!counter_slow(11))))
-- \counter_slow[11]~55COUT1_66\ = CARRY(((!\counter_slow[10]~53COUT1_65\) # (!counter_slow(11))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => counter_slow(11),
	aclr => \ALT_INV_rst~combout\,
	sclr => \LessThan0~5_combout\,
	cin => \counter_slow[8]~45\,
	cin0 => \counter_slow[10]~53\,
	cin1 => \counter_slow[10]~53COUT1_65\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_slow(11),
	cout0 => \counter_slow[11]~55\,
	cout1 => \counter_slow[11]~55COUT1_66\);

-- Location: LC_X3_Y5_N3
\counter_slow[12]\ : maxii_lcell
-- Equation(s):
-- counter_slow(12) = DFFEAS(counter_slow(12) $ ((((!(!\counter_slow[8]~45\ & \counter_slow[11]~55\) # (\counter_slow[8]~45\ & \counter_slow[11]~55COUT1_66\))))), GLOBAL(\clk~combout\), GLOBAL(\rst~combout\), , , , , \LessThan0~5_combout\, )
-- \counter_slow[12]~15\ = CARRY((counter_slow(12) & ((!\counter_slow[11]~55\))))
-- \counter_slow[12]~15COUT1_67\ = CARRY((counter_slow(12) & ((!\counter_slow[11]~55COUT1_66\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => counter_slow(12),
	aclr => \ALT_INV_rst~combout\,
	sclr => \LessThan0~5_combout\,
	cin => \counter_slow[8]~45\,
	cin0 => \counter_slow[11]~55\,
	cin1 => \counter_slow[11]~55COUT1_66\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_slow(12),
	cout0 => \counter_slow[12]~15\,
	cout1 => \counter_slow[12]~15COUT1_67\);

-- Location: LC_X3_Y5_N4
\counter_slow[13]\ : maxii_lcell
-- Equation(s):
-- counter_slow(13) = DFFEAS(counter_slow(13) $ (((((!\counter_slow[8]~45\ & \counter_slow[12]~15\) # (\counter_slow[8]~45\ & \counter_slow[12]~15COUT1_67\))))), GLOBAL(\clk~combout\), GLOBAL(\rst~combout\), , , , , \LessThan0~5_combout\, )
-- \counter_slow[13]~17\ = CARRY(((!\counter_slow[12]~15COUT1_67\)) # (!counter_slow(13)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => counter_slow(13),
	aclr => \ALT_INV_rst~combout\,
	sclr => \LessThan0~5_combout\,
	cin => \counter_slow[8]~45\,
	cin0 => \counter_slow[12]~15\,
	cin1 => \counter_slow[12]~15COUT1_67\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_slow(13),
	cout => \counter_slow[13]~17\);

-- Location: LC_X3_Y5_N5
\counter_slow[14]\ : maxii_lcell
-- Equation(s):
-- counter_slow(14) = DFFEAS(counter_slow(14) $ ((((!\counter_slow[13]~17\)))), GLOBAL(\clk~combout\), GLOBAL(\rst~combout\), , , , , \LessThan0~5_combout\, )
-- \counter_slow[14]~19\ = CARRY((counter_slow(14) & ((!\counter_slow[13]~17\))))
-- \counter_slow[14]~19COUT1_68\ = CARRY((counter_slow(14) & ((!\counter_slow[13]~17\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => counter_slow(14),
	aclr => \ALT_INV_rst~combout\,
	sclr => \LessThan0~5_combout\,
	cin => \counter_slow[13]~17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_slow(14),
	cout0 => \counter_slow[14]~19\,
	cout1 => \counter_slow[14]~19COUT1_68\);

-- Location: LC_X3_Y5_N6
\counter_slow[15]\ : maxii_lcell
-- Equation(s):
-- counter_slow(15) = DFFEAS(counter_slow(15) $ (((((!\counter_slow[13]~17\ & \counter_slow[14]~19\) # (\counter_slow[13]~17\ & \counter_slow[14]~19COUT1_68\))))), GLOBAL(\clk~combout\), GLOBAL(\rst~combout\), , , , , \LessThan0~5_combout\, )
-- \counter_slow[15]~21\ = CARRY(((!\counter_slow[14]~19\)) # (!counter_slow(15)))
-- \counter_slow[15]~21COUT1_69\ = CARRY(((!\counter_slow[14]~19COUT1_68\)) # (!counter_slow(15)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => counter_slow(15),
	aclr => \ALT_INV_rst~combout\,
	sclr => \LessThan0~5_combout\,
	cin => \counter_slow[13]~17\,
	cin0 => \counter_slow[14]~19\,
	cin1 => \counter_slow[14]~19COUT1_68\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_slow(15),
	cout0 => \counter_slow[15]~21\,
	cout1 => \counter_slow[15]~21COUT1_69\);

-- Location: LC_X3_Y5_N7
\counter_slow[16]\ : maxii_lcell
-- Equation(s):
-- counter_slow(16) = DFFEAS((counter_slow(16) $ ((!(!\counter_slow[13]~17\ & \counter_slow[15]~21\) # (\counter_slow[13]~17\ & \counter_slow[15]~21COUT1_69\)))), GLOBAL(\clk~combout\), GLOBAL(\rst~combout\), , , , , \LessThan0~5_combout\, )
-- \counter_slow[16]~23\ = CARRY(((counter_slow(16) & !\counter_slow[15]~21\)))
-- \counter_slow[16]~23COUT1_70\ = CARRY(((counter_slow(16) & !\counter_slow[15]~21COUT1_69\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => counter_slow(16),
	aclr => \ALT_INV_rst~combout\,
	sclr => \LessThan0~5_combout\,
	cin => \counter_slow[13]~17\,
	cin0 => \counter_slow[15]~21\,
	cin1 => \counter_slow[15]~21COUT1_69\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_slow(16),
	cout0 => \counter_slow[16]~23\,
	cout1 => \counter_slow[16]~23COUT1_70\);

-- Location: LC_X3_Y5_N8
\counter_slow[17]\ : maxii_lcell
-- Equation(s):
-- counter_slow(17) = DFFEAS(counter_slow(17) $ (((((!\counter_slow[13]~17\ & \counter_slow[16]~23\) # (\counter_slow[13]~17\ & \counter_slow[16]~23COUT1_70\))))), GLOBAL(\clk~combout\), GLOBAL(\rst~combout\), , , , , \LessThan0~5_combout\, )
-- \counter_slow[17]~25\ = CARRY(((!\counter_slow[16]~23\)) # (!counter_slow(17)))
-- \counter_slow[17]~25COUT1_71\ = CARRY(((!\counter_slow[16]~23COUT1_70\)) # (!counter_slow(17)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => counter_slow(17),
	aclr => \ALT_INV_rst~combout\,
	sclr => \LessThan0~5_combout\,
	cin => \counter_slow[13]~17\,
	cin0 => \counter_slow[16]~23\,
	cin1 => \counter_slow[16]~23COUT1_70\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_slow(17),
	cout0 => \counter_slow[17]~25\,
	cout1 => \counter_slow[17]~25COUT1_71\);

-- Location: LC_X3_Y5_N9
\counter_slow[18]\ : maxii_lcell
-- Equation(s):
-- counter_slow(18) = DFFEAS((counter_slow(18) $ ((!(!\counter_slow[13]~17\ & \counter_slow[17]~25\) # (\counter_slow[13]~17\ & \counter_slow[17]~25COUT1_71\)))), GLOBAL(\clk~combout\), GLOBAL(\rst~combout\), , , , , \LessThan0~5_combout\, )
-- \counter_slow[18]~27\ = CARRY(((counter_slow(18) & !\counter_slow[17]~25COUT1_71\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => counter_slow(18),
	aclr => \ALT_INV_rst~combout\,
	sclr => \LessThan0~5_combout\,
	cin => \counter_slow[13]~17\,
	cin0 => \counter_slow[17]~25\,
	cin1 => \counter_slow[17]~25COUT1_71\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_slow(18),
	cout => \counter_slow[18]~27\);

-- Location: LC_X4_Y5_N0
\counter_slow[19]\ : maxii_lcell
-- Equation(s):
-- counter_slow(19) = DFFEAS((counter_slow(19) $ ((\counter_slow[18]~27\))), GLOBAL(\clk~combout\), GLOBAL(\rst~combout\), , , , , \LessThan0~5_combout\, )
-- \counter_slow[19]~29\ = CARRY(((!\counter_slow[18]~27\) # (!counter_slow(19))))
-- \counter_slow[19]~29COUT1_72\ = CARRY(((!\counter_slow[18]~27\) # (!counter_slow(19))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => counter_slow(19),
	aclr => \ALT_INV_rst~combout\,
	sclr => \LessThan0~5_combout\,
	cin => \counter_slow[18]~27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_slow(19),
	cout0 => \counter_slow[19]~29\,
	cout1 => \counter_slow[19]~29COUT1_72\);

-- Location: LC_X4_Y5_N1
\counter_slow[20]\ : maxii_lcell
-- Equation(s):
-- counter_slow(20) = DFFEAS((counter_slow(20) $ ((!(!\counter_slow[18]~27\ & \counter_slow[19]~29\) # (\counter_slow[18]~27\ & \counter_slow[19]~29COUT1_72\)))), GLOBAL(\clk~combout\), GLOBAL(\rst~combout\), , , , , \LessThan0~5_combout\, )
-- \counter_slow[20]~47\ = CARRY(((counter_slow(20) & !\counter_slow[19]~29\)))
-- \counter_slow[20]~47COUT1_73\ = CARRY(((counter_slow(20) & !\counter_slow[19]~29COUT1_72\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => counter_slow(20),
	aclr => \ALT_INV_rst~combout\,
	sclr => \LessThan0~5_combout\,
	cin => \counter_slow[18]~27\,
	cin0 => \counter_slow[19]~29\,
	cin1 => \counter_slow[19]~29COUT1_72\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_slow(20),
	cout0 => \counter_slow[20]~47\,
	cout1 => \counter_slow[20]~47COUT1_73\);

-- Location: LC_X4_Y5_N2
\counter_slow[21]\ : maxii_lcell
-- Equation(s):
-- counter_slow(21) = DFFEAS((counter_slow(21) $ (((!\counter_slow[18]~27\ & \counter_slow[20]~47\) # (\counter_slow[18]~27\ & \counter_slow[20]~47COUT1_73\)))), GLOBAL(\clk~combout\), GLOBAL(\rst~combout\), , , , , \LessThan0~5_combout\, )
-- \counter_slow[21]~11\ = CARRY(((!\counter_slow[20]~47\) # (!counter_slow(21))))
-- \counter_slow[21]~11COUT1_74\ = CARRY(((!\counter_slow[20]~47COUT1_73\) # (!counter_slow(21))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => counter_slow(21),
	aclr => \ALT_INV_rst~combout\,
	sclr => \LessThan0~5_combout\,
	cin => \counter_slow[18]~27\,
	cin0 => \counter_slow[20]~47\,
	cin1 => \counter_slow[20]~47COUT1_73\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_slow(21),
	cout0 => \counter_slow[21]~11\,
	cout1 => \counter_slow[21]~11COUT1_74\);

-- Location: LC_X4_Y5_N3
\counter_slow[22]\ : maxii_lcell
-- Equation(s):
-- counter_slow(22) = DFFEAS(counter_slow(22) $ ((((!(!\counter_slow[18]~27\ & \counter_slow[21]~11\) # (\counter_slow[18]~27\ & \counter_slow[21]~11COUT1_74\))))), GLOBAL(\clk~combout\), GLOBAL(\rst~combout\), , , , , \LessThan0~5_combout\, )
-- \counter_slow[22]~13\ = CARRY((counter_slow(22) & ((!\counter_slow[21]~11\))))
-- \counter_slow[22]~13COUT1_75\ = CARRY((counter_slow(22) & ((!\counter_slow[21]~11COUT1_74\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => counter_slow(22),
	aclr => \ALT_INV_rst~combout\,
	sclr => \LessThan0~5_combout\,
	cin => \counter_slow[18]~27\,
	cin0 => \counter_slow[21]~11\,
	cin1 => \counter_slow[21]~11COUT1_74\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_slow(22),
	cout0 => \counter_slow[22]~13\,
	cout1 => \counter_slow[22]~13COUT1_75\);

-- Location: LC_X4_Y5_N4
\counter_slow[23]\ : maxii_lcell
-- Equation(s):
-- counter_slow(23) = DFFEAS((counter_slow(23) $ (((!\counter_slow[18]~27\ & \counter_slow[22]~13\) # (\counter_slow[18]~27\ & \counter_slow[22]~13COUT1_75\)))), GLOBAL(\clk~combout\), GLOBAL(\rst~combout\), , , , , \LessThan0~5_combout\, )
-- \counter_slow[23]~1\ = CARRY(((!\counter_slow[22]~13COUT1_75\) # (!counter_slow(23))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => counter_slow(23),
	aclr => \ALT_INV_rst~combout\,
	sclr => \LessThan0~5_combout\,
	cin => \counter_slow[18]~27\,
	cin0 => \counter_slow[22]~13\,
	cin1 => \counter_slow[22]~13COUT1_75\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_slow(23),
	cout => \counter_slow[23]~1\);

-- Location: LC_X4_Y5_N5
\counter_slow[24]\ : maxii_lcell
-- Equation(s):
-- counter_slow(24) = DFFEAS(counter_slow(24) $ ((((!\counter_slow[23]~1\)))), GLOBAL(\clk~combout\), GLOBAL(\rst~combout\), , , , , \LessThan0~5_combout\, )
-- \counter_slow[24]~3\ = CARRY((counter_slow(24) & ((!\counter_slow[23]~1\))))
-- \counter_slow[24]~3COUT1_76\ = CARRY((counter_slow(24) & ((!\counter_slow[23]~1\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => counter_slow(24),
	aclr => \ALT_INV_rst~combout\,
	sclr => \LessThan0~5_combout\,
	cin => \counter_slow[23]~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_slow(24),
	cout0 => \counter_slow[24]~3\,
	cout1 => \counter_slow[24]~3COUT1_76\);

-- Location: LC_X4_Y5_N6
\counter_slow[25]\ : maxii_lcell
-- Equation(s):
-- counter_slow(25) = DFFEAS(counter_slow(25) $ (((((!\counter_slow[23]~1\ & \counter_slow[24]~3\) # (\counter_slow[23]~1\ & \counter_slow[24]~3COUT1_76\))))), GLOBAL(\clk~combout\), GLOBAL(\rst~combout\), , , , , \LessThan0~5_combout\, )
-- \counter_slow[25]~7\ = CARRY(((!\counter_slow[24]~3\)) # (!counter_slow(25)))
-- \counter_slow[25]~7COUT1_77\ = CARRY(((!\counter_slow[24]~3COUT1_76\)) # (!counter_slow(25)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => counter_slow(25),
	aclr => \ALT_INV_rst~combout\,
	sclr => \LessThan0~5_combout\,
	cin => \counter_slow[23]~1\,
	cin0 => \counter_slow[24]~3\,
	cin1 => \counter_slow[24]~3COUT1_76\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_slow(25),
	cout0 => \counter_slow[25]~7\,
	cout1 => \counter_slow[25]~7COUT1_77\);

-- Location: LC_X4_Y5_N7
\counter_slow[26]\ : maxii_lcell
-- Equation(s):
-- counter_slow(26) = DFFEAS((counter_slow(26) $ ((!(!\counter_slow[23]~1\ & \counter_slow[25]~7\) # (\counter_slow[23]~1\ & \counter_slow[25]~7COUT1_77\)))), GLOBAL(\clk~combout\), GLOBAL(\rst~combout\), , , , , \LessThan0~5_combout\, )
-- \counter_slow[26]~9\ = CARRY(((counter_slow(26) & !\counter_slow[25]~7\)))
-- \counter_slow[26]~9COUT1_78\ = CARRY(((counter_slow(26) & !\counter_slow[25]~7COUT1_77\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => counter_slow(26),
	aclr => \ALT_INV_rst~combout\,
	sclr => \LessThan0~5_combout\,
	cin => \counter_slow[23]~1\,
	cin0 => \counter_slow[25]~7\,
	cin1 => \counter_slow[25]~7COUT1_77\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_slow(26),
	cout0 => \counter_slow[26]~9\,
	cout1 => \counter_slow[26]~9COUT1_78\);

-- Location: LC_X4_Y5_N8
\counter_slow[27]\ : maxii_lcell
-- Equation(s):
-- counter_slow(27) = DFFEAS((((!\counter_slow[23]~1\ & \counter_slow[26]~9\) # (\counter_slow[23]~1\ & \counter_slow[26]~9COUT1_78\) $ (counter_slow(27)))), GLOBAL(\clk~combout\), GLOBAL(\rst~combout\), , , , , \LessThan0~5_combout\, )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => counter_slow(27),
	aclr => \ALT_INV_rst~combout\,
	sclr => \LessThan0~5_combout\,
	cin => \counter_slow[23]~1\,
	cin0 => \counter_slow[26]~9\,
	cin1 => \counter_slow[26]~9COUT1_78\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_slow(27));

-- Location: LC_X4_Y5_N9
\Equal0~0\ : maxii_lcell
-- Equation(s):
-- \Equal0~0_combout\ = (((!counter_slow(24) & !counter_slow(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => counter_slow(24),
	datad => counter_slow(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~0_combout\);

-- Location: LC_X1_Y5_N6
\Equal0~1\ : maxii_lcell
-- Equation(s):
-- \Equal0~1_combout\ = (!counter_slow(25) & (!counter_slow(27) & (!counter_slow(26) & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => counter_slow(25),
	datab => counter_slow(27),
	datac => counter_slow(26),
	datad => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~1_combout\);

-- Location: LC_X1_Y5_N0
\LessThan0~0\ : maxii_lcell
-- Equation(s):
-- \LessThan0~0_combout\ = (counter_slow(17) & (counter_slow(18) & (counter_slow(19) & counter_slow(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => counter_slow(17),
	datab => counter_slow(18),
	datac => counter_slow(19),
	datad => counter_slow(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~0_combout\);

-- Location: LC_X1_Y5_N9
\Equal0~5\ : maxii_lcell
-- Equation(s):
-- \Equal0~5_combout\ = (!counter_slow(5) & (!counter_slow(7) & (!counter_slow(8) & !counter_slow(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => counter_slow(5),
	datab => counter_slow(7),
	datac => counter_slow(8),
	datad => counter_slow(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~5_combout\);

-- Location: LC_X2_Y5_N0
\Equal0~4\ : maxii_lcell
-- Equation(s):
-- \Equal0~4_combout\ = (!counter_slow(3) & (!counter_slow(0) & (!counter_slow(1) & !counter_slow(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => counter_slow(3),
	datab => counter_slow(0),
	datac => counter_slow(1),
	datad => counter_slow(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~4_combout\);

-- Location: LC_X1_Y5_N1
\LessThan0~1\ : maxii_lcell
-- Equation(s):
-- \LessThan0~1_combout\ = (counter_slow(10) & (counter_slow(11) & (counter_slow(12) & counter_slow(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => counter_slow(10),
	datab => counter_slow(11),
	datac => counter_slow(12),
	datad => counter_slow(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~1_combout\);

-- Location: LC_X1_Y5_N2
\LessThan0~2\ : maxii_lcell
-- Equation(s):
-- \LessThan0~2_combout\ = (\LessThan0~1_combout\ & (((counter_slow(4) & !\Equal0~4_combout\)) # (!\Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3b00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => counter_slow(4),
	datab => \Equal0~5_combout\,
	datac => \Equal0~4_combout\,
	datad => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~2_combout\);

-- Location: LC_X1_Y5_N3
\LessThan0~3\ : maxii_lcell
-- Equation(s):
-- \LessThan0~3_combout\ = ((counter_slow(14) & ((counter_slow(13)) # (\LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => counter_slow(13),
	datac => counter_slow(14),
	datad => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~3_combout\);

-- Location: LC_X1_Y5_N4
\LessThan0~4\ : maxii_lcell
-- Equation(s):
-- \LessThan0~4_combout\ = (counter_slow(20) & (\LessThan0~0_combout\ & ((counter_slow(15)) # (\LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => counter_slow(20),
	datab => counter_slow(15),
	datac => \LessThan0~0_combout\,
	datad => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~4_combout\);

-- Location: LC_X1_Y5_N5
\LessThan0~5\ : maxii_lcell
-- Equation(s):
-- \LessThan0~5_combout\ = ((counter_slow(22) & ((counter_slow(21)) # (\LessThan0~4_combout\)))) # (!\Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cf8f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => counter_slow(21),
	datab => counter_slow(22),
	datac => \Equal0~1_combout\,
	datad => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~5_combout\);

-- Location: LC_X1_Y5_N8
\Equal0~6\ : maxii_lcell
-- Equation(s):
-- \Equal0~6_combout\ = (!counter_slow(9) & (!counter_slow(10) & (!counter_slow(4) & !counter_slow(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => counter_slow(9),
	datab => counter_slow(10),
	datac => counter_slow(4),
	datad => counter_slow(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~6_combout\);

-- Location: LC_X1_Y5_N7
\clock_out$latch~1\ : maxii_lcell
-- Equation(s):
-- \clock_out$latch~1_combout\ = (!counter_slow(20) & (\Equal0~5_combout\ & (\Equal0~4_combout\ & \Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => counter_slow(20),
	datab => \Equal0~5_combout\,
	datac => \Equal0~4_combout\,
	datad => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \clock_out$latch~1_combout\);

-- Location: LC_X2_Y6_N5
\Equal0~2\ : maxii_lcell
-- Equation(s):
-- \Equal0~2_combout\ = (!counter_slow(15) & (!counter_slow(14) & (!counter_slow(12) & !counter_slow(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => counter_slow(15),
	datab => counter_slow(14),
	datac => counter_slow(12),
	datad => counter_slow(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~2_combout\);

-- Location: LC_X2_Y6_N4
\Equal0~3\ : maxii_lcell
-- Equation(s):
-- \Equal0~3_combout\ = (!counter_slow(17) & (!counter_slow(19) & (!counter_slow(16) & !counter_slow(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => counter_slow(17),
	datab => counter_slow(19),
	datac => counter_slow(16),
	datad => counter_slow(18),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~3_combout\);

-- Location: LC_X2_Y6_N6
\clock_out$latch~0\ : maxii_lcell
-- Equation(s):
-- \clock_out$latch~0_combout\ = (\Equal0~2_combout\ & (!counter_slow(21) & (\Equal0~3_combout\ & !counter_slow(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0020",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => counter_slow(21),
	datac => \Equal0~3_combout\,
	datad => counter_slow(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \clock_out$latch~0_combout\);

-- Location: LC_X2_Y6_N3
\clock_out$latch~2\ : maxii_lcell
-- Equation(s):
-- \clock_out$latch~2_combout\ = \clock_out$latch~2_combout\ $ (((\clock_out$latch~1_combout\ & (\Equal0~1_combout\ & \clock_out$latch~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7f80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_out$latch~1_combout\,
	datab => \Equal0~1_combout\,
	datac => \clock_out$latch~0_combout\,
	datad => \clock_out$latch~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \clock_out$latch~2_combout\);

-- Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\clock_out~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \clock_out$latch~2_combout\,
	oe => VCC,
	padio => ww_clock_out);
END structure;


