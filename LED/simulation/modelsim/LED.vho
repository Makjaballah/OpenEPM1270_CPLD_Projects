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

-- DATE "09/16/2023 16:21:58"

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

ENTITY 	LED IS
    PORT (
	clk : IN std_logic;
	\led~33029\ : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END LED;

-- Design Ports Information


ARCHITECTURE structure OF LED IS
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
SIGNAL \ww_led~33029\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~combout\ : std_logic;
SIGNAL \P1:count[0]~regout\ : std_logic;
SIGNAL \P1:count[0]~1\ : std_logic;
SIGNAL \P1:count[0]~1COUT1_3\ : std_logic;
SIGNAL \P1:count[1]~regout\ : std_logic;
SIGNAL \P1:count[1]~1\ : std_logic;
SIGNAL \P1:count[2]~regout\ : std_logic;
SIGNAL \P1:count[2]~1\ : std_logic;
SIGNAL \P1:count[2]~1COUT1_3\ : std_logic;
SIGNAL \P1:count[3]~regout\ : std_logic;
SIGNAL \P1:count[3]~1\ : std_logic;
SIGNAL \P1:count[3]~1COUT1_3\ : std_logic;
SIGNAL \P1:count[4]~regout\ : std_logic;
SIGNAL \P1:count[4]~1\ : std_logic;
SIGNAL \P1:count[4]~1COUT1_3\ : std_logic;
SIGNAL \P1:count[5]~regout\ : std_logic;
SIGNAL \P1:count[5]~1\ : std_logic;
SIGNAL \P1:count[5]~1COUT1_3\ : std_logic;
SIGNAL \P1:count[6]~regout\ : std_logic;
SIGNAL \P1:count[6]~1\ : std_logic;
SIGNAL \P1:count[7]~regout\ : std_logic;
SIGNAL \P1:count[7]~1\ : std_logic;
SIGNAL \P1:count[7]~1COUT1_3\ : std_logic;
SIGNAL \P1:count[8]~regout\ : std_logic;
SIGNAL \P1:count[8]~1\ : std_logic;
SIGNAL \P1:count[8]~1COUT1_3\ : std_logic;
SIGNAL \P1:count[9]~regout\ : std_logic;
SIGNAL \P1:count[9]~1\ : std_logic;
SIGNAL \P1:count[9]~1COUT1_3\ : std_logic;
SIGNAL \P1:count[10]~regout\ : std_logic;
SIGNAL \P1:count[10]~1\ : std_logic;
SIGNAL \P1:count[10]~1COUT1_3\ : std_logic;
SIGNAL \P1:count[11]~regout\ : std_logic;
SIGNAL \P1:count[11]~1\ : std_logic;
SIGNAL \P1:count[12]~regout\ : std_logic;
SIGNAL \P1:count[12]~1\ : std_logic;
SIGNAL \P1:count[12]~1COUT1_3\ : std_logic;
SIGNAL \P1:count[13]~regout\ : std_logic;
SIGNAL \P1:count[13]~1\ : std_logic;
SIGNAL \P1:count[13]~1COUT1_3\ : std_logic;
SIGNAL \P1:count[14]~regout\ : std_logic;
SIGNAL \P1:count[14]~1\ : std_logic;
SIGNAL \P1:count[14]~1COUT1_3\ : std_logic;
SIGNAL \P1:count[15]~regout\ : std_logic;
SIGNAL \P1:count[15]~1\ : std_logic;
SIGNAL \P1:count[15]~1COUT1_3\ : std_logic;
SIGNAL \P1:count[16]~regout\ : std_logic;
SIGNAL \P1:count[16]~1\ : std_logic;
SIGNAL \P1:count[17]~regout\ : std_logic;
SIGNAL \P1~0_combout\ : std_logic;
SIGNAL \P1:count[17]~1\ : std_logic;
SIGNAL \P1:count[17]~1COUT1_3\ : std_logic;
SIGNAL \P1:count[18]~regout\ : std_logic;
SIGNAL \P1:count[18]~1\ : std_logic;
SIGNAL \P1:count[18]~1COUT1_3\ : std_logic;
SIGNAL \P1:count[19]~regout\ : std_logic;
SIGNAL \P1:count[19]~1\ : std_logic;
SIGNAL \P1:count[19]~1COUT1_3\ : std_logic;
SIGNAL \P1:count[20]~regout\ : std_logic;
SIGNAL \P1:count[20]~1\ : std_logic;
SIGNAL \P1:count[20]~1COUT1_3\ : std_logic;
SIGNAL \P1:count[21]~1\ : std_logic;
SIGNAL \P1:count[22]~regout\ : std_logic;
SIGNAL \P1:count[22]~1\ : std_logic;
SIGNAL \P1:count[22]~1COUT1_3\ : std_logic;
SIGNAL \P1:count[23]~regout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \count~0_combout\ : std_logic;
SIGNAL \P1:count[21]~regout\ : std_logic;
SIGNAL \P1~11_combout\ : std_logic;
SIGNAL \P1~10_combout\ : std_logic;
SIGNAL \P1~9_combout\ : std_logic;
SIGNAL \P1~15_combout\ : std_logic;
SIGNAL \P1~16_combout\ : std_logic;
SIGNAL \P1~1_combout\ : std_logic;
SIGNAL \P1~12_combout\ : std_logic;
SIGNAL \P1~13_combout\ : std_logic;
SIGNAL \P1~6_combout\ : std_logic;
SIGNAL \P1~7_combout\ : std_logic;
SIGNAL \P1~4_combout\ : std_logic;
SIGNAL \P1~2_combout\ : std_logic;
SIGNAL \P1~3_combout\ : std_logic;
SIGNAL \P1~5_combout\ : std_logic;
SIGNAL \P1~8_combout\ : std_logic;
SIGNAL \P1~14_combout\ : std_logic;
SIGNAL \clk1~regout\ : std_logic;
SIGNAL \clk2~regout\ : std_logic;
SIGNAL \P3:count1[0]~regout\ : std_logic;
SIGNAL \P3:count1[1]~regout\ : std_logic;
SIGNAL \P3:count1[1]~1\ : std_logic;
SIGNAL \P3:count1[1]~1COUT1_3\ : std_logic;
SIGNAL \P3:count1[2]~regout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \P3:count1[2]~1\ : std_logic;
SIGNAL \P3:count1[2]~1COUT1_3\ : std_logic;
SIGNAL \P3:count1[3]~regout\ : std_logic;
SIGNAL \LessThan3~0_combout\ : std_logic;
SIGNAL \P3:count1[3]~1\ : std_logic;
SIGNAL \P3:count1[3]~1COUT1_3\ : std_logic;
SIGNAL \P3:count1[4]~regout\ : std_logic;
SIGNAL \led[0]~reg0_regout\ : std_logic;
SIGNAL \led[1]~reg0_regout\ : std_logic;
SIGNAL \led[2]~reg0_regout\ : std_logic;
SIGNAL \led[3]~reg0_regout\ : std_logic;

BEGIN

ww_clk <= clk;
\led~33029\ <= \ww_led~33029\;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

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

-- Location: LC_X6_Y9_N3
\P1:count[0]\ : maxii_lcell
-- Equation(s):
-- \P1:count[0]~regout\ = DFFEAS((!\P1:count[0]~regout\), GLOBAL(\clk~combout\), VCC, , , , , \count~0_combout\, )
-- \P1:count[0]~1\ = CARRY((\P1:count[0]~regout\))
-- \P1:count[0]~1COUT1_3\ = CARRY((\P1:count[0]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55aa",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \P1:count[0]~regout\,
	aclr => GND,
	sclr => \count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \P1:count[0]~regout\,
	cout0 => \P1:count[0]~1\,
	cout1 => \P1:count[0]~1COUT1_3\);

-- Location: LC_X6_Y9_N4
\P1:count[1]\ : maxii_lcell
-- Equation(s):
-- \P1:count[1]~regout\ = DFFEAS(\P1:count[1]~regout\ $ ((((\P1:count[0]~1\)))), GLOBAL(\clk~combout\), VCC, , , , , \count~0_combout\, )
-- \P1:count[1]~1\ = CARRY(((!\P1:count[0]~1COUT1_3\)) # (!\P1:count[1]~regout\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \P1:count[1]~regout\,
	aclr => GND,
	sclr => \count~0_combout\,
	cin0 => \P1:count[0]~1\,
	cin1 => \P1:count[0]~1COUT1_3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \P1:count[1]~regout\,
	cout => \P1:count[1]~1\);

-- Location: LC_X6_Y9_N5
\P1:count[2]\ : maxii_lcell
-- Equation(s):
-- \P1:count[2]~regout\ = DFFEAS(\P1:count[2]~regout\ $ ((((!\P1:count[1]~1\)))), GLOBAL(\clk~combout\), VCC, , , , , \count~0_combout\, )
-- \P1:count[2]~1\ = CARRY((\P1:count[2]~regout\ & ((!\P1:count[1]~1\))))
-- \P1:count[2]~1COUT1_3\ = CARRY((\P1:count[2]~regout\ & ((!\P1:count[1]~1\))))

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
	dataa => \P1:count[2]~regout\,
	aclr => GND,
	sclr => \count~0_combout\,
	cin => \P1:count[1]~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \P1:count[2]~regout\,
	cout0 => \P1:count[2]~1\,
	cout1 => \P1:count[2]~1COUT1_3\);

-- Location: LC_X6_Y9_N6
\P1:count[3]\ : maxii_lcell
-- Equation(s):
-- \P1:count[3]~regout\ = DFFEAS(\P1:count[3]~regout\ $ (((((!\P1:count[1]~1\ & \P1:count[2]~1\) # (\P1:count[1]~1\ & \P1:count[2]~1COUT1_3\))))), GLOBAL(\clk~combout\), VCC, , , , , \count~0_combout\, )
-- \P1:count[3]~1\ = CARRY(((!\P1:count[2]~1\)) # (!\P1:count[3]~regout\))
-- \P1:count[3]~1COUT1_3\ = CARRY(((!\P1:count[2]~1COUT1_3\)) # (!\P1:count[3]~regout\))

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
	dataa => \P1:count[3]~regout\,
	aclr => GND,
	sclr => \count~0_combout\,
	cin => \P1:count[1]~1\,
	cin0 => \P1:count[2]~1\,
	cin1 => \P1:count[2]~1COUT1_3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \P1:count[3]~regout\,
	cout0 => \P1:count[3]~1\,
	cout1 => \P1:count[3]~1COUT1_3\);

-- Location: LC_X6_Y9_N7
\P1:count[4]\ : maxii_lcell
-- Equation(s):
-- \P1:count[4]~regout\ = DFFEAS((\P1:count[4]~regout\ $ ((!(!\P1:count[1]~1\ & \P1:count[3]~1\) # (\P1:count[1]~1\ & \P1:count[3]~1COUT1_3\)))), GLOBAL(\clk~combout\), VCC, , , , , \count~0_combout\, )
-- \P1:count[4]~1\ = CARRY(((\P1:count[4]~regout\ & !\P1:count[3]~1\)))
-- \P1:count[4]~1COUT1_3\ = CARRY(((\P1:count[4]~regout\ & !\P1:count[3]~1COUT1_3\)))

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
	datab => \P1:count[4]~regout\,
	aclr => GND,
	sclr => \count~0_combout\,
	cin => \P1:count[1]~1\,
	cin0 => \P1:count[3]~1\,
	cin1 => \P1:count[3]~1COUT1_3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \P1:count[4]~regout\,
	cout0 => \P1:count[4]~1\,
	cout1 => \P1:count[4]~1COUT1_3\);

-- Location: LC_X6_Y9_N8
\P1:count[5]\ : maxii_lcell
-- Equation(s):
-- \P1:count[5]~regout\ = DFFEAS(\P1:count[5]~regout\ $ (((((!\P1:count[1]~1\ & \P1:count[4]~1\) # (\P1:count[1]~1\ & \P1:count[4]~1COUT1_3\))))), GLOBAL(\clk~combout\), VCC, , , , , \count~0_combout\, )
-- \P1:count[5]~1\ = CARRY(((!\P1:count[4]~1\)) # (!\P1:count[5]~regout\))
-- \P1:count[5]~1COUT1_3\ = CARRY(((!\P1:count[4]~1COUT1_3\)) # (!\P1:count[5]~regout\))

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
	dataa => \P1:count[5]~regout\,
	aclr => GND,
	sclr => \count~0_combout\,
	cin => \P1:count[1]~1\,
	cin0 => \P1:count[4]~1\,
	cin1 => \P1:count[4]~1COUT1_3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \P1:count[5]~regout\,
	cout0 => \P1:count[5]~1\,
	cout1 => \P1:count[5]~1COUT1_3\);

-- Location: LC_X6_Y9_N9
\P1:count[6]\ : maxii_lcell
-- Equation(s):
-- \P1:count[6]~regout\ = DFFEAS((\P1:count[6]~regout\ $ ((!(!\P1:count[1]~1\ & \P1:count[5]~1\) # (\P1:count[1]~1\ & \P1:count[5]~1COUT1_3\)))), GLOBAL(\clk~combout\), VCC, , , , , \count~0_combout\, )
-- \P1:count[6]~1\ = CARRY(((\P1:count[6]~regout\ & !\P1:count[5]~1COUT1_3\)))

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
	datab => \P1:count[6]~regout\,
	aclr => GND,
	sclr => \count~0_combout\,
	cin => \P1:count[1]~1\,
	cin0 => \P1:count[5]~1\,
	cin1 => \P1:count[5]~1COUT1_3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \P1:count[6]~regout\,
	cout => \P1:count[6]~1\);

-- Location: LC_X7_Y9_N0
\P1:count[7]\ : maxii_lcell
-- Equation(s):
-- \P1:count[7]~regout\ = DFFEAS((\P1:count[7]~regout\ $ ((\P1:count[6]~1\))), GLOBAL(\clk~combout\), VCC, , , , , \count~0_combout\, )
-- \P1:count[7]~1\ = CARRY(((!\P1:count[6]~1\) # (!\P1:count[7]~regout\)))
-- \P1:count[7]~1COUT1_3\ = CARRY(((!\P1:count[6]~1\) # (!\P1:count[7]~regout\)))

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
	datab => \P1:count[7]~regout\,
	aclr => GND,
	sclr => \count~0_combout\,
	cin => \P1:count[6]~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \P1:count[7]~regout\,
	cout0 => \P1:count[7]~1\,
	cout1 => \P1:count[7]~1COUT1_3\);

-- Location: LC_X7_Y9_N1
\P1:count[8]\ : maxii_lcell
-- Equation(s):
-- \P1:count[8]~regout\ = DFFEAS((\P1:count[8]~regout\ $ ((!(!\P1:count[6]~1\ & \P1:count[7]~1\) # (\P1:count[6]~1\ & \P1:count[7]~1COUT1_3\)))), GLOBAL(\clk~combout\), VCC, , , , , \count~0_combout\, )
-- \P1:count[8]~1\ = CARRY(((\P1:count[8]~regout\ & !\P1:count[7]~1\)))
-- \P1:count[8]~1COUT1_3\ = CARRY(((\P1:count[8]~regout\ & !\P1:count[7]~1COUT1_3\)))

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
	datab => \P1:count[8]~regout\,
	aclr => GND,
	sclr => \count~0_combout\,
	cin => \P1:count[6]~1\,
	cin0 => \P1:count[7]~1\,
	cin1 => \P1:count[7]~1COUT1_3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \P1:count[8]~regout\,
	cout0 => \P1:count[8]~1\,
	cout1 => \P1:count[8]~1COUT1_3\);

-- Location: LC_X7_Y9_N2
\P1:count[9]\ : maxii_lcell
-- Equation(s):
-- \P1:count[9]~regout\ = DFFEAS((\P1:count[9]~regout\ $ (((!\P1:count[6]~1\ & \P1:count[8]~1\) # (\P1:count[6]~1\ & \P1:count[8]~1COUT1_3\)))), GLOBAL(\clk~combout\), VCC, , , , , \count~0_combout\, )
-- \P1:count[9]~1\ = CARRY(((!\P1:count[8]~1\) # (!\P1:count[9]~regout\)))
-- \P1:count[9]~1COUT1_3\ = CARRY(((!\P1:count[8]~1COUT1_3\) # (!\P1:count[9]~regout\)))

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
	datab => \P1:count[9]~regout\,
	aclr => GND,
	sclr => \count~0_combout\,
	cin => \P1:count[6]~1\,
	cin0 => \P1:count[8]~1\,
	cin1 => \P1:count[8]~1COUT1_3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \P1:count[9]~regout\,
	cout0 => \P1:count[9]~1\,
	cout1 => \P1:count[9]~1COUT1_3\);

-- Location: LC_X7_Y9_N3
\P1:count[10]\ : maxii_lcell
-- Equation(s):
-- \P1:count[10]~regout\ = DFFEAS(\P1:count[10]~regout\ $ ((((!(!\P1:count[6]~1\ & \P1:count[9]~1\) # (\P1:count[6]~1\ & \P1:count[9]~1COUT1_3\))))), GLOBAL(\clk~combout\), VCC, , , , , \count~0_combout\, )
-- \P1:count[10]~1\ = CARRY((\P1:count[10]~regout\ & ((!\P1:count[9]~1\))))
-- \P1:count[10]~1COUT1_3\ = CARRY((\P1:count[10]~regout\ & ((!\P1:count[9]~1COUT1_3\))))

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
	dataa => \P1:count[10]~regout\,
	aclr => GND,
	sclr => \count~0_combout\,
	cin => \P1:count[6]~1\,
	cin0 => \P1:count[9]~1\,
	cin1 => \P1:count[9]~1COUT1_3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \P1:count[10]~regout\,
	cout0 => \P1:count[10]~1\,
	cout1 => \P1:count[10]~1COUT1_3\);

-- Location: LC_X7_Y9_N4
\P1:count[11]\ : maxii_lcell
-- Equation(s):
-- \P1:count[11]~regout\ = DFFEAS(\P1:count[11]~regout\ $ (((((!\P1:count[6]~1\ & \P1:count[10]~1\) # (\P1:count[6]~1\ & \P1:count[10]~1COUT1_3\))))), GLOBAL(\clk~combout\), VCC, , , , , \count~0_combout\, )
-- \P1:count[11]~1\ = CARRY(((!\P1:count[10]~1COUT1_3\)) # (!\P1:count[11]~regout\))

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
	dataa => \P1:count[11]~regout\,
	aclr => GND,
	sclr => \count~0_combout\,
	cin => \P1:count[6]~1\,
	cin0 => \P1:count[10]~1\,
	cin1 => \P1:count[10]~1COUT1_3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \P1:count[11]~regout\,
	cout => \P1:count[11]~1\);

-- Location: LC_X7_Y9_N5
\P1:count[12]\ : maxii_lcell
-- Equation(s):
-- \P1:count[12]~regout\ = DFFEAS(\P1:count[12]~regout\ $ ((((!\P1:count[11]~1\)))), GLOBAL(\clk~combout\), VCC, , , , , \count~0_combout\, )
-- \P1:count[12]~1\ = CARRY((\P1:count[12]~regout\ & ((!\P1:count[11]~1\))))
-- \P1:count[12]~1COUT1_3\ = CARRY((\P1:count[12]~regout\ & ((!\P1:count[11]~1\))))

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
	dataa => \P1:count[12]~regout\,
	aclr => GND,
	sclr => \count~0_combout\,
	cin => \P1:count[11]~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \P1:count[12]~regout\,
	cout0 => \P1:count[12]~1\,
	cout1 => \P1:count[12]~1COUT1_3\);

-- Location: LC_X7_Y9_N6
\P1:count[13]\ : maxii_lcell
-- Equation(s):
-- \P1:count[13]~regout\ = DFFEAS(\P1:count[13]~regout\ $ (((((!\P1:count[11]~1\ & \P1:count[12]~1\) # (\P1:count[11]~1\ & \P1:count[12]~1COUT1_3\))))), GLOBAL(\clk~combout\), VCC, , , , , \count~0_combout\, )
-- \P1:count[13]~1\ = CARRY(((!\P1:count[12]~1\)) # (!\P1:count[13]~regout\))
-- \P1:count[13]~1COUT1_3\ = CARRY(((!\P1:count[12]~1COUT1_3\)) # (!\P1:count[13]~regout\))

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
	dataa => \P1:count[13]~regout\,
	aclr => GND,
	sclr => \count~0_combout\,
	cin => \P1:count[11]~1\,
	cin0 => \P1:count[12]~1\,
	cin1 => \P1:count[12]~1COUT1_3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \P1:count[13]~regout\,
	cout0 => \P1:count[13]~1\,
	cout1 => \P1:count[13]~1COUT1_3\);

-- Location: LC_X7_Y9_N7
\P1:count[14]\ : maxii_lcell
-- Equation(s):
-- \P1:count[14]~regout\ = DFFEAS((\P1:count[14]~regout\ $ ((!(!\P1:count[11]~1\ & \P1:count[13]~1\) # (\P1:count[11]~1\ & \P1:count[13]~1COUT1_3\)))), GLOBAL(\clk~combout\), VCC, , , , , \count~0_combout\, )
-- \P1:count[14]~1\ = CARRY(((\P1:count[14]~regout\ & !\P1:count[13]~1\)))
-- \P1:count[14]~1COUT1_3\ = CARRY(((\P1:count[14]~regout\ & !\P1:count[13]~1COUT1_3\)))

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
	datab => \P1:count[14]~regout\,
	aclr => GND,
	sclr => \count~0_combout\,
	cin => \P1:count[11]~1\,
	cin0 => \P1:count[13]~1\,
	cin1 => \P1:count[13]~1COUT1_3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \P1:count[14]~regout\,
	cout0 => \P1:count[14]~1\,
	cout1 => \P1:count[14]~1COUT1_3\);

-- Location: LC_X7_Y9_N8
\P1:count[15]\ : maxii_lcell
-- Equation(s):
-- \P1:count[15]~regout\ = DFFEAS(\P1:count[15]~regout\ $ (((((!\P1:count[11]~1\ & \P1:count[14]~1\) # (\P1:count[11]~1\ & \P1:count[14]~1COUT1_3\))))), GLOBAL(\clk~combout\), VCC, , , , , \count~0_combout\, )
-- \P1:count[15]~1\ = CARRY(((!\P1:count[14]~1\)) # (!\P1:count[15]~regout\))
-- \P1:count[15]~1COUT1_3\ = CARRY(((!\P1:count[14]~1COUT1_3\)) # (!\P1:count[15]~regout\))

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
	dataa => \P1:count[15]~regout\,
	aclr => GND,
	sclr => \count~0_combout\,
	cin => \P1:count[11]~1\,
	cin0 => \P1:count[14]~1\,
	cin1 => \P1:count[14]~1COUT1_3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \P1:count[15]~regout\,
	cout0 => \P1:count[15]~1\,
	cout1 => \P1:count[15]~1COUT1_3\);

-- Location: LC_X7_Y9_N9
\P1:count[16]\ : maxii_lcell
-- Equation(s):
-- \P1:count[16]~regout\ = DFFEAS((\P1:count[16]~regout\ $ ((!(!\P1:count[11]~1\ & \P1:count[15]~1\) # (\P1:count[11]~1\ & \P1:count[15]~1COUT1_3\)))), GLOBAL(\clk~combout\), VCC, , , , , \count~0_combout\, )
-- \P1:count[16]~1\ = CARRY(((\P1:count[16]~regout\ & !\P1:count[15]~1COUT1_3\)))

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
	datab => \P1:count[16]~regout\,
	aclr => GND,
	sclr => \count~0_combout\,
	cin => \P1:count[11]~1\,
	cin0 => \P1:count[15]~1\,
	cin1 => \P1:count[15]~1COUT1_3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \P1:count[16]~regout\,
	cout => \P1:count[16]~1\);

-- Location: LC_X8_Y9_N0
\P1:count[17]\ : maxii_lcell
-- Equation(s):
-- \P1:count[17]~regout\ = DFFEAS((\P1:count[17]~regout\ $ ((\P1:count[16]~1\))), GLOBAL(\clk~combout\), VCC, , , , , \count~0_combout\, )
-- \P1:count[17]~1\ = CARRY(((!\P1:count[16]~1\) # (!\P1:count[17]~regout\)))
-- \P1:count[17]~1COUT1_3\ = CARRY(((!\P1:count[16]~1\) # (!\P1:count[17]~regout\)))

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
	datab => \P1:count[17]~regout\,
	aclr => GND,
	sclr => \count~0_combout\,
	cin => \P1:count[16]~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \P1:count[17]~regout\,
	cout0 => \P1:count[17]~1\,
	cout1 => \P1:count[17]~1COUT1_3\);

-- Location: LC_X9_Y9_N5
\P1~0\ : maxii_lcell
-- Equation(s):
-- \P1~0_combout\ = (!\P1:count[17]~regout\ & (((!\P1:count[15]~regout\ & !\P1:count[16]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0005",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P1:count[17]~regout\,
	datac => \P1:count[15]~regout\,
	datad => \P1:count[16]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \P1~0_combout\);

-- Location: LC_X8_Y9_N1
\P1:count[18]\ : maxii_lcell
-- Equation(s):
-- \P1:count[18]~regout\ = DFFEAS((\P1:count[18]~regout\ $ ((!(!\P1:count[16]~1\ & \P1:count[17]~1\) # (\P1:count[16]~1\ & \P1:count[17]~1COUT1_3\)))), GLOBAL(\clk~combout\), VCC, , , , , \count~0_combout\, )
-- \P1:count[18]~1\ = CARRY(((\P1:count[18]~regout\ & !\P1:count[17]~1\)))
-- \P1:count[18]~1COUT1_3\ = CARRY(((\P1:count[18]~regout\ & !\P1:count[17]~1COUT1_3\)))

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
	datab => \P1:count[18]~regout\,
	aclr => GND,
	sclr => \count~0_combout\,
	cin => \P1:count[16]~1\,
	cin0 => \P1:count[17]~1\,
	cin1 => \P1:count[17]~1COUT1_3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \P1:count[18]~regout\,
	cout0 => \P1:count[18]~1\,
	cout1 => \P1:count[18]~1COUT1_3\);

-- Location: LC_X8_Y9_N2
\P1:count[19]\ : maxii_lcell
-- Equation(s):
-- \P1:count[19]~regout\ = DFFEAS((\P1:count[19]~regout\ $ (((!\P1:count[16]~1\ & \P1:count[18]~1\) # (\P1:count[16]~1\ & \P1:count[18]~1COUT1_3\)))), GLOBAL(\clk~combout\), VCC, , , , , \count~0_combout\, )
-- \P1:count[19]~1\ = CARRY(((!\P1:count[18]~1\) # (!\P1:count[19]~regout\)))
-- \P1:count[19]~1COUT1_3\ = CARRY(((!\P1:count[18]~1COUT1_3\) # (!\P1:count[19]~regout\)))

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
	datab => \P1:count[19]~regout\,
	aclr => GND,
	sclr => \count~0_combout\,
	cin => \P1:count[16]~1\,
	cin0 => \P1:count[18]~1\,
	cin1 => \P1:count[18]~1COUT1_3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \P1:count[19]~regout\,
	cout0 => \P1:count[19]~1\,
	cout1 => \P1:count[19]~1COUT1_3\);

-- Location: LC_X8_Y9_N3
\P1:count[20]\ : maxii_lcell
-- Equation(s):
-- \P1:count[20]~regout\ = DFFEAS(\P1:count[20]~regout\ $ ((((!(!\P1:count[16]~1\ & \P1:count[19]~1\) # (\P1:count[16]~1\ & \P1:count[19]~1COUT1_3\))))), GLOBAL(\clk~combout\), VCC, , , , , \count~0_combout\, )
-- \P1:count[20]~1\ = CARRY((\P1:count[20]~regout\ & ((!\P1:count[19]~1\))))
-- \P1:count[20]~1COUT1_3\ = CARRY((\P1:count[20]~regout\ & ((!\P1:count[19]~1COUT1_3\))))

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
	dataa => \P1:count[20]~regout\,
	aclr => GND,
	sclr => \count~0_combout\,
	cin => \P1:count[16]~1\,
	cin0 => \P1:count[19]~1\,
	cin1 => \P1:count[19]~1COUT1_3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \P1:count[20]~regout\,
	cout0 => \P1:count[20]~1\,
	cout1 => \P1:count[20]~1COUT1_3\);

-- Location: LC_X8_Y9_N4
\P1:count[21]\ : maxii_lcell
-- Equation(s):
-- \P1:count[21]~regout\ = DFFEAS(\P1:count[21]~regout\ $ (((((!\P1:count[16]~1\ & \P1:count[20]~1\) # (\P1:count[16]~1\ & \P1:count[20]~1COUT1_3\))))), GLOBAL(\clk~combout\), VCC, , , , , \count~0_combout\, )
-- \P1:count[21]~1\ = CARRY(((!\P1:count[20]~1COUT1_3\)) # (!\P1:count[21]~regout\))

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
	dataa => \P1:count[21]~regout\,
	aclr => GND,
	sclr => \count~0_combout\,
	cin => \P1:count[16]~1\,
	cin0 => \P1:count[20]~1\,
	cin1 => \P1:count[20]~1COUT1_3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \P1:count[21]~regout\,
	cout => \P1:count[21]~1\);

-- Location: LC_X8_Y9_N5
\P1:count[22]\ : maxii_lcell
-- Equation(s):
-- \P1:count[22]~regout\ = DFFEAS(\P1:count[22]~regout\ $ ((((!\P1:count[21]~1\)))), GLOBAL(\clk~combout\), VCC, , , , , \count~0_combout\, )
-- \P1:count[22]~1\ = CARRY((\P1:count[22]~regout\ & ((!\P1:count[21]~1\))))
-- \P1:count[22]~1COUT1_3\ = CARRY((\P1:count[22]~regout\ & ((!\P1:count[21]~1\))))

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
	dataa => \P1:count[22]~regout\,
	aclr => GND,
	sclr => \count~0_combout\,
	cin => \P1:count[21]~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \P1:count[22]~regout\,
	cout0 => \P1:count[22]~1\,
	cout1 => \P1:count[22]~1COUT1_3\);

-- Location: LC_X8_Y9_N6
\P1:count[23]\ : maxii_lcell
-- Equation(s):
-- \P1:count[23]~regout\ = DFFEAS(\P1:count[23]~regout\ $ (((((!\P1:count[21]~1\ & \P1:count[22]~1\) # (\P1:count[21]~1\ & \P1:count[22]~1COUT1_3\))))), GLOBAL(\clk~combout\), VCC, , , , , \count~0_combout\, )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \P1:count[23]~regout\,
	aclr => GND,
	sclr => \count~0_combout\,
	cin => \P1:count[21]~1\,
	cin0 => \P1:count[22]~1\,
	cin1 => \P1:count[22]~1COUT1_3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \P1:count[23]~regout\);

-- Location: LC_X10_Y9_N9
\LessThan0~0\ : maxii_lcell
-- Equation(s):
-- \LessThan0~0_combout\ = (\P1:count[23]~regout\) # ((\P1:count[22]~regout\ & ((\P1:count[21]~regout\) # (\P1:count[20]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffe0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P1:count[21]~regout\,
	datab => \P1:count[20]~regout\,
	datac => \P1:count[22]~regout\,
	datad => \P1:count[23]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~0_combout\);

-- Location: LC_X10_Y9_N0
\LessThan0~1\ : maxii_lcell
-- Equation(s):
-- \LessThan0~1_combout\ = ((\P1:count[18]~regout\ & (\P1:count[22]~regout\ & \P1:count[19]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \P1:count[18]~regout\,
	datac => \P1:count[22]~regout\,
	datad => \P1:count[19]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~1_combout\);

-- Location: LC_X10_Y9_N7
\LessThan0~2\ : maxii_lcell
-- Equation(s):
-- \LessThan0~2_combout\ = (\P1:count[13]~regout\) # ((\P1:count[12]~regout\) # ((\P1:count[11]~regout\ & \P1:count[10]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "feee",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P1:count[13]~regout\,
	datab => \P1:count[12]~regout\,
	datac => \P1:count[11]~regout\,
	datad => \P1:count[10]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~2_combout\);

-- Location: LC_X10_Y9_N4
\LessThan0~3\ : maxii_lcell
-- Equation(s):
-- \LessThan0~3_combout\ = (\P1:count[8]~regout\ & (\P1:count[9]~regout\ & ((\P1:count[7]~regout\) # (\P1:count[6]~regout\))))

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
	dataa => \P1:count[8]~regout\,
	datab => \P1:count[7]~regout\,
	datac => \P1:count[9]~regout\,
	datad => \P1:count[6]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~3_combout\);

-- Location: LC_X10_Y9_N5
\LessThan0~4\ : maxii_lcell
-- Equation(s):
-- \LessThan0~4_combout\ = (\P1:count[14]~regout\ & ((\LessThan0~2_combout\) # ((\P1:count[11]~regout\ & \LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c8c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P1:count[11]~regout\,
	datab => \P1:count[14]~regout\,
	datac => \LessThan0~2_combout\,
	datad => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~4_combout\);

-- Location: LC_X10_Y9_N6
\LessThan0~5\ : maxii_lcell
-- Equation(s):
-- \LessThan0~5_combout\ = (\LessThan0~0_combout\) # ((\LessThan0~1_combout\ & ((\LessThan0~4_combout\) # (!\P1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcdc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P1~0_combout\,
	datab => \LessThan0~0_combout\,
	datac => \LessThan0~1_combout\,
	datad => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~5_combout\);

-- Location: LC_X9_Y9_N3
\count~0\ : maxii_lcell
-- Equation(s):
-- \count~0_combout\ = (((\LessThan0~5_combout\ & \P1~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \LessThan0~5_combout\,
	datad => \P1~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \count~0_combout\);

-- Location: LC_X10_Y9_N3
\P1~11\ : maxii_lcell
-- Equation(s):
-- \P1~11_combout\ = ((\P1:count[22]~regout\ & ((\P1:count[23]~regout\))) # (!\P1:count[22]~regout\ & ((\P1:count[21]~regout\) # (!\P1:count[23]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P1:count[21]~regout\,
	datac => \P1:count[22]~regout\,
	datad => \P1:count[23]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \P1~11_combout\);

-- Location: LC_X9_Y9_N0
\P1~10\ : maxii_lcell
-- Equation(s):
-- \P1~10_combout\ = ((\P1:count[20]~regout\ & (\P1:count[23]~regout\ & \P1:count[19]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \P1:count[20]~regout\,
	datac => \P1:count[23]~regout\,
	datad => \P1:count[19]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \P1~10_combout\);

-- Location: LC_X10_Y9_N8
\P1~9\ : maxii_lcell
-- Equation(s):
-- \P1~9_combout\ = (\P1:count[9]~regout\ & (\P1:count[10]~regout\ & ((\P1:count[8]~regout\) # (\P1:count[7]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P1:count[8]~regout\,
	datab => \P1:count[7]~regout\,
	datac => \P1:count[9]~regout\,
	datad => \P1:count[10]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \P1~9_combout\);

-- Location: LC_X10_Y9_N1
\P1~15\ : maxii_lcell
-- Equation(s):
-- \P1~15_combout\ = (\P1:count[13]~regout\) # ((\P1:count[12]~regout\ & ((\P1:count[11]~regout\) # (\P1~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eeea",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P1:count[13]~regout\,
	datab => \P1:count[12]~regout\,
	datac => \P1:count[11]~regout\,
	datad => \P1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \P1~15_combout\);

-- Location: LC_X10_Y9_N2
\P1~16\ : maxii_lcell
-- Equation(s):
-- \P1~16_combout\ = (\P1~10_combout\ & (\P1:count[15]~regout\ & ((\P1:count[14]~regout\) # (\P1~15_combout\))))

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
	dataa => \P1~10_combout\,
	datab => \P1:count[14]~regout\,
	datac => \P1:count[15]~regout\,
	datad => \P1~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \P1~16_combout\);

-- Location: LC_X9_Y9_N4
\P1~1\ : maxii_lcell
-- Equation(s):
-- \P1~1_combout\ = ((!\P1:count[20]~regout\ & (!\P1:count[23]~regout\ & !\P1:count[21]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0003",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \P1:count[20]~regout\,
	datac => \P1:count[23]~regout\,
	datad => \P1:count[21]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \P1~1_combout\);

-- Location: LC_X9_Y9_N9
\P1~12\ : maxii_lcell
-- Equation(s):
-- \P1~12_combout\ = (\P1~10_combout\ & ((\P1:count[17]~regout\) # ((\P1:count[16]~regout\) # (\P1:count[18]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P1:count[17]~regout\,
	datab => \P1:count[16]~regout\,
	datac => \P1:count[18]~regout\,
	datad => \P1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \P1~12_combout\);

-- Location: LC_X9_Y9_N6
\P1~13\ : maxii_lcell
-- Equation(s):
-- \P1~13_combout\ = (\P1~12_combout\) # ((\P1~1_combout\ & ((!\P1:count[19]~regout\) # (!\P1:count[18]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff70",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P1:count[18]~regout\,
	datab => \P1:count[19]~regout\,
	datac => \P1~1_combout\,
	datad => \P1~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \P1~13_combout\);

-- Location: LC_X8_Y9_N8
\P1~6\ : maxii_lcell
-- Equation(s):
-- \P1~6_combout\ = (\P1:count[11]~regout\ & ((\P1:count[10]~regout\) # ((\P1:count[8]~regout\ & \P1:count[9]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P1:count[8]~regout\,
	datab => \P1:count[9]~regout\,
	datac => \P1:count[11]~regout\,
	datad => \P1:count[10]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \P1~6_combout\);

-- Location: LC_X8_Y9_N9
\P1~7\ : maxii_lcell
-- Equation(s):
-- \P1~7_combout\ = ((!\P1:count[12]~regout\ & (!\P1:count[13]~regout\ & !\P1~6_combout\))) # (!\P1:count[14]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3337",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P1:count[12]~regout\,
	datab => \P1:count[14]~regout\,
	datac => \P1:count[13]~regout\,
	datad => \P1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \P1~7_combout\);

-- Location: LC_X6_Y9_N2
\P1~4\ : maxii_lcell
-- Equation(s):
-- \P1~4_combout\ = (((!\P1:count[0]~regout\) # (!\P1:count[1]~regout\)) # (!\P1:count[3]~regout\)) # (!\P1:count[2]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7fff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P1:count[2]~regout\,
	datab => \P1:count[3]~regout\,
	datac => \P1:count[1]~regout\,
	datad => \P1:count[0]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \P1~4_combout\);

-- Location: LC_X8_Y9_N7
\P1~2\ : maxii_lcell
-- Equation(s):
-- \P1~2_combout\ = (((!\P1:count[13]~regout\ & !\P1:count[12]~regout\)))

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
	datac => \P1:count[13]~regout\,
	datad => \P1:count[12]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \P1~2_combout\);

-- Location: LC_X9_Y9_N7
\P1~3\ : maxii_lcell
-- Equation(s):
-- \P1~3_combout\ = (!\P1:count[10]~regout\ & (!\P1:count[7]~regout\ & (!\P1:count[6]~regout\ & \P1~2_combout\)))

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
	dataa => \P1:count[10]~regout\,
	datab => \P1:count[7]~regout\,
	datac => \P1:count[6]~regout\,
	datad => \P1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \P1~3_combout\);

-- Location: LC_X9_Y9_N8
\P1~5\ : maxii_lcell
-- Equation(s):
-- \P1~5_combout\ = (\P1~3_combout\ & (((\P1~4_combout\) # (!\P1:count[5]~regout\)) # (!\P1:count[4]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f700",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P1:count[4]~regout\,
	datab => \P1:count[5]~regout\,
	datac => \P1~4_combout\,
	datad => \P1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \P1~5_combout\);

-- Location: LC_X9_Y9_N1
\P1~8\ : maxii_lcell
-- Equation(s):
-- \P1~8_combout\ = (\P1~0_combout\ & (\P1~1_combout\ & ((\P1~7_combout\) # (\P1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8880",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P1~0_combout\,
	datab => \P1~1_combout\,
	datac => \P1~7_combout\,
	datad => \P1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \P1~8_combout\);

-- Location: LC_X9_Y9_N2
\P1~14\ : maxii_lcell
-- Equation(s):
-- \P1~14_combout\ = (\P1~11_combout\) # ((\P1~16_combout\) # ((\P1~13_combout\) # (\P1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P1~11_combout\,
	datab => \P1~16_combout\,
	datac => \P1~13_combout\,
	datad => \P1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \P1~14_combout\);

-- Location: LC_X10_Y5_N4
clk1 : maxii_lcell
-- Equation(s):
-- \clk1~regout\ = DFFEAS(((\LessThan0~5_combout\ & ((\clk1~regout\) # (!\P1~14_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "af00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \clk1~regout\,
	datac => \P1~14_combout\,
	datad => \LessThan0~5_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk1~regout\);

-- Location: LC_X10_Y5_N2
clk2 : maxii_lcell
-- Equation(s):
-- \clk2~regout\ = DFFEAS((((!\clk2~regout\))), \clk1~regout\, VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk1~regout\,
	datad => \clk2~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk2~regout\);

-- Location: LC_X2_Y8_N9
\P3:count1[0]\ : maxii_lcell
-- Equation(s):
-- \P3:count1[0]~regout\ = DFFEAS(\LessThan3~0_combout\ $ ((((\P3:count1[0]~regout\)))), GLOBAL(\clk2~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55aa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk2~regout\,
	dataa => \LessThan3~0_combout\,
	datad => \P3:count1[0]~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \P3:count1[0]~regout\);

-- Location: LC_X2_Y8_N0
\P3:count1[1]\ : maxii_lcell
-- Equation(s):
-- \P3:count1[1]~regout\ = DFFEAS(\P3:count1[1]~regout\ $ ((\P3:count1[0]~regout\)), GLOBAL(\clk2~regout\), VCC, , \LessThan3~0_combout\, , , , )
-- \P3:count1[1]~1\ = CARRY((\P3:count1[1]~regout\ & (\P3:count1[0]~regout\)))
-- \P3:count1[1]~1COUT1_3\ = CARRY((\P3:count1[1]~regout\ & (\P3:count1[0]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6688",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk2~regout\,
	dataa => \P3:count1[1]~regout\,
	datab => \P3:count1[0]~regout\,
	aclr => GND,
	ena => \LessThan3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \P3:count1[1]~regout\,
	cout0 => \P3:count1[1]~1\,
	cout1 => \P3:count1[1]~1COUT1_3\);

-- Location: LC_X2_Y8_N1
\P3:count1[2]\ : maxii_lcell
-- Equation(s):
-- \P3:count1[2]~regout\ = DFFEAS(\P3:count1[1]~1\ $ (((!\Equal0~1_combout\ & (\P3:count1[2]~regout\)))), GLOBAL(\clk2~regout\), VCC, , \LessThan3~0_combout\, , , , )
-- \P3:count1[2]~1\ = CARRY((\Equal0~1_combout\) # ((!\P3:count1[1]~1\) # (!\P3:count1[2]~regout\)))
-- \P3:count1[2]~1COUT1_3\ = CARRY((\Equal0~1_combout\) # ((!\P3:count1[1]~1COUT1_3\) # (!\P3:count1[2]~regout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "b4bf",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk2~regout\,
	dataa => \Equal0~1_combout\,
	datab => \P3:count1[2]~regout\,
	aclr => GND,
	ena => \LessThan3~0_combout\,
	cin0 => \P3:count1[1]~1\,
	cin1 => \P3:count1[1]~1COUT1_3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \P3:count1[2]~regout\,
	cout0 => \P3:count1[2]~1\,
	cout1 => \P3:count1[2]~1COUT1_3\);

-- Location: LC_X2_Y8_N4
\Equal0~0\ : maxii_lcell
-- Equation(s):
-- \Equal0~0_combout\ = (((!\P3:count1[1]~regout\ & !\P3:count1[0]~regout\)))

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
	datac => \P3:count1[1]~regout\,
	datad => \P3:count1[0]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~0_combout\);

-- Location: LC_X2_Y8_N5
\Equal0~1\ : maxii_lcell
-- Equation(s):
-- \Equal0~1_combout\ = (!\P3:count1[4]~regout\ & (!\P3:count1[3]~regout\ & (\P3:count1[2]~regout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P3:count1[4]~regout\,
	datab => \P3:count1[3]~regout\,
	datac => \P3:count1[2]~regout\,
	datad => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~1_combout\);

-- Location: LC_X2_Y8_N2
\P3:count1[3]\ : maxii_lcell
-- Equation(s):
-- \P3:count1[3]~regout\ = DFFEAS((\P3:count1[3]~regout\ $ ((!\P3:count1[2]~1\))), GLOBAL(\clk2~regout\), VCC, , \LessThan3~0_combout\, , , , )
-- \P3:count1[3]~1\ = CARRY(((\P3:count1[3]~regout\ & !\P3:count1[2]~1\)))
-- \P3:count1[3]~1COUT1_3\ = CARRY(((\P3:count1[3]~regout\ & !\P3:count1[2]~1COUT1_3\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk2~regout\,
	datab => \P3:count1[3]~regout\,
	aclr => GND,
	ena => \LessThan3~0_combout\,
	cin0 => \P3:count1[2]~1\,
	cin1 => \P3:count1[2]~1COUT1_3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \P3:count1[3]~regout\,
	cout0 => \P3:count1[3]~1\,
	cout1 => \P3:count1[3]~1COUT1_3\);

-- Location: LC_X2_Y8_N8
\LessThan3~0\ : maxii_lcell
-- Equation(s):
-- \LessThan3~0_combout\ = (!\P3:count1[4]~regout\ & (!\P3:count1[3]~regout\ & ((\Equal0~0_combout\) # (!\P3:count1[2]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P3:count1[4]~regout\,
	datab => \P3:count1[3]~regout\,
	datac => \P3:count1[2]~regout\,
	datad => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan3~0_combout\);

-- Location: LC_X2_Y8_N3
\P3:count1[4]\ : maxii_lcell
-- Equation(s):
-- \P3:count1[4]~regout\ = DFFEAS(((\P3:count1[3]~1\ $ (\P3:count1[4]~regout\))), GLOBAL(\clk2~regout\), VCC, , \LessThan3~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk2~regout\,
	datad => \P3:count1[4]~regout\,
	aclr => GND,
	ena => \LessThan3~0_combout\,
	cin0 => \P3:count1[3]~1\,
	cin1 => \P3:count1[3]~1COUT1_3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \P3:count1[4]~regout\);

-- Location: LC_X2_Y8_N7
\led[0]~reg0\ : maxii_lcell
-- Equation(s):
-- \led[0]~reg0_regout\ = DFFEAS(((\P3:count1[2]~regout\ & ((\P3:count1[4]~regout\) # (\P3:count1[3]~regout\)))) # (!\Equal0~0_combout\), GLOBAL(\clk2~regout\), VCC, , \LessThan3~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ef0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk2~regout\,
	dataa => \P3:count1[4]~regout\,
	datab => \P3:count1[3]~regout\,
	datac => \Equal0~0_combout\,
	datad => \P3:count1[2]~regout\,
	aclr => GND,
	ena => \LessThan3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \led[0]~reg0_regout\);

-- Location: LC_X1_Y8_N5
\led[1]~reg0\ : maxii_lcell
-- Equation(s):
-- \led[1]~reg0_regout\ = DFFEAS((((\P3:count1[1]~regout\) # (\P3:count1[2]~regout\)) # (!\P3:count1[0]~regout\)), GLOBAL(\clk2~regout\), VCC, , \LessThan3~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff3",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk2~regout\,
	datab => \P3:count1[0]~regout\,
	datac => \P3:count1[1]~regout\,
	datad => \P3:count1[2]~regout\,
	aclr => GND,
	ena => \LessThan3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \led[1]~reg0_regout\);

-- Location: LC_X1_Y8_N2
\led[2]~reg0\ : maxii_lcell
-- Equation(s):
-- \led[2]~reg0_regout\ = DFFEAS(((\P3:count1[0]~regout\) # ((\P3:count1[2]~regout\) # (!\P3:count1[1]~regout\))), GLOBAL(\clk2~regout\), VCC, , \LessThan3~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcf",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk2~regout\,
	datab => \P3:count1[0]~regout\,
	datac => \P3:count1[1]~regout\,
	datad => \P3:count1[2]~regout\,
	aclr => GND,
	ena => \LessThan3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \led[2]~reg0_regout\);

-- Location: LC_X2_Y8_N6
\led[3]~reg0\ : maxii_lcell
-- Equation(s):
-- \led[3]~reg0_regout\ = DFFEAS((((\P3:count1[2]~regout\) # (!\P3:count1[0]~regout\))) # (!\P3:count1[1]~regout\), GLOBAL(\clk2~regout\), VCC, , \LessThan3~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk2~regout\,
	dataa => \P3:count1[1]~regout\,
	datac => \P3:count1[2]~regout\,
	datad => \P3:count1[0]~regout\,
	aclr => GND,
	ena => \LessThan3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \led[3]~reg0_regout\);

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \led[0]~reg0_regout\,
	oe => VCC,
	padio => \ww_led~33029\(0));

-- Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \led[1]~reg0_regout\,
	oe => VCC,
	padio => \ww_led~33029\(1));

-- Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \led[2]~reg0_regout\,
	oe => VCC,
	padio => \ww_led~33029\(2));

-- Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \led[3]~reg0_regout\,
	oe => VCC,
	padio => \ww_led~33029\(3));
END structure;


