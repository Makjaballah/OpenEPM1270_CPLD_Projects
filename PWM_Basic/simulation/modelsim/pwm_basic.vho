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

-- DATE "09/16/2023 14:53:32"

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

ENTITY 	pwm_basic IS
    PORT (
	rst : IN std_logic;
	clk : IN std_logic;
	pwm_out : BUFFER std_logic
	);
END pwm_basic;

-- Design Ports Information


ARCHITECTURE structure OF pwm_basic IS
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
SIGNAL ww_pwm_out : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \rst~combout\ : std_logic;
SIGNAL \counter[0]~5\ : std_logic;
SIGNAL \counter[0]~5COUT1_17\ : std_logic;
SIGNAL \counter[1]~7\ : std_logic;
SIGNAL \counter[1]~7COUT1_18\ : std_logic;
SIGNAL \counter[2]~9\ : std_logic;
SIGNAL \counter[2]~9COUT1_19\ : std_logic;
SIGNAL \counter[3]~11\ : std_logic;
SIGNAL \counter[3]~11COUT1_20\ : std_logic;
SIGNAL \counter[4]~13\ : std_logic;
SIGNAL \counter[5]~15\ : std_logic;
SIGNAL \counter[5]~15COUT1_21\ : std_logic;
SIGNAL \counter[6]~1\ : std_logic;
SIGNAL \counter[6]~1COUT1_22\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL counter : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_rst~combout\ : std_logic;

BEGIN

ww_rst <= rst;
ww_clk <= clk;
pwm_out <= ww_pwm_out;
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

-- Location: LC_X14_Y9_N0
\counter[0]\ : maxii_lcell
-- Equation(s):
-- counter(0) = DFFEAS(((!counter(0))), GLOBAL(\clk~combout\), GLOBAL(\rst~combout\), , , , , \LessThan0~1_combout\, )
-- \counter[0]~5\ = CARRY(((counter(0))))
-- \counter[0]~5COUT1_17\ = CARRY(((counter(0))))

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
	datab => counter(0),
	aclr => \ALT_INV_rst~combout\,
	sclr => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(0),
	cout0 => \counter[0]~5\,
	cout1 => \counter[0]~5COUT1_17\);

-- Location: LC_X14_Y9_N1
\counter[1]\ : maxii_lcell
-- Equation(s):
-- counter(1) = DFFEAS((counter(1) $ ((\counter[0]~5\))), GLOBAL(\clk~combout\), GLOBAL(\rst~combout\), , , , , \LessThan0~1_combout\, )
-- \counter[1]~7\ = CARRY(((!\counter[0]~5\) # (!counter(1))))
-- \counter[1]~7COUT1_18\ = CARRY(((!\counter[0]~5COUT1_17\) # (!counter(1))))

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
	datab => counter(1),
	aclr => \ALT_INV_rst~combout\,
	sclr => \LessThan0~1_combout\,
	cin0 => \counter[0]~5\,
	cin1 => \counter[0]~5COUT1_17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(1),
	cout0 => \counter[1]~7\,
	cout1 => \counter[1]~7COUT1_18\);

-- Location: LC_X14_Y9_N2
\counter[2]\ : maxii_lcell
-- Equation(s):
-- counter(2) = DFFEAS((counter(2) $ ((!\counter[1]~7\))), GLOBAL(\clk~combout\), GLOBAL(\rst~combout\), , , , , \LessThan0~1_combout\, )
-- \counter[2]~9\ = CARRY(((counter(2) & !\counter[1]~7\)))
-- \counter[2]~9COUT1_19\ = CARRY(((counter(2) & !\counter[1]~7COUT1_18\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => counter(2),
	aclr => \ALT_INV_rst~combout\,
	sclr => \LessThan0~1_combout\,
	cin0 => \counter[1]~7\,
	cin1 => \counter[1]~7COUT1_18\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(2),
	cout0 => \counter[2]~9\,
	cout1 => \counter[2]~9COUT1_19\);

-- Location: LC_X14_Y9_N3
\counter[3]\ : maxii_lcell
-- Equation(s):
-- counter(3) = DFFEAS(counter(3) $ ((((\counter[2]~9\)))), GLOBAL(\clk~combout\), GLOBAL(\rst~combout\), , , , , \LessThan0~1_combout\, )
-- \counter[3]~11\ = CARRY(((!\counter[2]~9\)) # (!counter(3)))
-- \counter[3]~11COUT1_20\ = CARRY(((!\counter[2]~9COUT1_19\)) # (!counter(3)))

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
	dataa => counter(3),
	aclr => \ALT_INV_rst~combout\,
	sclr => \LessThan0~1_combout\,
	cin0 => \counter[2]~9\,
	cin1 => \counter[2]~9COUT1_19\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(3),
	cout0 => \counter[3]~11\,
	cout1 => \counter[3]~11COUT1_20\);

-- Location: LC_X14_Y9_N4
\counter[4]\ : maxii_lcell
-- Equation(s):
-- counter(4) = DFFEAS(counter(4) $ ((((!\counter[3]~11\)))), GLOBAL(\clk~combout\), GLOBAL(\rst~combout\), , , , , \LessThan0~1_combout\, )
-- \counter[4]~13\ = CARRY((counter(4) & ((!\counter[3]~11COUT1_20\))))

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
	dataa => counter(4),
	aclr => \ALT_INV_rst~combout\,
	sclr => \LessThan0~1_combout\,
	cin0 => \counter[3]~11\,
	cin1 => \counter[3]~11COUT1_20\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(4),
	cout => \counter[4]~13\);

-- Location: LC_X14_Y9_N5
\counter[5]\ : maxii_lcell
-- Equation(s):
-- counter(5) = DFFEAS((counter(5) $ ((\counter[4]~13\))), GLOBAL(\clk~combout\), GLOBAL(\rst~combout\), , , , , \LessThan0~1_combout\, )
-- \counter[5]~15\ = CARRY(((!\counter[4]~13\) # (!counter(5))))
-- \counter[5]~15COUT1_21\ = CARRY(((!\counter[4]~13\) # (!counter(5))))

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
	datab => counter(5),
	aclr => \ALT_INV_rst~combout\,
	sclr => \LessThan0~1_combout\,
	cin => \counter[4]~13\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(5),
	cout0 => \counter[5]~15\,
	cout1 => \counter[5]~15COUT1_21\);

-- Location: LC_X14_Y9_N6
\counter[6]\ : maxii_lcell
-- Equation(s):
-- counter(6) = DFFEAS((counter(6) $ ((!(!\counter[4]~13\ & \counter[5]~15\) # (\counter[4]~13\ & \counter[5]~15COUT1_21\)))), GLOBAL(\clk~combout\), GLOBAL(\rst~combout\), , , , , \LessThan0~1_combout\, )
-- \counter[6]~1\ = CARRY(((counter(6) & !\counter[5]~15\)))
-- \counter[6]~1COUT1_22\ = CARRY(((counter(6) & !\counter[5]~15COUT1_21\)))

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
	datab => counter(6),
	aclr => \ALT_INV_rst~combout\,
	sclr => \LessThan0~1_combout\,
	cin => \counter[4]~13\,
	cin0 => \counter[5]~15\,
	cin1 => \counter[5]~15COUT1_21\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(6),
	cout0 => \counter[6]~1\,
	cout1 => \counter[6]~1COUT1_22\);

-- Location: LC_X14_Y9_N7
\counter[7]\ : maxii_lcell
-- Equation(s):
-- counter(7) = DFFEAS(counter(7) $ (((((!\counter[4]~13\ & \counter[6]~1\) # (\counter[4]~13\ & \counter[6]~1COUT1_22\))))), GLOBAL(\clk~combout\), GLOBAL(\rst~combout\), , , , , \LessThan0~1_combout\, )

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
	dataa => counter(7),
	aclr => \ALT_INV_rst~combout\,
	sclr => \LessThan0~1_combout\,
	cin => \counter[4]~13\,
	cin0 => \counter[6]~1\,
	cin1 => \counter[6]~1COUT1_22\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(7));

-- Location: LC_X14_Y9_N9
\LessThan1~0\ : maxii_lcell
-- Equation(s):
-- \LessThan1~0_combout\ = (((!counter(7) & !counter(6))))

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
	datac => counter(7),
	datad => counter(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan1~0_combout\);

-- Location: LC_X15_Y9_N4
\LessThan0~0\ : maxii_lcell
-- Equation(s):
-- \LessThan0~0_combout\ = ((!counter(3) & (!counter(1) & !counter(2))))

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
	datab => counter(3),
	datac => counter(1),
	datad => counter(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~0_combout\);

-- Location: LC_X14_Y9_N8
\LessThan0~1\ : maxii_lcell
-- Equation(s):
-- \LessThan0~1_combout\ = ((counter(4) & (counter(5) & !\LessThan0~0_combout\))) # (!\LessThan1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f8f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => counter(4),
	datab => counter(5),
	datac => \LessThan1~0_combout\,
	datad => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~1_combout\);

-- Location: LC_X15_Y9_N2
\LessThan1~1\ : maxii_lcell
-- Equation(s):
-- \LessThan1~1_combout\ = ((!counter(0) & (!counter(1) & !counter(2)))) # (!counter(3))

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
	dataa => counter(0),
	datab => counter(3),
	datac => counter(1),
	datad => counter(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan1~1_combout\);

-- Location: LC_X15_Y9_N5
\LessThan1~2\ : maxii_lcell
-- Equation(s):
-- \LessThan1~2_combout\ = (!counter(5) & (\LessThan1~0_combout\ & ((\LessThan1~1_combout\) # (!counter(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5010",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => counter(5),
	datab => counter(4),
	datac => \LessThan1~0_combout\,
	datad => \LessThan1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan1~2_combout\);

-- Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\pwm_out~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \LessThan1~2_combout\,
	oe => VCC,
	padio => ww_pwm_out);
END structure;


