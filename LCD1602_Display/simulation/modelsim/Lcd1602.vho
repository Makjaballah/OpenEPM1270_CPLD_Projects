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

-- DATE "09/18/2023 15:00:21"

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

ENTITY 	Lcd1602 IS
    PORT (
	CLK : IN std_logic;
	Reset : IN std_logic;
	LCD_RS : BUFFER std_logic;
	LCD_RW : BUFFER std_logic;
	LCD_EN : BUFFER std_logic;
	LCD_Data : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END Lcd1602;

-- Design Ports Information


ARCHITECTURE structure OF Lcd1602 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_Reset : std_logic;
SIGNAL ww_LCD_RS : std_logic;
SIGNAL ww_LCD_RW : std_logic;
SIGNAL ww_LCD_EN : std_logic;
SIGNAL ww_LCD_Data : std_logic_vector(7 DOWNTO 0);
SIGNAL \CLK~combout\ : std_logic;
SIGNAL \n1[0]~13\ : std_logic;
SIGNAL \n1[0]~13COUT1_31\ : std_logic;
SIGNAL \n1[1]~15\ : std_logic;
SIGNAL \n1[2]~17\ : std_logic;
SIGNAL \n1[2]~17COUT1_32\ : std_logic;
SIGNAL \n1[3]~19\ : std_logic;
SIGNAL \n1[3]~19COUT1_33\ : std_logic;
SIGNAL \n1[4]~21\ : std_logic;
SIGNAL \n1[4]~21COUT1_34\ : std_logic;
SIGNAL \n1[5]~23\ : std_logic;
SIGNAL \n1[5]~23COUT1_35\ : std_logic;
SIGNAL \n1[6]~25\ : std_logic;
SIGNAL \n1[7]~27\ : std_logic;
SIGNAL \n1[7]~27COUT1_36\ : std_logic;
SIGNAL \n1[8]~29\ : std_logic;
SIGNAL \n1[8]~29COUT1_37\ : std_logic;
SIGNAL \n1[9]~7\ : std_logic;
SIGNAL \n1[9]~7COUT1_38\ : std_logic;
SIGNAL \n1[10]~9\ : std_logic;
SIGNAL \n1[10]~9COUT1_39\ : std_logic;
SIGNAL \n1[11]~11\ : std_logic;
SIGNAL \n1[12]~1\ : std_logic;
SIGNAL \n1[12]~1COUT1_40\ : std_logic;
SIGNAL \n1[13]~3\ : std_logic;
SIGNAL \n1[13]~3COUT1_41\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \Clk_Out~regout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \Selector11~2_combout\ : std_logic;
SIGNAL \Reset~combout\ : std_logic;
SIGNAL \Current_State.set_dlnf~regout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Add3~2\ : std_logic;
SIGNAL \Add3~2COUT1_26\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~7COUT1_27\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \Selector9~9_combout\ : std_logic;
SIGNAL \Add3~12\ : std_logic;
SIGNAL \Add3~12COUT1_28\ : std_logic;
SIGNAL \Add3~15_combout\ : std_logic;
SIGNAL \Current_State.set_ddram~regout\ : std_logic;
SIGNAL \Add3~5_combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \Selector8~3\ : std_logic;
SIGNAL \Selector9~2_combout\ : std_logic;
SIGNAL \Add3~17\ : std_logic;
SIGNAL \Add3~17COUT1_29\ : std_logic;
SIGNAL \Add3~20_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \n2[0]~3\ : std_logic;
SIGNAL \n2[0]~3COUT1_19\ : std_logic;
SIGNAL \n2[1]~5\ : std_logic;
SIGNAL \n2[1]~5COUT1_20\ : std_logic;
SIGNAL \n2[2]~7\ : std_logic;
SIGNAL \n2[2]~7COUT1_21\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \n2[3]~9\ : std_logic;
SIGNAL \n2[3]~9COUT1_22\ : std_logic;
SIGNAL \n2[4]~11\ : std_logic;
SIGNAL \n2[5]~13\ : std_logic;
SIGNAL \n2[5]~13COUT1_23\ : std_logic;
SIGNAL \n2[6]~15\ : std_logic;
SIGNAL \n2[6]~15COUT1_24\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \n2[7]~17\ : std_logic;
SIGNAL \n2[7]~17COUT1_25\ : std_logic;
SIGNAL \CLK1~regout\ : std_logic;
SIGNAL \Selector9~3_combout\ : std_logic;
SIGNAL \Selector11~5\ : std_logic;
SIGNAL \Selector10~1_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Current_State.write_LCD_Data~regout\ : std_logic;
SIGNAL \Current_State.set_cursor~regout\ : std_logic;
SIGNAL \Current_State.set_dcb~regout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Selector9~4_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Selector10~2_combout\ : std_logic;
SIGNAL \Selector10~3_combout\ : std_logic;
SIGNAL \Current_State.set_cgram~regout\ : std_logic;
SIGNAL \Current_State.write_cgram~regout\ : std_logic;
SIGNAL \LCD_RS~reg0_regout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Selector11~8_combout\ : std_logic;
SIGNAL \Mux20~1_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Selector11~4_combout\ : std_logic;
SIGNAL \Selector11~6_combout\ : std_logic;
SIGNAL \LCD_Data[0]~reg0_regout\ : std_logic;
SIGNAL \Selector11~3_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Selector10~4\ : std_logic;
SIGNAL \LCD_Data[1]~reg0_regout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Selector9~10_combout\ : std_logic;
SIGNAL \Selector9~7_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Selector9~12_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Selector9~5_combout\ : std_logic;
SIGNAL \Selector8~2_combout\ : std_logic;
SIGNAL \Selector9~6_combout\ : std_logic;
SIGNAL \Selector9~8_combout\ : std_logic;
SIGNAL \LCD_Data[2]~reg0_regout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Selector8~7_combout\ : std_logic;
SIGNAL \Selector8~9_combout\ : std_logic;
SIGNAL \Mux17~1_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Selector8~4\ : std_logic;
SIGNAL \Selector8~5_combout\ : std_logic;
SIGNAL \Selector8~6_combout\ : std_logic;
SIGNAL \LCD_Data[3]~reg0_regout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Selector7~2_combout\ : std_logic;
SIGNAL \Selector7~1_combout\ : std_logic;
SIGNAL \Selector7~3_combout\ : std_logic;
SIGNAL \LCD_Data[4]~reg0_regout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Selector6~1_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Selector6~3_combout\ : std_logic;
SIGNAL \Selector6~4_combout\ : std_logic;
SIGNAL \LCD_Data[5]~reg0_regout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Selector5~4\ : std_logic;
SIGNAL \Selector5~5_combout\ : std_logic;
SIGNAL \Selector5~1_combout\ : std_logic;
SIGNAL \Selector5~2_combout\ : std_logic;
SIGNAL \LCD_Data[6]~reg0_regout\ : std_logic;
SIGNAL \LCD_Data[7]~reg0_regout\ : std_logic;
SIGNAL n2 : std_logic_vector(8 DOWNTO 0);
SIGNAL n1 : std_logic_vector(14 DOWNTO 0);
SIGNAL cnt1 : std_logic_vector(4 DOWNTO 0);
SIGNAL m : std_logic_vector(1 DOWNTO 0);
SIGNAL n3 : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_Reset~combout\ : std_logic;

BEGIN

ww_CLK <= CLK;
ww_Reset <= Reset;
LCD_RS <= ww_LCD_RS;
LCD_RW <= ww_LCD_RW;
LCD_EN <= ww_LCD_EN;
LCD_Data <= ww_LCD_Data;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Reset~combout\ <= NOT \Reset~combout\;

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLK~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_CLK,
	combout => \CLK~combout\);

-- Location: LC_X7_Y7_N3
\n1[0]\ : maxii_lcell
-- Equation(s):
-- n1(0) = DFFEAS((!n1(0)), GLOBAL(\CLK~combout\), VCC, , , , , \LessThan0~4_combout\, )
-- \n1[0]~13\ = CARRY((n1(0)))
-- \n1[0]~13COUT1_31\ = CARRY((n1(0)))

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
	clk => \CLK~combout\,
	dataa => n1(0),
	aclr => GND,
	sclr => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => n1(0),
	cout0 => \n1[0]~13\,
	cout1 => \n1[0]~13COUT1_31\);

-- Location: LC_X7_Y7_N4
\n1[1]\ : maxii_lcell
-- Equation(s):
-- n1(1) = DFFEAS(n1(1) $ ((((\n1[0]~13\)))), GLOBAL(\CLK~combout\), VCC, , , , , \LessThan0~4_combout\, )
-- \n1[1]~15\ = CARRY(((!\n1[0]~13COUT1_31\)) # (!n1(1)))

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
	clk => \CLK~combout\,
	dataa => n1(1),
	aclr => GND,
	sclr => \LessThan0~4_combout\,
	cin0 => \n1[0]~13\,
	cin1 => \n1[0]~13COUT1_31\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => n1(1),
	cout => \n1[1]~15\);

-- Location: LC_X7_Y7_N5
\n1[2]\ : maxii_lcell
-- Equation(s):
-- n1(2) = DFFEAS(n1(2) $ ((((!\n1[1]~15\)))), GLOBAL(\CLK~combout\), VCC, , , , , \LessThan0~4_combout\, )
-- \n1[2]~17\ = CARRY((n1(2) & ((!\n1[1]~15\))))
-- \n1[2]~17COUT1_32\ = CARRY((n1(2) & ((!\n1[1]~15\))))

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
	clk => \CLK~combout\,
	dataa => n1(2),
	aclr => GND,
	sclr => \LessThan0~4_combout\,
	cin => \n1[1]~15\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => n1(2),
	cout0 => \n1[2]~17\,
	cout1 => \n1[2]~17COUT1_32\);

-- Location: LC_X7_Y7_N6
\n1[3]\ : maxii_lcell
-- Equation(s):
-- n1(3) = DFFEAS(n1(3) $ (((((!\n1[1]~15\ & \n1[2]~17\) # (\n1[1]~15\ & \n1[2]~17COUT1_32\))))), GLOBAL(\CLK~combout\), VCC, , , , , \LessThan0~4_combout\, )
-- \n1[3]~19\ = CARRY(((!\n1[2]~17\)) # (!n1(3)))
-- \n1[3]~19COUT1_33\ = CARRY(((!\n1[2]~17COUT1_32\)) # (!n1(3)))

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
	clk => \CLK~combout\,
	dataa => n1(3),
	aclr => GND,
	sclr => \LessThan0~4_combout\,
	cin => \n1[1]~15\,
	cin0 => \n1[2]~17\,
	cin1 => \n1[2]~17COUT1_32\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => n1(3),
	cout0 => \n1[3]~19\,
	cout1 => \n1[3]~19COUT1_33\);

-- Location: LC_X7_Y7_N7
\n1[4]\ : maxii_lcell
-- Equation(s):
-- n1(4) = DFFEAS((n1(4) $ ((!(!\n1[1]~15\ & \n1[3]~19\) # (\n1[1]~15\ & \n1[3]~19COUT1_33\)))), GLOBAL(\CLK~combout\), VCC, , , , , \LessThan0~4_combout\, )
-- \n1[4]~21\ = CARRY(((n1(4) & !\n1[3]~19\)))
-- \n1[4]~21COUT1_34\ = CARRY(((n1(4) & !\n1[3]~19COUT1_33\)))

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
	clk => \CLK~combout\,
	datab => n1(4),
	aclr => GND,
	sclr => \LessThan0~4_combout\,
	cin => \n1[1]~15\,
	cin0 => \n1[3]~19\,
	cin1 => \n1[3]~19COUT1_33\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => n1(4),
	cout0 => \n1[4]~21\,
	cout1 => \n1[4]~21COUT1_34\);

-- Location: LC_X7_Y7_N8
\n1[5]\ : maxii_lcell
-- Equation(s):
-- n1(5) = DFFEAS(n1(5) $ (((((!\n1[1]~15\ & \n1[4]~21\) # (\n1[1]~15\ & \n1[4]~21COUT1_34\))))), GLOBAL(\CLK~combout\), VCC, , , , , \LessThan0~4_combout\, )
-- \n1[5]~23\ = CARRY(((!\n1[4]~21\)) # (!n1(5)))
-- \n1[5]~23COUT1_35\ = CARRY(((!\n1[4]~21COUT1_34\)) # (!n1(5)))

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
	clk => \CLK~combout\,
	dataa => n1(5),
	aclr => GND,
	sclr => \LessThan0~4_combout\,
	cin => \n1[1]~15\,
	cin0 => \n1[4]~21\,
	cin1 => \n1[4]~21COUT1_34\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => n1(5),
	cout0 => \n1[5]~23\,
	cout1 => \n1[5]~23COUT1_35\);

-- Location: LC_X7_Y7_N9
\n1[6]\ : maxii_lcell
-- Equation(s):
-- n1(6) = DFFEAS((n1(6) $ ((!(!\n1[1]~15\ & \n1[5]~23\) # (\n1[1]~15\ & \n1[5]~23COUT1_35\)))), GLOBAL(\CLK~combout\), VCC, , , , , \LessThan0~4_combout\, )
-- \n1[6]~25\ = CARRY(((n1(6) & !\n1[5]~23COUT1_35\)))

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
	clk => \CLK~combout\,
	datab => n1(6),
	aclr => GND,
	sclr => \LessThan0~4_combout\,
	cin => \n1[1]~15\,
	cin0 => \n1[5]~23\,
	cin1 => \n1[5]~23COUT1_35\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => n1(6),
	cout => \n1[6]~25\);

-- Location: LC_X8_Y7_N0
\n1[7]\ : maxii_lcell
-- Equation(s):
-- n1(7) = DFFEAS((n1(7) $ ((\n1[6]~25\))), GLOBAL(\CLK~combout\), VCC, , , , , \LessThan0~4_combout\, )
-- \n1[7]~27\ = CARRY(((!\n1[6]~25\) # (!n1(7))))
-- \n1[7]~27COUT1_36\ = CARRY(((!\n1[6]~25\) # (!n1(7))))

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
	clk => \CLK~combout\,
	datab => n1(7),
	aclr => GND,
	sclr => \LessThan0~4_combout\,
	cin => \n1[6]~25\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => n1(7),
	cout0 => \n1[7]~27\,
	cout1 => \n1[7]~27COUT1_36\);

-- Location: LC_X8_Y7_N1
\n1[8]\ : maxii_lcell
-- Equation(s):
-- n1(8) = DFFEAS((n1(8) $ ((!(!\n1[6]~25\ & \n1[7]~27\) # (\n1[6]~25\ & \n1[7]~27COUT1_36\)))), GLOBAL(\CLK~combout\), VCC, , , , , \LessThan0~4_combout\, )
-- \n1[8]~29\ = CARRY(((n1(8) & !\n1[7]~27\)))
-- \n1[8]~29COUT1_37\ = CARRY(((n1(8) & !\n1[7]~27COUT1_36\)))

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
	clk => \CLK~combout\,
	datab => n1(8),
	aclr => GND,
	sclr => \LessThan0~4_combout\,
	cin => \n1[6]~25\,
	cin0 => \n1[7]~27\,
	cin1 => \n1[7]~27COUT1_36\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => n1(8),
	cout0 => \n1[8]~29\,
	cout1 => \n1[8]~29COUT1_37\);

-- Location: LC_X8_Y7_N2
\n1[9]\ : maxii_lcell
-- Equation(s):
-- n1(9) = DFFEAS((n1(9) $ (((!\n1[6]~25\ & \n1[8]~29\) # (\n1[6]~25\ & \n1[8]~29COUT1_37\)))), GLOBAL(\CLK~combout\), VCC, , , , , \LessThan0~4_combout\, )
-- \n1[9]~7\ = CARRY(((!\n1[8]~29\) # (!n1(9))))
-- \n1[9]~7COUT1_38\ = CARRY(((!\n1[8]~29COUT1_37\) # (!n1(9))))

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
	clk => \CLK~combout\,
	datab => n1(9),
	aclr => GND,
	sclr => \LessThan0~4_combout\,
	cin => \n1[6]~25\,
	cin0 => \n1[8]~29\,
	cin1 => \n1[8]~29COUT1_37\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => n1(9),
	cout0 => \n1[9]~7\,
	cout1 => \n1[9]~7COUT1_38\);

-- Location: LC_X8_Y7_N3
\n1[10]\ : maxii_lcell
-- Equation(s):
-- n1(10) = DFFEAS(n1(10) $ ((((!(!\n1[6]~25\ & \n1[9]~7\) # (\n1[6]~25\ & \n1[9]~7COUT1_38\))))), GLOBAL(\CLK~combout\), VCC, , , , , \LessThan0~4_combout\, )
-- \n1[10]~9\ = CARRY((n1(10) & ((!\n1[9]~7\))))
-- \n1[10]~9COUT1_39\ = CARRY((n1(10) & ((!\n1[9]~7COUT1_38\))))

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
	clk => \CLK~combout\,
	dataa => n1(10),
	aclr => GND,
	sclr => \LessThan0~4_combout\,
	cin => \n1[6]~25\,
	cin0 => \n1[9]~7\,
	cin1 => \n1[9]~7COUT1_38\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => n1(10),
	cout0 => \n1[10]~9\,
	cout1 => \n1[10]~9COUT1_39\);

-- Location: LC_X8_Y7_N4
\n1[11]\ : maxii_lcell
-- Equation(s):
-- n1(11) = DFFEAS(n1(11) $ (((((!\n1[6]~25\ & \n1[10]~9\) # (\n1[6]~25\ & \n1[10]~9COUT1_39\))))), GLOBAL(\CLK~combout\), VCC, , , , , \LessThan0~4_combout\, )
-- \n1[11]~11\ = CARRY(((!\n1[10]~9COUT1_39\)) # (!n1(11)))

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
	clk => \CLK~combout\,
	dataa => n1(11),
	aclr => GND,
	sclr => \LessThan0~4_combout\,
	cin => \n1[6]~25\,
	cin0 => \n1[10]~9\,
	cin1 => \n1[10]~9COUT1_39\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => n1(11),
	cout => \n1[11]~11\);

-- Location: LC_X8_Y7_N5
\n1[12]\ : maxii_lcell
-- Equation(s):
-- n1(12) = DFFEAS(n1(12) $ ((((!\n1[11]~11\)))), GLOBAL(\CLK~combout\), VCC, , , , , \LessThan0~4_combout\, )
-- \n1[12]~1\ = CARRY((n1(12) & ((!\n1[11]~11\))))
-- \n1[12]~1COUT1_40\ = CARRY((n1(12) & ((!\n1[11]~11\))))

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
	clk => \CLK~combout\,
	dataa => n1(12),
	aclr => GND,
	sclr => \LessThan0~4_combout\,
	cin => \n1[11]~11\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => n1(12),
	cout0 => \n1[12]~1\,
	cout1 => \n1[12]~1COUT1_40\);

-- Location: LC_X8_Y7_N6
\n1[13]\ : maxii_lcell
-- Equation(s):
-- n1(13) = DFFEAS(n1(13) $ (((((!\n1[11]~11\ & \n1[12]~1\) # (\n1[11]~11\ & \n1[12]~1COUT1_40\))))), GLOBAL(\CLK~combout\), VCC, , , , , \LessThan0~4_combout\, )
-- \n1[13]~3\ = CARRY(((!\n1[12]~1\)) # (!n1(13)))
-- \n1[13]~3COUT1_41\ = CARRY(((!\n1[12]~1COUT1_40\)) # (!n1(13)))

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
	clk => \CLK~combout\,
	dataa => n1(13),
	aclr => GND,
	sclr => \LessThan0~4_combout\,
	cin => \n1[11]~11\,
	cin0 => \n1[12]~1\,
	cin1 => \n1[12]~1COUT1_40\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => n1(13),
	cout0 => \n1[13]~3\,
	cout1 => \n1[13]~3COUT1_41\);

-- Location: LC_X8_Y7_N7
\n1[14]\ : maxii_lcell
-- Equation(s):
-- n1(14) = DFFEAS((n1(14) $ ((!(!\n1[11]~11\ & \n1[13]~3\) # (\n1[11]~11\ & \n1[13]~3COUT1_41\)))), GLOBAL(\CLK~combout\), VCC, , , , , \LessThan0~4_combout\, )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c3c3",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => n1(14),
	aclr => GND,
	sclr => \LessThan0~4_combout\,
	cin => \n1[11]~11\,
	cin0 => \n1[13]~3\,
	cin1 => \n1[13]~3COUT1_41\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => n1(14));

-- Location: LC_X8_Y7_N9
\LessThan0~0\ : maxii_lcell
-- Equation(s):
-- \LessThan0~0_combout\ = (((!n1(10)) # (!n1(11))) # (!n1(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3fff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => n1(9),
	datac => n1(11),
	datad => n1(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~0_combout\);

-- Location: LC_X7_Y7_N0
\LessThan0~2\ : maxii_lcell
-- Equation(s):
-- \LessThan0~2_combout\ = (n1(5)) # ((n1(6)) # ((n1(7)) # (n1(8))))

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
	dataa => n1(5),
	datab => n1(6),
	datac => n1(7),
	datad => n1(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~2_combout\);

-- Location: LC_X6_Y7_N4
\LessThan0~1\ : maxii_lcell
-- Equation(s):
-- \LessThan0~1_combout\ = (((!n1(2)) # (!n1(3))) # (!n1(1))) # (!n1(0))

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
	dataa => n1(0),
	datab => n1(1),
	datac => n1(3),
	datad => n1(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~1_combout\);

-- Location: LC_X7_Y7_N1
\LessThan0~3\ : maxii_lcell
-- Equation(s):
-- \LessThan0~3_combout\ = (!\LessThan0~0_combout\ & ((\LessThan0~2_combout\) # ((n1(4) & !\LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3032",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => n1(4),
	datab => \LessThan0~0_combout\,
	datac => \LessThan0~2_combout\,
	datad => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~3_combout\);

-- Location: LC_X7_Y7_N2
\LessThan0~4\ : maxii_lcell
-- Equation(s):
-- \LessThan0~4_combout\ = (n1(14) & ((n1(12)) # ((n1(13)) # (\LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaa8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => n1(14),
	datab => n1(12),
	datac => n1(13),
	datad => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~4_combout\);

-- Location: LC_X10_Y7_N2
Clk_Out : maxii_lcell
-- Equation(s):
-- \Clk_Out~regout\ = DFFEAS((\Clk_Out~regout\ $ (((\LessThan0~4_combout\)))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => \Clk_Out~regout\,
	datad => \LessThan0~4_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Clk_Out~regout\);

-- Location: LC_X3_Y8_N0
\Add3~0\ : maxii_lcell
-- Equation(s):
-- \Add3~0_combout\ = (!cnt1(0))
-- \Add3~2\ = CARRY((cnt1(0)))
-- \Add3~2COUT1_26\ = CARRY((cnt1(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55aa",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => cnt1(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~0_combout\,
	cout0 => \Add3~2\,
	cout1 => \Add3~2COUT1_26\);

-- Location: LC_X4_Y8_N2
\Selector11~2\ : maxii_lcell
-- Equation(s):
-- \Selector11~2_combout\ = (\Add3~0_combout\ & (\Current_State.set_ddram~regout\ & ((cnt1(1)) # (!\Selector9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a020",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~0_combout\,
	datab => \Selector9~2_combout\,
	datac => \Current_State.set_ddram~regout\,
	datad => cnt1(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector11~2_combout\);

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Reset~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Reset,
	combout => \Reset~combout\);

-- Location: LC_X3_Y7_N3
\Current_State.set_dlnf\ : maxii_lcell
-- Equation(s):
-- \Current_State.set_dlnf~regout\ = DFFEAS(VCC, GLOBAL(\Clk_Out~regout\), GLOBAL(\Reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Out~regout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Current_State.set_dlnf~regout\);

-- Location: LC_X3_Y7_N6
\Selector0~0\ : maxii_lcell
-- Equation(s):
-- \Selector0~0_combout\ = (((\Current_State.set_ddram~regout\))) # (!\Current_State.set_dlnf~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff55",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Current_State.set_dlnf~regout\,
	datad => \Current_State.set_ddram~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector0~0_combout\);

-- Location: LC_X3_Y8_N6
\cnt1[0]\ : maxii_lcell
-- Equation(s):
-- \Selector5~4\ = (cnt1(3) & (cnt1[0] $ (((!cnt1(2)) # (!cnt1(1)))))) # (!cnt1(3) & ((cnt1(1) & ((cnt1[0]) # (!cnt1(2)))) # (!cnt1(1) & ((cnt1(2))))))
-- cnt1(0) = DFFEAS(\Selector5~4\, GLOBAL(\Clk_Out~regout\), GLOBAL(\Reset~combout\), , \Selector0~0_combout\, \Selector11~2_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d34e",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Out~regout\,
	dataa => cnt1(3),
	datab => cnt1(1),
	datac => \Selector11~2_combout\,
	datad => cnt1(2),
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector5~4\,
	regout => cnt1(0));

-- Location: LC_X3_Y8_N1
\Add3~5\ : maxii_lcell
-- Equation(s):
-- \Add3~5_combout\ = (cnt1(1) $ ((!\Add3~2\)))
-- \Add3~7\ = CARRY(((cnt1(1)) # (!\Add3~2\)))
-- \Add3~7COUT1_27\ = CARRY(((cnt1(1)) # (!\Add3~2COUT1_26\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c3cf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => cnt1(1),
	cin0 => \Add3~2\,
	cin1 => \Add3~2COUT1_26\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~5_combout\,
	cout0 => \Add3~7\,
	cout1 => \Add3~7COUT1_27\);

-- Location: LC_X3_Y8_N2
\Add3~10\ : maxii_lcell
-- Equation(s):
-- \Add3~10_combout\ = cnt1(2) $ ((((\Add3~7\))))
-- \Add3~12\ = CARRY((!cnt1(2) & ((!\Add3~7\))))
-- \Add3~12COUT1_28\ = CARRY((!cnt1(2) & ((!\Add3~7COUT1_27\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a05",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => cnt1(2),
	cin0 => \Add3~7\,
	cin1 => \Add3~7COUT1_27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~10_combout\,
	cout0 => \Add3~12\,
	cout1 => \Add3~12COUT1_28\);

-- Location: LC_X6_Y8_N5
\Selector9~9\ : maxii_lcell
-- Equation(s):
-- \Selector9~9_combout\ = (\Current_State.set_ddram~regout\ & (\Add3~10_combout\ & ((cnt1(1)) # (!\Selector9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => cnt1(1),
	datab => \Selector9~2_combout\,
	datac => \Current_State.set_ddram~regout\,
	datad => \Add3~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector9~9_combout\);

-- Location: LC_X4_Y8_N3
\cnt1[2]\ : maxii_lcell
-- Equation(s):
-- cnt1(2) = DFFEAS((((!\Selector9~9_combout\))), GLOBAL(\Clk_Out~regout\), GLOBAL(\Reset~combout\), , \Selector0~0_combout\, , , , )

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
	clk => \Clk_Out~regout\,
	datad => \Selector9~9_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt1(2));

-- Location: LC_X3_Y8_N3
\Add3~15\ : maxii_lcell
-- Equation(s):
-- \Add3~15_combout\ = cnt1(3) $ ((((!\Add3~12\))))
-- \Add3~17\ = CARRY((cnt1(3)) # ((!\Add3~12\)))
-- \Add3~17COUT1_29\ = CARRY((cnt1(3)) # ((!\Add3~12COUT1_28\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a5af",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => cnt1(3),
	cin0 => \Add3~12\,
	cin1 => \Add3~12COUT1_28\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~15_combout\,
	cout0 => \Add3~17\,
	cout1 => \Add3~17COUT1_29\);

-- Location: LC_X3_Y8_N8
\Current_State.set_ddram\ : maxii_lcell
-- Equation(s):
-- \Selector8~3\ = (Current_State.set_ddram & (\Add3~15_combout\ & ((cnt1(1)) # (!\Selector9~2_combout\))))
-- \Current_State.set_ddram~regout\ = DFFEAS(\Selector8~3\, GLOBAL(\Clk_Out~regout\), GLOBAL(\Reset~combout\), , , \Current_State.write_cgram~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Out~regout\,
	dataa => \Selector9~2_combout\,
	datab => cnt1(1),
	datac => \Current_State.write_cgram~regout\,
	datad => \Add3~15_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector8~3\,
	regout => \Current_State.set_ddram~regout\);

-- Location: LC_X3_Y8_N9
\Selector10~0\ : maxii_lcell
-- Equation(s):
-- \Selector10~0_combout\ = (\Current_State.set_ddram~regout\ & (\Add3~5_combout\ & ((cnt1(1)) # (!\Selector9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c400",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Selector9~2_combout\,
	datab => \Current_State.set_ddram~regout\,
	datac => cnt1(1),
	datad => \Add3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector10~0_combout\);

-- Location: LC_X3_Y8_N7
\cnt1[1]\ : maxii_lcell
-- Equation(s):
-- cnt1(1) = DFFEAS((((!\Selector10~0_combout\))), GLOBAL(\Clk_Out~regout\), GLOBAL(\Reset~combout\), , \Selector0~0_combout\, , , , )

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
	clk => \Clk_Out~regout\,
	datad => \Selector10~0_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt1(1));

-- Location: LC_X4_Y8_N7
\cnt1[3]\ : maxii_lcell
-- Equation(s):
-- cnt1(3) = DFFEAS((((!\Selector8~3\))), GLOBAL(\Clk_Out~regout\), GLOBAL(\Reset~combout\), , \Selector0~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Out~regout\,
	datac => \Selector8~3\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt1(3));

-- Location: LC_X4_Y8_N1
\Selector9~2\ : maxii_lcell
-- Equation(s):
-- \Selector9~2_combout\ = ((!cnt1(3) & (!cnt1(4) & !cnt1(2))))

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
	datab => cnt1(3),
	datac => cnt1(4),
	datad => cnt1(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector9~2_combout\);

-- Location: LC_X3_Y8_N4
\Add3~20\ : maxii_lcell
-- Equation(s):
-- \Add3~20_combout\ = (cnt1(4) $ ((\Add3~17\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => cnt1(4),
	cin0 => \Add3~17\,
	cin1 => \Add3~17COUT1_29\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~20_combout\);

-- Location: LC_X3_Y8_N5
\Selector5~0\ : maxii_lcell
-- Equation(s):
-- \Selector5~0_combout\ = (\Current_State.set_ddram~regout\ & (\Add3~20_combout\ & ((cnt1(1)) # (!\Selector9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c400",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Selector9~2_combout\,
	datab => \Current_State.set_ddram~regout\,
	datac => cnt1(1),
	datad => \Add3~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector5~0_combout\);

-- Location: LC_X4_Y8_N5
\cnt1[4]\ : maxii_lcell
-- Equation(s):
-- cnt1(4) = DFFEAS((((!\Selector5~0_combout\))), GLOBAL(\Clk_Out~regout\), GLOBAL(\Reset~combout\), , \Selector0~0_combout\, , , , )

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
	clk => \Clk_Out~regout\,
	datad => \Selector5~0_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt1(4));

-- Location: LC_X1_Y8_N0
\n2[0]\ : maxii_lcell
-- Equation(s):
-- n2(0) = DFFEAS(((!n2(0))), GLOBAL(\Clk_Out~regout\), VCC, , , , , \LessThan1~2_combout\, )
-- \n2[0]~3\ = CARRY(((n2(0))))
-- \n2[0]~3COUT1_19\ = CARRY(((n2(0))))

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
	clk => \Clk_Out~regout\,
	datab => n2(0),
	aclr => GND,
	sclr => \LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => n2(0),
	cout0 => \n2[0]~3\,
	cout1 => \n2[0]~3COUT1_19\);

-- Location: LC_X1_Y8_N1
\n2[1]\ : maxii_lcell
-- Equation(s):
-- n2(1) = DFFEAS((n2(1) $ ((\n2[0]~3\))), GLOBAL(\Clk_Out~regout\), VCC, , , , , \LessThan1~2_combout\, )
-- \n2[1]~5\ = CARRY(((!\n2[0]~3\) # (!n2(1))))
-- \n2[1]~5COUT1_20\ = CARRY(((!\n2[0]~3COUT1_19\) # (!n2(1))))

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
	clk => \Clk_Out~regout\,
	datab => n2(1),
	aclr => GND,
	sclr => \LessThan1~2_combout\,
	cin0 => \n2[0]~3\,
	cin1 => \n2[0]~3COUT1_19\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => n2(1),
	cout0 => \n2[1]~5\,
	cout1 => \n2[1]~5COUT1_20\);

-- Location: LC_X1_Y8_N2
\n2[2]\ : maxii_lcell
-- Equation(s):
-- n2(2) = DFFEAS((n2(2) $ ((!\n2[1]~5\))), GLOBAL(\Clk_Out~regout\), VCC, , , , , \LessThan1~2_combout\, )
-- \n2[2]~7\ = CARRY(((n2(2) & !\n2[1]~5\)))
-- \n2[2]~7COUT1_21\ = CARRY(((n2(2) & !\n2[1]~5COUT1_20\)))

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
	clk => \Clk_Out~regout\,
	datab => n2(2),
	aclr => GND,
	sclr => \LessThan1~2_combout\,
	cin0 => \n2[1]~5\,
	cin1 => \n2[1]~5COUT1_20\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => n2(2),
	cout0 => \n2[2]~7\,
	cout1 => \n2[2]~7COUT1_21\);

-- Location: LC_X1_Y8_N3
\n2[3]\ : maxii_lcell
-- Equation(s):
-- n2(3) = DFFEAS(n2(3) $ ((((\n2[2]~7\)))), GLOBAL(\Clk_Out~regout\), VCC, , , , , \LessThan1~2_combout\, )
-- \n2[3]~9\ = CARRY(((!\n2[2]~7\)) # (!n2(3)))
-- \n2[3]~9COUT1_22\ = CARRY(((!\n2[2]~7COUT1_21\)) # (!n2(3)))

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
	clk => \Clk_Out~regout\,
	dataa => n2(3),
	aclr => GND,
	sclr => \LessThan1~2_combout\,
	cin0 => \n2[2]~7\,
	cin1 => \n2[2]~7COUT1_21\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => n2(3),
	cout0 => \n2[3]~9\,
	cout1 => \n2[3]~9COUT1_22\);

-- Location: LC_X2_Y8_N6
\LessThan1~0\ : maxii_lcell
-- Equation(s):
-- \LessThan1~0_combout\ = (!n2(2) & (!n2(3) & ((!n2(1)) # (!n2(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0013",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => n2(0),
	datab => n2(2),
	datac => n2(1),
	datad => n2(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan1~0_combout\);

-- Location: LC_X1_Y8_N4
\n2[4]\ : maxii_lcell
-- Equation(s):
-- n2(4) = DFFEAS(n2(4) $ ((((!\n2[3]~9\)))), GLOBAL(\Clk_Out~regout\), VCC, , , , , \LessThan1~2_combout\, )
-- \n2[4]~11\ = CARRY((n2(4) & ((!\n2[3]~9COUT1_22\))))

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
	clk => \Clk_Out~regout\,
	dataa => n2(4),
	aclr => GND,
	sclr => \LessThan1~2_combout\,
	cin0 => \n2[3]~9\,
	cin1 => \n2[3]~9COUT1_22\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => n2(4),
	cout => \n2[4]~11\);

-- Location: LC_X1_Y8_N5
\n2[5]\ : maxii_lcell
-- Equation(s):
-- n2(5) = DFFEAS(n2(5) $ ((((\n2[4]~11\)))), GLOBAL(\Clk_Out~regout\), VCC, , , , , \LessThan1~2_combout\, )
-- \n2[5]~13\ = CARRY(((!\n2[4]~11\)) # (!n2(5)))
-- \n2[5]~13COUT1_23\ = CARRY(((!\n2[4]~11\)) # (!n2(5)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Out~regout\,
	dataa => n2(5),
	aclr => GND,
	sclr => \LessThan1~2_combout\,
	cin => \n2[4]~11\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => n2(5),
	cout0 => \n2[5]~13\,
	cout1 => \n2[5]~13COUT1_23\);

-- Location: LC_X1_Y8_N6
\n2[6]\ : maxii_lcell
-- Equation(s):
-- n2(6) = DFFEAS(n2(6) $ ((((!(!\n2[4]~11\ & \n2[5]~13\) # (\n2[4]~11\ & \n2[5]~13COUT1_23\))))), GLOBAL(\Clk_Out~regout\), VCC, , , , , \LessThan1~2_combout\, )
-- \n2[6]~15\ = CARRY((n2(6) & ((!\n2[5]~13\))))
-- \n2[6]~15COUT1_24\ = CARRY((n2(6) & ((!\n2[5]~13COUT1_23\))))

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
	clk => \Clk_Out~regout\,
	dataa => n2(6),
	aclr => GND,
	sclr => \LessThan1~2_combout\,
	cin => \n2[4]~11\,
	cin0 => \n2[5]~13\,
	cin1 => \n2[5]~13COUT1_23\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => n2(6),
	cout0 => \n2[6]~15\,
	cout1 => \n2[6]~15COUT1_24\);

-- Location: LC_X1_Y8_N7
\n2[7]\ : maxii_lcell
-- Equation(s):
-- n2(7) = DFFEAS((n2(7) $ (((!\n2[4]~11\ & \n2[6]~15\) # (\n2[4]~11\ & \n2[6]~15COUT1_24\)))), GLOBAL(\Clk_Out~regout\), VCC, , , , , \LessThan1~2_combout\, )
-- \n2[7]~17\ = CARRY(((!\n2[6]~15\) # (!n2(7))))
-- \n2[7]~17COUT1_25\ = CARRY(((!\n2[6]~15COUT1_24\) # (!n2(7))))

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
	clk => \Clk_Out~regout\,
	datab => n2(7),
	aclr => GND,
	sclr => \LessThan1~2_combout\,
	cin => \n2[4]~11\,
	cin0 => \n2[6]~15\,
	cin1 => \n2[6]~15COUT1_24\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => n2(7),
	cout0 => \n2[7]~17\,
	cout1 => \n2[7]~17COUT1_25\);

-- Location: LC_X2_Y8_N7
\LessThan1~1\ : maxii_lcell
-- Equation(s):
-- \LessThan1~1_combout\ = (((!n2(7)) # (!n2(6))) # (!n2(4))) # (!n2(5))

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
	dataa => n2(5),
	datab => n2(4),
	datac => n2(6),
	datad => n2(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan1~1_combout\);

-- Location: LC_X1_Y8_N9
\LessThan1~2\ : maxii_lcell
-- Equation(s):
-- \LessThan1~2_combout\ = (n2(8) & (((!\LessThan1~0_combout\ & !\LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => n2(8),
	datac => \LessThan1~0_combout\,
	datad => \LessThan1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan1~2_combout\);

-- Location: LC_X1_Y8_N8
\n2[8]\ : maxii_lcell
-- Equation(s):
-- n2(8) = DFFEAS((((!\n2[4]~11\ & \n2[7]~17\) # (\n2[4]~11\ & \n2[7]~17COUT1_25\) $ (!n2(8)))), GLOBAL(\Clk_Out~regout\), VCC, , , , , \LessThan1~2_combout\, )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f00f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Out~regout\,
	datad => n2(8),
	aclr => GND,
	sclr => \LessThan1~2_combout\,
	cin => \n2[4]~11\,
	cin0 => \n2[7]~17\,
	cin1 => \n2[7]~17COUT1_25\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => n2(8));

-- Location: LC_X6_Y6_N6
CLK1 : maxii_lcell
-- Equation(s):
-- \CLK1~regout\ = DFFEAS(\CLK1~regout\ $ (((n2(8) & (!\LessThan1~0_combout\ & !\LessThan1~1_combout\)))), GLOBAL(\Clk_Out~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccc6",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Out~regout\,
	dataa => n2(8),
	datab => \CLK1~regout\,
	datac => \LessThan1~0_combout\,
	datad => \LessThan1~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CLK1~regout\);

-- Location: LC_X5_Y7_N7
\n3[0]\ : maxii_lcell
-- Equation(s):
-- n3(0) = DFFEAS((((!n3(0)))), GLOBAL(\CLK1~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~regout\,
	datac => n3(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => n3(0));

-- Location: LC_X5_Y7_N3
\n3[1]\ : maxii_lcell
-- Equation(s):
-- n3(1) = DFFEAS(((n3(0) $ (n3(1)))), GLOBAL(\CLK1~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~regout\,
	datac => n3(0),
	datad => n3(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => n3(1));

-- Location: LC_X5_Y7_N6
\n3[2]\ : maxii_lcell
-- Equation(s):
-- n3(2) = DFFEAS(n3(2) $ ((((n3(0) & n3(1))))), GLOBAL(\CLK1~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5aaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~regout\,
	dataa => n3(2),
	datac => n3(0),
	datad => n3(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => n3(2));

-- Location: LC_X5_Y7_N9
\n3[3]\ : maxii_lcell
-- Equation(s):
-- n3(3) = DFFEAS(n3(3) $ (((n3(2) & (n3(0) & n3(1))))), GLOBAL(\CLK1~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6ccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~regout\,
	dataa => n3(2),
	datab => n3(3),
	datac => n3(0),
	datad => n3(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => n3(3));

-- Location: LC_X5_Y7_N1
\m[1]\ : maxii_lcell
-- Equation(s):
-- m(1) = DFFEAS((n3(3) & ((n3(2) & ((!n3(1)) # (!n3(0)))) # (!n3(2) & ((n3(0)) # (n3(1)))))), GLOBAL(\CLK1~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4cc8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~regout\,
	dataa => n3(2),
	datab => n3(3),
	datac => n3(0),
	datad => n3(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => m(1));

-- Location: LC_X5_Y7_N4
\Selector9~3\ : maxii_lcell
-- Equation(s):
-- \Selector9~3_combout\ = ((\Current_State.write_cgram~regout\ & (!m(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Current_State.write_cgram~regout\,
	datac => m(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector9~3_combout\);

-- Location: LC_X5_Y8_N2
\Current_State.write_cgram\ : maxii_lcell
-- Equation(s):
-- \Selector11~5\ = (cnt1(4) & (((Current_State.write_cgram & m(1)))))
-- \Current_State.write_cgram~regout\ = DFFEAS(\Selector11~5\, GLOBAL(\Clk_Out~regout\), GLOBAL(\Reset~combout\), , , \Current_State.set_cgram~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Out~regout\,
	dataa => cnt1(4),
	datac => \Current_State.set_cgram~regout\,
	datad => m(1),
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector11~5\,
	regout => \Current_State.write_cgram~regout\);

-- Location: LC_X4_Y7_N0
\Selector10~1\ : maxii_lcell
-- Equation(s):
-- \Selector10~1_combout\ = (!cnt1(2) & (!cnt1(0) & (cnt1(3) & \Selector11~5\)))

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
	dataa => cnt1(2),
	datab => cnt1(0),
	datac => cnt1(3),
	datad => \Selector11~5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector10~1_combout\);

-- Location: LC_X5_Y8_N4
\Mux17~0\ : maxii_lcell
-- Equation(s):
-- \Mux17~0_combout\ = (cnt1(0) & (cnt1(2) & (!cnt1(3)))) # (!cnt1(0) & (cnt1(1) & (cnt1(2) $ (cnt1(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2260",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => cnt1(2),
	datab => cnt1(3),
	datac => cnt1(1),
	datad => cnt1(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux17~0_combout\);

-- Location: LC_X5_Y7_N5
\Current_State.write_LCD_Data\ : maxii_lcell
-- Equation(s):
-- \Current_State.write_LCD_Data~regout\ = DFFEAS(GND, GLOBAL(\Clk_Out~regout\), GLOBAL(\Reset~combout\), , , \Current_State.set_ddram~regout\, , , VCC)

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
	clk => \Clk_Out~regout\,
	datac => \Current_State.set_ddram~regout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Current_State.write_LCD_Data~regout\);

-- Location: LC_X5_Y8_N1
\Current_State.set_cursor\ : maxii_lcell
-- Equation(s):
-- \Current_State.set_cursor~regout\ = DFFEAS((((\Current_State.write_LCD_Data~regout\) # (!\Current_State.set_dlnf~regout\))), GLOBAL(\Clk_Out~regout\), GLOBAL(\Reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Out~regout\,
	datac => \Current_State.set_dlnf~regout\,
	datad => \Current_State.write_LCD_Data~regout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Current_State.set_cursor~regout\);

-- Location: LC_X5_Y8_N3
\Current_State.set_dcb\ : maxii_lcell
-- Equation(s):
-- \Selector8~4\ = (\Current_State.set_cursor~regout\) # ((Current_State.set_dcb) # ((\Mux17~0_combout\ & \Selector11~5\)))
-- \Current_State.set_dcb~regout\ = DFFEAS(\Selector8~4\, GLOBAL(\Clk_Out~regout\), GLOBAL(\Reset~combout\), , , \Current_State.set_cursor~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fefc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Out~regout\,
	dataa => \Mux17~0_combout\,
	datab => \Current_State.set_cursor~regout\,
	datac => \Current_State.set_cursor~regout\,
	datad => \Selector11~5\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector8~4\,
	regout => \Current_State.set_dcb~regout\);

-- Location: LC_X4_Y7_N5
\Mux12~0\ : maxii_lcell
-- Equation(s):
-- \Mux12~0_combout\ = (cnt1(4) & (cnt1(3) & (cnt1(0) $ (!cnt1(1))))) # (!cnt1(4) & (!cnt1(1) & ((!cnt1(3)) # (!cnt1(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8035",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => cnt1(4),
	datab => cnt1(0),
	datac => cnt1(3),
	datad => cnt1(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux12~0_combout\);

-- Location: LC_X5_Y7_N8
\m[0]\ : maxii_lcell
-- Equation(s):
-- m(0) = DFFEAS((n3(3) & (!n3(1) & (!n3(0) & !n3(2)))) # (!n3(3) & (((n3(2))))), GLOBAL(\CLK1~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3304",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~regout\,
	dataa => n3(1),
	datab => n3(3),
	datac => n3(0),
	datad => n3(2),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => m(0));

-- Location: LC_X4_Y7_N9
\Selector9~4\ : maxii_lcell
-- Equation(s):
-- \Selector9~4_combout\ = ((cnt1(4) & ((m(1)) # (!m(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f030",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => m(0),
	datac => cnt1(4),
	datad => m(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector9~4_combout\);

-- Location: LC_X4_Y8_N0
\Mux5~0\ : maxii_lcell
-- Equation(s):
-- \Mux5~0_combout\ = (cnt1(2) & (!cnt1(1) & (!cnt1(3) & cnt1(0)))) # (!cnt1(2) & (cnt1(1) & (cnt1(3) & !cnt1(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0240",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => cnt1(2),
	datab => cnt1(1),
	datac => cnt1(3),
	datad => cnt1(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~0_combout\);

-- Location: LC_X4_Y9_N1
\Selector10~2\ : maxii_lcell
-- Equation(s):
-- \Selector10~2_combout\ = ((cnt1(2) & (!m(1) & m(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => cnt1(2),
	datac => m(1),
	datad => m(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector10~2_combout\);

-- Location: LC_X4_Y7_N6
\Selector10~3\ : maxii_lcell
-- Equation(s):
-- \Selector10~3_combout\ = (\Mux12~0_combout\ & ((\Selector10~2_combout\) # ((\Selector9~4_combout\ & \Mux5~0_combout\)))) # (!\Mux12~0_combout\ & (\Selector9~4_combout\ & (\Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~0_combout\,
	datab => \Selector9~4_combout\,
	datac => \Mux5~0_combout\,
	datad => \Selector10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector10~3_combout\);

-- Location: LC_X4_Y7_N7
\Current_State.set_cgram\ : maxii_lcell
-- Equation(s):
-- \Selector10~4\ = (\Selector10~1_combout\) # ((Current_State.set_cgram) # ((\Selector9~3_combout\ & \Selector10~3_combout\)))
-- \Current_State.set_cgram~regout\ = DFFEAS(\Selector10~4\, GLOBAL(\Clk_Out~regout\), GLOBAL(\Reset~combout\), , , \Current_State.set_dcb~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fefc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Out~regout\,
	dataa => \Selector9~3_combout\,
	datab => \Selector10~1_combout\,
	datac => \Current_State.set_dcb~regout\,
	datad => \Selector10~3_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector10~4\,
	regout => \Current_State.set_cgram~regout\);

-- Location: LC_X3_Y7_N1
\LCD_RS~reg0\ : maxii_lcell
-- Equation(s):
-- \LCD_RS~reg0_regout\ = DFFEAS((((\Current_State.write_cgram~regout\))), GLOBAL(\Clk_Out~regout\), GLOBAL(\Reset~combout\), , , , , , )

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
	clk => \Clk_Out~regout\,
	datad => \Current_State.write_cgram~regout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_RS~reg0_regout\);

-- Location: LC_X3_Y7_N7
\Mux20~0\ : maxii_lcell
-- Equation(s):
-- \Mux20~0_combout\ = (cnt1(2) & ((cnt1(1) & (cnt1(0) & cnt1(3))) # (!cnt1(1) & (!cnt1(0))))) # (!cnt1(2) & ((cnt1(0) $ (cnt1(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "931c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => cnt1(1),
	datab => cnt1(0),
	datac => cnt1(2),
	datad => cnt1(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux20~0_combout\);

-- Location: LC_X4_Y8_N6
\Selector11~8\ : maxii_lcell
-- Equation(s):
-- \Selector11~8_combout\ = (!cnt1(4) & (!\Mux20~0_combout\ & (m(1) & \Current_State.write_cgram~regout\)))

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
	dataa => cnt1(4),
	datab => \Mux20~0_combout\,
	datac => m(1),
	datad => \Current_State.write_cgram~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector11~8_combout\);

-- Location: LC_X4_Y8_N4
\Mux20~1\ : maxii_lcell
-- Equation(s):
-- \Mux20~1_combout\ = (cnt1(3) & (((!cnt1(2) & cnt1(0))))) # (!cnt1(3) & (!cnt1(1) & (cnt1(2) & !cnt1(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a10",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => cnt1(3),
	datab => cnt1(1),
	datac => cnt1(2),
	datad => cnt1(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux20~1_combout\);

-- Location: LC_X4_Y9_N7
\Equal1~0\ : maxii_lcell
-- Equation(s):
-- \Equal1~0_combout\ = (((!m(1) & m(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => m(1),
	datad => m(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal1~0_combout\);

-- Location: LC_X4_Y9_N4
\Mux13~0\ : maxii_lcell
-- Equation(s):
-- \Mux13~0_combout\ = (cnt1(1) & (((cnt1(0)) # (!cnt1(2))))) # (!cnt1(1) & (!cnt1(0) & ((cnt1(3)) # (cnt1(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc3e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => cnt1(3),
	datab => cnt1(1),
	datac => cnt1(2),
	datad => cnt1(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux13~0_combout\);

-- Location: LC_X4_Y9_N9
\Mux6~0\ : maxii_lcell
-- Equation(s):
-- \Mux6~0_combout\ = (cnt1(1) & (((!cnt1(2) & !cnt1(0))) # (!cnt1(3)))) # (!cnt1(1) & (cnt1(3) $ ((!cnt1(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "656d",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => cnt1(3),
	datab => cnt1(1),
	datac => cnt1(2),
	datad => cnt1(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux6~0_combout\);

-- Location: LC_X4_Y9_N5
\Selector11~4\ : maxii_lcell
-- Equation(s):
-- \Selector11~4_combout\ = (cnt1(4) & (!\Equal1~0_combout\ & ((!\Mux6~0_combout\)))) # (!cnt1(4) & (\Equal1~0_combout\ & (\Mux13~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4062",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => cnt1(4),
	datab => \Equal1~0_combout\,
	datac => \Mux13~0_combout\,
	datad => \Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector11~4_combout\);

-- Location: LC_X4_Y8_N8
\Selector11~6\ : maxii_lcell
-- Equation(s):
-- \Selector11~6_combout\ = (\Mux20~1_combout\ & ((\Selector11~5\) # ((\Selector9~3_combout\ & \Selector11~4_combout\)))) # (!\Mux20~1_combout\ & (((\Selector9~3_combout\ & \Selector11~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~1_combout\,
	datab => \Selector11~5\,
	datac => \Selector9~3_combout\,
	datad => \Selector11~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector11~6_combout\);

-- Location: LC_X4_Y8_N9
\LCD_Data[0]~reg0\ : maxii_lcell
-- Equation(s):
-- \LCD_Data[0]~reg0_regout\ = DFFEAS(((\Selector11~2_combout\) # ((\Selector11~8_combout\) # (\Selector11~6_combout\))) # (!\Current_State.set_dlnf~regout\), GLOBAL(\Clk_Out~regout\), VCC, , \Reset~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffd",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Out~regout\,
	dataa => \Current_State.set_dlnf~regout\,
	datab => \Selector11~2_combout\,
	datac => \Selector11~8_combout\,
	datad => \Selector11~6_combout\,
	aclr => GND,
	ena => \Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Data[0]~reg0_regout\);

-- Location: LC_X5_Y7_N2
\Selector11~3\ : maxii_lcell
-- Equation(s):
-- \Selector11~3_combout\ = ((\Current_State.write_cgram~regout\ & (m(1) & !cnt1(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Current_State.write_cgram~regout\,
	datac => m(1),
	datad => cnt1(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector11~3_combout\);

-- Location: LC_X3_Y7_N4
\Mux19~0\ : maxii_lcell
-- Equation(s):
-- \Mux19~0_combout\ = (cnt1(1) & ((cnt1(0) & (!cnt1(3) & !cnt1(2))) # (!cnt1(0) & ((!cnt1(2)) # (!cnt1(3)))))) # (!cnt1(1) & (cnt1(0) & (cnt1(3) & cnt1(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "422a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => cnt1(1),
	datab => cnt1(0),
	datac => cnt1(3),
	datad => cnt1(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux19~0_combout\);

-- Location: LC_X4_Y7_N8
\LCD_Data[1]~reg0\ : maxii_lcell
-- Equation(s):
-- \LCD_Data[1]~reg0_regout\ = DFFEAS((\Selector10~0_combout\) # ((\Selector10~4\) # ((\Selector11~3_combout\ & \Mux19~0_combout\))), GLOBAL(\Clk_Out~regout\), VCC, , \Reset~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Out~regout\,
	dataa => \Selector11~3_combout\,
	datab => \Mux19~0_combout\,
	datac => \Selector10~0_combout\,
	datad => \Selector10~4\,
	aclr => GND,
	ena => \Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Data[1]~reg0_regout\);

-- Location: LC_X6_Y8_N8
\Mux18~0\ : maxii_lcell
-- Equation(s):
-- \Mux18~0_combout\ = (cnt1(2) & ((cnt1(1) & (!cnt1(3))) # (!cnt1(1) & ((cnt1(3)) # (cnt1(0)))))) # (!cnt1(2) & (cnt1(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6e6c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => cnt1(2),
	datab => cnt1(1),
	datac => cnt1(3),
	datad => cnt1(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux18~0_combout\);

-- Location: LC_X6_Y8_N6
\Selector9~10\ : maxii_lcell
-- Equation(s):
-- \Selector9~10_combout\ = ((\Selector9~9_combout\) # ((\Mux18~0_combout\ & \Selector11~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~0_combout\,
	datac => \Selector11~3_combout\,
	datad => \Selector9~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector9~10_combout\);

-- Location: LC_X5_Y7_N0
\Selector9~7\ : maxii_lcell
-- Equation(s):
-- \Selector9~7_combout\ = (cnt1(4) & (!m(1) & (\Current_State.write_cgram~regout\ & !m(0))))

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
	dataa => cnt1(4),
	datab => m(1),
	datac => \Current_State.write_cgram~regout\,
	datad => m(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector9~7_combout\);

-- Location: LC_X6_Y8_N7
\Mux4~0\ : maxii_lcell
-- Equation(s):
-- \Mux4~0_combout\ = ((cnt1(1) & ((cnt1(0)))) # (!cnt1(1) & (cnt1(2)))) # (!cnt1(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ef2f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => cnt1(2),
	datab => cnt1(1),
	datac => cnt1(3),
	datad => cnt1(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~0_combout\);

-- Location: LC_X6_Y8_N4
\Selector9~12\ : maxii_lcell
-- Equation(s):
-- \Selector9~12_combout\ = (cnt1(2) & (cnt1(1) & (!cnt1(3) & \Selector11~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => cnt1(2),
	datab => cnt1(1),
	datac => cnt1(3),
	datad => \Selector11~5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector9~12_combout\);

-- Location: LC_X6_Y8_N9
\Mux11~0\ : maxii_lcell
-- Equation(s):
-- \Mux11~0_combout\ = (cnt1(2) & (cnt1(0) $ (((cnt1(1) & !cnt1(4)))))) # (!cnt1(2) & ((cnt1(4)) # ((cnt1(1) & !cnt1(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f25c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => cnt1(2),
	datab => cnt1(1),
	datac => cnt1(4),
	datad => cnt1(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux11~0_combout\);

-- Location: LC_X5_Y8_N6
\Selector9~5\ : maxii_lcell
-- Equation(s):
-- \Selector9~5_combout\ = ((cnt1(0) & (\Selector9~2_combout\ & cnt1(1))))

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
	datab => cnt1(0),
	datac => \Selector9~2_combout\,
	datad => cnt1(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector9~5_combout\);

-- Location: LC_X5_Y8_N5
\Selector8~2\ : maxii_lcell
-- Equation(s):
-- \Selector8~2_combout\ = ((\Current_State.write_cgram~regout\ & (m(0) & !m(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Current_State.write_cgram~regout\,
	datac => m(0),
	datad => m(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector8~2_combout\);

-- Location: LC_X6_Y8_N2
\Selector9~6\ : maxii_lcell
-- Equation(s):
-- \Selector9~6_combout\ = (\Selector8~2_combout\ & ((\Selector9~5_combout\) # ((cnt1(3) & !\Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => cnt1(3),
	datab => \Mux11~0_combout\,
	datac => \Selector9~5_combout\,
	datad => \Selector8~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector9~6_combout\);

-- Location: LC_X6_Y8_N3
\Selector9~8\ : maxii_lcell
-- Equation(s):
-- \Selector9~8_combout\ = (\Selector9~12_combout\) # ((\Selector9~6_combout\) # ((\Selector9~7_combout\ & !\Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Selector9~7_combout\,
	datab => \Mux4~0_combout\,
	datac => \Selector9~12_combout\,
	datad => \Selector9~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector9~8_combout\);

-- Location: LC_X6_Y8_N0
\LCD_Data[2]~reg0\ : maxii_lcell
-- Equation(s):
-- \LCD_Data[2]~reg0_regout\ = DFFEAS((\Current_State.set_cgram~regout\) # ((\Current_State.set_dcb~regout\) # ((\Selector9~10_combout\) # (\Selector9~8_combout\))), GLOBAL(\Clk_Out~regout\), VCC, , \Reset~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Out~regout\,
	dataa => \Current_State.set_cgram~regout\,
	datab => \Current_State.set_dcb~regout\,
	datac => \Selector9~10_combout\,
	datad => \Selector9~8_combout\,
	aclr => GND,
	ena => \Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Data[2]~reg0_regout\);

-- Location: LC_X4_Y9_N2
\Mux3~0\ : maxii_lcell
-- Equation(s):
-- \Mux3~0_combout\ = (cnt1(2) & ((cnt1(1) & ((!cnt1(3)))) # (!cnt1(1) & ((cnt1(0)) # (cnt1(3)))))) # (!cnt1(2) & (((cnt1(0)) # (!cnt1(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "72fd",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => cnt1(2),
	datab => cnt1(1),
	datac => cnt1(0),
	datad => cnt1(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~0_combout\);

-- Location: LC_X4_Y9_N3
\Selector8~7\ : maxii_lcell
-- Equation(s):
-- \Selector8~7_combout\ = (!cnt1(0) & (!cnt1(1) & (cnt1(3) & \Selector10~2_combout\)))

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
	dataa => cnt1(0),
	datab => cnt1(1),
	datac => cnt1(3),
	datad => \Selector10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector8~7_combout\);

-- Location: LC_X4_Y9_N0
\Selector8~9\ : maxii_lcell
-- Equation(s):
-- \Selector8~9_combout\ = (\Selector8~7_combout\) # ((!\Mux3~0_combout\ & ((m(1)) # (!m(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff23",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => m(1),
	datab => \Mux3~0_combout\,
	datac => m(0),
	datad => \Selector8~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector8~9_combout\);

-- Location: LC_X6_Y8_N1
\Mux17~1\ : maxii_lcell
-- Equation(s):
-- \Mux17~1_combout\ = (cnt1(3) & ((cnt1(0) & ((cnt1(1)))) # (!cnt1(0) & (!cnt1(2))))) # (!cnt1(3) & (cnt1(1) $ (((!cnt1(2)) # (!cnt1(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ca17",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => cnt1(3),
	datab => cnt1(0),
	datac => cnt1(2),
	datad => cnt1(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux17~1_combout\);

-- Location: LC_X5_Y8_N0
\Mux10~0\ : maxii_lcell
-- Equation(s):
-- \Mux10~0_combout\ = (cnt1(2) & ((cnt1(0) & ((cnt1(3)))) # (!cnt1(0) & (!cnt1(1))))) # (!cnt1(2) & (cnt1(1) & (cnt1(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e424",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => cnt1(1),
	datab => cnt1(2),
	datac => cnt1(0),
	datad => cnt1(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux10~0_combout\);

-- Location: LC_X5_Y8_N8
\Selector8~5\ : maxii_lcell
-- Equation(s):
-- \Selector8~5_combout\ = (\Selector8~4\) # ((!cnt1(4) & (\Mux10~0_combout\ & \Selector8~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff40",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => cnt1(4),
	datab => \Mux10~0_combout\,
	datac => \Selector8~2_combout\,
	datad => \Selector8~4\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector8~5_combout\);

-- Location: LC_X5_Y8_N9
\Selector8~6\ : maxii_lcell
-- Equation(s):
-- \Selector8~6_combout\ = (\Selector8~3\) # ((\Selector8~5_combout\) # ((!\Mux17~1_combout\ & \Selector11~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~1_combout\,
	datab => \Selector11~3_combout\,
	datac => \Selector8~3\,
	datad => \Selector8~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector8~6_combout\);

-- Location: LC_X5_Y8_N7
\LCD_Data[3]~reg0\ : maxii_lcell
-- Equation(s):
-- \LCD_Data[3]~reg0_regout\ = DFFEAS((\Selector8~6_combout\) # ((\Selector9~3_combout\ & (cnt1(4) & \Selector8~9_combout\))), GLOBAL(\Clk_Out~regout\), VCC, , \Reset~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff80",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Out~regout\,
	dataa => \Selector9~3_combout\,
	datab => cnt1(4),
	datac => \Selector8~9_combout\,
	datad => \Selector8~6_combout\,
	aclr => GND,
	ena => \Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Data[3]~reg0_regout\);

-- Location: LC_X6_Y7_N5
\Selector7~0\ : maxii_lcell
-- Equation(s):
-- \Selector7~0_combout\ = (cnt1(0) & (cnt1(2) & (cnt1(1) $ (!cnt1(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8020",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => cnt1(0),
	datab => cnt1(1),
	datac => cnt1(2),
	datad => cnt1(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector7~0_combout\);

-- Location: LC_X6_Y7_N6
\Selector7~2\ : maxii_lcell
-- Equation(s):
-- \Selector7~2_combout\ = (cnt1(3) & (!cnt1(2) & (cnt1(1) $ (cnt1(0))))) # (!cnt1(3) & (cnt1(1) & (cnt1(2) & cnt1(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4208",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => cnt1(3),
	datab => cnt1(1),
	datac => cnt1(2),
	datad => cnt1(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector7~2_combout\);

-- Location: LC_X6_Y7_N7
\Selector7~1\ : maxii_lcell
-- Equation(s):
-- \Selector7~1_combout\ = ((\Selector8~2_combout\ & (cnt1(3) $ (!cnt1(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a500",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => cnt1(3),
	datac => cnt1(4),
	datad => \Selector8~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector7~1_combout\);

-- Location: LC_X6_Y7_N8
\Selector7~3\ : maxii_lcell
-- Equation(s):
-- \Selector7~3_combout\ = (\Selector7~0_combout\ & (!\Selector7~2_combout\ & ((\Selector9~7_combout\) # (\Selector7~1_combout\)))) # (!\Selector7~0_combout\ & (\Selector7~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6664",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Selector7~0_combout\,
	datab => \Selector7~2_combout\,
	datac => \Selector9~7_combout\,
	datad => \Selector7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector7~3_combout\);

-- Location: LC_X6_Y7_N9
\LCD_Data[4]~reg0\ : maxii_lcell
-- Equation(s):
-- \LCD_Data[4]~reg0_regout\ = DFFEAS((\Current_State.set_cursor~regout\) # ((\Selector7~3_combout\ & ((\Selector11~3_combout\) # (\Selector7~0_combout\)))), GLOBAL(\Clk_Out~regout\), VCC, , \Reset~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fecc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Out~regout\,
	dataa => \Selector11~3_combout\,
	datab => \Current_State.set_cursor~regout\,
	datac => \Selector7~0_combout\,
	datad => \Selector7~3_combout\,
	aclr => GND,
	ena => \Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Data[4]~reg0_regout\);

-- Location: LC_X3_Y9_N6
\Mux15~0\ : maxii_lcell
-- Equation(s):
-- \Mux15~0_combout\ = (cnt1(0) & ((cnt1(1)) # ((cnt1(2) & cnt1(3))))) # (!cnt1(0) & (((!cnt1(3))) # (!cnt1(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "df93",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => cnt1(2),
	datab => cnt1(0),
	datac => cnt1(3),
	datad => cnt1(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux15~0_combout\);

-- Location: LC_X3_Y9_N7
\Selector6~1\ : maxii_lcell
-- Equation(s):
-- \Selector6~1_combout\ = ((\Current_State.set_cursor~regout\) # ((\Mux15~0_combout\ & \Selector11~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fccc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Current_State.set_cursor~regout\,
	datac => \Mux15~0_combout\,
	datad => \Selector11~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector6~1_combout\);

-- Location: LC_X4_Y9_N6
\Selector6~0\ : maxii_lcell
-- Equation(s):
-- \Selector6~0_combout\ = ((\Selector11~5\ & (cnt1(3) $ (!cnt1(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => cnt1(3),
	datac => cnt1(2),
	datad => \Selector11~5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector6~0_combout\);

-- Location: LC_X4_Y9_N8
\Selector6~3\ : maxii_lcell
-- Equation(s):
-- \Selector6~3_combout\ = (cnt1(0) & ((cnt1(4)) # ((!\Equal1~0_combout\)))) # (!cnt1(0) & (((!cnt1(3))) # (!cnt1(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9dbf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => cnt1(0),
	datab => cnt1(4),
	datac => cnt1(3),
	datad => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector6~3_combout\);

-- Location: LC_X3_Y9_N1
\Selector6~4\ : maxii_lcell
-- Equation(s):
-- \Selector6~4_combout\ = (((\Selector6~3_combout\) # (!cnt1(2)))) # (!cnt1(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff5f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => cnt1(1),
	datac => cnt1(2),
	datad => \Selector6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector6~4_combout\);

-- Location: LC_X3_Y9_N2
\LCD_Data[5]~reg0\ : maxii_lcell
-- Equation(s):
-- \LCD_Data[5]~reg0_regout\ = DFFEAS((\Selector6~1_combout\) # ((\Selector6~0_combout\) # ((\Selector9~3_combout\ & \Selector6~4_combout\))), GLOBAL(\Clk_Out~regout\), VCC, , \Reset~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fefc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Out~regout\,
	dataa => \Selector9~3_combout\,
	datab => \Selector6~1_combout\,
	datac => \Selector6~0_combout\,
	datad => \Selector6~4_combout\,
	aclr => GND,
	ena => \Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Data[5]~reg0_regout\);

-- Location: LC_X3_Y7_N2
\Mux14~0\ : maxii_lcell
-- Equation(s):
-- \Mux14~0_combout\ = (cnt1(1) & (cnt1(0) & (cnt1(3) & cnt1(2)))) # (!cnt1(1) & ((cnt1(0) & (!cnt1(3) & !cnt1(2))) # (!cnt1(0) & (cnt1(3) $ (cnt1(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8114",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => cnt1(1),
	datab => cnt1(0),
	datac => cnt1(3),
	datad => cnt1(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux14~0_combout\);

-- Location: LC_X3_Y7_N5
\Mux0~0\ : maxii_lcell
-- Equation(s):
-- \Mux0~0_combout\ = (cnt1(3) $ (((cnt1(1)) # (!cnt1(2))))) # (!cnt1(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7b3f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => cnt1(1),
	datab => cnt1(4),
	datac => cnt1(3),
	datad => cnt1(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~0_combout\);

-- Location: LC_X4_Y7_N4
\Selector5~5\ : maxii_lcell
-- Equation(s):
-- \Selector5~5_combout\ = (cnt1(4) & (cnt1(3) & (cnt1(0) $ (!\Selector5~4\)))) # (!cnt1(4) & ((\Selector5~4\) # ((cnt1(0) & cnt1(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d560",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => cnt1(4),
	datab => cnt1(0),
	datac => cnt1(3),
	datad => \Selector5~4\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector5~5_combout\);

-- Location: LC_X4_Y7_N1
\Selector5~1\ : maxii_lcell
-- Equation(s):
-- \Selector5~1_combout\ = (\Selector9~3_combout\ & ((\Equal1~0_combout\ & ((\Selector5~5_combout\))) # (!\Equal1~0_combout\ & (!\Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c044",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \Selector9~3_combout\,
	datac => \Selector5~5_combout\,
	datad => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector5~1_combout\);

-- Location: LC_X4_Y7_N2
\Selector5~2\ : maxii_lcell
-- Equation(s):
-- \Selector5~2_combout\ = (\Selector5~1_combout\) # ((\Selector11~5\ & (cnt1(3) $ (cnt1(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff28",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Selector11~5\,
	datab => cnt1(3),
	datac => cnt1(2),
	datad => \Selector5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector5~2_combout\);

-- Location: LC_X4_Y7_N3
\LCD_Data[6]~reg0\ : maxii_lcell
-- Equation(s):
-- \LCD_Data[6]~reg0_regout\ = DFFEAS((\Selector5~0_combout\) # ((\Selector5~2_combout\) # ((\Selector11~3_combout\ & !\Mux14~0_combout\))), GLOBAL(\Clk_Out~regout\), VCC, , \Reset~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff2",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Out~regout\,
	dataa => \Selector11~3_combout\,
	datab => \Mux14~0_combout\,
	datac => \Selector5~0_combout\,
	datad => \Selector5~2_combout\,
	aclr => GND,
	ena => \Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Data[6]~reg0_regout\);

-- Location: LC_X3_Y7_N8
\LCD_Data[7]~reg0\ : maxii_lcell
-- Equation(s):
-- \LCD_Data[7]~reg0_regout\ = DFFEAS((((\Current_State.set_ddram~regout\))), GLOBAL(\Clk_Out~regout\), VCC, , \Reset~combout\, , , , )

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
	clk => \Clk_Out~regout\,
	datad => \Current_State.set_ddram~regout\,
	aclr => GND,
	ena => \Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Data[7]~reg0_regout\);

-- Location: PIN_22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\LCD_RS~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \LCD_RS~reg0_regout\,
	oe => VCC,
	padio => ww_LCD_RS);

-- Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\LCD_RW~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_LCD_RW);

-- Location: PIN_23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\LCD_EN~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Clk_Out~regout\,
	oe => VCC,
	padio => ww_LCD_EN);

-- Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\LCD_Data[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \LCD_Data[0]~reg0_regout\,
	oe => VCC,
	padio => ww_LCD_Data(0));

-- Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\LCD_Data[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \LCD_Data[1]~reg0_regout\,
	oe => VCC,
	padio => ww_LCD_Data(1));

-- Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\LCD_Data[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \LCD_Data[2]~reg0_regout\,
	oe => VCC,
	padio => ww_LCD_Data(2));

-- Location: PIN_29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\LCD_Data[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \LCD_Data[3]~reg0_regout\,
	oe => VCC,
	padio => ww_LCD_Data(3));

-- Location: PIN_32,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\LCD_Data[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \LCD_Data[4]~reg0_regout\,
	oe => VCC,
	padio => ww_LCD_Data(4));

-- Location: PIN_31,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\LCD_Data[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \LCD_Data[5]~reg0_regout\,
	oe => VCC,
	padio => ww_LCD_Data(5));

-- Location: PIN_37,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\LCD_Data[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \LCD_Data[6]~reg0_regout\,
	oe => VCC,
	padio => ww_LCD_Data(6));

-- Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\LCD_Data[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \LCD_Data[7]~reg0_regout\,
	oe => VCC,
	padio => ww_LCD_Data(7));
END structure;


