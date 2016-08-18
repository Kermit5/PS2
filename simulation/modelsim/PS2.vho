-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version"

-- DATE "08/12/2016 23:37:06"

-- 
-- Device: Altera EP2C8Q208C8 Package PQFP208
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	DATA_SCAN IS
    PORT (
	SYS_CLK : IN std_logic;
	K_DATA : IN std_logic;
	K_CLOCK : IN std_logic;
	RST : IN std_logic;
	DATA : OUT std_logic_vector(7 DOWNTO 0);
	PA : INOUT std_logic_vector(7 DOWNTO 0);
	ZHJS : INOUT std_logic
	);
END DATA_SCAN;

-- Design Ports Information
-- PA[0]	=>  Location: PIN_161,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PA[1]	=>  Location: PIN_175,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PA[2]	=>  Location: PIN_171,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PA[3]	=>  Location: PIN_168,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PA[4]	=>  Location: PIN_170,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PA[5]	=>  Location: PIN_151,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PA[6]	=>  Location: PIN_147,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PA[7]	=>  Location: PIN_165,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ZHJS	=>  Location: PIN_176,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DATA[0]	=>  Location: PIN_164,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DATA[1]	=>  Location: PIN_173,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DATA[2]	=>  Location: PIN_163,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DATA[3]	=>  Location: PIN_149,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DATA[4]	=>  Location: PIN_152,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DATA[5]	=>  Location: PIN_150,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DATA[6]	=>  Location: PIN_169,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DATA[7]	=>  Location: PIN_146,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SYS_CLK	=>  Location: PIN_23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RST	=>  Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- K_DATA	=>  Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- K_CLOCK	=>  Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF DATA_SCAN IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SYS_CLK : std_logic;
SIGNAL ww_K_DATA : std_logic;
SIGNAL ww_K_CLOCK : std_logic;
SIGNAL ww_RST : std_logic;
SIGNAL ww_DATA : std_logic_vector(7 DOWNTO 0);
SIGNAL \RST~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SYS_CLK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SYS_CLK~combout\ : std_logic;
SIGNAL \SYS_CLK~clkctrl_outclk\ : std_logic;
SIGNAL \K_CLOCK~combout\ : std_logic;
SIGNAL \CUR_KBCLK~feeder_combout\ : std_logic;
SIGNAL \RST~combout\ : std_logic;
SIGNAL \CUR_KBCLK~regout\ : std_logic;
SIGNAL \PRE_KBCLK~feeder_combout\ : std_logic;
SIGNAL \PRE_KBCLK~regout\ : std_logic;
SIGNAL \CNT[1]~1_combout\ : std_logic;
SIGNAL \RST~clkctrl_outclk\ : std_logic;
SIGNAL \CNT~2_combout\ : std_logic;
SIGNAL \P1~1_combout\ : std_logic;
SIGNAL \CNT~3_combout\ : std_logic;
SIGNAL \P1~0_combout\ : std_logic;
SIGNAL \START~regout\ : std_logic;
SIGNAL \K_DATA~combout\ : std_logic;
SIGNAL \CNT~0_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \TEMP[2]~1_combout\ : std_logic;
SIGNAL \PA~16_combout\ : std_logic;
SIGNAL \PA[0]~reg0_regout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \TEMP[3]~2_combout\ : std_logic;
SIGNAL \PA~17_combout\ : std_logic;
SIGNAL \PA[1]~reg0_regout\ : std_logic;
SIGNAL \TEMP[2]~0_combout\ : std_logic;
SIGNAL \Mux7~3_combout\ : std_logic;
SIGNAL \TEMP[4]~3_combout\ : std_logic;
SIGNAL \PA~18_combout\ : std_logic;
SIGNAL \PA[2]~reg0_regout\ : std_logic;
SIGNAL \Mux7~4_combout\ : std_logic;
SIGNAL \TEMP[5]~4_combout\ : std_logic;
SIGNAL \PA~19_combout\ : std_logic;
SIGNAL \PA[3]~reg0_regout\ : std_logic;
SIGNAL \Mux7~5_combout\ : std_logic;
SIGNAL \TEMP[6]~5_combout\ : std_logic;
SIGNAL \PA~20_combout\ : std_logic;
SIGNAL \PA[4]~reg0_regout\ : std_logic;
SIGNAL \Mux7~6_combout\ : std_logic;
SIGNAL \TEMP[7]~6_combout\ : std_logic;
SIGNAL \PA~21_combout\ : std_logic;
SIGNAL \PA[5]~reg0_regout\ : std_logic;
SIGNAL \Mux7~7_combout\ : std_logic;
SIGNAL \TEMP[8]~7_combout\ : std_logic;
SIGNAL \PA~22_combout\ : std_logic;
SIGNAL \PA[6]~reg0_regout\ : std_logic;
SIGNAL \Mux7~8_combout\ : std_logic;
SIGNAL \TEMP[9]~8_combout\ : std_logic;
SIGNAL \PA~23_combout\ : std_logic;
SIGNAL \PA[7]~reg0_regout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \ZHJS~2_combout\ : std_logic;
SIGNAL \ZHJS~reg0_regout\ : std_logic;
SIGNAL \DATA[0]~reg0feeder_combout\ : std_logic;
SIGNAL \DATA[0]~reg0_regout\ : std_logic;
SIGNAL \DATA[1]~reg0feeder_combout\ : std_logic;
SIGNAL \DATA[1]~reg0_regout\ : std_logic;
SIGNAL \DATA[2]~reg0_regout\ : std_logic;
SIGNAL \DATA[3]~reg0feeder_combout\ : std_logic;
SIGNAL \DATA[3]~reg0_regout\ : std_logic;
SIGNAL \DATA[4]~reg0feeder_combout\ : std_logic;
SIGNAL \DATA[4]~reg0_regout\ : std_logic;
SIGNAL \DATA[5]~reg0feeder_combout\ : std_logic;
SIGNAL \DATA[5]~reg0_regout\ : std_logic;
SIGNAL \DATA[6]~reg0feeder_combout\ : std_logic;
SIGNAL \DATA[6]~reg0_regout\ : std_logic;
SIGNAL \DATA[7]~reg0feeder_combout\ : std_logic;
SIGNAL \DATA[7]~reg0_regout\ : std_logic;
SIGNAL TEMP : std_logic_vector(11 DOWNTO 0);
SIGNAL CNT : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_RST~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_ZHJS~reg0_regout\ : std_logic;

BEGIN

ww_SYS_CLK <= SYS_CLK;
ww_K_DATA <= K_DATA;
ww_K_CLOCK <= K_CLOCK;
ww_RST <= RST;
DATA <= ww_DATA;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\RST~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \RST~combout\);

\SYS_CLK~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \SYS_CLK~combout\);
\ALT_INV_RST~clkctrl_outclk\ <= NOT \RST~clkctrl_outclk\;
\ALT_INV_ZHJS~reg0_regout\ <= NOT \ZHJS~reg0_regout\;

-- Location: PIN_23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SYS_CLK~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SYS_CLK,
	combout => \SYS_CLK~combout\);

-- Location: CLKCTRL_G2
\SYS_CLK~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \SYS_CLK~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \SYS_CLK~clkctrl_outclk\);

-- Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\K_CLOCK~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_K_CLOCK,
	combout => \K_CLOCK~combout\);

-- Location: LCCOMB_X25_Y16_N8
\CUR_KBCLK~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \CUR_KBCLK~feeder_combout\ = \K_CLOCK~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \K_CLOCK~combout\,
	combout => \CUR_KBCLK~feeder_combout\);

-- Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RST~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_RST,
	combout => \RST~combout\);

-- Location: LCFF_X25_Y16_N9
CUR_KBCLK : cycloneii_lcell_ff
PORT MAP (
	clk => \SYS_CLK~clkctrl_outclk\,
	datain => \CUR_KBCLK~feeder_combout\,
	ena => \RST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CUR_KBCLK~regout\);

-- Location: LCCOMB_X25_Y16_N6
\PRE_KBCLK~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \PRE_KBCLK~feeder_combout\ = \CUR_KBCLK~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CUR_KBCLK~regout\,
	combout => \PRE_KBCLK~feeder_combout\);

-- Location: LCFF_X25_Y16_N7
PRE_KBCLK : cycloneii_lcell_ff
PORT MAP (
	clk => \SYS_CLK~clkctrl_outclk\,
	datain => \PRE_KBCLK~feeder_combout\,
	ena => \RST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PRE_KBCLK~regout\);

-- Location: LCCOMB_X24_Y16_N14
\CNT[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT[1]~1_combout\ = CNT(1) $ (((CNT(0) & (\PRE_KBCLK~regout\ & !\CUR_KBCLK~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CNT(0),
	datab => \PRE_KBCLK~regout\,
	datac => CNT(1),
	datad => \CUR_KBCLK~regout\,
	combout => \CNT[1]~1_combout\);

-- Location: CLKCTRL_G1
\RST~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RST~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RST~clkctrl_outclk\);

-- Location: LCFF_X24_Y16_N15
\CNT[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \SYS_CLK~clkctrl_outclk\,
	datain => \CNT[1]~1_combout\,
	aclr => \ALT_INV_RST~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CNT(1));

-- Location: LCCOMB_X24_Y16_N12
\CNT~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT~2_combout\ = (CNT(0) & ((CNT(2) & ((!CNT(1)))) # (!CNT(2) & (!CNT(3) & CNT(1))))) # (!CNT(0) & (((CNT(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CNT(0),
	datab => CNT(3),
	datac => CNT(2),
	datad => CNT(1),
	combout => \CNT~2_combout\);

-- Location: LCCOMB_X25_Y16_N30
\P1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \P1~1_combout\ = (!\CUR_KBCLK~regout\ & \PRE_KBCLK~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CUR_KBCLK~regout\,
	datad => \PRE_KBCLK~regout\,
	combout => \P1~1_combout\);

-- Location: LCFF_X24_Y16_N13
\CNT[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \SYS_CLK~clkctrl_outclk\,
	datain => \CNT~2_combout\,
	aclr => \ALT_INV_RST~clkctrl_outclk\,
	ena => \P1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CNT(2));

-- Location: LCCOMB_X24_Y16_N2
\CNT~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT~3_combout\ = (CNT(0) & ((CNT(3) & ((!CNT(1)))) # (!CNT(3) & (CNT(2) & CNT(1))))) # (!CNT(0) & (((CNT(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CNT(0),
	datab => CNT(2),
	datac => CNT(3),
	datad => CNT(1),
	combout => \CNT~3_combout\);

-- Location: LCFF_X24_Y16_N3
\CNT[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \SYS_CLK~clkctrl_outclk\,
	datain => \CNT~3_combout\,
	aclr => \ALT_INV_RST~clkctrl_outclk\,
	ena => \P1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CNT(3));

-- Location: LCCOMB_X25_Y16_N26
\P1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \P1~0_combout\ = CNT(3) $ (((CNT(2)) # (CNT(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CNT(2),
	datac => CNT(3),
	datad => CNT(1),
	combout => \P1~0_combout\);

-- Location: LCFF_X25_Y16_N27
START : cycloneii_lcell_ff
PORT MAP (
	clk => \SYS_CLK~clkctrl_outclk\,
	datain => \P1~0_combout\,
	aclr => \ALT_INV_RST~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \START~regout\);

-- Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\K_DATA~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_K_DATA,
	combout => \K_DATA~combout\);

-- Location: LCCOMB_X24_Y16_N4
\CNT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT~0_combout\ = ((!CNT(2) & (CNT(3) & CNT(1)))) # (!CNT(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CNT(2),
	datab => CNT(3),
	datac => CNT(0),
	datad => CNT(1),
	combout => \CNT~0_combout\);

-- Location: LCFF_X24_Y16_N5
\CNT[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \SYS_CLK~clkctrl_outclk\,
	datain => \CNT~0_combout\,
	aclr => \ALT_INV_RST~clkctrl_outclk\,
	ena => \P1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CNT(0));

-- Location: LCCOMB_X25_Y16_N18
\Mux7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (CNT(1) & (!CNT(0) & (!CNT(3) & !CNT(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CNT(1),
	datab => CNT(0),
	datac => CNT(3),
	datad => CNT(2),
	combout => \Mux7~1_combout\);

-- Location: LCCOMB_X25_Y16_N16
\TEMP[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \TEMP[2]~1_combout\ = (\TEMP[2]~0_combout\ & ((\Mux7~1_combout\ & (\K_DATA~combout\)) # (!\Mux7~1_combout\ & ((TEMP(2)))))) # (!\TEMP[2]~0_combout\ & (((TEMP(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TEMP[2]~0_combout\,
	datab => \K_DATA~combout\,
	datac => TEMP(2),
	datad => \Mux7~1_combout\,
	combout => \TEMP[2]~1_combout\);

-- Location: LCFF_X25_Y16_N17
\TEMP[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \SYS_CLK~clkctrl_outclk\,
	datain => \TEMP[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => TEMP(2));

-- Location: LCCOMB_X26_Y16_N12
\PA~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \PA~16_combout\ = (!\START~regout\ & TEMP(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \START~regout\,
	datad => TEMP(2),
	combout => \PA~16_combout\);

-- Location: LCFF_X26_Y16_N13
\PA[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \SYS_CLK~clkctrl_outclk\,
	datain => \PA~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PA[0]~reg0_regout\);

-- Location: LCCOMB_X24_Y16_N22
\Mux7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = (!CNT(2) & (!CNT(3) & (CNT(0) & CNT(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CNT(2),
	datab => CNT(3),
	datac => CNT(0),
	datad => CNT(1),
	combout => \Mux7~2_combout\);

-- Location: LCCOMB_X25_Y16_N22
\TEMP[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \TEMP[3]~2_combout\ = (\TEMP[2]~0_combout\ & ((\Mux7~2_combout\ & (\K_DATA~combout\)) # (!\Mux7~2_combout\ & ((TEMP(3)))))) # (!\TEMP[2]~0_combout\ & (((TEMP(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TEMP[2]~0_combout\,
	datab => \K_DATA~combout\,
	datac => TEMP(3),
	datad => \Mux7~2_combout\,
	combout => \TEMP[3]~2_combout\);

-- Location: LCFF_X25_Y16_N23
\TEMP[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \SYS_CLK~clkctrl_outclk\,
	datain => \TEMP[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => TEMP(3));

-- Location: LCCOMB_X26_Y16_N10
\PA~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \PA~17_combout\ = (!\START~regout\ & TEMP(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \START~regout\,
	datad => TEMP(3),
	combout => \PA~17_combout\);

-- Location: LCFF_X26_Y16_N11
\PA[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \SYS_CLK~clkctrl_outclk\,
	datain => \PA~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PA[1]~reg0_regout\);

-- Location: LCCOMB_X25_Y16_N24
\TEMP[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \TEMP[2]~0_combout\ = (\RST~combout\ & (!\CUR_KBCLK~regout\ & \PRE_KBCLK~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~combout\,
	datac => \CUR_KBCLK~regout\,
	datad => \PRE_KBCLK~regout\,
	combout => \TEMP[2]~0_combout\);

-- Location: LCCOMB_X24_Y16_N0
\Mux7~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~3_combout\ = (CNT(2) & (!CNT(1) & (!CNT(0) & !CNT(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CNT(2),
	datab => CNT(1),
	datac => CNT(0),
	datad => CNT(3),
	combout => \Mux7~3_combout\);

-- Location: LCCOMB_X24_Y16_N24
\TEMP[4]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \TEMP[4]~3_combout\ = (\TEMP[2]~0_combout\ & ((\Mux7~3_combout\ & (\K_DATA~combout\)) # (!\Mux7~3_combout\ & ((TEMP(4)))))) # (!\TEMP[2]~0_combout\ & (((TEMP(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \K_DATA~combout\,
	datab => \TEMP[2]~0_combout\,
	datac => TEMP(4),
	datad => \Mux7~3_combout\,
	combout => \TEMP[4]~3_combout\);

-- Location: LCFF_X24_Y16_N25
\TEMP[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \SYS_CLK~clkctrl_outclk\,
	datain => \TEMP[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => TEMP(4));

-- Location: LCCOMB_X26_Y16_N8
\PA~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \PA~18_combout\ = (TEMP(4) & !\START~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => TEMP(4),
	datad => \START~regout\,
	combout => \PA~18_combout\);

-- Location: LCFF_X26_Y16_N9
\PA[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \SYS_CLK~clkctrl_outclk\,
	datain => \PA~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PA[2]~reg0_regout\);

-- Location: LCCOMB_X24_Y16_N18
\Mux7~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~4_combout\ = (CNT(2) & (!CNT(1) & (CNT(0) & !CNT(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CNT(2),
	datab => CNT(1),
	datac => CNT(0),
	datad => CNT(3),
	combout => \Mux7~4_combout\);

-- Location: LCCOMB_X25_Y16_N12
\TEMP[5]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \TEMP[5]~4_combout\ = (\TEMP[2]~0_combout\ & ((\Mux7~4_combout\ & (\K_DATA~combout\)) # (!\Mux7~4_combout\ & ((TEMP(5)))))) # (!\TEMP[2]~0_combout\ & (((TEMP(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TEMP[2]~0_combout\,
	datab => \K_DATA~combout\,
	datac => TEMP(5),
	datad => \Mux7~4_combout\,
	combout => \TEMP[5]~4_combout\);

-- Location: LCFF_X25_Y16_N13
\TEMP[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \SYS_CLK~clkctrl_outclk\,
	datain => \TEMP[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => TEMP(5));

-- Location: LCCOMB_X26_Y16_N6
\PA~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \PA~19_combout\ = (!\START~regout\ & TEMP(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \START~regout\,
	datad => TEMP(5),
	combout => \PA~19_combout\);

-- Location: LCFF_X26_Y16_N7
\PA[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \SYS_CLK~clkctrl_outclk\,
	datain => \PA~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PA[3]~reg0_regout\);

-- Location: LCCOMB_X24_Y16_N16
\Mux7~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~5_combout\ = (CNT(2) & (!CNT(0) & (CNT(1) & !CNT(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CNT(2),
	datab => CNT(0),
	datac => CNT(1),
	datad => CNT(3),
	combout => \Mux7~5_combout\);

-- Location: LCCOMB_X25_Y16_N14
\TEMP[6]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \TEMP[6]~5_combout\ = (\TEMP[2]~0_combout\ & ((\Mux7~5_combout\ & (\K_DATA~combout\)) # (!\Mux7~5_combout\ & ((TEMP(6)))))) # (!\TEMP[2]~0_combout\ & (((TEMP(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TEMP[2]~0_combout\,
	datab => \K_DATA~combout\,
	datac => TEMP(6),
	datad => \Mux7~5_combout\,
	combout => \TEMP[6]~5_combout\);

-- Location: LCFF_X25_Y16_N15
\TEMP[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \SYS_CLK~clkctrl_outclk\,
	datain => \TEMP[6]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => TEMP(6));

-- Location: LCCOMB_X25_Y16_N2
\PA~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \PA~20_combout\ = (TEMP(6) & !\START~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => TEMP(6),
	datad => \START~regout\,
	combout => \PA~20_combout\);

-- Location: LCFF_X25_Y16_N3
\PA[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \SYS_CLK~clkctrl_outclk\,
	datain => \PA~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PA[4]~reg0_regout\);

-- Location: LCCOMB_X24_Y16_N30
\Mux7~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~6_combout\ = (CNT(1) & (CNT(0) & (CNT(2) & !CNT(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CNT(1),
	datab => CNT(0),
	datac => CNT(2),
	datad => CNT(3),
	combout => \Mux7~6_combout\);

-- Location: LCCOMB_X24_Y16_N26
\TEMP[7]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \TEMP[7]~6_combout\ = (\TEMP[2]~0_combout\ & ((\Mux7~6_combout\ & (\K_DATA~combout\)) # (!\Mux7~6_combout\ & ((TEMP(7)))))) # (!\TEMP[2]~0_combout\ & (((TEMP(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \K_DATA~combout\,
	datab => \TEMP[2]~0_combout\,
	datac => TEMP(7),
	datad => \Mux7~6_combout\,
	combout => \TEMP[7]~6_combout\);

-- Location: LCFF_X24_Y16_N27
\TEMP[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \SYS_CLK~clkctrl_outclk\,
	datain => \TEMP[7]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => TEMP(7));

-- Location: LCCOMB_X26_Y16_N28
\PA~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \PA~21_combout\ = (TEMP(7) & !\START~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => TEMP(7),
	datad => \START~regout\,
	combout => \PA~21_combout\);

-- Location: LCFF_X26_Y16_N29
\PA[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \SYS_CLK~clkctrl_outclk\,
	datain => \PA~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PA[5]~reg0_regout\);

-- Location: LCCOMB_X24_Y16_N8
\Mux7~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~7_combout\ = (!CNT(2) & (!CNT(1) & (!CNT(0) & CNT(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CNT(2),
	datab => CNT(1),
	datac => CNT(0),
	datad => CNT(3),
	combout => \Mux7~7_combout\);

-- Location: LCCOMB_X24_Y16_N28
\TEMP[8]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \TEMP[8]~7_combout\ = (\Mux7~7_combout\ & ((\TEMP[2]~0_combout\ & (\K_DATA~combout\)) # (!\TEMP[2]~0_combout\ & ((TEMP(8)))))) # (!\Mux7~7_combout\ & (((TEMP(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \K_DATA~combout\,
	datab => \Mux7~7_combout\,
	datac => TEMP(8),
	datad => \TEMP[2]~0_combout\,
	combout => \TEMP[8]~7_combout\);

-- Location: LCFF_X24_Y16_N29
\TEMP[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \SYS_CLK~clkctrl_outclk\,
	datain => \TEMP[8]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => TEMP(8));

-- Location: LCCOMB_X26_Y16_N26
\PA~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \PA~22_combout\ = (TEMP(8) & !\START~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => TEMP(8),
	datad => \START~regout\,
	combout => \PA~22_combout\);

-- Location: LCFF_X26_Y16_N27
\PA[6]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \SYS_CLK~clkctrl_outclk\,
	datain => \PA~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PA[6]~reg0_regout\);

-- Location: LCCOMB_X24_Y16_N10
\Mux7~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~8_combout\ = (!CNT(2) & (!CNT(1) & (CNT(0) & CNT(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CNT(2),
	datab => CNT(1),
	datac => CNT(0),
	datad => CNT(3),
	combout => \Mux7~8_combout\);

-- Location: LCCOMB_X25_Y16_N4
\TEMP[9]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \TEMP[9]~8_combout\ = (\TEMP[2]~0_combout\ & ((\Mux7~8_combout\ & (\K_DATA~combout\)) # (!\Mux7~8_combout\ & ((TEMP(9)))))) # (!\TEMP[2]~0_combout\ & (((TEMP(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TEMP[2]~0_combout\,
	datab => \K_DATA~combout\,
	datac => TEMP(9),
	datad => \Mux7~8_combout\,
	combout => \TEMP[9]~8_combout\);

-- Location: LCFF_X25_Y16_N5
\TEMP[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \SYS_CLK~clkctrl_outclk\,
	datain => \TEMP[9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => TEMP(9));

-- Location: LCCOMB_X26_Y16_N0
\PA~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \PA~23_combout\ = (TEMP(9) & !\START~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => TEMP(9),
	datad => \START~regout\,
	combout => \PA~23_combout\);

-- Location: LCFF_X26_Y16_N1
\PA[7]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \SYS_CLK~clkctrl_outclk\,
	datain => \PA~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PA[7]~reg0_regout\);

-- Location: LCCOMB_X25_Y16_N0
\Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (CNT(1) & (!CNT(0) & (CNT(3) & !CNT(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CNT(1),
	datab => CNT(0),
	datac => CNT(3),
	datad => CNT(2),
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X25_Y16_N20
\ZHJS~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ZHJS~2_combout\ = (\CUR_KBCLK~regout\ & (((\ZHJS~reg0_regout\)))) # (!\CUR_KBCLK~regout\ & ((\PRE_KBCLK~regout\ & ((!\Mux7~0_combout\))) # (!\PRE_KBCLK~regout\ & (\ZHJS~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CUR_KBCLK~regout\,
	datab => \PRE_KBCLK~regout\,
	datac => \ZHJS~reg0_regout\,
	datad => \Mux7~0_combout\,
	combout => \ZHJS~2_combout\);

-- Location: LCFF_X25_Y16_N21
\ZHJS~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \SYS_CLK~clkctrl_outclk\,
	datain => \ZHJS~2_combout\,
	aclr => \ALT_INV_RST~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ZHJS~reg0_regout\);

-- Location: LCCOMB_X26_Y16_N24
\DATA[0]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \DATA[0]~reg0feeder_combout\ = \PA[0]~reg0_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PA[0]~reg0_regout\,
	combout => \DATA[0]~reg0feeder_combout\);

-- Location: LCFF_X26_Y16_N25
\DATA[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \SYS_CLK~clkctrl_outclk\,
	datain => \DATA[0]~reg0feeder_combout\,
	ena => \ALT_INV_ZHJS~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DATA[0]~reg0_regout\);

-- Location: LCCOMB_X26_Y16_N2
\DATA[1]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \DATA[1]~reg0feeder_combout\ = \PA[1]~reg0_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PA[1]~reg0_regout\,
	combout => \DATA[1]~reg0feeder_combout\);

-- Location: LCFF_X26_Y16_N3
\DATA[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \SYS_CLK~clkctrl_outclk\,
	datain => \DATA[1]~reg0feeder_combout\,
	ena => \ALT_INV_ZHJS~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DATA[1]~reg0_regout\);

-- Location: LCFF_X26_Y16_N21
\DATA[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \SYS_CLK~clkctrl_outclk\,
	sdata => \PA[2]~reg0_regout\,
	sload => VCC,
	ena => \ALT_INV_ZHJS~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DATA[2]~reg0_regout\);

-- Location: LCCOMB_X26_Y16_N22
\DATA[3]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \DATA[3]~reg0feeder_combout\ = \PA[3]~reg0_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PA[3]~reg0_regout\,
	combout => \DATA[3]~reg0feeder_combout\);

-- Location: LCFF_X26_Y16_N23
\DATA[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \SYS_CLK~clkctrl_outclk\,
	datain => \DATA[3]~reg0feeder_combout\,
	ena => \ALT_INV_ZHJS~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DATA[3]~reg0_regout\);

-- Location: LCCOMB_X26_Y16_N16
\DATA[4]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \DATA[4]~reg0feeder_combout\ = \PA[4]~reg0_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PA[4]~reg0_regout\,
	combout => \DATA[4]~reg0feeder_combout\);

-- Location: LCFF_X26_Y16_N17
\DATA[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \SYS_CLK~clkctrl_outclk\,
	datain => \DATA[4]~reg0feeder_combout\,
	ena => \ALT_INV_ZHJS~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DATA[4]~reg0_regout\);

-- Location: LCCOMB_X26_Y16_N14
\DATA[5]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \DATA[5]~reg0feeder_combout\ = \PA[5]~reg0_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PA[5]~reg0_regout\,
	combout => \DATA[5]~reg0feeder_combout\);

-- Location: LCFF_X26_Y16_N15
\DATA[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \SYS_CLK~clkctrl_outclk\,
	datain => \DATA[5]~reg0feeder_combout\,
	ena => \ALT_INV_ZHJS~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DATA[5]~reg0_regout\);

-- Location: LCCOMB_X26_Y16_N4
\DATA[6]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \DATA[6]~reg0feeder_combout\ = \PA[6]~reg0_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PA[6]~reg0_regout\,
	combout => \DATA[6]~reg0feeder_combout\);

-- Location: LCFF_X26_Y16_N5
\DATA[6]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \SYS_CLK~clkctrl_outclk\,
	datain => \DATA[6]~reg0feeder_combout\,
	ena => \ALT_INV_ZHJS~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DATA[6]~reg0_regout\);

-- Location: LCCOMB_X26_Y16_N18
\DATA[7]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \DATA[7]~reg0feeder_combout\ = \PA[7]~reg0_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PA[7]~reg0_regout\,
	combout => \DATA[7]~reg0feeder_combout\);

-- Location: LCFF_X26_Y16_N19
\DATA[7]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \SYS_CLK~clkctrl_outclk\,
	datain => \DATA[7]~reg0feeder_combout\,
	ena => \ALT_INV_ZHJS~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DATA[7]~reg0_regout\);

-- Location: PIN_161,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PA[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \PA[0]~reg0_regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => PA(0));

-- Location: PIN_175,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PA[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \PA[1]~reg0_regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => PA(1));

-- Location: PIN_171,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PA[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \PA[2]~reg0_regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => PA(2));

-- Location: PIN_168,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PA[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \PA[3]~reg0_regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => PA(3));

-- Location: PIN_170,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PA[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \PA[4]~reg0_regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => PA(4));

-- Location: PIN_151,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PA[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \PA[5]~reg0_regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => PA(5));

-- Location: PIN_147,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PA[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \PA[6]~reg0_regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => PA(6));

-- Location: PIN_165,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PA[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \PA[7]~reg0_regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => PA(7));

-- Location: PIN_176,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ZHJS~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ZHJS~reg0_regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ZHJS);

-- Location: PIN_164,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DATA[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DATA[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DATA(0));

-- Location: PIN_173,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DATA[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DATA[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DATA(1));

-- Location: PIN_163,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DATA[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DATA[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DATA(2));

-- Location: PIN_149,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DATA[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DATA[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DATA(3));

-- Location: PIN_152,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DATA[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DATA[4]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DATA(4));

-- Location: PIN_150,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DATA[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DATA[5]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DATA(5));

-- Location: PIN_169,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DATA[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DATA[6]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DATA(6));

-- Location: PIN_146,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DATA[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DATA[7]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DATA(7));
END structure;


