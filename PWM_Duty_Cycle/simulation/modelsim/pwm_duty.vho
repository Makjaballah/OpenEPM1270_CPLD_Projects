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

-- DATE "09/16/2023 14:15:10"

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

ENTITY 	pwm_duty IS
    PORT (
	clk : IN std_logic;
	Duty_increase : IN std_logic;
	Duty_decrease : IN std_logic;
	pwm_out : OUT std_logic
	);
END pwm_duty;

-- Design Ports Information


ARCHITECTURE structure OF pwm_duty IS
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
SIGNAL ww_Duty_increase : std_logic;
SIGNAL ww_Duty_decrease : std_logic;
SIGNAL ww_pwm_out : std_logic;
SIGNAL \LessThan4~5\ : std_logic;
SIGNAL \stage1|Q~regout\ : std_logic;
SIGNAL \stage3|Q~regout\ : std_logic;
SIGNAL \LessThan4~10\ : std_logic;
SIGNAL \LessThan4~15\ : std_logic;
SIGNAL \LessThan4~20\ : std_logic;
SIGNAL \LessThan4~25\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \counter_pwm[0]~7\ : std_logic;
SIGNAL \counter_pwm[0]~7COUT1_13\ : std_logic;
SIGNAL \counter_pwm[1]~9\ : std_logic;
SIGNAL \counter_pwm[1]~9COUT1_14\ : std_logic;
SIGNAL \counter_pwm[2]~3\ : std_logic;
SIGNAL \counter_pwm[2]~3COUT1_15\ : std_logic;
SIGNAL \counter_pwm[3]~5\ : std_logic;
SIGNAL \LessThan3~0_combout\ : std_logic;
SIGNAL \LessThan3~1_combout\ : std_logic;
SIGNAL \counter_pwm[4]~11\ : std_logic;
SIGNAL \counter_pwm[4]~11COUT1_16\ : std_logic;
SIGNAL \Duty_increase~combout\ : std_logic;
SIGNAL \counter_slow[0]~41\ : std_logic;
SIGNAL \counter_slow[0]~41COUT1_57\ : std_logic;
SIGNAL \counter_slow[1]~51\ : std_logic;
SIGNAL \counter_slow[1]~51COUT1_58\ : std_logic;
SIGNAL \counter_slow[2]~53\ : std_logic;
SIGNAL \counter_slow[2]~53COUT1_59\ : std_logic;
SIGNAL \counter_slow[3]~55\ : std_logic;
SIGNAL \counter_slow[4]~49\ : std_logic;
SIGNAL \counter_slow[4]~49COUT1_60\ : std_logic;
SIGNAL \counter_slow[5]~25\ : std_logic;
SIGNAL \counter_slow[5]~25COUT1_61\ : std_logic;
SIGNAL \counter_slow[6]~27\ : std_logic;
SIGNAL \counter_slow[6]~27COUT1_62\ : std_logic;
SIGNAL \counter_slow[7]~29\ : std_logic;
SIGNAL \counter_slow[7]~29COUT1_63\ : std_logic;
SIGNAL \counter_slow[8]~31\ : std_logic;
SIGNAL \counter_slow[9]~33\ : std_logic;
SIGNAL \counter_slow[9]~33COUT1_64\ : std_logic;
SIGNAL \counter_slow[10]~35\ : std_logic;
SIGNAL \counter_slow[10]~35COUT1_65\ : std_logic;
SIGNAL \counter_slow[11]~37\ : std_logic;
SIGNAL \counter_slow[11]~37COUT1_66\ : std_logic;
SIGNAL \counter_slow[12]~39\ : std_logic;
SIGNAL \counter_slow[12]~39COUT1_67\ : std_logic;
SIGNAL \counter_slow[13]~43\ : std_logic;
SIGNAL \counter_slow[14]~21\ : std_logic;
SIGNAL \counter_slow[14]~21COUT1_68\ : std_logic;
SIGNAL \counter_slow[15]~45\ : std_logic;
SIGNAL \counter_slow[15]~45COUT1_69\ : std_logic;
SIGNAL \counter_slow[16]~3\ : std_logic;
SIGNAL \counter_slow[16]~3COUT1_70\ : std_logic;
SIGNAL \counter_slow[17]~5\ : std_logic;
SIGNAL \counter_slow[17]~5COUT1_71\ : std_logic;
SIGNAL \counter_slow[18]~7\ : std_logic;
SIGNAL \counter_slow[19]~9\ : std_logic;
SIGNAL \counter_slow[19]~9COUT1_72\ : std_logic;
SIGNAL \counter_slow[20]~1\ : std_logic;
SIGNAL \counter_slow[20]~1COUT1_73\ : std_logic;
SIGNAL \counter_slow[21]~47\ : std_logic;
SIGNAL \counter_slow[21]~47COUT1_74\ : std_logic;
SIGNAL \counter_slow[22]~23\ : std_logic;
SIGNAL \counter_slow[22]~23COUT1_75\ : std_logic;
SIGNAL \counter_slow[23]~11\ : std_logic;
SIGNAL \counter_slow[24]~13\ : std_logic;
SIGNAL \counter_slow[24]~13COUT1_76\ : std_logic;
SIGNAL \counter_slow[25]~17\ : std_logic;
SIGNAL \counter_slow[25]~17COUT1_77\ : std_logic;
SIGNAL \counter_slow[26]~19\ : std_logic;
SIGNAL \counter_slow[26]~19COUT1_78\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \stage0|Q~regout\ : std_logic;
SIGNAL \Duty_decrease~combout\ : std_logic;
SIGNAL \stage2|Q~regout\ : std_logic;
SIGNAL \Duty_cycle[0]~3\ : std_logic;
SIGNAL \Duty_cycle[0]~3COUT1_15\ : std_logic;
SIGNAL \Duty_cycle[1]~5\ : std_logic;
SIGNAL \Duty_cycle[1]~5COUT1_16\ : std_logic;
SIGNAL \Duty_cycle[2]~7\ : std_logic;
SIGNAL \Duty_cycle[2]~7COUT1_17\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \Duty_cycle~12\ : std_logic;
SIGNAL \Duty_cycle~13\ : std_logic;
SIGNAL \Duty_cycle[3]~9\ : std_logic;
SIGNAL \process_1~0_combout\ : std_logic;
SIGNAL \process_1~1_combout\ : std_logic;
SIGNAL \process_1~2\ : std_logic;
SIGNAL \Duty_cycle[4]~11\ : std_logic;
SIGNAL \Duty_cycle[4]~11COUT1_18\ : std_logic;
SIGNAL \LessThan4~27_cout0\ : std_logic;
SIGNAL \LessThan4~27COUT1_31\ : std_logic;
SIGNAL \LessThan4~22_cout0\ : std_logic;
SIGNAL \LessThan4~22COUT1_32\ : std_logic;
SIGNAL \LessThan4~17_cout0\ : std_logic;
SIGNAL \LessThan4~17COUT1_33\ : std_logic;
SIGNAL \LessThan4~12_cout\ : std_logic;
SIGNAL \LessThan4~7_cout0\ : std_logic;
SIGNAL \LessThan4~7COUT1_34\ : std_logic;
SIGNAL \LessThan4~0_combout\ : std_logic;
SIGNAL counter_slow : std_logic_vector(27 DOWNTO 0);
SIGNAL Duty_cycle : std_logic_vector(5 DOWNTO 0);
SIGNAL counter_pwm : std_logic_vector(5 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_Duty_increase <= Duty_increase;
ww_Duty_decrease <= Duty_decrease;
pwm_out <= ww_pwm_out;
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

-- Location: LC_X6_Y5_N1
\counter_pwm[0]\ : maxii_lcell
-- Equation(s):
-- counter_pwm(0) = DFFEAS(((!counter_pwm(0))), GLOBAL(\clk~combout\), VCC, , , , , \LessThan3~1_combout\, )
-- \counter_pwm[0]~7\ = CARRY(((counter_pwm(0))))
-- \counter_pwm[0]~7COUT1_13\ = CARRY(((counter_pwm(0))))

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
	datab => counter_pwm(0),
	aclr => GND,
	sclr => \LessThan3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_pwm(0),
	cout0 => \counter_pwm[0]~7\,
	cout1 => \counter_pwm[0]~7COUT1_13\);

-- Location: LC_X6_Y5_N2
\counter_pwm[1]\ : maxii_lcell
-- Equation(s):
-- counter_pwm(1) = DFFEAS((counter_pwm(1) $ ((\counter_pwm[0]~7\))), GLOBAL(\clk~combout\), VCC, , , , , \LessThan3~1_combout\, )
-- \counter_pwm[1]~9\ = CARRY(((!\counter_pwm[0]~7\) # (!counter_pwm(1))))
-- \counter_pwm[1]~9COUT1_14\ = CARRY(((!\counter_pwm[0]~7COUT1_13\) # (!counter_pwm(1))))

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
	datab => counter_pwm(1),
	aclr => GND,
	sclr => \LessThan3~1_combout\,
	cin0 => \counter_pwm[0]~7\,
	cin1 => \counter_pwm[0]~7COUT1_13\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_pwm(1),
	cout0 => \counter_pwm[1]~9\,
	cout1 => \counter_pwm[1]~9COUT1_14\);

-- Location: LC_X6_Y5_N3
\counter_pwm[2]\ : maxii_lcell
-- Equation(s):
-- counter_pwm(2) = DFFEAS(counter_pwm(2) $ ((((!\counter_pwm[1]~9\)))), GLOBAL(\clk~combout\), VCC, , , , , \LessThan3~1_combout\, )
-- \counter_pwm[2]~3\ = CARRY((counter_pwm(2) & ((!\counter_pwm[1]~9\))))
-- \counter_pwm[2]~3COUT1_15\ = CARRY((counter_pwm(2) & ((!\counter_pwm[1]~9COUT1_14\))))

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
	dataa => counter_pwm(2),
	aclr => GND,
	sclr => \LessThan3~1_combout\,
	cin0 => \counter_pwm[1]~9\,
	cin1 => \counter_pwm[1]~9COUT1_14\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_pwm(2),
	cout0 => \counter_pwm[2]~3\,
	cout1 => \counter_pwm[2]~3COUT1_15\);

-- Location: LC_X6_Y5_N4
\counter_pwm[3]\ : maxii_lcell
-- Equation(s):
-- counter_pwm(3) = DFFEAS((counter_pwm(3) $ ((\counter_pwm[2]~3\))), GLOBAL(\clk~combout\), VCC, , , , , \LessThan3~1_combout\, )
-- \counter_pwm[3]~5\ = CARRY(((!\counter_pwm[2]~3COUT1_15\) # (!counter_pwm(3))))

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
	datab => counter_pwm(3),
	aclr => GND,
	sclr => \LessThan3~1_combout\,
	cin0 => \counter_pwm[2]~3\,
	cin1 => \counter_pwm[2]~3COUT1_15\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_pwm(3),
	cout => \counter_pwm[3]~5\);

-- Location: LC_X6_Y5_N5
\counter_pwm[4]\ : maxii_lcell
-- Equation(s):
-- counter_pwm(4) = DFFEAS(counter_pwm(4) $ ((((!\counter_pwm[3]~5\)))), GLOBAL(\clk~combout\), VCC, , , , , \LessThan3~1_combout\, )
-- \counter_pwm[4]~11\ = CARRY((counter_pwm(4) & ((!\counter_pwm[3]~5\))))
-- \counter_pwm[4]~11COUT1_16\ = CARRY((counter_pwm(4) & ((!\counter_pwm[3]~5\))))

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
	dataa => counter_pwm(4),
	aclr => GND,
	sclr => \LessThan3~1_combout\,
	cin => \counter_pwm[3]~5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_pwm(4),
	cout0 => \counter_pwm[4]~11\,
	cout1 => \counter_pwm[4]~11COUT1_16\);

-- Location: LC_X6_Y5_N7
\LessThan3~0\ : maxii_lcell
-- Equation(s):
-- \LessThan3~0_combout\ = (counter_pwm(2)) # ((counter_pwm(3)) # ((counter_pwm(0) & counter_pwm(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fefa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => counter_pwm(2),
	datab => counter_pwm(0),
	datac => counter_pwm(3),
	datad => counter_pwm(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan3~0_combout\);

-- Location: LC_X6_Y5_N8
\LessThan3~1\ : maxii_lcell
-- Equation(s):
-- \LessThan3~1_combout\ = (counter_pwm(5) & (((counter_pwm(4) & \LessThan3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => counter_pwm(5),
	datac => counter_pwm(4),
	datad => \LessThan3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan3~1_combout\);

-- Location: LC_X6_Y5_N6
\counter_pwm[5]\ : maxii_lcell
-- Equation(s):
-- counter_pwm(5) = DFFEAS(counter_pwm(5) $ (((((!\counter_pwm[3]~5\ & \counter_pwm[4]~11\) # (\counter_pwm[3]~5\ & \counter_pwm[4]~11COUT1_16\))))), GLOBAL(\clk~combout\), VCC, , , , , \LessThan3~1_combout\, )

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
	dataa => counter_pwm(5),
	aclr => GND,
	sclr => \LessThan3~1_combout\,
	cin => \counter_pwm[3]~5\,
	cin0 => \counter_pwm[4]~11\,
	cin1 => \counter_pwm[4]~11COUT1_16\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_pwm(5));

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Duty_increase~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Duty_increase,
	combout => \Duty_increase~combout\);

-- Location: LC_X8_Y6_N1
\counter_slow[0]\ : maxii_lcell
-- Equation(s):
-- counter_slow(0) = DFFEAS(((!counter_slow(0))), GLOBAL(\clk~combout\), VCC, , , , , \LessThan0~2_combout\, )
-- \counter_slow[0]~41\ = CARRY(((counter_slow(0))))
-- \counter_slow[0]~41COUT1_57\ = CARRY(((counter_slow(0))))

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
	aclr => GND,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_slow(0),
	cout0 => \counter_slow[0]~41\,
	cout1 => \counter_slow[0]~41COUT1_57\);

-- Location: LC_X8_Y6_N2
\counter_slow[1]\ : maxii_lcell
-- Equation(s):
-- counter_slow(1) = DFFEAS((counter_slow(1) $ ((\counter_slow[0]~41\))), GLOBAL(\clk~combout\), VCC, , , , , \LessThan0~2_combout\, )
-- \counter_slow[1]~51\ = CARRY(((!\counter_slow[0]~41\) # (!counter_slow(1))))
-- \counter_slow[1]~51COUT1_58\ = CARRY(((!\counter_slow[0]~41COUT1_57\) # (!counter_slow(1))))

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
	aclr => GND,
	sclr => \LessThan0~2_combout\,
	cin0 => \counter_slow[0]~41\,
	cin1 => \counter_slow[0]~41COUT1_57\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_slow(1),
	cout0 => \counter_slow[1]~51\,
	cout1 => \counter_slow[1]~51COUT1_58\);

-- Location: LC_X8_Y6_N3
\counter_slow[2]\ : maxii_lcell
-- Equation(s):
-- counter_slow(2) = DFFEAS(counter_slow(2) $ ((((!\counter_slow[1]~51\)))), GLOBAL(\clk~combout\), VCC, , , , , \LessThan0~2_combout\, )
-- \counter_slow[2]~53\ = CARRY((counter_slow(2) & ((!\counter_slow[1]~51\))))
-- \counter_slow[2]~53COUT1_59\ = CARRY((counter_slow(2) & ((!\counter_slow[1]~51COUT1_58\))))

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
	aclr => GND,
	sclr => \LessThan0~2_combout\,
	cin0 => \counter_slow[1]~51\,
	cin1 => \counter_slow[1]~51COUT1_58\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_slow(2),
	cout0 => \counter_slow[2]~53\,
	cout1 => \counter_slow[2]~53COUT1_59\);

-- Location: LC_X8_Y6_N4
\counter_slow[3]\ : maxii_lcell
-- Equation(s):
-- counter_slow(3) = DFFEAS(counter_slow(3) $ ((((\counter_slow[2]~53\)))), GLOBAL(\clk~combout\), VCC, , , , , \LessThan0~2_combout\, )
-- \counter_slow[3]~55\ = CARRY(((!\counter_slow[2]~53COUT1_59\)) # (!counter_slow(3)))

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
	dataa => counter_slow(3),
	aclr => GND,
	sclr => \LessThan0~2_combout\,
	cin0 => \counter_slow[2]~53\,
	cin1 => \counter_slow[2]~53COUT1_59\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_slow(3),
	cout => \counter_slow[3]~55\);

-- Location: LC_X8_Y6_N5
\counter_slow[4]\ : maxii_lcell
-- Equation(s):
-- counter_slow(4) = DFFEAS(counter_slow(4) $ ((((!\counter_slow[3]~55\)))), GLOBAL(\clk~combout\), VCC, , , , , \LessThan0~2_combout\, )
-- \counter_slow[4]~49\ = CARRY((counter_slow(4) & ((!\counter_slow[3]~55\))))
-- \counter_slow[4]~49COUT1_60\ = CARRY((counter_slow(4) & ((!\counter_slow[3]~55\))))

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
	aclr => GND,
	sclr => \LessThan0~2_combout\,
	cin => \counter_slow[3]~55\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_slow(4),
	cout0 => \counter_slow[4]~49\,
	cout1 => \counter_slow[4]~49COUT1_60\);

-- Location: LC_X8_Y6_N6
\counter_slow[5]\ : maxii_lcell
-- Equation(s):
-- counter_slow(5) = DFFEAS(counter_slow(5) $ (((((!\counter_slow[3]~55\ & \counter_slow[4]~49\) # (\counter_slow[3]~55\ & \counter_slow[4]~49COUT1_60\))))), GLOBAL(\clk~combout\), VCC, , , , , \LessThan0~2_combout\, )
-- \counter_slow[5]~25\ = CARRY(((!\counter_slow[4]~49\)) # (!counter_slow(5)))
-- \counter_slow[5]~25COUT1_61\ = CARRY(((!\counter_slow[4]~49COUT1_60\)) # (!counter_slow(5)))

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
	aclr => GND,
	sclr => \LessThan0~2_combout\,
	cin => \counter_slow[3]~55\,
	cin0 => \counter_slow[4]~49\,
	cin1 => \counter_slow[4]~49COUT1_60\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_slow(5),
	cout0 => \counter_slow[5]~25\,
	cout1 => \counter_slow[5]~25COUT1_61\);

-- Location: LC_X8_Y6_N7
\counter_slow[6]\ : maxii_lcell
-- Equation(s):
-- counter_slow(6) = DFFEAS((counter_slow(6) $ ((!(!\counter_slow[3]~55\ & \counter_slow[5]~25\) # (\counter_slow[3]~55\ & \counter_slow[5]~25COUT1_61\)))), GLOBAL(\clk~combout\), VCC, , , , , \LessThan0~2_combout\, )
-- \counter_slow[6]~27\ = CARRY(((counter_slow(6) & !\counter_slow[5]~25\)))
-- \counter_slow[6]~27COUT1_62\ = CARRY(((counter_slow(6) & !\counter_slow[5]~25COUT1_61\)))

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
	aclr => GND,
	sclr => \LessThan0~2_combout\,
	cin => \counter_slow[3]~55\,
	cin0 => \counter_slow[5]~25\,
	cin1 => \counter_slow[5]~25COUT1_61\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_slow(6),
	cout0 => \counter_slow[6]~27\,
	cout1 => \counter_slow[6]~27COUT1_62\);

-- Location: LC_X8_Y6_N8
\counter_slow[7]\ : maxii_lcell
-- Equation(s):
-- counter_slow(7) = DFFEAS(counter_slow(7) $ (((((!\counter_slow[3]~55\ & \counter_slow[6]~27\) # (\counter_slow[3]~55\ & \counter_slow[6]~27COUT1_62\))))), GLOBAL(\clk~combout\), VCC, , , , , \LessThan0~2_combout\, )
-- \counter_slow[7]~29\ = CARRY(((!\counter_slow[6]~27\)) # (!counter_slow(7)))
-- \counter_slow[7]~29COUT1_63\ = CARRY(((!\counter_slow[6]~27COUT1_62\)) # (!counter_slow(7)))

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
	aclr => GND,
	sclr => \LessThan0~2_combout\,
	cin => \counter_slow[3]~55\,
	cin0 => \counter_slow[6]~27\,
	cin1 => \counter_slow[6]~27COUT1_62\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_slow(7),
	cout0 => \counter_slow[7]~29\,
	cout1 => \counter_slow[7]~29COUT1_63\);

-- Location: LC_X8_Y6_N9
\counter_slow[8]\ : maxii_lcell
-- Equation(s):
-- counter_slow(8) = DFFEAS((counter_slow(8) $ ((!(!\counter_slow[3]~55\ & \counter_slow[7]~29\) # (\counter_slow[3]~55\ & \counter_slow[7]~29COUT1_63\)))), GLOBAL(\clk~combout\), VCC, , , , , \LessThan0~2_combout\, )
-- \counter_slow[8]~31\ = CARRY(((counter_slow(8) & !\counter_slow[7]~29COUT1_63\)))

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
	aclr => GND,
	sclr => \LessThan0~2_combout\,
	cin => \counter_slow[3]~55\,
	cin0 => \counter_slow[7]~29\,
	cin1 => \counter_slow[7]~29COUT1_63\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_slow(8),
	cout => \counter_slow[8]~31\);

-- Location: LC_X9_Y6_N0
\counter_slow[9]\ : maxii_lcell
-- Equation(s):
-- counter_slow(9) = DFFEAS((counter_slow(9) $ ((\counter_slow[8]~31\))), GLOBAL(\clk~combout\), VCC, , , , , \LessThan0~2_combout\, )
-- \counter_slow[9]~33\ = CARRY(((!\counter_slow[8]~31\) # (!counter_slow(9))))
-- \counter_slow[9]~33COUT1_64\ = CARRY(((!\counter_slow[8]~31\) # (!counter_slow(9))))

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
	aclr => GND,
	sclr => \LessThan0~2_combout\,
	cin => \counter_slow[8]~31\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_slow(9),
	cout0 => \counter_slow[9]~33\,
	cout1 => \counter_slow[9]~33COUT1_64\);

-- Location: LC_X9_Y6_N1
\counter_slow[10]\ : maxii_lcell
-- Equation(s):
-- counter_slow(10) = DFFEAS((counter_slow(10) $ ((!(!\counter_slow[8]~31\ & \counter_slow[9]~33\) # (\counter_slow[8]~31\ & \counter_slow[9]~33COUT1_64\)))), GLOBAL(\clk~combout\), VCC, , , , , \LessThan0~2_combout\, )
-- \counter_slow[10]~35\ = CARRY(((counter_slow(10) & !\counter_slow[9]~33\)))
-- \counter_slow[10]~35COUT1_65\ = CARRY(((counter_slow(10) & !\counter_slow[9]~33COUT1_64\)))

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
	aclr => GND,
	sclr => \LessThan0~2_combout\,
	cin => \counter_slow[8]~31\,
	cin0 => \counter_slow[9]~33\,
	cin1 => \counter_slow[9]~33COUT1_64\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_slow(10),
	cout0 => \counter_slow[10]~35\,
	cout1 => \counter_slow[10]~35COUT1_65\);

-- Location: LC_X9_Y6_N2
\counter_slow[11]\ : maxii_lcell
-- Equation(s):
-- counter_slow(11) = DFFEAS((counter_slow(11) $ (((!\counter_slow[8]~31\ & \counter_slow[10]~35\) # (\counter_slow[8]~31\ & \counter_slow[10]~35COUT1_65\)))), GLOBAL(\clk~combout\), VCC, , , , , \LessThan0~2_combout\, )
-- \counter_slow[11]~37\ = CARRY(((!\counter_slow[10]~35\) # (!counter_slow(11))))
-- \counter_slow[11]~37COUT1_66\ = CARRY(((!\counter_slow[10]~35COUT1_65\) # (!counter_slow(11))))

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
	aclr => GND,
	sclr => \LessThan0~2_combout\,
	cin => \counter_slow[8]~31\,
	cin0 => \counter_slow[10]~35\,
	cin1 => \counter_slow[10]~35COUT1_65\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_slow(11),
	cout0 => \counter_slow[11]~37\,
	cout1 => \counter_slow[11]~37COUT1_66\);

-- Location: LC_X9_Y6_N3
\counter_slow[12]\ : maxii_lcell
-- Equation(s):
-- counter_slow(12) = DFFEAS(counter_slow(12) $ ((((!(!\counter_slow[8]~31\ & \counter_slow[11]~37\) # (\counter_slow[8]~31\ & \counter_slow[11]~37COUT1_66\))))), GLOBAL(\clk~combout\), VCC, , , , , \LessThan0~2_combout\, )
-- \counter_slow[12]~39\ = CARRY((counter_slow(12) & ((!\counter_slow[11]~37\))))
-- \counter_slow[12]~39COUT1_67\ = CARRY((counter_slow(12) & ((!\counter_slow[11]~37COUT1_66\))))

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
	aclr => GND,
	sclr => \LessThan0~2_combout\,
	cin => \counter_slow[8]~31\,
	cin0 => \counter_slow[11]~37\,
	cin1 => \counter_slow[11]~37COUT1_66\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_slow(12),
	cout0 => \counter_slow[12]~39\,
	cout1 => \counter_slow[12]~39COUT1_67\);

-- Location: LC_X9_Y6_N4
\counter_slow[13]\ : maxii_lcell
-- Equation(s):
-- counter_slow(13) = DFFEAS(counter_slow(13) $ (((((!\counter_slow[8]~31\ & \counter_slow[12]~39\) # (\counter_slow[8]~31\ & \counter_slow[12]~39COUT1_67\))))), GLOBAL(\clk~combout\), VCC, , , , , \LessThan0~2_combout\, )
-- \counter_slow[13]~43\ = CARRY(((!\counter_slow[12]~39COUT1_67\)) # (!counter_slow(13)))

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
	aclr => GND,
	sclr => \LessThan0~2_combout\,
	cin => \counter_slow[8]~31\,
	cin0 => \counter_slow[12]~39\,
	cin1 => \counter_slow[12]~39COUT1_67\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_slow(13),
	cout => \counter_slow[13]~43\);

-- Location: LC_X9_Y6_N5
\counter_slow[14]\ : maxii_lcell
-- Equation(s):
-- counter_slow(14) = DFFEAS(counter_slow(14) $ ((((!\counter_slow[13]~43\)))), GLOBAL(\clk~combout\), VCC, , , , , \LessThan0~2_combout\, )
-- \counter_slow[14]~21\ = CARRY((counter_slow(14) & ((!\counter_slow[13]~43\))))
-- \counter_slow[14]~21COUT1_68\ = CARRY((counter_slow(14) & ((!\counter_slow[13]~43\))))

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
	aclr => GND,
	sclr => \LessThan0~2_combout\,
	cin => \counter_slow[13]~43\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_slow(14),
	cout0 => \counter_slow[14]~21\,
	cout1 => \counter_slow[14]~21COUT1_68\);

-- Location: LC_X9_Y6_N6
\counter_slow[15]\ : maxii_lcell
-- Equation(s):
-- counter_slow(15) = DFFEAS(counter_slow(15) $ (((((!\counter_slow[13]~43\ & \counter_slow[14]~21\) # (\counter_slow[13]~43\ & \counter_slow[14]~21COUT1_68\))))), GLOBAL(\clk~combout\), VCC, , , , , \LessThan0~2_combout\, )
-- \counter_slow[15]~45\ = CARRY(((!\counter_slow[14]~21\)) # (!counter_slow(15)))
-- \counter_slow[15]~45COUT1_69\ = CARRY(((!\counter_slow[14]~21COUT1_68\)) # (!counter_slow(15)))

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
	aclr => GND,
	sclr => \LessThan0~2_combout\,
	cin => \counter_slow[13]~43\,
	cin0 => \counter_slow[14]~21\,
	cin1 => \counter_slow[14]~21COUT1_68\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_slow(15),
	cout0 => \counter_slow[15]~45\,
	cout1 => \counter_slow[15]~45COUT1_69\);

-- Location: LC_X9_Y6_N7
\counter_slow[16]\ : maxii_lcell
-- Equation(s):
-- counter_slow(16) = DFFEAS((counter_slow(16) $ ((!(!\counter_slow[13]~43\ & \counter_slow[15]~45\) # (\counter_slow[13]~43\ & \counter_slow[15]~45COUT1_69\)))), GLOBAL(\clk~combout\), VCC, , , , , \LessThan0~2_combout\, )
-- \counter_slow[16]~3\ = CARRY(((counter_slow(16) & !\counter_slow[15]~45\)))
-- \counter_slow[16]~3COUT1_70\ = CARRY(((counter_slow(16) & !\counter_slow[15]~45COUT1_69\)))

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
	aclr => GND,
	sclr => \LessThan0~2_combout\,
	cin => \counter_slow[13]~43\,
	cin0 => \counter_slow[15]~45\,
	cin1 => \counter_slow[15]~45COUT1_69\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_slow(16),
	cout0 => \counter_slow[16]~3\,
	cout1 => \counter_slow[16]~3COUT1_70\);

-- Location: LC_X9_Y6_N8
\counter_slow[17]\ : maxii_lcell
-- Equation(s):
-- counter_slow(17) = DFFEAS(counter_slow(17) $ (((((!\counter_slow[13]~43\ & \counter_slow[16]~3\) # (\counter_slow[13]~43\ & \counter_slow[16]~3COUT1_70\))))), GLOBAL(\clk~combout\), VCC, , , , , \LessThan0~2_combout\, )
-- \counter_slow[17]~5\ = CARRY(((!\counter_slow[16]~3\)) # (!counter_slow(17)))
-- \counter_slow[17]~5COUT1_71\ = CARRY(((!\counter_slow[16]~3COUT1_70\)) # (!counter_slow(17)))

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
	aclr => GND,
	sclr => \LessThan0~2_combout\,
	cin => \counter_slow[13]~43\,
	cin0 => \counter_slow[16]~3\,
	cin1 => \counter_slow[16]~3COUT1_70\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_slow(17),
	cout0 => \counter_slow[17]~5\,
	cout1 => \counter_slow[17]~5COUT1_71\);

-- Location: LC_X9_Y6_N9
\counter_slow[18]\ : maxii_lcell
-- Equation(s):
-- counter_slow(18) = DFFEAS((counter_slow(18) $ ((!(!\counter_slow[13]~43\ & \counter_slow[17]~5\) # (\counter_slow[13]~43\ & \counter_slow[17]~5COUT1_71\)))), GLOBAL(\clk~combout\), VCC, , , , , \LessThan0~2_combout\, )
-- \counter_slow[18]~7\ = CARRY(((counter_slow(18) & !\counter_slow[17]~5COUT1_71\)))

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
	aclr => GND,
	sclr => \LessThan0~2_combout\,
	cin => \counter_slow[13]~43\,
	cin0 => \counter_slow[17]~5\,
	cin1 => \counter_slow[17]~5COUT1_71\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_slow(18),
	cout => \counter_slow[18]~7\);

-- Location: LC_X10_Y6_N0
\counter_slow[19]\ : maxii_lcell
-- Equation(s):
-- counter_slow(19) = DFFEAS((counter_slow(19) $ ((\counter_slow[18]~7\))), GLOBAL(\clk~combout\), VCC, , , , , \LessThan0~2_combout\, )
-- \counter_slow[19]~9\ = CARRY(((!\counter_slow[18]~7\) # (!counter_slow(19))))
-- \counter_slow[19]~9COUT1_72\ = CARRY(((!\counter_slow[18]~7\) # (!counter_slow(19))))

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
	aclr => GND,
	sclr => \LessThan0~2_combout\,
	cin => \counter_slow[18]~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_slow(19),
	cout0 => \counter_slow[19]~9\,
	cout1 => \counter_slow[19]~9COUT1_72\);

-- Location: LC_X10_Y6_N1
\counter_slow[20]\ : maxii_lcell
-- Equation(s):
-- counter_slow(20) = DFFEAS((counter_slow(20) $ ((!(!\counter_slow[18]~7\ & \counter_slow[19]~9\) # (\counter_slow[18]~7\ & \counter_slow[19]~9COUT1_72\)))), GLOBAL(\clk~combout\), VCC, , , , , \LessThan0~2_combout\, )
-- \counter_slow[20]~1\ = CARRY(((counter_slow(20) & !\counter_slow[19]~9\)))
-- \counter_slow[20]~1COUT1_73\ = CARRY(((counter_slow(20) & !\counter_slow[19]~9COUT1_72\)))

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
	aclr => GND,
	sclr => \LessThan0~2_combout\,
	cin => \counter_slow[18]~7\,
	cin0 => \counter_slow[19]~9\,
	cin1 => \counter_slow[19]~9COUT1_72\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_slow(20),
	cout0 => \counter_slow[20]~1\,
	cout1 => \counter_slow[20]~1COUT1_73\);

-- Location: LC_X10_Y6_N2
\counter_slow[21]\ : maxii_lcell
-- Equation(s):
-- counter_slow(21) = DFFEAS((counter_slow(21) $ (((!\counter_slow[18]~7\ & \counter_slow[20]~1\) # (\counter_slow[18]~7\ & \counter_slow[20]~1COUT1_73\)))), GLOBAL(\clk~combout\), VCC, , , , , \LessThan0~2_combout\, )
-- \counter_slow[21]~47\ = CARRY(((!\counter_slow[20]~1\) # (!counter_slow(21))))
-- \counter_slow[21]~47COUT1_74\ = CARRY(((!\counter_slow[20]~1COUT1_73\) # (!counter_slow(21))))

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
	aclr => GND,
	sclr => \LessThan0~2_combout\,
	cin => \counter_slow[18]~7\,
	cin0 => \counter_slow[20]~1\,
	cin1 => \counter_slow[20]~1COUT1_73\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_slow(21),
	cout0 => \counter_slow[21]~47\,
	cout1 => \counter_slow[21]~47COUT1_74\);

-- Location: LC_X10_Y6_N3
\counter_slow[22]\ : maxii_lcell
-- Equation(s):
-- counter_slow(22) = DFFEAS(counter_slow(22) $ ((((!(!\counter_slow[18]~7\ & \counter_slow[21]~47\) # (\counter_slow[18]~7\ & \counter_slow[21]~47COUT1_74\))))), GLOBAL(\clk~combout\), VCC, , , , , \LessThan0~2_combout\, )
-- \counter_slow[22]~23\ = CARRY((counter_slow(22) & ((!\counter_slow[21]~47\))))
-- \counter_slow[22]~23COUT1_75\ = CARRY((counter_slow(22) & ((!\counter_slow[21]~47COUT1_74\))))

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
	aclr => GND,
	sclr => \LessThan0~2_combout\,
	cin => \counter_slow[18]~7\,
	cin0 => \counter_slow[21]~47\,
	cin1 => \counter_slow[21]~47COUT1_74\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_slow(22),
	cout0 => \counter_slow[22]~23\,
	cout1 => \counter_slow[22]~23COUT1_75\);

-- Location: LC_X10_Y6_N4
\counter_slow[23]\ : maxii_lcell
-- Equation(s):
-- counter_slow(23) = DFFEAS(counter_slow(23) $ (((((!\counter_slow[18]~7\ & \counter_slow[22]~23\) # (\counter_slow[18]~7\ & \counter_slow[22]~23COUT1_75\))))), GLOBAL(\clk~combout\), VCC, , , , , \LessThan0~2_combout\, )
-- \counter_slow[23]~11\ = CARRY(((!\counter_slow[22]~23COUT1_75\)) # (!counter_slow(23)))

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
	dataa => counter_slow(23),
	aclr => GND,
	sclr => \LessThan0~2_combout\,
	cin => \counter_slow[18]~7\,
	cin0 => \counter_slow[22]~23\,
	cin1 => \counter_slow[22]~23COUT1_75\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_slow(23),
	cout => \counter_slow[23]~11\);

-- Location: LC_X10_Y6_N5
\counter_slow[24]\ : maxii_lcell
-- Equation(s):
-- counter_slow(24) = DFFEAS(counter_slow(24) $ ((((!\counter_slow[23]~11\)))), GLOBAL(\clk~combout\), VCC, , , , , \LessThan0~2_combout\, )
-- \counter_slow[24]~13\ = CARRY((counter_slow(24) & ((!\counter_slow[23]~11\))))
-- \counter_slow[24]~13COUT1_76\ = CARRY((counter_slow(24) & ((!\counter_slow[23]~11\))))

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
	aclr => GND,
	sclr => \LessThan0~2_combout\,
	cin => \counter_slow[23]~11\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_slow(24),
	cout0 => \counter_slow[24]~13\,
	cout1 => \counter_slow[24]~13COUT1_76\);

-- Location: LC_X10_Y6_N6
\counter_slow[25]\ : maxii_lcell
-- Equation(s):
-- counter_slow(25) = DFFEAS(counter_slow(25) $ (((((!\counter_slow[23]~11\ & \counter_slow[24]~13\) # (\counter_slow[23]~11\ & \counter_slow[24]~13COUT1_76\))))), GLOBAL(\clk~combout\), VCC, , , , , \LessThan0~2_combout\, )
-- \counter_slow[25]~17\ = CARRY(((!\counter_slow[24]~13\)) # (!counter_slow(25)))
-- \counter_slow[25]~17COUT1_77\ = CARRY(((!\counter_slow[24]~13COUT1_76\)) # (!counter_slow(25)))

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
	aclr => GND,
	sclr => \LessThan0~2_combout\,
	cin => \counter_slow[23]~11\,
	cin0 => \counter_slow[24]~13\,
	cin1 => \counter_slow[24]~13COUT1_76\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_slow(25),
	cout0 => \counter_slow[25]~17\,
	cout1 => \counter_slow[25]~17COUT1_77\);

-- Location: LC_X10_Y6_N7
\counter_slow[26]\ : maxii_lcell
-- Equation(s):
-- counter_slow(26) = DFFEAS((counter_slow(26) $ ((!(!\counter_slow[23]~11\ & \counter_slow[25]~17\) # (\counter_slow[23]~11\ & \counter_slow[25]~17COUT1_77\)))), GLOBAL(\clk~combout\), VCC, , , , , \LessThan0~2_combout\, )
-- \counter_slow[26]~19\ = CARRY(((counter_slow(26) & !\counter_slow[25]~17\)))
-- \counter_slow[26]~19COUT1_78\ = CARRY(((counter_slow(26) & !\counter_slow[25]~17COUT1_77\)))

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
	aclr => GND,
	sclr => \LessThan0~2_combout\,
	cin => \counter_slow[23]~11\,
	cin0 => \counter_slow[25]~17\,
	cin1 => \counter_slow[25]~17COUT1_77\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_slow(26),
	cout0 => \counter_slow[26]~19\,
	cout1 => \counter_slow[26]~19COUT1_78\);

-- Location: LC_X10_Y6_N8
\counter_slow[27]\ : maxii_lcell
-- Equation(s):
-- counter_slow(27) = DFFEAS((((!\counter_slow[23]~11\ & \counter_slow[26]~19\) # (\counter_slow[23]~11\ & \counter_slow[26]~19COUT1_78\) $ (counter_slow(27)))), GLOBAL(\clk~combout\), VCC, , , , , \LessThan0~2_combout\, )

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
	aclr => GND,
	sclr => \LessThan0~2_combout\,
	cin => \counter_slow[23]~11\,
	cin0 => \counter_slow[26]~19\,
	cin1 => \counter_slow[26]~19COUT1_78\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_slow(27));

-- Location: LC_X10_Y6_N9
\Equal0~2\ : maxii_lcell
-- Equation(s):
-- \Equal0~2_combout\ = (((!counter_slow(24) & !counter_slow(23))))

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
	combout => \Equal0~2_combout\);

-- Location: LC_X7_Y6_N7
\Equal0~3\ : maxii_lcell
-- Equation(s):
-- \Equal0~3_combout\ = (!counter_slow(26) & (!counter_slow(27) & (!counter_slow(25) & \Equal0~2_combout\)))

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
	dataa => counter_slow(26),
	datab => counter_slow(27),
	datac => counter_slow(25),
	datad => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~3_combout\);

-- Location: LC_X6_Y6_N0
\Equal0~0\ : maxii_lcell
-- Equation(s):
-- \Equal0~0_combout\ = (((counter_slow(17) & counter_slow(16))))

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
	datac => counter_slow(17),
	datad => counter_slow(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~0_combout\);

-- Location: LC_X6_Y6_N9
\Equal0~1\ : maxii_lcell
-- Equation(s):
-- \Equal0~1_combout\ = (counter_slow(18) & (counter_slow(19) & (\Equal0~0_combout\ & counter_slow(20))))

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
	dataa => counter_slow(18),
	datab => counter_slow(19),
	datac => \Equal0~0_combout\,
	datad => counter_slow(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~1_combout\);

-- Location: LC_X7_Y6_N6
\Equal0~6\ : maxii_lcell
-- Equation(s):
-- \Equal0~6_combout\ = (counter_slow(11) & (counter_slow(12) & (counter_slow(9) & counter_slow(10))))

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
	dataa => counter_slow(11),
	datab => counter_slow(12),
	datac => counter_slow(9),
	datad => counter_slow(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~6_combout\);

-- Location: LC_X7_Y6_N2
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

-- Location: LC_X7_Y6_N3
\LessThan0~0\ : maxii_lcell
-- Equation(s):
-- \LessThan0~0_combout\ = (counter_slow(13)) # ((\Equal0~6_combout\ & ((counter_slow(4)) # (!\Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eafa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => counter_slow(13),
	datab => counter_slow(4),
	datac => \Equal0~6_combout\,
	datad => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~0_combout\);

-- Location: LC_X7_Y6_N4
\LessThan0~1\ : maxii_lcell
-- Equation(s):
-- \LessThan0~1_combout\ = (\Equal0~1_combout\ & ((counter_slow(15)) # ((counter_slow(14) & \LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => counter_slow(15),
	datab => counter_slow(14),
	datac => \Equal0~1_combout\,
	datad => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~1_combout\);

-- Location: LC_X7_Y6_N5
\LessThan0~2\ : maxii_lcell
-- Equation(s):
-- \LessThan0~2_combout\ = ((counter_slow(22) & ((counter_slow(21)) # (\LessThan0~1_combout\)))) # (!\Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbb3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => counter_slow(22),
	datab => \Equal0~3_combout\,
	datac => counter_slow(21),
	datad => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~2_combout\);

-- Location: LC_X7_Y6_N1
\Equal0~4\ : maxii_lcell
-- Equation(s):
-- \Equal0~4_combout\ = ((counter_slow(14) & (counter_slow(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => counter_slow(14),
	datac => counter_slow(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~4_combout\);

-- Location: LC_X8_Y6_N0
\Equal0~8\ : maxii_lcell
-- Equation(s):
-- \Equal0~8_combout\ = (!counter_slow(3) & (!counter_slow(1) & (counter_slow(4) & !counter_slow(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => counter_slow(3),
	datab => counter_slow(1),
	datac => counter_slow(4),
	datad => counter_slow(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~8_combout\);

-- Location: LC_X7_Y6_N8
\Equal0~7\ : maxii_lcell
-- Equation(s):
-- \Equal0~7_combout\ = (!counter_slow(0) & (!counter_slow(15) & (!counter_slow(21) & !counter_slow(13))))

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
	dataa => counter_slow(0),
	datab => counter_slow(15),
	datac => counter_slow(21),
	datad => counter_slow(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~7_combout\);

-- Location: LC_X7_Y6_N9
\Equal0~9\ : maxii_lcell
-- Equation(s):
-- \Equal0~9_combout\ = (\Equal0~8_combout\ & (\Equal0~5_combout\ & (\Equal0~6_combout\ & \Equal0~7_combout\)))

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
	dataa => \Equal0~8_combout\,
	datab => \Equal0~5_combout\,
	datac => \Equal0~6_combout\,
	datad => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~9_combout\);

-- Location: LC_X6_Y6_N7
\Equal0~10\ : maxii_lcell
-- Equation(s):
-- \Equal0~10_combout\ = (\Equal0~4_combout\ & (\Equal0~1_combout\ & (\Equal0~9_combout\ & \Equal0~3_combout\)))

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
	dataa => \Equal0~4_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~9_combout\,
	datad => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~10_combout\);

-- Location: LC_X7_Y6_N0
\stage0|Q\ : maxii_lcell
-- Equation(s):
-- \stage0|Q~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \Equal0~10_combout\, \Duty_increase~combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Duty_increase~combout\,
	aclr => GND,
	sload => VCC,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stage0|Q~regout\);

-- Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Duty_decrease~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Duty_decrease,
	combout => \Duty_decrease~combout\);

-- Location: LC_X5_Y6_N7
\stage2|Q\ : maxii_lcell
-- Equation(s):
-- \Duty_cycle~13\ = (\process_1~2\) # ((\Equal0~10_combout\ & (\Duty_cycle~12\ & B3_Q)))
-- \stage2|Q~regout\ = DFFEAS(\Duty_cycle~13\, GLOBAL(\clk~combout\), VCC, , \Equal0~10_combout\, \Duty_decrease~combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff80",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Equal0~10_combout\,
	datab => \Duty_cycle~12\,
	datac => \Duty_decrease~combout\,
	datad => \process_1~2\,
	aclr => GND,
	sload => VCC,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Duty_cycle~13\,
	regout => \stage2|Q~regout\);

-- Location: LC_X6_Y6_N1
\Duty_cycle[0]\ : maxii_lcell
-- Equation(s):
-- Duty_cycle(0) = DFFEAS(((!Duty_cycle(0))), GLOBAL(\clk~combout\), VCC, , \Duty_cycle~13\, , , , )
-- \Duty_cycle[0]~3\ = CARRY(((Duty_cycle(0))))
-- \Duty_cycle[0]~3COUT1_15\ = CARRY(((Duty_cycle(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => Duty_cycle(0),
	aclr => GND,
	ena => \Duty_cycle~13\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Duty_cycle(0),
	cout0 => \Duty_cycle[0]~3\,
	cout1 => \Duty_cycle[0]~3COUT1_15\);

-- Location: LC_X6_Y6_N2
\Duty_cycle[1]\ : maxii_lcell
-- Equation(s):
-- Duty_cycle(1) = DFFEAS(\process_1~2\ $ (Duty_cycle(1) $ ((!\Duty_cycle[0]~3\))), GLOBAL(\clk~combout\), VCC, , \Duty_cycle~13\, , , , )
-- \Duty_cycle[1]~5\ = CARRY((\process_1~2\ & ((!\Duty_cycle[0]~3\) # (!Duty_cycle(1)))) # (!\process_1~2\ & (!Duty_cycle(1) & !\Duty_cycle[0]~3\)))
-- \Duty_cycle[1]~5COUT1_16\ = CARRY((\process_1~2\ & ((!\Duty_cycle[0]~3COUT1_15\) # (!Duty_cycle(1)))) # (!\process_1~2\ & (!Duty_cycle(1) & !\Duty_cycle[0]~3COUT1_15\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "692b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \process_1~2\,
	datab => Duty_cycle(1),
	aclr => GND,
	ena => \Duty_cycle~13\,
	cin0 => \Duty_cycle[0]~3\,
	cin1 => \Duty_cycle[0]~3COUT1_15\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Duty_cycle(1),
	cout0 => \Duty_cycle[1]~5\,
	cout1 => \Duty_cycle[1]~5COUT1_16\);

-- Location: LC_X6_Y6_N3
\Duty_cycle[2]\ : maxii_lcell
-- Equation(s):
-- Duty_cycle(2) = DFFEAS(\process_1~2\ $ (Duty_cycle(2) $ ((\Duty_cycle[1]~5\))), GLOBAL(\clk~combout\), VCC, , \Duty_cycle~13\, , , , )
-- \Duty_cycle[2]~7\ = CARRY((\process_1~2\ & (Duty_cycle(2) & !\Duty_cycle[1]~5\)) # (!\process_1~2\ & ((Duty_cycle(2)) # (!\Duty_cycle[1]~5\))))
-- \Duty_cycle[2]~7COUT1_17\ = CARRY((\process_1~2\ & (Duty_cycle(2) & !\Duty_cycle[1]~5COUT1_16\)) # (!\process_1~2\ & ((Duty_cycle(2)) # (!\Duty_cycle[1]~5COUT1_16\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "964d",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \process_1~2\,
	datab => Duty_cycle(2),
	aclr => GND,
	ena => \Duty_cycle~13\,
	cin0 => \Duty_cycle[1]~5\,
	cin1 => \Duty_cycle[1]~5COUT1_16\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Duty_cycle(2),
	cout0 => \Duty_cycle[2]~7\,
	cout1 => \Duty_cycle[2]~7COUT1_17\);

-- Location: LC_X6_Y6_N4
\Duty_cycle[3]\ : maxii_lcell
-- Equation(s):
-- Duty_cycle(3) = DFFEAS(Duty_cycle(3) $ (\process_1~2\ $ ((!\Duty_cycle[2]~7\))), GLOBAL(\clk~combout\), VCC, , \Duty_cycle~13\, , , , )
-- \Duty_cycle[3]~9\ = CARRY((Duty_cycle(3) & (\process_1~2\ & !\Duty_cycle[2]~7COUT1_17\)) # (!Duty_cycle(3) & ((\process_1~2\) # (!\Duty_cycle[2]~7COUT1_17\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "694d",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => Duty_cycle(3),
	datab => \process_1~2\,
	aclr => GND,
	ena => \Duty_cycle~13\,
	cin0 => \Duty_cycle[2]~7\,
	cin1 => \Duty_cycle[2]~7COUT1_17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Duty_cycle(3),
	cout => \Duty_cycle[3]~9\);

-- Location: LC_X5_Y6_N9
\LessThan2~0\ : maxii_lcell
-- Equation(s):
-- \LessThan2~0_combout\ = (Duty_cycle(0)) # ((Duty_cycle(1)) # ((Duty_cycle(2)) # (Duty_cycle(3))))

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
	dataa => Duty_cycle(0),
	datab => Duty_cycle(1),
	datac => Duty_cycle(2),
	datad => Duty_cycle(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan2~0_combout\);

-- Location: LC_X5_Y6_N6
\stage3|Q\ : maxii_lcell
-- Equation(s):
-- \Duty_cycle~12\ = (!B4_Q & ((Duty_cycle(5)) # ((Duty_cycle(4)) # (\LessThan2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => Duty_cycle(5),
	datab => Duty_cycle(4),
	datac => \stage2|Q~regout\,
	datad => \LessThan2~0_combout\,
	aclr => GND,
	sload => VCC,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Duty_cycle~12\,
	regout => \stage3|Q~regout\);

-- Location: LC_X6_Y6_N5
\Duty_cycle[4]\ : maxii_lcell
-- Equation(s):
-- Duty_cycle(4) = DFFEAS(Duty_cycle(4) $ (\process_1~2\ $ ((\Duty_cycle[3]~9\))), GLOBAL(\clk~combout\), VCC, , \Duty_cycle~13\, , , , )
-- \Duty_cycle[4]~11\ = CARRY((Duty_cycle(4) & ((!\Duty_cycle[3]~9\) # (!\process_1~2\))) # (!Duty_cycle(4) & (!\process_1~2\ & !\Duty_cycle[3]~9\)))
-- \Duty_cycle[4]~11COUT1_18\ = CARRY((Duty_cycle(4) & ((!\Duty_cycle[3]~9\) # (!\process_1~2\))) # (!Duty_cycle(4) & (!\process_1~2\ & !\Duty_cycle[3]~9\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "962b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => Duty_cycle(4),
	datab => \process_1~2\,
	aclr => GND,
	ena => \Duty_cycle~13\,
	cin => \Duty_cycle[3]~9\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Duty_cycle(4),
	cout0 => \Duty_cycle[4]~11\,
	cout1 => \Duty_cycle[4]~11COUT1_18\);

-- Location: LC_X5_Y6_N3
\process_1~0\ : maxii_lcell
-- Equation(s):
-- \process_1~0_combout\ = (!Duty_cycle(2) & (!Duty_cycle(3) & ((!Duty_cycle(0)) # (!Duty_cycle(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => Duty_cycle(2),
	datab => Duty_cycle(3),
	datac => Duty_cycle(1),
	datad => Duty_cycle(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process_1~0_combout\);

-- Location: LC_X5_Y6_N4
\process_1~1\ : maxii_lcell
-- Equation(s):
-- \process_1~1_combout\ = (((\process_1~0_combout\) # (!Duty_cycle(5))) # (!Duty_cycle(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff3f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => Duty_cycle(4),
	datac => Duty_cycle(5),
	datad => \process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process_1~1_combout\);

-- Location: LC_X6_Y6_N8
\stage1|Q\ : maxii_lcell
-- Equation(s):
-- \process_1~2\ = (\stage0|Q~regout\ & (\process_1~1_combout\ & (!B2_Q & \Equal0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \stage0|Q~regout\,
	datab => \process_1~1_combout\,
	datac => \stage0|Q~regout\,
	datad => \Equal0~10_combout\,
	aclr => GND,
	sload => VCC,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process_1~2\,
	regout => \stage1|Q~regout\);

-- Location: LC_X6_Y6_N6
\Duty_cycle[5]\ : maxii_lcell
-- Equation(s):
-- Duty_cycle(5) = DFFEAS((\process_1~2\ $ ((!\Duty_cycle[3]~9\ & \Duty_cycle[4]~11\) # (\Duty_cycle[3]~9\ & \Duty_cycle[4]~11COUT1_18\) $ (!Duty_cycle(5)))), GLOBAL(\clk~combout\), VCC, , \Duty_cycle~13\, , , , )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3cc3",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \process_1~2\,
	datad => Duty_cycle(5),
	aclr => GND,
	ena => \Duty_cycle~13\,
	cin => \Duty_cycle[3]~9\,
	cin0 => \Duty_cycle[4]~11\,
	cin1 => \Duty_cycle[4]~11COUT1_18\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Duty_cycle(5));

-- Location: LC_X5_Y5_N1
\LessThan4~27\ : maxii_lcell
-- Equation(s):
-- \LessThan4~27_cout0\ = CARRY((Duty_cycle(0) & (!counter_pwm(0))))
-- \LessThan4~27COUT1_31\ = CARRY((Duty_cycle(0) & (!counter_pwm(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff22",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => Duty_cycle(0),
	datab => counter_pwm(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan4~25\,
	cout0 => \LessThan4~27_cout0\,
	cout1 => \LessThan4~27COUT1_31\);

-- Location: LC_X5_Y5_N2
\LessThan4~22\ : maxii_lcell
-- Equation(s):
-- \LessThan4~22_cout0\ = CARRY((Duty_cycle(1) & (counter_pwm(1) & !\LessThan4~27_cout0\)) # (!Duty_cycle(1) & ((counter_pwm(1)) # (!\LessThan4~27_cout0\))))
-- \LessThan4~22COUT1_32\ = CARRY((Duty_cycle(1) & (counter_pwm(1) & !\LessThan4~27COUT1_31\)) # (!Duty_cycle(1) & ((counter_pwm(1)) # (!\LessThan4~27COUT1_31\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => Duty_cycle(1),
	datab => counter_pwm(1),
	cin0 => \LessThan4~27_cout0\,
	cin1 => \LessThan4~27COUT1_31\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan4~20\,
	cout0 => \LessThan4~22_cout0\,
	cout1 => \LessThan4~22COUT1_32\);

-- Location: LC_X5_Y5_N3
\LessThan4~17\ : maxii_lcell
-- Equation(s):
-- \LessThan4~17_cout0\ = CARRY((counter_pwm(2) & (Duty_cycle(2) & !\LessThan4~22_cout0\)) # (!counter_pwm(2) & ((Duty_cycle(2)) # (!\LessThan4~22_cout0\))))
-- \LessThan4~17COUT1_33\ = CARRY((counter_pwm(2) & (Duty_cycle(2) & !\LessThan4~22COUT1_32\)) # (!counter_pwm(2) & ((Duty_cycle(2)) # (!\LessThan4~22COUT1_32\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => counter_pwm(2),
	datab => Duty_cycle(2),
	cin0 => \LessThan4~22_cout0\,
	cin1 => \LessThan4~22COUT1_32\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan4~15\,
	cout0 => \LessThan4~17_cout0\,
	cout1 => \LessThan4~17COUT1_33\);

-- Location: LC_X5_Y5_N4
\LessThan4~12\ : maxii_lcell
-- Equation(s):
-- \LessThan4~12_cout\ = CARRY((Duty_cycle(3) & (counter_pwm(3) & !\LessThan4~17COUT1_33\)) # (!Duty_cycle(3) & ((counter_pwm(3)) # (!\LessThan4~17COUT1_33\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => Duty_cycle(3),
	datab => counter_pwm(3),
	cin0 => \LessThan4~17_cout0\,
	cin1 => \LessThan4~17COUT1_33\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan4~10\,
	cout => \LessThan4~12_cout\);

-- Location: LC_X5_Y5_N5
\LessThan4~7\ : maxii_lcell
-- Equation(s):
-- \LessThan4~7_cout0\ = CARRY((counter_pwm(4) & (Duty_cycle(4) & !\LessThan4~12_cout\)) # (!counter_pwm(4) & ((Duty_cycle(4)) # (!\LessThan4~12_cout\))))
-- \LessThan4~7COUT1_34\ = CARRY((counter_pwm(4) & (Duty_cycle(4) & !\LessThan4~12_cout\)) # (!counter_pwm(4) & ((Duty_cycle(4)) # (!\LessThan4~12_cout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => counter_pwm(4),
	datab => Duty_cycle(4),
	cin => \LessThan4~12_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan4~5\,
	cout0 => \LessThan4~7_cout0\,
	cout1 => \LessThan4~7COUT1_34\);

-- Location: LC_X5_Y5_N6
\LessThan4~0\ : maxii_lcell
-- Equation(s):
-- \LessThan4~0_combout\ = (counter_pwm(5) & ((((!\LessThan4~12_cout\ & \LessThan4~7_cout0\) # (\LessThan4~12_cout\ & \LessThan4~7COUT1_34\) & Duty_cycle(5))))) # (!counter_pwm(5) & ((((!\LessThan4~12_cout\ & \LessThan4~7_cout0\) # (\LessThan4~12_cout\ & 
-- \LessThan4~7COUT1_34\)) # (Duty_cycle(5)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f550",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => counter_pwm(5),
	datad => Duty_cycle(5),
	cin => \LessThan4~12_cout\,
	cin0 => \LessThan4~7_cout0\,
	cin1 => \LessThan4~7COUT1_34\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan4~0_combout\);

-- Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\pwm_out~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \LessThan4~0_combout\,
	oe => VCC,
	padio => ww_pwm_out);
END structure;


