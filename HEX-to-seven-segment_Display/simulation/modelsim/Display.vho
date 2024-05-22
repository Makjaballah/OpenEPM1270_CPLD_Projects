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

-- DATE "09/17/2023 12:16:21"

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

ENTITY 	Display IS
    PORT (
	rst : IN std_logic;
	clk : IN std_logic;
	led_Out : BUFFER std_logic_vector(7 DOWNTO 0);
	Digit_Select : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END Display;

-- Design Ports Information


ARCHITECTURE structure OF Display IS
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
SIGNAL ww_led_Out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Digit_Select : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~combout\ : std_logic;
SIGNAL \Add0~29_combout\ : std_logic;
SIGNAL \rst~combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~31COUT1_37\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~25COUT1_38\ : std_logic;
SIGNAL \Add0~17_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~19COUT1_39\ : std_logic;
SIGNAL \Add0~11_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~23_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \Add0~8\ : std_logic;
SIGNAL \Add0~8COUT1_40\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Period1uS~regout\ : std_logic;
SIGNAL \Add1~42_combout\ : std_logic;
SIGNAL \Add1~44\ : std_logic;
SIGNAL \Add1~44COUT1_61\ : std_logic;
SIGNAL \Add1~48_combout\ : std_logic;
SIGNAL \Add1~50\ : std_logic;
SIGNAL \Add1~50COUT1_62\ : std_logic;
SIGNAL \Add1~54_combout\ : std_logic;
SIGNAL \Add1~56\ : std_logic;
SIGNAL \Add1~56COUT1_63\ : std_logic;
SIGNAL \Add1~36_combout\ : std_logic;
SIGNAL \Add1~38\ : std_logic;
SIGNAL \Add1~38COUT1_64\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \Add1~32\ : std_logic;
SIGNAL \Add1~11_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~13COUT1_65\ : std_logic;
SIGNAL \Add1~17_combout\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~19COUT1_66\ : std_logic;
SIGNAL \Add1~23_combout\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~25COUT1_67\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \Add1~8\ : std_logic;
SIGNAL \Add1~8COUT1_68\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \LessThan1~2\ : std_logic;
SIGNAL \Period1mS~regout\ : std_logic;
SIGNAL \Add2~42_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~44COUT1_61\ : std_logic;
SIGNAL \Add2~50COUT1_62\ : std_logic;
SIGNAL \Add2~56COUT1_63\ : std_logic;
SIGNAL \Add2~38COUT1_64\ : std_logic;
SIGNAL \Add2~32\ : std_logic;
SIGNAL \Add2~11_combout\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~13COUT1_65\ : std_logic;
SIGNAL \Add2~17_combout\ : std_logic;
SIGNAL \Add2~19\ : std_logic;
SIGNAL \Add2~19COUT1_66\ : std_logic;
SIGNAL \Add2~23_combout\ : std_logic;
SIGNAL \Add2~25\ : std_logic;
SIGNAL \Add2~25COUT1_67\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \LessThan2~2\ : std_logic;
SIGNAL \Add2~44\ : std_logic;
SIGNAL \Add2~48_combout\ : std_logic;
SIGNAL \Add2~50\ : std_logic;
SIGNAL \Add2~54_combout\ : std_logic;
SIGNAL \Add2~56\ : std_logic;
SIGNAL \Add2~36_combout\ : std_logic;
SIGNAL \Add2~38\ : std_logic;
SIGNAL \Add2~30_combout\ : std_logic;
SIGNAL \Add2~8\ : std_logic;
SIGNAL \Add2~8COUT1_68\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Period1S~regout\ : std_logic;
SIGNAL \Add4~0\ : std_logic;
SIGNAL \Add4~1\ : std_logic;
SIGNAL \Add4~2\ : std_logic;
SIGNAL \Mux6~0\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Digit_Select[0]~reg0_regout\ : std_logic;
SIGNAL \Digit_Select[1]~reg0_regout\ : std_logic;
SIGNAL \Digit_Select[2]~reg0_regout\ : std_logic;
SIGNAL \Digit_Select[3]~reg0_regout\ : std_logic;
SIGNAL Count : std_logic_vector(5 DOWNTO 0);
SIGNAL Count1 : std_logic_vector(9 DOWNTO 0);
SIGNAL led : std_logic_vector(3 DOWNTO 0);
SIGNAL Glide : std_logic_vector(3 DOWNTO 0);
SIGNAL reflash : std_logic_vector(1 DOWNTO 0);
SIGNAL Count2 : std_logic_vector(9 DOWNTO 0);
SIGNAL \ALT_INV_rst~combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;

BEGIN

ww_rst <= rst;
ww_clk <= clk;
led_Out <= ww_led_Out;
Digit_Select <= ww_Digit_Select;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_rst~combout\ <= NOT \rst~combout\;
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;

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

-- Location: LC_X9_Y6_N1
\Add0~29\ : maxii_lcell
-- Equation(s):
-- \Add0~29_combout\ = ((!Count(0)))
-- \Add0~31\ = CARRY(((Count(0))))
-- \Add0~31COUT1_37\ = CARRY(((Count(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => Count(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~29_combout\,
	cout0 => \Add0~31\,
	cout1 => \Add0~31COUT1_37\);

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

-- Location: LC_X9_Y6_N7
\Count[0]\ : maxii_lcell
-- Equation(s):
-- Count(0) = DFFEAS((\Add0~29_combout\ & (((!Count(4)) # (!Count(5))) # (!\LessThan0~0_combout\))), GLOBAL(\clk~combout\), \rst~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \LessThan0~0_combout\,
	datab => Count(5),
	datac => Count(4),
	datad => \Add0~29_combout\,
	aclr => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count(0));

-- Location: LC_X9_Y6_N2
\Add0~23\ : maxii_lcell
-- Equation(s):
-- \Add0~23_combout\ = Count(1) $ ((((\Add0~31\))))
-- \Add0~25\ = CARRY(((!\Add0~31\)) # (!Count(1)))
-- \Add0~25COUT1_38\ = CARRY(((!\Add0~31COUT1_37\)) # (!Count(1)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => Count(1),
	cin0 => \Add0~31\,
	cin1 => \Add0~31COUT1_37\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~23_combout\,
	cout0 => \Add0~25\,
	cout1 => \Add0~25COUT1_38\);

-- Location: LC_X9_Y6_N3
\Add0~17\ : maxii_lcell
-- Equation(s):
-- \Add0~17_combout\ = (Count(2) $ ((!\Add0~25\)))
-- \Add0~19\ = CARRY(((Count(2) & !\Add0~25\)))
-- \Add0~19COUT1_39\ = CARRY(((Count(2) & !\Add0~25COUT1_38\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => Count(2),
	cin0 => \Add0~25\,
	cin1 => \Add0~25COUT1_38\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~17_combout\,
	cout0 => \Add0~19\,
	cout1 => \Add0~19COUT1_39\);

-- Location: LC_X9_Y6_N9
\Count[2]\ : maxii_lcell
-- Equation(s):
-- Count(2) = DFFEAS((\Add0~17_combout\ & (((!Count(4)) # (!Count(5))) # (!\LessThan0~0_combout\))), GLOBAL(\clk~combout\), \rst~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \LessThan0~0_combout\,
	datab => Count(5),
	datac => Count(4),
	datad => \Add0~17_combout\,
	aclr => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count(2));

-- Location: LC_X9_Y6_N4
\Add0~11\ : maxii_lcell
-- Equation(s):
-- \Add0~11_combout\ = (Count(3) $ ((\Add0~19\)))
-- \Add0~13\ = CARRY(((!\Add0~19COUT1_39\) # (!Count(3))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => Count(3),
	cin0 => \Add0~19\,
	cin1 => \Add0~19COUT1_39\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~11_combout\,
	cout => \Add0~13\);

-- Location: LC_X9_Y6_N0
\Count[3]\ : maxii_lcell
-- Equation(s):
-- Count(3) = DFFEAS((\Add0~11_combout\ & (((!Count(5)) # (!Count(4))) # (!\LessThan0~0_combout\))), GLOBAL(\clk~combout\), \rst~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "70f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \LessThan0~0_combout\,
	datab => Count(4),
	datac => \Add0~11_combout\,
	datad => Count(5),
	aclr => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count(3));

-- Location: LC_X9_Y6_N5
\Add0~6\ : maxii_lcell
-- Equation(s):
-- \Add0~6_combout\ = (Count(4) $ ((!\Add0~13\)))
-- \Add0~8\ = CARRY(((Count(4) & !\Add0~13\)))
-- \Add0~8COUT1_40\ = CARRY(((Count(4) & !\Add0~13\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => Count(4),
	cin => \Add0~13\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~6_combout\,
	cout0 => \Add0~8\,
	cout1 => \Add0~8COUT1_40\);

-- Location: LC_X10_Y6_N9
\Count[4]\ : maxii_lcell
-- Equation(s):
-- Count(4) = DFFEAS((\Add0~6_combout\ & (((!\LessThan0~0_combout\) # (!Count(4))) # (!Count(5)))), GLOBAL(\clk~combout\), \rst~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => Count(5),
	datab => Count(4),
	datac => \LessThan0~0_combout\,
	datad => \Add0~6_combout\,
	aclr => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count(4));

-- Location: LC_X9_Y6_N8
\Count[1]\ : maxii_lcell
-- Equation(s):
-- Count(1) = DFFEAS((\Add0~23_combout\ & (((!Count(4)) # (!Count(5))) # (!\LessThan0~0_combout\))), GLOBAL(\clk~combout\), \rst~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \LessThan0~0_combout\,
	datab => Count(5),
	datac => Count(4),
	datad => \Add0~23_combout\,
	aclr => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count(1));

-- Location: LC_X10_Y6_N0
\LessThan0~0\ : maxii_lcell
-- Equation(s):
-- \LessThan0~0_combout\ = (Count(1)) # ((Count(0)) # ((Count(2)) # (Count(3))))

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
	dataa => Count(1),
	datab => Count(0),
	datac => Count(2),
	datad => Count(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~0_combout\);

-- Location: LC_X9_Y6_N6
\Add0~0\ : maxii_lcell
-- Equation(s):
-- \Add0~0_combout\ = (((!\Add0~13\ & \Add0~8\) # (\Add0~13\ & \Add0~8COUT1_40\) $ (Count(5))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => Count(5),
	cin => \Add0~13\,
	cin0 => \Add0~8\,
	cin1 => \Add0~8COUT1_40\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~0_combout\);

-- Location: LC_X10_Y6_N4
Period1uS : maxii_lcell
-- Equation(s):
-- \Add0~5\ = (\Add0~0_combout\ & (((!Count(4)) # (!\LessThan0~0_combout\)) # (!Count(5))))
-- \Period1uS~regout\ = DFFEAS(\Add0~5\, GLOBAL(\clk~combout\), VCC, , \rst~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "70f0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => Count(5),
	datab => \LessThan0~0_combout\,
	datac => \Add0~0_combout\,
	datad => Count(4),
	aclr => GND,
	ena => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~5\,
	regout => \Period1uS~regout\);

-- Location: LC_X10_Y6_N5
\Count[5]\ : maxii_lcell
-- Equation(s):
-- Count(5) = DFFEAS((((\Add0~5\))), GLOBAL(\clk~combout\), \rst~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \Add0~5\,
	aclr => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count(5));

-- Location: LC_X9_Y7_N0
\Add1~42\ : maxii_lcell
-- Equation(s):
-- \Add1~42_combout\ = ((!Count1(0)))
-- \Add1~44\ = CARRY(((Count1(0))))
-- \Add1~44COUT1_61\ = CARRY(((Count1(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => Count1(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~42_combout\,
	cout0 => \Add1~44\,
	cout1 => \Add1~44COUT1_61\);

-- Location: LC_X10_Y7_N2
\Count1[0]\ : maxii_lcell
-- Equation(s):
-- Count1(0) = DFFEAS((\Add1~42_combout\ & (((!\LessThan1~2\)))), GLOBAL(\Period1uS~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a0a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Period1uS~regout\,
	dataa => \Add1~42_combout\,
	datac => \LessThan1~2\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count1(0));

-- Location: LC_X9_Y7_N1
\Add1~48\ : maxii_lcell
-- Equation(s):
-- \Add1~48_combout\ = (Count1(1) $ ((\Add1~44\)))
-- \Add1~50\ = CARRY(((!\Add1~44\) # (!Count1(1))))
-- \Add1~50COUT1_62\ = CARRY(((!\Add1~44COUT1_61\) # (!Count1(1))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => Count1(1),
	cin0 => \Add1~44\,
	cin1 => \Add1~44COUT1_61\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~48_combout\,
	cout0 => \Add1~50\,
	cout1 => \Add1~50COUT1_62\);

-- Location: LC_X10_Y7_N9
\Count1[1]\ : maxii_lcell
-- Equation(s):
-- Count1(1) = DFFEAS(((!\LessThan1~2\ & (\Add1~48_combout\))), GLOBAL(\Period1uS~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3030",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Period1uS~regout\,
	datab => \LessThan1~2\,
	datac => \Add1~48_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count1(1));

-- Location: LC_X9_Y7_N2
\Add1~54\ : maxii_lcell
-- Equation(s):
-- \Add1~54_combout\ = (Count1(2) $ ((!\Add1~50\)))
-- \Add1~56\ = CARRY(((Count1(2) & !\Add1~50\)))
-- \Add1~56COUT1_63\ = CARRY(((Count1(2) & !\Add1~50COUT1_62\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => Count1(2),
	cin0 => \Add1~50\,
	cin1 => \Add1~50COUT1_62\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~54_combout\,
	cout0 => \Add1~56\,
	cout1 => \Add1~56COUT1_63\);

-- Location: LC_X10_Y7_N4
\Count1[2]\ : maxii_lcell
-- Equation(s):
-- Count1(2) = DFFEAS((((!\LessThan1~2\ & \Add1~54_combout\))), GLOBAL(\Period1uS~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Period1uS~regout\,
	datac => \LessThan1~2\,
	datad => \Add1~54_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count1(2));

-- Location: LC_X9_Y7_N3
\Add1~36\ : maxii_lcell
-- Equation(s):
-- \Add1~36_combout\ = Count1(3) $ ((((\Add1~56\))))
-- \Add1~38\ = CARRY(((!\Add1~56\)) # (!Count1(3)))
-- \Add1~38COUT1_64\ = CARRY(((!\Add1~56COUT1_63\)) # (!Count1(3)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => Count1(3),
	cin0 => \Add1~56\,
	cin1 => \Add1~56COUT1_63\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~36_combout\,
	cout0 => \Add1~38\,
	cout1 => \Add1~38COUT1_64\);

-- Location: LC_X10_Y7_N6
\Count1[3]\ : maxii_lcell
-- Equation(s):
-- Count1(3) = DFFEAS((((!\LessThan1~2\ & \Add1~36_combout\))), GLOBAL(\Period1uS~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Period1uS~regout\,
	datac => \LessThan1~2\,
	datad => \Add1~36_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count1(3));

-- Location: LC_X9_Y7_N4
\Add1~30\ : maxii_lcell
-- Equation(s):
-- \Add1~30_combout\ = (Count1(4) $ ((!\Add1~38\)))
-- \Add1~32\ = CARRY(((Count1(4) & !\Add1~38COUT1_64\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => Count1(4),
	cin0 => \Add1~38\,
	cin1 => \Add1~38COUT1_64\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~30_combout\,
	cout => \Add1~32\);

-- Location: LC_X10_Y7_N8
\Count1[4]\ : maxii_lcell
-- Equation(s):
-- Count1(4) = DFFEAS((((!\LessThan1~2\ & \Add1~30_combout\))), GLOBAL(\Period1uS~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Period1uS~regout\,
	datac => \LessThan1~2\,
	datad => \Add1~30_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count1(4));

-- Location: LC_X10_Y7_N1
\LessThan1~1\ : maxii_lcell
-- Equation(s):
-- \LessThan1~1_combout\ = (Count1(3)) # ((Count1(1) & (Count1(2) & Count1(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eaaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => Count1(3),
	datab => Count1(1),
	datac => Count1(2),
	datad => Count1(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan1~1_combout\);

-- Location: LC_X9_Y7_N5
\Add1~11\ : maxii_lcell
-- Equation(s):
-- \Add1~11_combout\ = (Count1(5) $ ((\Add1~32\)))
-- \Add1~13\ = CARRY(((!\Add1~32\) # (!Count1(5))))
-- \Add1~13COUT1_65\ = CARRY(((!\Add1~32\) # (!Count1(5))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => Count1(5),
	cin => \Add1~32\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~11_combout\,
	cout0 => \Add1~13\,
	cout1 => \Add1~13COUT1_65\);

-- Location: LC_X8_Y7_N3
\Count1[5]\ : maxii_lcell
-- Equation(s):
-- Count1(5) = DFFEAS((((!\LessThan1~2\ & \Add1~11_combout\))), GLOBAL(\Period1uS~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Period1uS~regout\,
	datac => \LessThan1~2\,
	datad => \Add1~11_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count1(5));

-- Location: LC_X9_Y7_N6
\Add1~17\ : maxii_lcell
-- Equation(s):
-- \Add1~17_combout\ = Count1(6) $ ((((!(!\Add1~32\ & \Add1~13\) # (\Add1~32\ & \Add1~13COUT1_65\)))))
-- \Add1~19\ = CARRY((Count1(6) & ((!\Add1~13\))))
-- \Add1~19COUT1_66\ = CARRY((Count1(6) & ((!\Add1~13COUT1_65\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => Count1(6),
	cin => \Add1~32\,
	cin0 => \Add1~13\,
	cin1 => \Add1~13COUT1_65\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~17_combout\,
	cout0 => \Add1~19\,
	cout1 => \Add1~19COUT1_66\);

-- Location: LC_X8_Y7_N8
\Count1[6]\ : maxii_lcell
-- Equation(s):
-- Count1(6) = DFFEAS((((\Add1~17_combout\ & !\LessThan1~2\))), GLOBAL(\Period1uS~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Period1uS~regout\,
	datac => \Add1~17_combout\,
	datad => \LessThan1~2\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count1(6));

-- Location: LC_X9_Y7_N7
\Add1~23\ : maxii_lcell
-- Equation(s):
-- \Add1~23_combout\ = (Count1(7) $ (((!\Add1~32\ & \Add1~19\) # (\Add1~32\ & \Add1~19COUT1_66\))))
-- \Add1~25\ = CARRY(((!\Add1~19\) # (!Count1(7))))
-- \Add1~25COUT1_67\ = CARRY(((!\Add1~19COUT1_66\) # (!Count1(7))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => Count1(7),
	cin => \Add1~32\,
	cin0 => \Add1~19\,
	cin1 => \Add1~19COUT1_66\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~23_combout\,
	cout0 => \Add1~25\,
	cout1 => \Add1~25COUT1_67\);

-- Location: LC_X8_Y7_N7
\Count1[7]\ : maxii_lcell
-- Equation(s):
-- Count1(7) = DFFEAS((((!\LessThan1~2\ & \Add1~23_combout\))), GLOBAL(\Period1uS~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Period1uS~regout\,
	datac => \LessThan1~2\,
	datad => \Add1~23_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count1(7));

-- Location: LC_X9_Y7_N8
\Add1~6\ : maxii_lcell
-- Equation(s):
-- \Add1~6_combout\ = Count1(8) $ ((((!(!\Add1~32\ & \Add1~25\) # (\Add1~32\ & \Add1~25COUT1_67\)))))
-- \Add1~8\ = CARRY((Count1(8) & ((!\Add1~25\))))
-- \Add1~8COUT1_68\ = CARRY((Count1(8) & ((!\Add1~25COUT1_67\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => Count1(8),
	cin => \Add1~32\,
	cin0 => \Add1~25\,
	cin1 => \Add1~25COUT1_67\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~6_combout\,
	cout0 => \Add1~8\,
	cout1 => \Add1~8COUT1_68\);

-- Location: LC_X8_Y7_N9
\Count1[8]\ : maxii_lcell
-- Equation(s):
-- Count1(8) = DFFEAS(((\Add1~6_combout\ & ((!\LessThan1~2\)))), GLOBAL(\Period1uS~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Period1uS~regout\,
	datab => \Add1~6_combout\,
	datad => \LessThan1~2\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count1(8));

-- Location: LC_X8_Y7_N5
\LessThan1~0\ : maxii_lcell
-- Equation(s):
-- \LessThan1~0_combout\ = (Count1(5) & (Count1(8) & (Count1(7) & Count1(6))))

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
	dataa => Count1(5),
	datab => Count1(8),
	datac => Count1(7),
	datad => Count1(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan1~0_combout\);

-- Location: LC_X10_Y7_N7
\Count1[9]\ : maxii_lcell
-- Equation(s):
-- \LessThan1~2\ = (Count1[9] & (\LessThan1~0_combout\ & ((Count1(4)) # (\LessThan1~1_combout\))))
-- Count1(9) = DFFEAS(\LessThan1~2\, GLOBAL(\Period1uS~regout\), VCC, , , \Add1~5\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Period1uS~regout\,
	dataa => Count1(4),
	datab => \LessThan1~1_combout\,
	datac => \Add1~5\,
	datad => \LessThan1~0_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan1~2\,
	regout => Count1(9));

-- Location: LC_X9_Y7_N9
\Add1~0\ : maxii_lcell
-- Equation(s):
-- \Add1~0_combout\ = (((!\Add1~32\ & \Add1~8\) # (\Add1~32\ & \Add1~8COUT1_68\) $ (Count1(9))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => Count1(9),
	cin => \Add1~32\,
	cin0 => \Add1~8\,
	cin1 => \Add1~8COUT1_68\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~0_combout\);

-- Location: LC_X10_Y7_N5
Period1mS : maxii_lcell
-- Equation(s):
-- \Add1~5\ = ((!\LessThan1~2\ & (\Add1~0_combout\)))
-- \Period1mS~regout\ = DFFEAS(\Add1~5\, GLOBAL(\Period1uS~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3030",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Period1uS~regout\,
	datab => \LessThan1~2\,
	datac => \Add1~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~5\,
	regout => \Period1mS~regout\);

-- Location: LC_X2_Y10_N0
\Add2~42\ : maxii_lcell
-- Equation(s):
-- \Add2~42_combout\ = ((!Count2(0)))
-- \Add2~44\ = CARRY(((Count2(0))))
-- \Add2~44COUT1_61\ = CARRY(((Count2(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => Count2(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~42_combout\,
	cout0 => \Add2~44\,
	cout1 => \Add2~44COUT1_61\);

-- Location: LC_X3_Y10_N7
\LessThan2~1\ : maxii_lcell
-- Equation(s):
-- \LessThan2~1_combout\ = (Count2(3)) # ((Count2(1) & (Count2(2) & Count2(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eaaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => Count2(3),
	datab => Count2(1),
	datac => Count2(2),
	datad => Count2(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan2~1_combout\);

-- Location: LC_X3_Y10_N6
Period1S : maxii_lcell
-- Equation(s):
-- \Add2~5\ = (((\Add2~0_combout\ & !\LessThan2~2\)))
-- \Period1S~regout\ = DFFEAS(\Add2~5\, GLOBAL(\Period1mS~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Period1mS~regout\,
	datac => \Add2~0_combout\,
	datad => \LessThan2~2\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~5\,
	regout => \Period1S~regout\);

-- Location: LC_X2_Y10_N1
\Add2~48\ : maxii_lcell
-- Equation(s):
-- \Add2~48_combout\ = (Count2(1) $ ((\Add2~44\)))
-- \Add2~50\ = CARRY(((!\Add2~44\) # (!Count2(1))))
-- \Add2~50COUT1_62\ = CARRY(((!\Add2~44COUT1_61\) # (!Count2(1))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => Count2(1),
	cin0 => \Add2~44\,
	cin1 => \Add2~44COUT1_61\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~48_combout\,
	cout0 => \Add2~50\,
	cout1 => \Add2~50COUT1_62\);

-- Location: LC_X2_Y10_N2
\Add2~54\ : maxii_lcell
-- Equation(s):
-- \Add2~54_combout\ = (Count2(2) $ ((!\Add2~50\)))
-- \Add2~56\ = CARRY(((Count2(2) & !\Add2~50\)))
-- \Add2~56COUT1_63\ = CARRY(((Count2(2) & !\Add2~50COUT1_62\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => Count2(2),
	cin0 => \Add2~50\,
	cin1 => \Add2~50COUT1_62\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~54_combout\,
	cout0 => \Add2~56\,
	cout1 => \Add2~56COUT1_63\);

-- Location: LC_X2_Y10_N3
\Add2~36\ : maxii_lcell
-- Equation(s):
-- \Add2~36_combout\ = (Count2(3) $ ((\Add2~56\)))
-- \Add2~38\ = CARRY(((!\Add2~56\) # (!Count2(3))))
-- \Add2~38COUT1_64\ = CARRY(((!\Add2~56COUT1_63\) # (!Count2(3))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => Count2(3),
	cin0 => \Add2~56\,
	cin1 => \Add2~56COUT1_63\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~36_combout\,
	cout0 => \Add2~38\,
	cout1 => \Add2~38COUT1_64\);

-- Location: LC_X2_Y10_N4
\Add2~30\ : maxii_lcell
-- Equation(s):
-- \Add2~30_combout\ = (Count2(4) $ ((!\Add2~38\)))
-- \Add2~32\ = CARRY(((Count2(4) & !\Add2~38COUT1_64\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => Count2(4),
	cin0 => \Add2~38\,
	cin1 => \Add2~38COUT1_64\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~30_combout\,
	cout => \Add2~32\);

-- Location: LC_X2_Y10_N5
\Add2~11\ : maxii_lcell
-- Equation(s):
-- \Add2~11_combout\ = (Count2(5) $ ((\Add2~32\)))
-- \Add2~13\ = CARRY(((!\Add2~32\) # (!Count2(5))))
-- \Add2~13COUT1_65\ = CARRY(((!\Add2~32\) # (!Count2(5))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => Count2(5),
	cin => \Add2~32\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~11_combout\,
	cout0 => \Add2~13\,
	cout1 => \Add2~13COUT1_65\);

-- Location: LC_X1_Y10_N2
\Count2[5]\ : maxii_lcell
-- Equation(s):
-- Count2(5) = DFFEAS((((!\LessThan2~2\ & \Add2~11_combout\))), GLOBAL(\Period1mS~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Period1mS~regout\,
	datac => \LessThan2~2\,
	datad => \Add2~11_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count2(5));

-- Location: LC_X2_Y10_N6
\Add2~17\ : maxii_lcell
-- Equation(s):
-- \Add2~17_combout\ = (Count2(6) $ ((!(!\Add2~32\ & \Add2~13\) # (\Add2~32\ & \Add2~13COUT1_65\))))
-- \Add2~19\ = CARRY(((Count2(6) & !\Add2~13\)))
-- \Add2~19COUT1_66\ = CARRY(((Count2(6) & !\Add2~13COUT1_65\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => Count2(6),
	cin => \Add2~32\,
	cin0 => \Add2~13\,
	cin1 => \Add2~13COUT1_65\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~17_combout\,
	cout0 => \Add2~19\,
	cout1 => \Add2~19COUT1_66\);

-- Location: LC_X1_Y10_N3
\Count2[6]\ : maxii_lcell
-- Equation(s):
-- Count2(6) = DFFEAS((((\Add2~17_combout\ & !\LessThan2~2\))), GLOBAL(\Period1mS~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Period1mS~regout\,
	datac => \Add2~17_combout\,
	datad => \LessThan2~2\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count2(6));

-- Location: LC_X2_Y10_N7
\Add2~23\ : maxii_lcell
-- Equation(s):
-- \Add2~23_combout\ = (Count2(7) $ (((!\Add2~32\ & \Add2~19\) # (\Add2~32\ & \Add2~19COUT1_66\))))
-- \Add2~25\ = CARRY(((!\Add2~19\) # (!Count2(7))))
-- \Add2~25COUT1_67\ = CARRY(((!\Add2~19COUT1_66\) # (!Count2(7))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => Count2(7),
	cin => \Add2~32\,
	cin0 => \Add2~19\,
	cin1 => \Add2~19COUT1_66\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~23_combout\,
	cout0 => \Add2~25\,
	cout1 => \Add2~25COUT1_67\);

-- Location: LC_X1_Y10_N7
\Count2[7]\ : maxii_lcell
-- Equation(s):
-- Count2(7) = DFFEAS((((!\LessThan2~2\ & \Add2~23_combout\))), GLOBAL(\Period1mS~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Period1mS~regout\,
	datac => \LessThan2~2\,
	datad => \Add2~23_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count2(7));

-- Location: LC_X2_Y10_N8
\Add2~6\ : maxii_lcell
-- Equation(s):
-- \Add2~6_combout\ = Count2(8) $ ((((!(!\Add2~32\ & \Add2~25\) # (\Add2~32\ & \Add2~25COUT1_67\)))))
-- \Add2~8\ = CARRY((Count2(8) & ((!\Add2~25\))))
-- \Add2~8COUT1_68\ = CARRY((Count2(8) & ((!\Add2~25COUT1_67\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => Count2(8),
	cin => \Add2~32\,
	cin0 => \Add2~25\,
	cin1 => \Add2~25COUT1_67\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~6_combout\,
	cout0 => \Add2~8\,
	cout1 => \Add2~8COUT1_68\);

-- Location: LC_X1_Y10_N5
\Count2[8]\ : maxii_lcell
-- Equation(s):
-- Count2(8) = DFFEAS((((!\LessThan2~2\ & \Add2~6_combout\))), GLOBAL(\Period1mS~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Period1mS~regout\,
	datac => \LessThan2~2\,
	datad => \Add2~6_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count2(8));

-- Location: LC_X1_Y10_N9
\LessThan2~0\ : maxii_lcell
-- Equation(s):
-- \LessThan2~0_combout\ = (Count2(8) & (Count2(5) & (Count2(7) & Count2(6))))

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
	dataa => Count2(8),
	datab => Count2(5),
	datac => Count2(7),
	datad => Count2(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan2~0_combout\);

-- Location: LC_X3_Y10_N3
\Count2[9]\ : maxii_lcell
-- Equation(s):
-- \LessThan2~2\ = (Count2[9] & (\LessThan2~0_combout\ & ((Count2(4)) # (\LessThan2~1_combout\))))
-- Count2(9) = DFFEAS(\LessThan2~2\, GLOBAL(\Period1mS~regout\), VCC, , , \Add2~5\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Period1mS~regout\,
	dataa => Count2(4),
	datab => \LessThan2~1_combout\,
	datac => \Add2~5\,
	datad => \LessThan2~0_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan2~2\,
	regout => Count2(9));

-- Location: LC_X3_Y10_N8
\Count2[0]\ : maxii_lcell
-- Equation(s):
-- Count2(0) = DFFEAS((\Add2~42_combout\ & (((!\LessThan2~2\)))), GLOBAL(\Period1mS~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00aa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Period1mS~regout\,
	dataa => \Add2~42_combout\,
	datad => \LessThan2~2\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count2(0));

-- Location: LC_X3_Y10_N2
\Count2[1]\ : maxii_lcell
-- Equation(s):
-- Count2(1) = DFFEAS((((\Add2~48_combout\ & !\LessThan2~2\))), GLOBAL(\Period1mS~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Period1mS~regout\,
	datac => \Add2~48_combout\,
	datad => \LessThan2~2\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count2(1));

-- Location: LC_X3_Y10_N4
\Count2[2]\ : maxii_lcell
-- Equation(s):
-- Count2(2) = DFFEAS(((\Add2~54_combout\ & ((!\LessThan2~2\)))), GLOBAL(\Period1mS~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Period1mS~regout\,
	datab => \Add2~54_combout\,
	datad => \LessThan2~2\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count2(2));

-- Location: LC_X3_Y10_N5
\Count2[3]\ : maxii_lcell
-- Equation(s):
-- Count2(3) = DFFEAS((((\Add2~36_combout\ & !\LessThan2~2\))), GLOBAL(\Period1mS~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Period1mS~regout\,
	datac => \Add2~36_combout\,
	datad => \LessThan2~2\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count2(3));

-- Location: LC_X3_Y10_N9
\Count2[4]\ : maxii_lcell
-- Equation(s):
-- Count2(4) = DFFEAS(((\Add2~30_combout\ & ((!\LessThan2~2\)))), GLOBAL(\Period1mS~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Period1mS~regout\,
	datab => \Add2~30_combout\,
	datad => \LessThan2~2\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count2(4));

-- Location: LC_X2_Y10_N9
\Add2~0\ : maxii_lcell
-- Equation(s):
-- \Add2~0_combout\ = (((!\Add2~32\ & \Add2~8\) # (\Add2~32\ & \Add2~8COUT1_68\) $ (Count2(9))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => Count2(9),
	cin => \Add2~32\,
	cin0 => \Add2~8\,
	cin1 => \Add2~8COUT1_68\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~0_combout\);

-- Location: LC_X15_Y4_N8
\Glide[0]\ : maxii_lcell
-- Equation(s):
-- Glide(0) = DFFEAS((((!Glide(0)))), GLOBAL(\Period1S~regout\), \rst~combout\, , , , , , )

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
	clk => \Period1S~regout\,
	datad => Glide(0),
	aclr => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Glide(0));

-- Location: LC_X15_Y4_N6
\led[1]\ : maxii_lcell
-- Equation(s):
-- \Add4~0\ = ((Glide(1) $ (Glide(0))))
-- led(1) = DFFEAS(\Add4~0\, GLOBAL(\Period1S~regout\), VCC, , \rst~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Period1S~regout\,
	datac => Glide(1),
	datad => Glide(0),
	aclr => GND,
	ena => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~0\,
	regout => led(1));

-- Location: LC_X15_Y4_N7
\Glide[1]\ : maxii_lcell
-- Equation(s):
-- Glide(1) = DFFEAS((((\Add4~0\))), GLOBAL(\Period1S~regout\), \rst~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Period1S~regout\,
	datad => \Add4~0\,
	aclr => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Glide(1));

-- Location: LC_X15_Y4_N4
\led[2]\ : maxii_lcell
-- Equation(s):
-- \Add4~1\ = (Glide(2) $ (((Glide(1) & Glide(0)))))
-- led(2) = DFFEAS(\Add4~1\, GLOBAL(\Period1S~regout\), VCC, , \rst~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3cf0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Period1S~regout\,
	datab => Glide(1),
	datac => Glide(2),
	datad => Glide(0),
	aclr => GND,
	ena => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~1\,
	regout => led(2));

-- Location: LC_X15_Y4_N5
\Glide[2]\ : maxii_lcell
-- Equation(s):
-- Glide(2) = DFFEAS((((\Add4~1\))), GLOBAL(\Period1S~regout\), \rst~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Period1S~regout\,
	datad => \Add4~1\,
	aclr => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Glide(2));

-- Location: LC_X15_Y4_N0
\Glide[3]\ : maxii_lcell
-- Equation(s):
-- \Add4~2\ = Glide[3] $ (((Glide(2) & (Glide(1) & Glide(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "78f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Period1S~regout\,
	dataa => Glide(2),
	datab => Glide(1),
	datad => Glide(0),
	aclr => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~2\,
	regout => Glide(3));

-- Location: LC_X15_Y4_N2
\led[0]\ : maxii_lcell
-- Equation(s):
-- led(0) = DFFEAS((((!Glide(0)))), GLOBAL(\Period1S~regout\), VCC, , \rst~combout\, , , , )

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
	clk => \Period1S~regout\,
	datad => Glide(0),
	aclr => GND,
	ena => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => led(0));

-- Location: LC_X15_Y4_N9
\led[3]\ : maxii_lcell
-- Equation(s):
-- \Mux6~0\ = (led(2) & (!led(1) & (led[3] $ (!led(0))))) # (!led(2) & (led(0) & (led(1) $ (!led[3]))))
-- led(3) = DFFEAS(\Mux6~0\, GLOBAL(\Period1S~regout\), VCC, , \rst~combout\, \Add4~2\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6104",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Period1S~regout\,
	dataa => led(1),
	datab => led(2),
	datac => \Add4~2\,
	datad => led(0),
	aclr => GND,
	sload => VCC,
	ena => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux6~0\,
	regout => led(3));

-- Location: LC_X16_Y4_N0
\Mux5~0\ : maxii_lcell
-- Equation(s):
-- \Mux5~0_combout\ = (led(1) & ((led(0) & ((led(3)))) # (!led(0) & (led(2))))) # (!led(1) & (led(2) & (led(3) $ (led(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a4c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => led(1),
	datab => led(2),
	datac => led(3),
	datad => led(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~0_combout\);

-- Location: LC_X16_Y4_N4
\Mux4~0\ : maxii_lcell
-- Equation(s):
-- \Mux4~0_combout\ = (led(2) & (led(3) & ((led(1)) # (!led(0))))) # (!led(2) & (led(1) & (!led(3) & !led(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "80c2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => led(1),
	datab => led(2),
	datac => led(3),
	datad => led(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~0_combout\);

-- Location: LC_X16_Y4_N2
\Mux3~0\ : maxii_lcell
-- Equation(s):
-- \Mux3~0_combout\ = (led(1) & ((led(2) & ((led(0)))) # (!led(2) & (led(3) & !led(0))))) # (!led(1) & (!led(3) & (led(2) $ (led(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8924",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => led(1),
	datab => led(2),
	datac => led(3),
	datad => led(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~0_combout\);

-- Location: LC_X16_Y4_N5
\Mux2~0\ : maxii_lcell
-- Equation(s):
-- \Mux2~0_combout\ = (led(1) & (((!led(3) & led(0))))) # (!led(1) & ((led(2) & (!led(3))) # (!led(2) & ((led(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1f04",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => led(1),
	datab => led(2),
	datac => led(3),
	datad => led(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~0_combout\);

-- Location: LC_X16_Y4_N6
\Mux1~0\ : maxii_lcell
-- Equation(s):
-- \Mux1~0_combout\ = (led(1) & (!led(3) & ((led(0)) # (!led(2))))) # (!led(1) & (led(0) & (led(2) $ (!led(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4b02",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => led(1),
	datab => led(2),
	datac => led(3),
	datad => led(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~0_combout\);

-- Location: LC_X16_Y4_N9
\Mux0~0\ : maxii_lcell
-- Equation(s):
-- \Mux0~0_combout\ = (led(0) & ((led(3)) # (led(1) $ (led(2))))) # (!led(0) & ((led(1)) # (led(2) $ (led(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f6be",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => led(1),
	datab => led(2),
	datac => led(3),
	datad => led(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~0_combout\);

-- Location: LC_X16_Y6_N4
\reflash[0]\ : maxii_lcell
-- Equation(s):
-- reflash(0) = DFFEAS((((!reflash(0)))), GLOBAL(\Period1S~regout\), VCC, , \rst~combout\, , , , )

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
	clk => \Period1S~regout\,
	datad => reflash(0),
	aclr => GND,
	ena => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => reflash(0));

-- Location: LC_X16_Y6_N9
\reflash[1]\ : maxii_lcell
-- Equation(s):
-- reflash(1) = DFFEAS(reflash(1) $ (((\rst~combout\ & (reflash(0))))), GLOBAL(\Period1S~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6c6c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Period1S~regout\,
	dataa => \rst~combout\,
	datab => reflash(1),
	datac => reflash(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => reflash(1));

-- Location: LC_X16_Y6_N7
\Digit_Select[0]~reg0\ : maxii_lcell
-- Equation(s):
-- \Digit_Select[0]~reg0_regout\ = DFFEAS(((!reflash(1) & (!reflash(0)))), GLOBAL(\Period1S~regout\), VCC, , \rst~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0303",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Period1S~regout\,
	datab => reflash(1),
	datac => reflash(0),
	aclr => GND,
	ena => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Digit_Select[0]~reg0_regout\);

-- Location: LC_X16_Y6_N5
\Digit_Select[1]~reg0\ : maxii_lcell
-- Equation(s):
-- \Digit_Select[1]~reg0_regout\ = DFFEAS((((reflash(0) & !reflash(1)))), GLOBAL(\Period1S~regout\), VCC, , \rst~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Period1S~regout\,
	datac => reflash(0),
	datad => reflash(1),
	aclr => GND,
	ena => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Digit_Select[1]~reg0_regout\);

-- Location: LC_X16_Y6_N3
\Digit_Select[2]~reg0\ : maxii_lcell
-- Equation(s):
-- \Digit_Select[2]~reg0_regout\ = DFFEAS(((reflash(1) & (!reflash(0)))), GLOBAL(\Period1S~regout\), VCC, , \rst~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c0c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Period1S~regout\,
	datab => reflash(1),
	datac => reflash(0),
	aclr => GND,
	ena => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Digit_Select[2]~reg0_regout\);

-- Location: LC_X16_Y6_N8
\Digit_Select[3]~reg0\ : maxii_lcell
-- Equation(s):
-- \Digit_Select[3]~reg0_regout\ = DFFEAS(((reflash(1) & (reflash(0)))), GLOBAL(\Period1S~regout\), VCC, , \rst~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Period1S~regout\,
	datab => reflash(1),
	datac => reflash(0),
	aclr => GND,
	ena => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Digit_Select[3]~reg0_regout\);

-- Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led_Out[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux6~0\,
	oe => VCC,
	padio => ww_led_Out(0));

-- Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led_Out[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux5~0_combout\,
	oe => VCC,
	padio => ww_led_Out(1));

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led_Out[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux4~0_combout\,
	oe => VCC,
	padio => ww_led_Out(2));

-- Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led_Out[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux3~0_combout\,
	oe => VCC,
	padio => ww_led_Out(3));

-- Location: PIN_80,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led_Out[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux2~0_combout\,
	oe => VCC,
	padio => ww_led_Out(4));

-- Location: PIN_78,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led_Out[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux1~0_combout\,
	oe => VCC,
	padio => ww_led_Out(5));

-- Location: PIN_76,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led_Out[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux0~0_combout\,
	oe => VCC,
	padio => ww_led_Out(6));

-- Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led_Out[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_led_Out(7));

-- Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Digit_Select[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Digit_Select[0]~reg0_regout\,
	oe => VCC,
	padio => ww_Digit_Select(0));

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Digit_Select[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Digit_Select[1]~reg0_regout\,
	oe => VCC,
	padio => ww_Digit_Select(1));

-- Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Digit_Select[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Digit_Select[2]~reg0_regout\,
	oe => VCC,
	padio => ww_Digit_Select(2));

-- Location: PIN_95,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Digit_Select[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Digit_Select[3]~reg0_regout\,
	oe => VCC,
	padio => ww_Digit_Select(3));
END structure;


