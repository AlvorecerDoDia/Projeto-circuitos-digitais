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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "06/15/2026 21:42:25"

-- 
-- Device: Altera EP2C5T144C6 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	top_level IS
    PORT (
	clk_50 : IN std_logic;
	ch_reset : IN std_logic;
	btn_confirmar : IN std_logic;
	btn_desistir : IN std_logic;
	btn_inserir_moeda : IN std_logic;
	ch_valor_moeda : IN std_logic_vector(2 DOWNTO 0);
	ch_produto : IN std_logic_vector(2 DOWNTO 0);
	led_liberar : OUT std_logic;
	led_troco : OUT std_logic;
	led_devolver : OUT std_logic;
	led_sem_estoque : OUT std_logic;
	hex_centenas : OUT std_logic_vector(6 DOWNTO 0);
	hex_dezenas : OUT std_logic_vector(6 DOWNTO 0);
	hex_unidades : OUT std_logic_vector(6 DOWNTO 0)
	);
END top_level;

-- Design Ports Information
-- led_liberar	=>  Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_troco	=>  Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_devolver	=>  Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_sem_estoque	=>  Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex_centenas[0]	=>  Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex_centenas[1]	=>  Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex_centenas[2]	=>  Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex_centenas[3]	=>  Location: PIN_9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex_centenas[4]	=>  Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex_centenas[5]	=>  Location: PIN_136,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex_centenas[6]	=>  Location: PIN_137,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex_dezenas[0]	=>  Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex_dezenas[1]	=>  Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex_dezenas[2]	=>  Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex_dezenas[3]	=>  Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex_dezenas[4]	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex_dezenas[5]	=>  Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex_dezenas[6]	=>  Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex_unidades[0]	=>  Location: PIN_135,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex_unidades[1]	=>  Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex_unidades[2]	=>  Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex_unidades[3]	=>  Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex_unidades[4]	=>  Location: PIN_31,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex_unidades[5]	=>  Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex_unidades[6]	=>  Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ch_produto[2]	=>  Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ch_produto[1]	=>  Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ch_produto[0]	=>  Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk_50	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ch_reset	=>  Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ch_valor_moeda[2]	=>  Location: PIN_22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ch_valor_moeda[0]	=>  Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ch_valor_moeda[1]	=>  Location: PIN_139,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- btn_desistir	=>  Location: PIN_126,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- btn_confirmar	=>  Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- btn_inserir_moeda	=>  Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF top_level IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk_50 : std_logic;
SIGNAL ww_ch_reset : std_logic;
SIGNAL ww_btn_confirmar : std_logic;
SIGNAL ww_btn_desistir : std_logic;
SIGNAL ww_btn_inserir_moeda : std_logic;
SIGNAL ww_ch_valor_moeda : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_ch_produto : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_led_liberar : std_logic;
SIGNAL ww_led_troco : std_logic;
SIGNAL ww_led_devolver : std_logic;
SIGNAL ww_led_sem_estoque : std_logic;
SIGNAL ww_hex_centenas : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex_dezenas : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex_unidades : std_logic_vector(6 DOWNTO 0);
SIGNAL \ch_reset~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_50~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ : std_logic;
SIGNAL \U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ : std_logic;
SIGNAL \U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ : std_logic;
SIGNAL \U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\ : std_logic;
SIGNAL \U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ : std_logic;
SIGNAL \U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ : std_logic;
SIGNAL \U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\ : std_logic;
SIGNAL \U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\ : std_logic;
SIGNAL \U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\ : std_logic;
SIGNAL \U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~2_combout\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|add_sub_8_result_int[0]~10_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~12_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~6_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[9]~16_combout\ : std_logic;
SIGNAL \U_FILTRO2|contador[1]~22_combout\ : std_logic;
SIGNAL \U_FILTRO2|contador[5]~30_combout\ : std_logic;
SIGNAL \U_FILTRO2|contador[12]~44_combout\ : std_logic;
SIGNAL \U_FILTRO2|contador[14]~48_combout\ : std_logic;
SIGNAL \U_FILTRO2|contador[17]~54_combout\ : std_logic;
SIGNAL \U_FILTRO1|contador[0]~19_combout\ : std_logic;
SIGNAL \U_FILTRO1|contador[0]~20\ : std_logic;
SIGNAL \U_FILTRO1|contador[1]~22_combout\ : std_logic;
SIGNAL \U_FILTRO1|contador[1]~23\ : std_logic;
SIGNAL \U_FILTRO1|contador[2]~24_combout\ : std_logic;
SIGNAL \U_FILTRO1|contador[2]~25\ : std_logic;
SIGNAL \U_FILTRO1|contador[3]~26_combout\ : std_logic;
SIGNAL \U_FILTRO1|contador[3]~27\ : std_logic;
SIGNAL \U_FILTRO1|contador[4]~28_combout\ : std_logic;
SIGNAL \U_FILTRO1|contador[4]~29\ : std_logic;
SIGNAL \U_FILTRO1|contador[5]~30_combout\ : std_logic;
SIGNAL \U_FILTRO1|contador[5]~31\ : std_logic;
SIGNAL \U_FILTRO1|contador[6]~32_combout\ : std_logic;
SIGNAL \U_FILTRO1|contador[6]~33\ : std_logic;
SIGNAL \U_FILTRO1|contador[7]~34_combout\ : std_logic;
SIGNAL \U_FILTRO1|contador[7]~35\ : std_logic;
SIGNAL \U_FILTRO1|contador[8]~36_combout\ : std_logic;
SIGNAL \U_FILTRO1|contador[8]~37\ : std_logic;
SIGNAL \U_FILTRO1|contador[9]~38_combout\ : std_logic;
SIGNAL \U_FILTRO1|contador[9]~39\ : std_logic;
SIGNAL \U_FILTRO1|contador[10]~40_combout\ : std_logic;
SIGNAL \U_FILTRO1|contador[10]~41\ : std_logic;
SIGNAL \U_FILTRO1|contador[11]~42_combout\ : std_logic;
SIGNAL \U_FILTRO1|contador[11]~43\ : std_logic;
SIGNAL \U_FILTRO1|contador[12]~44_combout\ : std_logic;
SIGNAL \U_FILTRO1|contador[12]~45\ : std_logic;
SIGNAL \U_FILTRO1|contador[13]~46_combout\ : std_logic;
SIGNAL \U_FILTRO1|contador[13]~47\ : std_logic;
SIGNAL \U_FILTRO1|contador[14]~48_combout\ : std_logic;
SIGNAL \U_FILTRO1|contador[14]~49\ : std_logic;
SIGNAL \U_FILTRO1|contador[15]~50_combout\ : std_logic;
SIGNAL \U_FILTRO1|contador[15]~51\ : std_logic;
SIGNAL \U_FILTRO1|contador[16]~52_combout\ : std_logic;
SIGNAL \U_FILTRO1|contador[16]~53\ : std_logic;
SIGNAL \U_FILTRO1|contador[17]~54_combout\ : std_logic;
SIGNAL \U_FILTRO1|contador[17]~55\ : std_logic;
SIGNAL \U_FILTRO1|contador[18]~56_combout\ : std_logic;
SIGNAL \U_FILTRO3|contador[1]~22_combout\ : std_logic;
SIGNAL \U_FILTRO3|contador[5]~30_combout\ : std_logic;
SIGNAL \U_FILTRO3|contador[12]~44_combout\ : std_logic;
SIGNAL \U_FILTRO3|contador[14]~48_combout\ : std_logic;
SIGNAL \U_FILTRO3|contador[17]~54_combout\ : std_logic;
SIGNAL \U_BLOCO_DADOS|Mux9~2_combout\ : std_logic;
SIGNAL \U_DISP|Div0|auto_generated|divider|divider|StageOut[54]~55_combout\ : std_logic;
SIGNAL \U_DISP|Div0|auto_generated|divider|divider|StageOut[53]~56_combout\ : std_logic;
SIGNAL \U_DISP|Div0|auto_generated|divider|divider|StageOut[52]~58_combout\ : std_logic;
SIGNAL \U_DISP|Div0|auto_generated|divider|divider|StageOut[51]~61_combout\ : std_logic;
SIGNAL \U_DISP|Div0|auto_generated|divider|divider|StageOut[50]~63_combout\ : std_logic;
SIGNAL \U_DISP|Div0|auto_generated|divider|divider|StageOut[49]~64_combout\ : std_logic;
SIGNAL \U_DISP|Div0|auto_generated|divider|divider|StageOut[62]~66_combout\ : std_logic;
SIGNAL \U_DISP|Div0|auto_generated|divider|divider|StageOut[60]~68_combout\ : std_logic;
SIGNAL \U_DISP|Div0|auto_generated|divider|divider|StageOut[58]~71_combout\ : std_logic;
SIGNAL \U_DISP|Div0|auto_generated|divider|divider|StageOut[48]~73_combout\ : std_logic;
SIGNAL \U_DISP|Div0|auto_generated|divider|divider|StageOut[48]~74_combout\ : std_logic;
SIGNAL \U_DISP|Div0|auto_generated|divider|divider|StageOut[57]~75_combout\ : std_logic;
SIGNAL \U_DISP|Div0|auto_generated|divider|divider|StageOut[69]~77_combout\ : std_logic;
SIGNAL \U_DISP|Div0|auto_generated|divider|divider|StageOut[68]~78_combout\ : std_logic;
SIGNAL \U_DISP|Div0|auto_generated|divider|divider|StageOut[65]~81_combout\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|StageOut[66]~91_combout\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|StageOut[65]~93_combout\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|StageOut[64]~95_combout\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|StageOut[63]~97_combout\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|StageOut[62]~98_combout\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|StageOut[61]~100_combout\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|StageOut[77]~102_combout\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|StageOut[76]~103_combout\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|StageOut[75]~104_combout\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|StageOut[74]~105_combout\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|StageOut[72]~108_combout\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|StageOut[71]~109_combout\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|StageOut[88]~111_combout\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|StageOut[86]~113_combout\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|StageOut[84]~115_combout\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|StageOut[81]~119_combout\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|StageOut[99]~120_combout\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|StageOut[98]~121_combout\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|StageOut[18]~56_combout\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|StageOut[17]~57_combout\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|StageOut[96]~123_combout\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|StageOut[15]~59_combout\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|StageOut[22]~61_combout\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|StageOut[95]~124_combout\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|StageOut[20]~63_combout\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|StageOut[27]~65_combout\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|StageOut[33]~68_combout\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|StageOut[31]~70_combout\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|StageOut[35]~75_combout\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|StageOut[41]~78_combout\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|StageOut[91]~128_combout\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|StageOut[80]~129_combout\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|StageOut[91]~131_combout\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|StageOut[40]~79_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|StageOut[33]~96_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|StageOut[32]~97_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|StageOut[44]~99_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|StageOut[43]~100_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|StageOut[41]~103_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|StageOut[55]~104_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|StageOut[54]~105_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|StageOut[53]~106_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|StageOut[52]~107_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|StageOut[51]~109_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|StageOut[64]~112_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|StageOut[62]~114_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|StageOut[72]~122_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|StageOut[88]~127_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|StageOut[87]~128_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|StageOut[86]~129_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|StageOut[85]~130_combout\ : std_logic;
SIGNAL \U_DISP|Equal20~3_combout\ : std_logic;
SIGNAL \U_DISP|Equal28~9_combout\ : std_logic;
SIGNAL \U_BLOCO_DADOS|Mux0~0_combout\ : std_logic;
SIGNAL \U_FILTRO1|botao_pulso~regout\ : std_logic;
SIGNAL \U_BLOCO_DADOS|estoque_batata_g[0]~4_combout\ : std_logic;
SIGNAL \U_BLOCO_DADOS|estoque_tortilha_g[0]~0_combout\ : std_logic;
SIGNAL \U_CONTROLE|Selector0~0_combout\ : std_logic;
SIGNAL \U_FILTRO2|botao_ant~regout\ : std_logic;
SIGNAL \U_FILTRO1|botao_estavel~regout\ : std_logic;
SIGNAL \U_FILTRO1|botao_ant~regout\ : std_logic;
SIGNAL \U_FILTRO1|process_0~0_combout\ : std_logic;
SIGNAL \U_FILTRO2|Equal0~3_combout\ : std_logic;
SIGNAL \U_FILTRO1|Equal0~0_combout\ : std_logic;
SIGNAL \U_FILTRO1|Equal0~1_combout\ : std_logic;
SIGNAL \U_FILTRO1|Equal0~2_combout\ : std_logic;
SIGNAL \U_FILTRO1|Equal0~3_combout\ : std_logic;
SIGNAL \U_FILTRO1|Equal0~4_combout\ : std_logic;
SIGNAL \U_FILTRO1|Equal0~5_combout\ : std_logic;
SIGNAL \U_FILTRO1|botao_estavel~0_combout\ : std_logic;
SIGNAL \U_FILTRO3|Equal0~3_combout\ : std_logic;
SIGNAL \U_FILTRO1|contador[14]~21_combout\ : std_logic;
SIGNAL \U_DISP|Div0|auto_generated|divider|divider|StageOut[70]~85_combout\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|StageOut[16]~82_combout\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|StageOut[23]~84_combout\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|StageOut[21]~86_combout\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|StageOut[28]~88_combout\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|StageOut[26]~90_combout\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|StageOut[25]~91_combout\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|StageOut[32]~93_combout\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|StageOut[30]~95_combout\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|StageOut[38]~96_combout\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|StageOut[37]~97_combout\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|StageOut[36]~98_combout\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|StageOut[43]~99_combout\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|StageOut[42]~100_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|StageOut[40]~146_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|StageOut[50]~153_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|StageOut[73]~165_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|StageOut[84]~171_combout\ : std_logic;
SIGNAL \U_DISP|Div0|auto_generated|divider|divider|StageOut[61]~89_combout\ : std_logic;
SIGNAL \U_DISP|Div0|auto_generated|divider|divider|StageOut[59]~91_combout\ : std_logic;
SIGNAL \U_DISP|Div0|auto_generated|divider|divider|StageOut[67]~92_combout\ : std_logic;
SIGNAL \U_DISP|Div0|auto_generated|divider|divider|StageOut[66]~93_combout\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|StageOut[73]~149_combout\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|StageOut[82]~151_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|StageOut[80]~175_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|StageOut[70]~177_combout\ : std_logic;
SIGNAL \U_DISP|Equal10~2_combout\ : std_logic;
SIGNAL \btn_confirmar~combout\ : std_logic;
SIGNAL \clk_50~combout\ : std_logic;
SIGNAL \clk_50~clkctrl_outclk\ : std_logic;
SIGNAL \U_BLOCO_DADOS|incremento~0_combout\ : std_logic;
SIGNAL \U_BLOCO_DADOS|incremento~1_combout\ : std_logic;
SIGNAL \U_BLOCO_DADOS|Equal2~0_combout\ : std_logic;
SIGNAL \U_BLOCO_DADOS|Equal1~0_combout\ : std_logic;
SIGNAL \U_BLOCO_DADOS|Equal0~0_combout\ : std_logic;
SIGNAL \U_BLOCO_DADOS|soma_atual[0]~11\ : std_logic;
SIGNAL \U_BLOCO_DADOS|soma_atual[1]~13\ : std_logic;
SIGNAL \U_BLOCO_DADOS|soma_atual[2]~15\ : std_logic;
SIGNAL \U_BLOCO_DADOS|soma_atual[3]~16_combout\ : std_logic;
SIGNAL \ch_reset~combout\ : std_logic;
SIGNAL \ch_reset~clkctrl_outclk\ : std_logic;
SIGNAL \U_FILTRO2|contador[0]~19_combout\ : std_logic;
SIGNAL \btn_desistir~combout\ : std_logic;
SIGNAL \U_FILTRO2|contador[5]~21_combout\ : std_logic;
SIGNAL \U_FILTRO2|contador[0]~20\ : std_logic;
SIGNAL \U_FILTRO2|contador[1]~23\ : std_logic;
SIGNAL \U_FILTRO2|contador[2]~24_combout\ : std_logic;
SIGNAL \U_FILTRO2|contador[2]~25\ : std_logic;
SIGNAL \U_FILTRO2|contador[3]~27\ : std_logic;
SIGNAL \U_FILTRO2|contador[4]~28_combout\ : std_logic;
SIGNAL \U_FILTRO2|contador[4]~29\ : std_logic;
SIGNAL \U_FILTRO2|contador[5]~31\ : std_logic;
SIGNAL \U_FILTRO2|contador[6]~32_combout\ : std_logic;
SIGNAL \U_FILTRO2|contador[6]~33\ : std_logic;
SIGNAL \U_FILTRO2|contador[7]~35\ : std_logic;
SIGNAL \U_FILTRO2|contador[8]~36_combout\ : std_logic;
SIGNAL \U_FILTRO2|contador[8]~37\ : std_logic;
SIGNAL \U_FILTRO2|contador[9]~38_combout\ : std_logic;
SIGNAL \U_FILTRO2|contador[9]~39\ : std_logic;
SIGNAL \U_FILTRO2|contador[10]~40_combout\ : std_logic;
SIGNAL \U_FILTRO2|contador[10]~41\ : std_logic;
SIGNAL \U_FILTRO2|contador[11]~42_combout\ : std_logic;
SIGNAL \U_FILTRO2|contador[11]~43\ : std_logic;
SIGNAL \U_FILTRO2|contador[12]~45\ : std_logic;
SIGNAL \U_FILTRO2|contador[13]~46_combout\ : std_logic;
SIGNAL \U_FILTRO2|contador[13]~47\ : std_logic;
SIGNAL \U_FILTRO2|contador[14]~49\ : std_logic;
SIGNAL \U_FILTRO2|contador[15]~50_combout\ : std_logic;
SIGNAL \U_FILTRO2|contador[15]~51\ : std_logic;
SIGNAL \U_FILTRO2|contador[16]~52_combout\ : std_logic;
SIGNAL \U_FILTRO2|contador[16]~53\ : std_logic;
SIGNAL \U_FILTRO2|contador[17]~55\ : std_logic;
SIGNAL \U_FILTRO2|contador[18]~56_combout\ : std_logic;
SIGNAL \U_FILTRO2|Equal0~2_combout\ : std_logic;
SIGNAL \U_FILTRO2|contador[3]~26_combout\ : std_logic;
SIGNAL \U_FILTRO2|Equal0~0_combout\ : std_logic;
SIGNAL \U_FILTRO2|contador[7]~34_combout\ : std_logic;
SIGNAL \U_FILTRO2|Equal0~1_combout\ : std_logic;
SIGNAL \U_FILTRO2|Equal0~4_combout\ : std_logic;
SIGNAL \U_FILTRO2|Equal0~5_combout\ : std_logic;
SIGNAL \U_FILTRO2|botao_estavel~0_combout\ : std_logic;
SIGNAL \U_FILTRO2|botao_estavel~regout\ : std_logic;
SIGNAL \U_FILTRO2|process_0~0_combout\ : std_logic;
SIGNAL \U_FILTRO2|botao_pulso~regout\ : std_logic;
SIGNAL \U_BLOCO_DADOS|estoque_batata_p[0]~0_combout\ : std_logic;
SIGNAL \U_BLOCO_DADOS|estoque_batata_m[0]~0_combout\ : std_logic;
SIGNAL \U_BLOCO_DADOS|Mux9~0_combout\ : std_logic;
SIGNAL \U_BLOCO_DADOS|estoque_tortilha_p[0]~0_combout\ : std_logic;
SIGNAL \U_BLOCO_DADOS|estoque_batata_g[0]~5_combout\ : std_logic;
SIGNAL \U_BLOCO_DADOS|Mux9~1_combout\ : std_logic;
SIGNAL \U_CONTROLE|sem_estoque~0_combout\ : std_logic;
SIGNAL \U_CONTROLE|Selector0~3_combout\ : std_logic;
SIGNAL \U_CONTROLE|Selector0~1_combout\ : std_logic;
SIGNAL \U_BLOCO_DADOS|soma_atual[8]~26_combout\ : std_logic;
SIGNAL \btn_inserir_moeda~combout\ : std_logic;
SIGNAL \U_FILTRO3|contador[0]~19_combout\ : std_logic;
SIGNAL \U_FILTRO3|contador[8]~21_combout\ : std_logic;
SIGNAL \U_FILTRO3|contador[0]~20\ : std_logic;
SIGNAL \U_FILTRO3|contador[1]~23\ : std_logic;
SIGNAL \U_FILTRO3|contador[2]~24_combout\ : std_logic;
SIGNAL \U_FILTRO3|contador[2]~25\ : std_logic;
SIGNAL \U_FILTRO3|contador[3]~27\ : std_logic;
SIGNAL \U_FILTRO3|contador[4]~28_combout\ : std_logic;
SIGNAL \U_FILTRO3|contador[4]~29\ : std_logic;
SIGNAL \U_FILTRO3|contador[5]~31\ : std_logic;
SIGNAL \U_FILTRO3|contador[6]~33\ : std_logic;
SIGNAL \U_FILTRO3|contador[7]~34_combout\ : std_logic;
SIGNAL \U_FILTRO3|contador[7]~35\ : std_logic;
SIGNAL \U_FILTRO3|contador[8]~36_combout\ : std_logic;
SIGNAL \U_FILTRO3|contador[8]~37\ : std_logic;
SIGNAL \U_FILTRO3|contador[9]~38_combout\ : std_logic;
SIGNAL \U_FILTRO3|contador[9]~39\ : std_logic;
SIGNAL \U_FILTRO3|contador[10]~40_combout\ : std_logic;
SIGNAL \U_FILTRO3|contador[10]~41\ : std_logic;
SIGNAL \U_FILTRO3|contador[11]~42_combout\ : std_logic;
SIGNAL \U_FILTRO3|contador[11]~43\ : std_logic;
SIGNAL \U_FILTRO3|contador[12]~45\ : std_logic;
SIGNAL \U_FILTRO3|contador[13]~46_combout\ : std_logic;
SIGNAL \U_FILTRO3|contador[13]~47\ : std_logic;
SIGNAL \U_FILTRO3|contador[14]~49\ : std_logic;
SIGNAL \U_FILTRO3|contador[15]~50_combout\ : std_logic;
SIGNAL \U_FILTRO3|contador[15]~51\ : std_logic;
SIGNAL \U_FILTRO3|contador[16]~52_combout\ : std_logic;
SIGNAL \U_FILTRO3|contador[16]~53\ : std_logic;
SIGNAL \U_FILTRO3|contador[17]~55\ : std_logic;
SIGNAL \U_FILTRO3|contador[18]~56_combout\ : std_logic;
SIGNAL \U_FILTRO3|Equal0~2_combout\ : std_logic;
SIGNAL \U_FILTRO3|contador[3]~26_combout\ : std_logic;
SIGNAL \U_FILTRO3|Equal0~0_combout\ : std_logic;
SIGNAL \U_FILTRO3|contador[6]~32_combout\ : std_logic;
SIGNAL \U_FILTRO3|Equal0~1_combout\ : std_logic;
SIGNAL \U_FILTRO3|Equal0~4_combout\ : std_logic;
SIGNAL \U_FILTRO3|Equal0~5_combout\ : std_logic;
SIGNAL \U_FILTRO3|botao_estavel~0_combout\ : std_logic;
SIGNAL \U_FILTRO3|botao_estavel~regout\ : std_logic;
SIGNAL \U_FILTRO3|botao_ant~feeder_combout\ : std_logic;
SIGNAL \U_FILTRO3|botao_ant~regout\ : std_logic;
SIGNAL \U_FILTRO3|process_0~0_combout\ : std_logic;
SIGNAL \U_FILTRO3|botao_pulso~regout\ : std_logic;
SIGNAL \U_BLOCO_DADOS|soma_atual[7]~30_combout\ : std_logic;
SIGNAL \U_BLOCO_DADOS|soma_atual[2]~14_combout\ : std_logic;
SIGNAL \U_BLOCO_DADOS|soma_atual[1]~12_combout\ : std_logic;
SIGNAL \U_BLOCO_DADOS|LessThan5~0_combout\ : std_logic;
SIGNAL \U_BLOCO_DADOS|LessThan5~1_combout\ : std_logic;
SIGNAL \U_BLOCO_DADOS|LessThan5~2_combout\ : std_logic;
SIGNAL \U_BLOCO_DADOS|soma_atual[5]~20_combout\ : std_logic;
SIGNAL \U_BLOCO_DADOS|LessThan5~8_combout\ : std_logic;
SIGNAL \U_BLOCO_DADOS|LessThan5~9_combout\ : std_logic;
SIGNAL \U_BLOCO_DADOS|soma_atual[4]~18_combout\ : std_logic;
SIGNAL \U_BLOCO_DADOS|LessThan5~5_combout\ : std_logic;
SIGNAL \U_BLOCO_DADOS|soma_atual[0]~10_combout\ : std_logic;
SIGNAL \U_BLOCO_DADOS|LessThan5~4_combout\ : std_logic;
SIGNAL \U_BLOCO_DADOS|LessThan5~6_combout\ : std_logic;
SIGNAL \U_BLOCO_DADOS|LessThan5~3_combout\ : std_logic;
SIGNAL \U_BLOCO_DADOS|LessThan5~12_combout\ : std_logic;
SIGNAL \U_BLOCO_DADOS|LessThan5~13_combout\ : std_logic;
SIGNAL \U_BLOCO_DADOS|LessThan5~7_combout\ : std_logic;
SIGNAL \U_BLOCO_DADOS|LessThan5~10_combout\ : std_logic;
SIGNAL \U_BLOCO_DADOS|LessThan5~11_combout\ : std_logic;
SIGNAL \U_CONTROLE|Selector0~2_combout\ : std_logic;
SIGNAL \U_CONTROLE|estado_atual.ESPERA~regout\ : std_logic;
SIGNAL \U_CONTROLE|Selector1~0_combout\ : std_logic;
SIGNAL \U_CONTROLE|estado_atual.AVALIA_ESTOQUE~regout\ : std_logic;
SIGNAL \U_CONTROLE|Selector2~0_combout\ : std_logic;
SIGNAL \U_CONTROLE|Selector2~1_combout\ : std_logic;
SIGNAL \U_CONTROLE|estado_atual.RECEBE_MOEDA~regout\ : std_logic;
SIGNAL \U_CONTROLE|Selector4~0_combout\ : std_logic;
SIGNAL \U_CONTROLE|estado_atual.DEVOLUCAO~regout\ : std_logic;
SIGNAL \U_CONTROLE|limpar_soma~combout\ : std_logic;
SIGNAL \U_BLOCO_DADOS|soma_atual[3]~17\ : std_logic;
SIGNAL \U_BLOCO_DADOS|soma_atual[4]~19\ : std_logic;
SIGNAL \U_BLOCO_DADOS|soma_atual[5]~21\ : std_logic;
SIGNAL \U_BLOCO_DADOS|soma_atual[6]~22_combout\ : std_logic;
SIGNAL \U_BLOCO_DADOS|soma_atual[6]~23\ : std_logic;
SIGNAL \U_BLOCO_DADOS|soma_atual[7]~24_combout\ : std_logic;
SIGNAL \U_BLOCO_DADOS|soma_atual[7]~25\ : std_logic;
SIGNAL \U_BLOCO_DADOS|soma_atual[8]~27\ : std_logic;
SIGNAL \U_BLOCO_DADOS|soma_atual[9]~28_combout\ : std_logic;
SIGNAL \U_CONTROLE|Selector3~0_combout\ : std_logic;
SIGNAL \U_CONTROLE|estado_atual.ENTREGA_PRODUTO~regout\ : std_logic;
SIGNAL \U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ : std_logic;
SIGNAL \U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ : std_logic;
SIGNAL \U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ : std_logic;
SIGNAL \U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ : std_logic;
SIGNAL \U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ : std_logic;
SIGNAL \U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ : std_logic;
SIGNAL \U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ : std_logic;
SIGNAL \U_DISP|Div0|auto_generated|divider|divider|StageOut[54]~54_combout\ : std_logic;
SIGNAL \U_DISP|Div0|auto_generated|divider|divider|StageOut[53]~57_combout\ : std_logic;
SIGNAL \U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ : std_logic;
SIGNAL \U_DISP|Div0|auto_generated|divider|divider|StageOut[52]~59_combout\ : std_logic;
SIGNAL \U_DISP|Div0|auto_generated|divider|divider|StageOut[51]~60_combout\ : std_logic;
SIGNAL \U_DISP|Div0|auto_generated|divider|divider|StageOut[50]~62_combout\ : std_logic;
SIGNAL \U_DISP|Div0|auto_generated|divider|divider|StageOut[49]~65_combout\ : std_logic;
SIGNAL \U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ : std_logic;
SIGNAL \U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ : std_logic;
SIGNAL \U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ : std_logic;
SIGNAL \U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ : std_logic;
SIGNAL \U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ : std_logic;
SIGNAL \U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\ : std_logic;
SIGNAL \U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ : std_logic;
SIGNAL \U_DISP|Div0|auto_generated|divider|divider|StageOut[62]~88_combout\ : std_logic;
SIGNAL \U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ : std_logic;
SIGNAL \U_DISP|Div0|auto_generated|divider|divider|StageOut[61]~67_combout\ : std_logic;
SIGNAL \U_DISP|Div0|auto_generated|divider|divider|StageOut[60]~90_combout\ : std_logic;
SIGNAL \U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ : std_logic;
SIGNAL \U_DISP|Div0|auto_generated|divider|divider|StageOut[59]~69_combout\ : std_logic;
SIGNAL \U_DISP|Div0|auto_generated|divider|divider|StageOut[58]~70_combout\ : std_logic;
SIGNAL \U_DISP|Div0|auto_generated|divider|divider|StageOut[57]~72_combout\ : std_logic;
SIGNAL \U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~1\ : std_logic;
SIGNAL \U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~3\ : std_logic;
SIGNAL \U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\ : std_logic;
SIGNAL \U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~7\ : std_logic;
SIGNAL \U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~9\ : std_logic;
SIGNAL \U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~11_cout\ : std_logic;
SIGNAL \U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ : std_logic;
SIGNAL \U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\ : std_logic;
SIGNAL \U_DISP|Div0|auto_generated|divider|divider|StageOut[70]~76_combout\ : std_logic;
SIGNAL \U_DISP|Div0|auto_generated|divider|divider|StageOut[69]~86_combout\ : std_logic;
SIGNAL \U_DISP|Div0|auto_generated|divider|divider|StageOut[68]~87_combout\ : std_logic;
SIGNAL \U_DISP|Div0|auto_generated|divider|divider|StageOut[67]~79_combout\ : std_logic;
SIGNAL \U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\ : std_logic;
SIGNAL \U_DISP|Div0|auto_generated|divider|divider|StageOut[66]~80_combout\ : std_logic;
SIGNAL \U_DISP|Div0|auto_generated|divider|divider|StageOut[56]~83_combout\ : std_logic;
SIGNAL \U_DISP|Div0|auto_generated|divider|divider|StageOut[56]~82_combout\ : std_logic;
SIGNAL \U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~14_combout\ : std_logic;
SIGNAL \U_DISP|Div0|auto_generated|divider|divider|StageOut[65]~84_combout\ : std_logic;
SIGNAL \U_DISP|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~1_cout\ : std_logic;
SIGNAL \U_DISP|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~3_cout\ : std_logic;
SIGNAL \U_DISP|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~5_cout\ : std_logic;
SIGNAL \U_DISP|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~7_cout\ : std_logic;
SIGNAL \U_DISP|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~9_cout\ : std_logic;
SIGNAL \U_DISP|Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~11_cout\ : std_logic;
SIGNAL \U_DISP|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\ : std_logic;
SIGNAL \U_DISP|WideOr5~combout\ : std_logic;
SIGNAL \U_DISP|WideOr4~0_combout\ : std_logic;
SIGNAL \U_DISP|WideOr3~combout\ : std_logic;
SIGNAL \U_DISP|WideOr2~0_combout\ : std_logic;
SIGNAL \U_DISP|WideOr1~0_combout\ : std_logic;
SIGNAL \U_DISP|WideOr0~combout\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|StageOut[77]~145_combout\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|StageOut[66]~90_combout\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|StageOut[65]~92_combout\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|StageOut[64]~94_combout\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|StageOut[63]~96_combout\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|StageOut[62]~99_combout\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|StageOut[61]~101_combout\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|StageOut[76]~146_combout\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|StageOut[75]~147_combout\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|StageOut[74]~148_combout\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|StageOut[73]~106_combout\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|StageOut[72]~107_combout\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|StageOut[71]~110_combout\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~1\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~3\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~7\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~9\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~11\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~13\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|StageOut[88]~134_combout\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|StageOut[87]~112_combout\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|StageOut[86]~136_combout\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|StageOut[85]~114_combout\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|StageOut[84]~138_combout\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|StageOut[83]~116_combout\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|StageOut[82]~117_combout\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|StageOut[81]~118_combout\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~1\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~3\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~5\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~7\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~9\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~11\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~13\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~15\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|StageOut[99]~139_combout\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|StageOut[87]~135_combout\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|StageOut[98]~140_combout\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~10_combout\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|StageOut[97]~122_combout\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|StageOut[18]~80_combout\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|StageOut[17]~81_combout\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|StageOut[16]~58_combout\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~8_combout\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|StageOut[15]~83_combout\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|StageOut[23]~60_combout\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|StageOut[22]~85_combout\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|StageOut[21]~62_combout\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~6_combout\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|StageOut[20]~87_combout\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|StageOut[27]~89_combout\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|StageOut[33]~92_combout\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|StageOut[28]~64_combout\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|StageOut[26]~66_combout\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~4_combout\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|StageOut[94]~125_combout\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|StageOut[83]~150_combout\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|StageOut[94]~144_combout\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|StageOut[25]~67_combout\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|StageOut[32]~69_combout\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|StageOut[31]~94_combout\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|StageOut[93]~153_combout\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|StageOut[93]~126_combout\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|StageOut[30]~71_combout\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|StageOut[38]~72_combout\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|StageOut[37]~73_combout\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|StageOut[36]~74_combout\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~0_combout\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|StageOut[35]~103_combout\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|StageOut[43]~76_combout\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|StageOut[42]~77_combout\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|StageOut[92]~127_combout\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|StageOut[92]~152_combout\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|add_sub_7_result_int[0]~10_combout\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|StageOut[41]~101_combout\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|StageOut[80]~130_combout\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~18_combout\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|StageOut[40]~102_combout\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1_cout\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3_cout\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~5_cout\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\ : std_logic;
SIGNAL \U_DISP|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ : std_logic;
SIGNAL \U_DISP|WideOr11~4_combout\ : std_logic;
SIGNAL \U_DISP|WideOr11~combout\ : std_logic;
SIGNAL \U_DISP|Equal18~0_combout\ : std_logic;
SIGNAL \U_DISP|WideNor1~0_combout\ : std_logic;
SIGNAL \U_DISP|WideOr10~0_combout\ : std_logic;
SIGNAL \U_DISP|WideOr10~combout\ : std_logic;
SIGNAL \U_DISP|Equal10~0_combout\ : std_logic;
SIGNAL \U_DISP|Equal10~1_combout\ : std_logic;
SIGNAL \U_DISP|WideOr9~4_combout\ : std_logic;
SIGNAL \U_DISP|WideOr9~combout\ : std_logic;
SIGNAL \U_DISP|Equal18~1_combout\ : std_logic;
SIGNAL \U_DISP|WideOr8~combout\ : std_logic;
SIGNAL \U_DISP|WideOr7~4_combout\ : std_logic;
SIGNAL \U_DISP|WideOr7~9_combout\ : std_logic;
SIGNAL \U_DISP|WideOr6~4_combout\ : std_logic;
SIGNAL \U_DISP|WideOr6~combout\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|StageOut[90]~133_combout\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|StageOut[90]~132_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[0]~20_combout\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|StageOut[33]~138_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|StageOut[32]~139_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|StageOut[31]~98_combout\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|StageOut[85]~137_combout\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|StageOut[96]~142_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|StageOut[30]~141_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|StageOut[44]~143_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|StageOut[55]~148_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|StageOut[43]~144_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|StageOut[54]~149_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|StageOut[97]~141_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|StageOut[31]~140_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|StageOut[42]~145_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|StageOut[53]~150_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|StageOut[30]~142_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|StageOut[41]~102_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|StageOut[52]~151_combout\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\ : std_logic;
SIGNAL \U_DISP|Mod0|auto_generated|divider|divider|StageOut[95]~143_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|StageOut[40]~147_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|StageOut[42]~101_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|StageOut[51]~108_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|StageOut[50]~152_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|StageOut[66]~110_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|StageOut[65]~111_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|StageOut[64]~156_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|StageOut[63]~113_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|StageOut[62]~158_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|StageOut[61]~116_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|StageOut[60]~159_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|StageOut[77]~117_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|StageOut[76]~118_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|StageOut[75]~119_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|StageOut[74]~120_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|StageOut[73]~121_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|StageOut[61]~115_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|StageOut[72]~166_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|StageOut[71]~124_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|StageOut[70]~176_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~7\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~9\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~11\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~13\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~15\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|StageOut[66]~154_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|StageOut[77]~161_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|StageOut[88]~167_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|StageOut[65]~155_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|StageOut[76]~162_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|StageOut[87]~168_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|StageOut[75]~163_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|StageOut[86]~169_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|StageOut[63]~157_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|StageOut[74]~164_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|StageOut[85]~170_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|StageOut[84]~131_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|StageOut[83]~132_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|StageOut[60]~160_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|StageOut[71]~123_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|StageOut[82]~173_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|StageOut[81]~125_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|StageOut[80]~174_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~7\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~9\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~11\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[7]~13\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~15\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[9]~17\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|StageOut[90]~136_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|StageOut[82]~133_combout\ : std_logic;
SIGNAL \U_DISP|Equal28~8_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ : std_logic;
SIGNAL \U_DISP|Equal28~12_combout\ : std_logic;
SIGNAL \U_DISP|Equal28~10_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[7]~12_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\ : std_logic;
SIGNAL \U_DISP|Equal20~4_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|StageOut[83]~172_combout\ : std_logic;
SIGNAL \U_DISP|Equal20~2_combout\ : std_logic;
SIGNAL \U_DISP|Equal20~5_combout\ : std_logic;
SIGNAL \U_DISP|Equal28~11_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|StageOut[91]~135_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|StageOut[81]~126_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|StageOut[92]~134_combout\ : std_logic;
SIGNAL \U_DISP|WideNor2~0_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|StageOut[93]~137_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ : std_logic;
SIGNAL \U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ : std_logic;
SIGNAL \U_DISP|Equal20~7_combout\ : std_logic;
SIGNAL \U_DISP|Equal20~6_combout\ : std_logic;
SIGNAL \U_DISP|Equal20~12_combout\ : std_logic;
SIGNAL \U_DISP|Equal20~8_combout\ : std_logic;
SIGNAL \U_DISP|Equal20~9_combout\ : std_logic;
SIGNAL \U_DISP|Equal21~0_combout\ : std_logic;
SIGNAL \U_DISP|WideNor2~1_combout\ : std_logic;
SIGNAL \U_DISP|WideNor2~3_combout\ : std_logic;
SIGNAL \U_DISP|Equal29~0_combout\ : std_logic;
SIGNAL \U_DISP|WideNor2~2_combout\ : std_logic;
SIGNAL \U_DISP|WideOr17~combout\ : std_logic;
SIGNAL \U_DISP|WideOr16~0_combout\ : std_logic;
SIGNAL \U_DISP|WideOr16~combout\ : std_logic;
SIGNAL \U_DISP|Equal22~0_combout\ : std_logic;
SIGNAL \U_DISP|WideOr12~0_combout\ : std_logic;
SIGNAL \U_DISP|Equal24~0_combout\ : std_logic;
SIGNAL \U_DISP|WideNor2~4_combout\ : std_logic;
SIGNAL \U_DISP|WideOr15~combout\ : std_logic;
SIGNAL \U_DISP|WideOr13~0_combout\ : std_logic;
SIGNAL \U_DISP|WideOr13~combout\ : std_logic;
SIGNAL \U_DISP|Equal20~11_combout\ : std_logic;
SIGNAL \U_DISP|Equal20~10_combout\ : std_logic;
SIGNAL \U_DISP|WideOr12~combout\ : std_logic;
SIGNAL \U_FILTRO2|contador\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \U_FILTRO3|contador\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \U_FILTRO1|contador\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \U_BLOCO_DADOS|soma_atual\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \U_BLOCO_DADOS|estoque_tortilha_p\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U_BLOCO_DADOS|estoque_tortilha_g\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U_BLOCO_DADOS|estoque_batata_p\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U_BLOCO_DADOS|estoque_batata_m\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U_BLOCO_DADOS|estoque_batata_g\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ch_produto~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U_DISP|hex_unidades\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \U_DISP|hex_dezenas\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \U_DISP|hex_centenas\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ch_valor_moeda~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U_DISP|ALT_INV_WideOr8~combout\ : std_logic;
SIGNAL \U_DISP|ALT_INV_WideOr2~0_combout\ : std_logic;

BEGIN

ww_clk_50 <= clk_50;
ww_ch_reset <= ch_reset;
ww_btn_confirmar <= btn_confirmar;
ww_btn_desistir <= btn_desistir;
ww_btn_inserir_moeda <= btn_inserir_moeda;
ww_ch_valor_moeda <= ch_valor_moeda;
ww_ch_produto <= ch_produto;
led_liberar <= ww_led_liberar;
led_troco <= ww_led_troco;
led_devolver <= ww_led_devolver;
led_sem_estoque <= ww_led_sem_estoque;
hex_centenas <= ww_hex_centenas;
hex_dezenas <= ww_hex_dezenas;
hex_unidades <= ww_hex_unidades;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\ch_reset~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \ch_reset~combout\);

\clk_50~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk_50~combout\);
\U_DISP|ALT_INV_WideOr8~combout\ <= NOT \U_DISP|WideOr8~combout\;
\U_DISP|ALT_INV_WideOr2~0_combout\ <= NOT \U_DISP|WideOr2~0_combout\;

-- Location: LCCOMB_X7_Y8_N4
\U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ = \U_BLOCO_DADOS|soma_atual\(5) $ (VCC)
-- \U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ = CARRY(\U_BLOCO_DADOS|soma_atual\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_BLOCO_DADOS|soma_atual\(5),
	datad => VCC,
	combout => \U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	cout => \U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\);

-- Location: LCCOMB_X7_Y8_N6
\U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ = (\U_BLOCO_DADOS|soma_atual\(6) & (\U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ & VCC)) # (!\U_BLOCO_DADOS|soma_atual\(6) & 
-- (!\U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))
-- \U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ = CARRY((!\U_BLOCO_DADOS|soma_atual\(6) & !\U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BLOCO_DADOS|soma_atual\(6),
	datad => VCC,
	cin => \U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\,
	combout => \U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	cout => \U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\);

-- Location: LCCOMB_X7_Y8_N12
\U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ = (\U_BLOCO_DADOS|soma_atual\(9) & (\U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ $ (GND))) # (!\U_BLOCO_DADOS|soma_atual\(9) & 
-- (!\U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ & VCC))
-- \U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ = CARRY((\U_BLOCO_DADOS|soma_atual\(9) & !\U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BLOCO_DADOS|soma_atual\(9),
	datad => VCC,
	cin => \U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\,
	combout => \U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	cout => \U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\);

-- Location: LCCOMB_X8_Y9_N16
\U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\ = (((\U_DISP|Div0|auto_generated|divider|divider|StageOut[49]~64_combout\) # (\U_DISP|Div0|auto_generated|divider|divider|StageOut[49]~65_combout\)))
-- \U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ = CARRY((\U_DISP|Div0|auto_generated|divider|divider|StageOut[49]~64_combout\) # (\U_DISP|Div0|auto_generated|divider|divider|StageOut[49]~65_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Div0|auto_generated|divider|divider|StageOut[49]~64_combout\,
	datab => \U_DISP|Div0|auto_generated|divider|divider|StageOut[49]~65_combout\,
	datad => VCC,
	combout => \U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	cout => \U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\);

-- Location: LCCOMB_X8_Y9_N20
\U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ = (\U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ & ((((\U_DISP|Div0|auto_generated|divider|divider|StageOut[51]~61_combout\) # 
-- (\U_DISP|Div0|auto_generated|divider|divider|StageOut[51]~60_combout\))))) # (!\U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ & ((\U_DISP|Div0|auto_generated|divider|divider|StageOut[51]~61_combout\) # 
-- ((\U_DISP|Div0|auto_generated|divider|divider|StageOut[51]~60_combout\) # (GND))))
-- \U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ = CARRY((\U_DISP|Div0|auto_generated|divider|divider|StageOut[51]~61_combout\) # ((\U_DISP|Div0|auto_generated|divider|divider|StageOut[51]~60_combout\) # 
-- (!\U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Div0|auto_generated|divider|divider|StageOut[51]~61_combout\,
	datab => \U_DISP|Div0|auto_generated|divider|divider|StageOut[51]~60_combout\,
	datad => VCC,
	cin => \U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\,
	combout => \U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	cout => \U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\);

-- Location: LCCOMB_X8_Y9_N24
\U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ = (\U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ & (((\U_DISP|Div0|auto_generated|divider|divider|StageOut[53]~56_combout\) # 
-- (\U_DISP|Div0|auto_generated|divider|divider|StageOut[53]~57_combout\)))) # (!\U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ & ((((\U_DISP|Div0|auto_generated|divider|divider|StageOut[53]~56_combout\) # 
-- (\U_DISP|Div0|auto_generated|divider|divider|StageOut[53]~57_combout\)))))
-- \U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ = CARRY((!\U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ & ((\U_DISP|Div0|auto_generated|divider|divider|StageOut[53]~56_combout\) # 
-- (\U_DISP|Div0|auto_generated|divider|divider|StageOut[53]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Div0|auto_generated|divider|divider|StageOut[53]~56_combout\,
	datab => \U_DISP|Div0|auto_generated|divider|divider|StageOut[53]~57_combout\,
	datad => VCC,
	cin => \U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\,
	combout => \U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	cout => \U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\);

-- Location: LCCOMB_X7_Y8_N0
\U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\ = (\U_DISP|Div0|auto_generated|divider|divider|StageOut[48]~73_combout\) # (\U_DISP|Div0|auto_generated|divider|divider|StageOut[48]~74_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_DISP|Div0|auto_generated|divider|divider|StageOut[48]~73_combout\,
	datad => \U_DISP|Div0|auto_generated|divider|divider|StageOut[48]~74_combout\,
	combout => \U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\);

-- Location: LCCOMB_X9_Y9_N8
\U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\ = (\U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~1\ & (((\U_DISP|Div0|auto_generated|divider|divider|StageOut[58]~71_combout\) # 
-- (\U_DISP|Div0|auto_generated|divider|divider|StageOut[58]~70_combout\)))) # (!\U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~1\ & (!\U_DISP|Div0|auto_generated|divider|divider|StageOut[58]~71_combout\ & 
-- (!\U_DISP|Div0|auto_generated|divider|divider|StageOut[58]~70_combout\)))
-- \U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~3\ = CARRY((!\U_DISP|Div0|auto_generated|divider|divider|StageOut[58]~71_combout\ & (!\U_DISP|Div0|auto_generated|divider|divider|StageOut[58]~70_combout\ & 
-- !\U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Div0|auto_generated|divider|divider|StageOut[58]~71_combout\,
	datab => \U_DISP|Div0|auto_generated|divider|divider|StageOut[58]~70_combout\,
	datad => VCC,
	cin => \U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~1\,
	combout => \U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\,
	cout => \U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~3\);

-- Location: LCCOMB_X9_Y9_N10
\U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\ = (\U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~3\ & ((((\U_DISP|Div0|auto_generated|divider|divider|StageOut[59]~91_combout\) # 
-- (\U_DISP|Div0|auto_generated|divider|divider|StageOut[59]~69_combout\))))) # (!\U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~3\ & ((\U_DISP|Div0|auto_generated|divider|divider|StageOut[59]~91_combout\) # 
-- ((\U_DISP|Div0|auto_generated|divider|divider|StageOut[59]~69_combout\) # (GND))))
-- \U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\ = CARRY((\U_DISP|Div0|auto_generated|divider|divider|StageOut[59]~91_combout\) # ((\U_DISP|Div0|auto_generated|divider|divider|StageOut[59]~69_combout\) # 
-- (!\U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Div0|auto_generated|divider|divider|StageOut[59]~91_combout\,
	datab => \U_DISP|Div0|auto_generated|divider|divider|StageOut[59]~69_combout\,
	datad => VCC,
	cin => \U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~3\,
	combout => \U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\,
	cout => \U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\);

-- Location: LCCOMB_X9_Y9_N12
\U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\ = (\U_DISP|Div0|auto_generated|divider|divider|StageOut[60]~68_combout\ & (((!\U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\)))) # 
-- (!\U_DISP|Div0|auto_generated|divider|divider|StageOut[60]~68_combout\ & ((\U_DISP|Div0|auto_generated|divider|divider|StageOut[60]~90_combout\ & (!\U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\)) # 
-- (!\U_DISP|Div0|auto_generated|divider|divider|StageOut[60]~90_combout\ & ((\U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\) # (GND)))))
-- \U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~7\ = CARRY(((!\U_DISP|Div0|auto_generated|divider|divider|StageOut[60]~68_combout\ & !\U_DISP|Div0|auto_generated|divider|divider|StageOut[60]~90_combout\)) # 
-- (!\U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Div0|auto_generated|divider|divider|StageOut[60]~68_combout\,
	datab => \U_DISP|Div0|auto_generated|divider|divider|StageOut[60]~90_combout\,
	datad => VCC,
	cin => \U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\,
	combout => \U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\,
	cout => \U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~7\);

-- Location: LCCOMB_X8_Y8_N8
\U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\ = (\U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~7\ & (((\U_DISP|Mod0|auto_generated|divider|divider|StageOut[75]~104_combout\) # 
-- (\U_DISP|Mod0|auto_generated|divider|divider|StageOut[75]~147_combout\)))) # (!\U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~7\ & ((((\U_DISP|Mod0|auto_generated|divider|divider|StageOut[75]~104_combout\) # 
-- (\U_DISP|Mod0|auto_generated|divider|divider|StageOut[75]~147_combout\)))))
-- \U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~9\ = CARRY((!\U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~7\ & ((\U_DISP|Mod0|auto_generated|divider|divider|StageOut[75]~104_combout\) # 
-- (\U_DISP|Mod0|auto_generated|divider|divider|StageOut[75]~147_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[75]~104_combout\,
	datab => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[75]~147_combout\,
	datad => VCC,
	cin => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~7\,
	combout => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\,
	cout => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~9\);

-- Location: LCCOMB_X8_Y8_N12
\U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ = (\U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~11\ & ((((\U_DISP|Mod0|auto_generated|divider|divider|StageOut[77]~102_combout\) # 
-- (\U_DISP|Mod0|auto_generated|divider|divider|StageOut[77]~145_combout\))))) # (!\U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~11\ & ((\U_DISP|Mod0|auto_generated|divider|divider|StageOut[77]~102_combout\) # 
-- ((\U_DISP|Mod0|auto_generated|divider|divider|StageOut[77]~145_combout\) # (GND))))
-- \U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~13\ = CARRY((\U_DISP|Mod0|auto_generated|divider|divider|StageOut[77]~102_combout\) # ((\U_DISP|Mod0|auto_generated|divider|divider|StageOut[77]~145_combout\) # 
-- (!\U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[77]~102_combout\,
	datab => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[77]~145_combout\,
	datad => VCC,
	cin => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~11\,
	combout => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	cout => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~13\);

-- Location: LCCOMB_X8_Y7_N6
\U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~2_combout\ = (\U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~1\ & (((\U_DISP|Mod0|auto_generated|divider|divider|StageOut[82]~151_combout\) # 
-- (\U_DISP|Mod0|auto_generated|divider|divider|StageOut[82]~117_combout\)))) # (!\U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~1\ & (!\U_DISP|Mod0|auto_generated|divider|divider|StageOut[82]~151_combout\ & 
-- (!\U_DISP|Mod0|auto_generated|divider|divider|StageOut[82]~117_combout\)))
-- \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~3\ = CARRY((!\U_DISP|Mod0|auto_generated|divider|divider|StageOut[82]~151_combout\ & (!\U_DISP|Mod0|auto_generated|divider|divider|StageOut[82]~117_combout\ & 
-- !\U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[82]~151_combout\,
	datab => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[82]~117_combout\,
	datad => VCC,
	cin => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~1\,
	combout => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~2_combout\,
	cout => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~3\);

-- Location: LCCOMB_X10_Y5_N18
\U_DISP|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\U_DISP|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & (((\U_DISP|Mod0|auto_generated|divider|divider|StageOut[98]~121_combout\) # 
-- (\U_DISP|Mod0|auto_generated|divider|divider|StageOut[98]~140_combout\)))) # (!\U_DISP|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & (!\U_DISP|Mod0|auto_generated|divider|divider|StageOut[98]~121_combout\ & 
-- (!\U_DISP|Mod0|auto_generated|divider|divider|StageOut[98]~140_combout\)))
-- \U_DISP|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\U_DISP|Mod0|auto_generated|divider|divider|StageOut[98]~121_combout\ & (!\U_DISP|Mod0|auto_generated|divider|divider|StageOut[98]~140_combout\ & 
-- !\U_DISP|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[98]~121_combout\,
	datab => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[98]~140_combout\,
	datad => VCC,
	cin => \U_DISP|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \U_DISP|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \U_DISP|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X10_Y5_N20
\U_DISP|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\U_DISP|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & (((\U_DISP|Mod0|auto_generated|divider|divider|StageOut[99]~120_combout\) # 
-- (\U_DISP|Mod0|auto_generated|divider|divider|StageOut[99]~139_combout\)))) # (!\U_DISP|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & ((((\U_DISP|Mod0|auto_generated|divider|divider|StageOut[99]~120_combout\) # 
-- (\U_DISP|Mod0|auto_generated|divider|divider|StageOut[99]~139_combout\)))))
-- \U_DISP|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((!\U_DISP|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & ((\U_DISP|Mod0|auto_generated|divider|divider|StageOut[99]~120_combout\) # 
-- (\U_DISP|Mod0|auto_generated|divider|divider|StageOut[99]~139_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[99]~120_combout\,
	datab => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[99]~139_combout\,
	datad => VCC,
	cin => \U_DISP|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \U_DISP|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \U_DISP|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X9_Y5_N0
\U_DISP|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\ = (\U_DISP|Mod0|auto_generated|divider|divider|StageOut[96]~142_combout\) # (\U_DISP|Mod0|auto_generated|divider|divider|StageOut[96]~123_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[96]~142_combout\,
	datad => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[96]~123_combout\,
	combout => \U_DISP|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\);

-- Location: LCCOMB_X9_Y5_N8
\U_DISP|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\U_DISP|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\U_DISP|Div1|auto_generated|divider|divider|StageOut[16]~82_combout\) # 
-- (\U_DISP|Div1|auto_generated|divider|divider|StageOut[16]~58_combout\)))) # (!\U_DISP|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\U_DISP|Div1|auto_generated|divider|divider|StageOut[16]~82_combout\ & 
-- (!\U_DISP|Div1|auto_generated|divider|divider|StageOut[16]~58_combout\)))
-- \U_DISP|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\U_DISP|Div1|auto_generated|divider|divider|StageOut[16]~82_combout\ & (!\U_DISP|Div1|auto_generated|divider|divider|StageOut[16]~58_combout\ & 
-- !\U_DISP|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Div1|auto_generated|divider|divider|StageOut[16]~82_combout\,
	datab => \U_DISP|Div1|auto_generated|divider|divider|StageOut[16]~58_combout\,
	datad => VCC,
	cin => \U_DISP|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \U_DISP|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \U_DISP|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X7_Y4_N24
\U_DISP|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ = (\U_DISP|Mod0|auto_generated|divider|divider|StageOut[95]~124_combout\) # (\U_DISP|Mod0|auto_generated|divider|divider|StageOut[95]~143_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[95]~124_combout\,
	datac => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[95]~143_combout\,
	combout => \U_DISP|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\);

-- Location: LCCOMB_X7_Y5_N22
\U_DISP|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\U_DISP|Div1|auto_generated|divider|divider|StageOut[25]~91_combout\) # (\U_DISP|Div1|auto_generated|divider|divider|StageOut[25]~67_combout\)))
-- \U_DISP|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\U_DISP|Div1|auto_generated|divider|divider|StageOut[25]~91_combout\) # (\U_DISP|Div1|auto_generated|divider|divider|StageOut[25]~67_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Div1|auto_generated|divider|divider|StageOut[25]~91_combout\,
	datab => \U_DISP|Div1|auto_generated|divider|divider|StageOut[25]~67_combout\,
	datad => VCC,
	combout => \U_DISP|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \U_DISP|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X7_Y5_N26
\U_DISP|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\U_DISP|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\U_DISP|Div1|auto_generated|divider|divider|StageOut[27]~65_combout\) # 
-- (\U_DISP|Div1|auto_generated|divider|divider|StageOut[27]~89_combout\)))) # (!\U_DISP|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\U_DISP|Div1|auto_generated|divider|divider|StageOut[27]~65_combout\) # 
-- (\U_DISP|Div1|auto_generated|divider|divider|StageOut[27]~89_combout\)))))
-- \U_DISP|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\U_DISP|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\U_DISP|Div1|auto_generated|divider|divider|StageOut[27]~65_combout\) # 
-- (\U_DISP|Div1|auto_generated|divider|divider|StageOut[27]~89_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Div1|auto_generated|divider|divider|StageOut[27]~65_combout\,
	datab => \U_DISP|Div1|auto_generated|divider|divider|StageOut[27]~89_combout\,
	datad => VCC,
	cin => \U_DISP|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \U_DISP|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \U_DISP|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X7_Y3_N2
\U_DISP|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\U_DISP|Div1|auto_generated|divider|divider|StageOut[30]~95_combout\) # (\U_DISP|Div1|auto_generated|divider|divider|StageOut[30]~71_combout\)))
-- \U_DISP|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\U_DISP|Div1|auto_generated|divider|divider|StageOut[30]~95_combout\) # (\U_DISP|Div1|auto_generated|divider|divider|StageOut[30]~71_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Div1|auto_generated|divider|divider|StageOut[30]~95_combout\,
	datab => \U_DISP|Div1|auto_generated|divider|divider|StageOut[30]~71_combout\,
	datad => VCC,
	combout => \U_DISP|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \U_DISP|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X7_Y3_N6
\U_DISP|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\U_DISP|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & (((\U_DISP|Div1|auto_generated|divider|divider|StageOut[32]~93_combout\) # 
-- (\U_DISP|Div1|auto_generated|divider|divider|StageOut[32]~69_combout\)))) # (!\U_DISP|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\U_DISP|Div1|auto_generated|divider|divider|StageOut[32]~93_combout\) # 
-- (\U_DISP|Div1|auto_generated|divider|divider|StageOut[32]~69_combout\)))))
-- \U_DISP|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\U_DISP|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((\U_DISP|Div1|auto_generated|divider|divider|StageOut[32]~93_combout\) # 
-- (\U_DISP|Div1|auto_generated|divider|divider|StageOut[32]~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Div1|auto_generated|divider|divider|StageOut[32]~93_combout\,
	datab => \U_DISP|Div1|auto_generated|divider|divider|StageOut[32]~69_combout\,
	datad => VCC,
	cin => \U_DISP|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \U_DISP|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \U_DISP|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X8_Y3_N18
\U_DISP|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ = (((\U_DISP|Div1|auto_generated|divider|divider|StageOut[35]~75_combout\) # (\U_DISP|Div1|auto_generated|divider|divider|StageOut[35]~103_combout\)))
-- \U_DISP|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ = CARRY((\U_DISP|Div1|auto_generated|divider|divider|StageOut[35]~75_combout\) # (\U_DISP|Div1|auto_generated|divider|divider|StageOut[35]~103_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Div1|auto_generated|divider|divider|StageOut[35]~75_combout\,
	datab => \U_DISP|Div1|auto_generated|divider|divider|StageOut[35]~103_combout\,
	datad => VCC,
	combout => \U_DISP|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	cout => \U_DISP|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\);

-- Location: LCCOMB_X7_Y4_N16
\U_DISP|Div1|auto_generated|divider|divider|add_sub_8_result_int[0]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div1|auto_generated|divider|divider|add_sub_8_result_int[0]~10_combout\ = (\U_DISP|Mod0|auto_generated|divider|divider|StageOut[91]~131_combout\) # (\U_DISP|Mod0|auto_generated|divider|divider|StageOut[91]~128_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[91]~131_combout\,
	datac => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[91]~128_combout\,
	combout => \U_DISP|Div1|auto_generated|divider|divider|add_sub_8_result_int[0]~10_combout\);

-- Location: LCCOMB_X8_Y4_N8
\U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[50]~153_combout\) # (\U_DISP|Mod1|auto_generated|divider|divider|StageOut[50]~152_combout\)))
-- \U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[50]~153_combout\) # (\U_DISP|Mod1|auto_generated|divider|divider|StageOut[50]~152_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[50]~153_combout\,
	datab => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[50]~152_combout\,
	datad => VCC,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X8_Y4_N10
\U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[51]~109_combout\) # 
-- (\U_DISP|Mod1|auto_generated|divider|divider|StageOut[51]~108_combout\)))) # (!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\U_DISP|Mod1|auto_generated|divider|divider|StageOut[51]~109_combout\ & 
-- (!\U_DISP|Mod1|auto_generated|divider|divider|StageOut[51]~108_combout\)))
-- \U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\U_DISP|Mod1|auto_generated|divider|divider|StageOut[51]~109_combout\ & (!\U_DISP|Mod1|auto_generated|divider|divider|StageOut[51]~108_combout\ & 
-- !\U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[51]~109_combout\,
	datab => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[51]~108_combout\,
	datad => VCC,
	cin => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X8_Y4_N14
\U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ = (\U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[53]~106_combout\) # 
-- (\U_DISP|Mod1|auto_generated|divider|divider|StageOut[53]~150_combout\)))) # (!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (!\U_DISP|Mod1|auto_generated|divider|divider|StageOut[53]~106_combout\ & 
-- (!\U_DISP|Mod1|auto_generated|divider|divider|StageOut[53]~150_combout\)))
-- \U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ = CARRY((!\U_DISP|Mod1|auto_generated|divider|divider|StageOut[53]~106_combout\ & (!\U_DISP|Mod1|auto_generated|divider|divider|StageOut[53]~150_combout\ & 
-- !\U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[53]~106_combout\,
	datab => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[53]~150_combout\,
	datad => VCC,
	cin => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	cout => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\);

-- Location: LCCOMB_X8_Y6_N8
\U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[60]~160_combout\) # (\U_DISP|Mod1|auto_generated|divider|divider|StageOut[60]~159_combout\)))
-- \U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[60]~160_combout\) # (\U_DISP|Mod1|auto_generated|divider|divider|StageOut[60]~159_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[60]~160_combout\,
	datab => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[60]~159_combout\,
	datad => VCC,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X8_Y6_N10
\U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[61]~115_combout\) # 
-- (\U_DISP|Mod1|auto_generated|divider|divider|StageOut[61]~116_combout\)))) # (!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (!\U_DISP|Mod1|auto_generated|divider|divider|StageOut[61]~115_combout\ & 
-- (!\U_DISP|Mod1|auto_generated|divider|divider|StageOut[61]~116_combout\)))
-- \U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\U_DISP|Mod1|auto_generated|divider|divider|StageOut[61]~115_combout\ & (!\U_DISP|Mod1|auto_generated|divider|divider|StageOut[61]~116_combout\ & 
-- !\U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[61]~115_combout\,
	datab => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[61]~116_combout\,
	datad => VCC,
	cin => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X8_Y6_N12
\U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & (((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[62]~114_combout\) # 
-- (\U_DISP|Mod1|auto_generated|divider|divider|StageOut[62]~158_combout\)))) # (!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[62]~114_combout\) # 
-- (\U_DISP|Mod1|auto_generated|divider|divider|StageOut[62]~158_combout\)))))
-- \U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[62]~114_combout\) # 
-- (\U_DISP|Mod1|auto_generated|divider|divider|StageOut[62]~158_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[62]~114_combout\,
	datab => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[62]~158_combout\,
	datad => VCC,
	cin => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X9_Y6_N24
\U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~12_combout\ = (\U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~11\ & ((((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[76]~162_combout\) # 
-- (\U_DISP|Mod1|auto_generated|divider|divider|StageOut[76]~118_combout\))))) # (!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~11\ & ((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[76]~162_combout\) # 
-- ((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[76]~118_combout\) # (GND))))
-- \U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~13\ = CARRY((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[76]~162_combout\) # ((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[76]~118_combout\) # 
-- (!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[76]~162_combout\,
	datab => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[76]~118_combout\,
	datad => VCC,
	cin => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~11\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~12_combout\,
	cout => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~13\);

-- Location: LCCOMB_X7_Y6_N12
\U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ = (\U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ & (((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[81]~126_combout\) # 
-- (\U_DISP|Mod1|auto_generated|divider|divider|StageOut[81]~125_combout\)))) # (!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ & (!\U_DISP|Mod1|auto_generated|divider|divider|StageOut[81]~126_combout\ & 
-- (!\U_DISP|Mod1|auto_generated|divider|divider|StageOut[81]~125_combout\)))
-- \U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ = CARRY((!\U_DISP|Mod1|auto_generated|divider|divider|StageOut[81]~126_combout\ & (!\U_DISP|Mod1|auto_generated|divider|divider|StageOut[81]~125_combout\ & 
-- !\U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[81]~126_combout\,
	datab => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[81]~125_combout\,
	datad => VCC,
	cin => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	cout => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\);

-- Location: LCCOMB_X7_Y6_N16
\U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~6_combout\ = (\U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ & (((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[83]~172_combout\) # 
-- (\U_DISP|Mod1|auto_generated|divider|divider|StageOut[83]~132_combout\)))) # (!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ & (!\U_DISP|Mod1|auto_generated|divider|divider|StageOut[83]~172_combout\ & 
-- (!\U_DISP|Mod1|auto_generated|divider|divider|StageOut[83]~132_combout\)))
-- \U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~7\ = CARRY((!\U_DISP|Mod1|auto_generated|divider|divider|StageOut[83]~172_combout\ & (!\U_DISP|Mod1|auto_generated|divider|divider|StageOut[83]~132_combout\ & 
-- !\U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[83]~172_combout\,
	datab => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[83]~132_combout\,
	datad => VCC,
	cin => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~5\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~6_combout\,
	cout => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~7\);

-- Location: LCCOMB_X7_Y6_N18
\U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ = (\U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~7\ & ((((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[84]~171_combout\) # 
-- (\U_DISP|Mod1|auto_generated|divider|divider|StageOut[84]~131_combout\))))) # (!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~7\ & ((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[84]~171_combout\) # 
-- ((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[84]~131_combout\) # (GND))))
-- \U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~9\ = CARRY((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[84]~171_combout\) # ((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[84]~131_combout\) # 
-- (!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[84]~171_combout\,
	datab => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[84]~131_combout\,
	datad => VCC,
	cin => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~7\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	cout => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~9\);

-- Location: LCCOMB_X7_Y6_N20
\U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ = (\U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~9\ & (((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[85]~130_combout\) # 
-- (\U_DISP|Mod1|auto_generated|divider|divider|StageOut[85]~170_combout\)))) # (!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~9\ & (!\U_DISP|Mod1|auto_generated|divider|divider|StageOut[85]~130_combout\ & 
-- (!\U_DISP|Mod1|auto_generated|divider|divider|StageOut[85]~170_combout\)))
-- \U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~11\ = CARRY((!\U_DISP|Mod1|auto_generated|divider|divider|StageOut[85]~130_combout\ & (!\U_DISP|Mod1|auto_generated|divider|divider|StageOut[85]~170_combout\ & 
-- !\U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[85]~130_combout\,
	datab => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[85]~170_combout\,
	datad => VCC,
	cin => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~9\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	cout => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~11\);

-- Location: LCCOMB_X7_Y6_N26
\U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[9]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[9]~16_combout\ = (\U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~15\ & ((((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[88]~127_combout\) # 
-- (\U_DISP|Mod1|auto_generated|divider|divider|StageOut[88]~167_combout\))))) # (!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~15\ & ((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[88]~127_combout\) # 
-- ((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[88]~167_combout\) # (GND))))
-- \U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[9]~17\ = CARRY((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[88]~127_combout\) # ((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[88]~167_combout\) # 
-- (!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[88]~127_combout\,
	datab => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[88]~167_combout\,
	datad => VCC,
	cin => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~15\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[9]~16_combout\,
	cout => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[9]~17\);

-- Location: LCFF_X15_Y11_N17
\U_FILTRO2|contador[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \U_FILTRO2|contador[1]~22_combout\,
	aclr => \ch_reset~clkctrl_outclk\,
	sclr => \U_FILTRO2|contador[5]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_FILTRO2|contador\(1));

-- Location: LCFF_X15_Y11_N25
\U_FILTRO2|contador[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \U_FILTRO2|contador[5]~30_combout\,
	aclr => \ch_reset~clkctrl_outclk\,
	sclr => \U_FILTRO2|contador[5]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_FILTRO2|contador\(5));

-- Location: LCFF_X15_Y10_N7
\U_FILTRO2|contador[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \U_FILTRO2|contador[12]~44_combout\,
	aclr => \ch_reset~clkctrl_outclk\,
	sclr => \U_FILTRO2|contador[5]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_FILTRO2|contador\(12));

-- Location: LCFF_X15_Y10_N11
\U_FILTRO2|contador[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \U_FILTRO2|contador[14]~48_combout\,
	aclr => \ch_reset~clkctrl_outclk\,
	sclr => \U_FILTRO2|contador[5]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_FILTRO2|contador\(14));

-- Location: LCFF_X15_Y10_N17
\U_FILTRO2|contador[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \U_FILTRO2|contador[17]~54_combout\,
	aclr => \ch_reset~clkctrl_outclk\,
	sclr => \U_FILTRO2|contador[5]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_FILTRO2|contador\(17));

-- Location: LCFF_X17_Y11_N15
\U_FILTRO1|contador[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \U_FILTRO1|contador[0]~19_combout\,
	aclr => \ch_reset~clkctrl_outclk\,
	sclr => \U_FILTRO1|contador[14]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_FILTRO1|contador\(0));

-- Location: LCFF_X17_Y11_N17
\U_FILTRO1|contador[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \U_FILTRO1|contador[1]~22_combout\,
	aclr => \ch_reset~clkctrl_outclk\,
	sclr => \U_FILTRO1|contador[14]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_FILTRO1|contador\(1));

-- Location: LCFF_X17_Y11_N19
\U_FILTRO1|contador[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \U_FILTRO1|contador[2]~24_combout\,
	aclr => \ch_reset~clkctrl_outclk\,
	sclr => \U_FILTRO1|contador[14]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_FILTRO1|contador\(2));

-- Location: LCFF_X17_Y11_N21
\U_FILTRO1|contador[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \U_FILTRO1|contador[3]~26_combout\,
	aclr => \ch_reset~clkctrl_outclk\,
	sclr => \U_FILTRO1|contador[14]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_FILTRO1|contador\(3));

-- Location: LCFF_X17_Y11_N23
\U_FILTRO1|contador[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \U_FILTRO1|contador[4]~28_combout\,
	aclr => \ch_reset~clkctrl_outclk\,
	sclr => \U_FILTRO1|contador[14]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_FILTRO1|contador\(4));

-- Location: LCFF_X17_Y11_N27
\U_FILTRO1|contador[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \U_FILTRO1|contador[6]~32_combout\,
	aclr => \ch_reset~clkctrl_outclk\,
	sclr => \U_FILTRO1|contador[14]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_FILTRO1|contador\(6));

-- Location: LCFF_X17_Y11_N29
\U_FILTRO1|contador[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \U_FILTRO1|contador[7]~34_combout\,
	aclr => \ch_reset~clkctrl_outclk\,
	sclr => \U_FILTRO1|contador[14]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_FILTRO1|contador\(7));

-- Location: LCFF_X17_Y11_N25
\U_FILTRO1|contador[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \U_FILTRO1|contador[5]~30_combout\,
	aclr => \ch_reset~clkctrl_outclk\,
	sclr => \U_FILTRO1|contador[14]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_FILTRO1|contador\(5));

-- Location: LCFF_X17_Y10_N1
\U_FILTRO1|contador[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \U_FILTRO1|contador[9]~38_combout\,
	aclr => \ch_reset~clkctrl_outclk\,
	sclr => \U_FILTRO1|contador[14]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_FILTRO1|contador\(9));

-- Location: LCFF_X17_Y10_N3
\U_FILTRO1|contador[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \U_FILTRO1|contador[10]~40_combout\,
	aclr => \ch_reset~clkctrl_outclk\,
	sclr => \U_FILTRO1|contador[14]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_FILTRO1|contador\(10));

-- Location: LCFF_X17_Y10_N5
\U_FILTRO1|contador[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \U_FILTRO1|contador[11]~42_combout\,
	aclr => \ch_reset~clkctrl_outclk\,
	sclr => \U_FILTRO1|contador[14]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_FILTRO1|contador\(11));

-- Location: LCFF_X17_Y11_N31
\U_FILTRO1|contador[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \U_FILTRO1|contador[8]~36_combout\,
	aclr => \ch_reset~clkctrl_outclk\,
	sclr => \U_FILTRO1|contador[14]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_FILTRO1|contador\(8));

-- Location: LCFF_X17_Y10_N7
\U_FILTRO1|contador[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \U_FILTRO1|contador[12]~44_combout\,
	aclr => \ch_reset~clkctrl_outclk\,
	sclr => \U_FILTRO1|contador[14]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_FILTRO1|contador\(12));

-- Location: LCFF_X17_Y10_N11
\U_FILTRO1|contador[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \U_FILTRO1|contador[14]~48_combout\,
	aclr => \ch_reset~clkctrl_outclk\,
	sclr => \U_FILTRO1|contador[14]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_FILTRO1|contador\(14));

-- Location: LCFF_X17_Y10_N9
\U_FILTRO1|contador[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \U_FILTRO1|contador[13]~46_combout\,
	aclr => \ch_reset~clkctrl_outclk\,
	sclr => \U_FILTRO1|contador[14]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_FILTRO1|contador\(13));

-- Location: LCFF_X17_Y10_N13
\U_FILTRO1|contador[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \U_FILTRO1|contador[15]~50_combout\,
	aclr => \ch_reset~clkctrl_outclk\,
	sclr => \U_FILTRO1|contador[14]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_FILTRO1|contador\(15));

-- Location: LCFF_X17_Y10_N15
\U_FILTRO1|contador[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \U_FILTRO1|contador[16]~52_combout\,
	aclr => \ch_reset~clkctrl_outclk\,
	sclr => \U_FILTRO1|contador[14]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_FILTRO1|contador\(16));

-- Location: LCFF_X17_Y10_N17
\U_FILTRO1|contador[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \U_FILTRO1|contador[17]~54_combout\,
	aclr => \ch_reset~clkctrl_outclk\,
	sclr => \U_FILTRO1|contador[14]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_FILTRO1|contador\(17));

-- Location: LCFF_X17_Y10_N19
\U_FILTRO1|contador[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \U_FILTRO1|contador[18]~56_combout\,
	aclr => \ch_reset~clkctrl_outclk\,
	sclr => \U_FILTRO1|contador[14]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_FILTRO1|contador\(18));

-- Location: LCFF_X18_Y11_N17
\U_FILTRO3|contador[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \U_FILTRO3|contador[1]~22_combout\,
	aclr => \ch_reset~clkctrl_outclk\,
	sclr => \U_FILTRO3|contador[8]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_FILTRO3|contador\(1));

-- Location: LCFF_X18_Y11_N25
\U_FILTRO3|contador[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \U_FILTRO3|contador[5]~30_combout\,
	aclr => \ch_reset~clkctrl_outclk\,
	sclr => \U_FILTRO3|contador[8]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_FILTRO3|contador\(5));

-- Location: LCFF_X18_Y10_N7
\U_FILTRO3|contador[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \U_FILTRO3|contador[12]~44_combout\,
	aclr => \ch_reset~clkctrl_outclk\,
	sclr => \U_FILTRO3|contador[8]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_FILTRO3|contador\(12));

-- Location: LCFF_X18_Y10_N11
\U_FILTRO3|contador[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \U_FILTRO3|contador[14]~48_combout\,
	aclr => \ch_reset~clkctrl_outclk\,
	sclr => \U_FILTRO3|contador[8]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_FILTRO3|contador\(14));

-- Location: LCFF_X18_Y10_N17
\U_FILTRO3|contador[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \U_FILTRO3|contador[17]~54_combout\,
	aclr => \ch_reset~clkctrl_outclk\,
	sclr => \U_FILTRO3|contador[8]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_FILTRO3|contador\(17));

-- Location: LCCOMB_X15_Y11_N16
\U_FILTRO2|contador[1]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_FILTRO2|contador[1]~22_combout\ = (\U_FILTRO2|contador\(1) & (!\U_FILTRO2|contador[0]~20\)) # (!\U_FILTRO2|contador\(1) & ((\U_FILTRO2|contador[0]~20\) # (GND)))
-- \U_FILTRO2|contador[1]~23\ = CARRY((!\U_FILTRO2|contador[0]~20\) # (!\U_FILTRO2|contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_FILTRO2|contador\(1),
	datad => VCC,
	cin => \U_FILTRO2|contador[0]~20\,
	combout => \U_FILTRO2|contador[1]~22_combout\,
	cout => \U_FILTRO2|contador[1]~23\);

-- Location: LCCOMB_X15_Y11_N24
\U_FILTRO2|contador[5]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_FILTRO2|contador[5]~30_combout\ = (\U_FILTRO2|contador\(5) & (!\U_FILTRO2|contador[4]~29\)) # (!\U_FILTRO2|contador\(5) & ((\U_FILTRO2|contador[4]~29\) # (GND)))
-- \U_FILTRO2|contador[5]~31\ = CARRY((!\U_FILTRO2|contador[4]~29\) # (!\U_FILTRO2|contador\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_FILTRO2|contador\(5),
	datad => VCC,
	cin => \U_FILTRO2|contador[4]~29\,
	combout => \U_FILTRO2|contador[5]~30_combout\,
	cout => \U_FILTRO2|contador[5]~31\);

-- Location: LCCOMB_X15_Y10_N6
\U_FILTRO2|contador[12]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_FILTRO2|contador[12]~44_combout\ = (\U_FILTRO2|contador\(12) & (\U_FILTRO2|contador[11]~43\ $ (GND))) # (!\U_FILTRO2|contador\(12) & (!\U_FILTRO2|contador[11]~43\ & VCC))
-- \U_FILTRO2|contador[12]~45\ = CARRY((\U_FILTRO2|contador\(12) & !\U_FILTRO2|contador[11]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_FILTRO2|contador\(12),
	datad => VCC,
	cin => \U_FILTRO2|contador[11]~43\,
	combout => \U_FILTRO2|contador[12]~44_combout\,
	cout => \U_FILTRO2|contador[12]~45\);

-- Location: LCCOMB_X15_Y10_N10
\U_FILTRO2|contador[14]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_FILTRO2|contador[14]~48_combout\ = (\U_FILTRO2|contador\(14) & (\U_FILTRO2|contador[13]~47\ $ (GND))) # (!\U_FILTRO2|contador\(14) & (!\U_FILTRO2|contador[13]~47\ & VCC))
-- \U_FILTRO2|contador[14]~49\ = CARRY((\U_FILTRO2|contador\(14) & !\U_FILTRO2|contador[13]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_FILTRO2|contador\(14),
	datad => VCC,
	cin => \U_FILTRO2|contador[13]~47\,
	combout => \U_FILTRO2|contador[14]~48_combout\,
	cout => \U_FILTRO2|contador[14]~49\);

-- Location: LCCOMB_X15_Y10_N16
\U_FILTRO2|contador[17]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_FILTRO2|contador[17]~54_combout\ = (\U_FILTRO2|contador\(17) & (!\U_FILTRO2|contador[16]~53\)) # (!\U_FILTRO2|contador\(17) & ((\U_FILTRO2|contador[16]~53\) # (GND)))
-- \U_FILTRO2|contador[17]~55\ = CARRY((!\U_FILTRO2|contador[16]~53\) # (!\U_FILTRO2|contador\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_FILTRO2|contador\(17),
	datad => VCC,
	cin => \U_FILTRO2|contador[16]~53\,
	combout => \U_FILTRO2|contador[17]~54_combout\,
	cout => \U_FILTRO2|contador[17]~55\);

-- Location: LCCOMB_X17_Y11_N14
\U_FILTRO1|contador[0]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_FILTRO1|contador[0]~19_combout\ = \U_FILTRO1|contador\(0) $ (VCC)
-- \U_FILTRO1|contador[0]~20\ = CARRY(\U_FILTRO1|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_FILTRO1|contador\(0),
	datad => VCC,
	combout => \U_FILTRO1|contador[0]~19_combout\,
	cout => \U_FILTRO1|contador[0]~20\);

-- Location: LCCOMB_X17_Y11_N16
\U_FILTRO1|contador[1]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_FILTRO1|contador[1]~22_combout\ = (\U_FILTRO1|contador\(1) & (!\U_FILTRO1|contador[0]~20\)) # (!\U_FILTRO1|contador\(1) & ((\U_FILTRO1|contador[0]~20\) # (GND)))
-- \U_FILTRO1|contador[1]~23\ = CARRY((!\U_FILTRO1|contador[0]~20\) # (!\U_FILTRO1|contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_FILTRO1|contador\(1),
	datad => VCC,
	cin => \U_FILTRO1|contador[0]~20\,
	combout => \U_FILTRO1|contador[1]~22_combout\,
	cout => \U_FILTRO1|contador[1]~23\);

-- Location: LCCOMB_X17_Y11_N18
\U_FILTRO1|contador[2]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_FILTRO1|contador[2]~24_combout\ = (\U_FILTRO1|contador\(2) & (\U_FILTRO1|contador[1]~23\ $ (GND))) # (!\U_FILTRO1|contador\(2) & (!\U_FILTRO1|contador[1]~23\ & VCC))
-- \U_FILTRO1|contador[2]~25\ = CARRY((\U_FILTRO1|contador\(2) & !\U_FILTRO1|contador[1]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_FILTRO1|contador\(2),
	datad => VCC,
	cin => \U_FILTRO1|contador[1]~23\,
	combout => \U_FILTRO1|contador[2]~24_combout\,
	cout => \U_FILTRO1|contador[2]~25\);

-- Location: LCCOMB_X17_Y11_N20
\U_FILTRO1|contador[3]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_FILTRO1|contador[3]~26_combout\ = (\U_FILTRO1|contador\(3) & (!\U_FILTRO1|contador[2]~25\)) # (!\U_FILTRO1|contador\(3) & ((\U_FILTRO1|contador[2]~25\) # (GND)))
-- \U_FILTRO1|contador[3]~27\ = CARRY((!\U_FILTRO1|contador[2]~25\) # (!\U_FILTRO1|contador\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_FILTRO1|contador\(3),
	datad => VCC,
	cin => \U_FILTRO1|contador[2]~25\,
	combout => \U_FILTRO1|contador[3]~26_combout\,
	cout => \U_FILTRO1|contador[3]~27\);

-- Location: LCCOMB_X17_Y11_N22
\U_FILTRO1|contador[4]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_FILTRO1|contador[4]~28_combout\ = (\U_FILTRO1|contador\(4) & (\U_FILTRO1|contador[3]~27\ $ (GND))) # (!\U_FILTRO1|contador\(4) & (!\U_FILTRO1|contador[3]~27\ & VCC))
-- \U_FILTRO1|contador[4]~29\ = CARRY((\U_FILTRO1|contador\(4) & !\U_FILTRO1|contador[3]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_FILTRO1|contador\(4),
	datad => VCC,
	cin => \U_FILTRO1|contador[3]~27\,
	combout => \U_FILTRO1|contador[4]~28_combout\,
	cout => \U_FILTRO1|contador[4]~29\);

-- Location: LCCOMB_X17_Y11_N24
\U_FILTRO1|contador[5]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_FILTRO1|contador[5]~30_combout\ = (\U_FILTRO1|contador\(5) & (!\U_FILTRO1|contador[4]~29\)) # (!\U_FILTRO1|contador\(5) & ((\U_FILTRO1|contador[4]~29\) # (GND)))
-- \U_FILTRO1|contador[5]~31\ = CARRY((!\U_FILTRO1|contador[4]~29\) # (!\U_FILTRO1|contador\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_FILTRO1|contador\(5),
	datad => VCC,
	cin => \U_FILTRO1|contador[4]~29\,
	combout => \U_FILTRO1|contador[5]~30_combout\,
	cout => \U_FILTRO1|contador[5]~31\);

-- Location: LCCOMB_X17_Y11_N26
\U_FILTRO1|contador[6]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_FILTRO1|contador[6]~32_combout\ = (\U_FILTRO1|contador\(6) & (\U_FILTRO1|contador[5]~31\ $ (GND))) # (!\U_FILTRO1|contador\(6) & (!\U_FILTRO1|contador[5]~31\ & VCC))
-- \U_FILTRO1|contador[6]~33\ = CARRY((\U_FILTRO1|contador\(6) & !\U_FILTRO1|contador[5]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_FILTRO1|contador\(6),
	datad => VCC,
	cin => \U_FILTRO1|contador[5]~31\,
	combout => \U_FILTRO1|contador[6]~32_combout\,
	cout => \U_FILTRO1|contador[6]~33\);

-- Location: LCCOMB_X17_Y11_N28
\U_FILTRO1|contador[7]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_FILTRO1|contador[7]~34_combout\ = (\U_FILTRO1|contador\(7) & (!\U_FILTRO1|contador[6]~33\)) # (!\U_FILTRO1|contador\(7) & ((\U_FILTRO1|contador[6]~33\) # (GND)))
-- \U_FILTRO1|contador[7]~35\ = CARRY((!\U_FILTRO1|contador[6]~33\) # (!\U_FILTRO1|contador\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_FILTRO1|contador\(7),
	datad => VCC,
	cin => \U_FILTRO1|contador[6]~33\,
	combout => \U_FILTRO1|contador[7]~34_combout\,
	cout => \U_FILTRO1|contador[7]~35\);

-- Location: LCCOMB_X17_Y11_N30
\U_FILTRO1|contador[8]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_FILTRO1|contador[8]~36_combout\ = (\U_FILTRO1|contador\(8) & (\U_FILTRO1|contador[7]~35\ $ (GND))) # (!\U_FILTRO1|contador\(8) & (!\U_FILTRO1|contador[7]~35\ & VCC))
-- \U_FILTRO1|contador[8]~37\ = CARRY((\U_FILTRO1|contador\(8) & !\U_FILTRO1|contador[7]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_FILTRO1|contador\(8),
	datad => VCC,
	cin => \U_FILTRO1|contador[7]~35\,
	combout => \U_FILTRO1|contador[8]~36_combout\,
	cout => \U_FILTRO1|contador[8]~37\);

-- Location: LCCOMB_X17_Y10_N0
\U_FILTRO1|contador[9]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_FILTRO1|contador[9]~38_combout\ = (\U_FILTRO1|contador\(9) & (!\U_FILTRO1|contador[8]~37\)) # (!\U_FILTRO1|contador\(9) & ((\U_FILTRO1|contador[8]~37\) # (GND)))
-- \U_FILTRO1|contador[9]~39\ = CARRY((!\U_FILTRO1|contador[8]~37\) # (!\U_FILTRO1|contador\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_FILTRO1|contador\(9),
	datad => VCC,
	cin => \U_FILTRO1|contador[8]~37\,
	combout => \U_FILTRO1|contador[9]~38_combout\,
	cout => \U_FILTRO1|contador[9]~39\);

-- Location: LCCOMB_X17_Y10_N2
\U_FILTRO1|contador[10]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_FILTRO1|contador[10]~40_combout\ = (\U_FILTRO1|contador\(10) & (\U_FILTRO1|contador[9]~39\ $ (GND))) # (!\U_FILTRO1|contador\(10) & (!\U_FILTRO1|contador[9]~39\ & VCC))
-- \U_FILTRO1|contador[10]~41\ = CARRY((\U_FILTRO1|contador\(10) & !\U_FILTRO1|contador[9]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_FILTRO1|contador\(10),
	datad => VCC,
	cin => \U_FILTRO1|contador[9]~39\,
	combout => \U_FILTRO1|contador[10]~40_combout\,
	cout => \U_FILTRO1|contador[10]~41\);

-- Location: LCCOMB_X17_Y10_N4
\U_FILTRO1|contador[11]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_FILTRO1|contador[11]~42_combout\ = (\U_FILTRO1|contador\(11) & (!\U_FILTRO1|contador[10]~41\)) # (!\U_FILTRO1|contador\(11) & ((\U_FILTRO1|contador[10]~41\) # (GND)))
-- \U_FILTRO1|contador[11]~43\ = CARRY((!\U_FILTRO1|contador[10]~41\) # (!\U_FILTRO1|contador\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_FILTRO1|contador\(11),
	datad => VCC,
	cin => \U_FILTRO1|contador[10]~41\,
	combout => \U_FILTRO1|contador[11]~42_combout\,
	cout => \U_FILTRO1|contador[11]~43\);

-- Location: LCCOMB_X17_Y10_N6
\U_FILTRO1|contador[12]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_FILTRO1|contador[12]~44_combout\ = (\U_FILTRO1|contador\(12) & (\U_FILTRO1|contador[11]~43\ $ (GND))) # (!\U_FILTRO1|contador\(12) & (!\U_FILTRO1|contador[11]~43\ & VCC))
-- \U_FILTRO1|contador[12]~45\ = CARRY((\U_FILTRO1|contador\(12) & !\U_FILTRO1|contador[11]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_FILTRO1|contador\(12),
	datad => VCC,
	cin => \U_FILTRO1|contador[11]~43\,
	combout => \U_FILTRO1|contador[12]~44_combout\,
	cout => \U_FILTRO1|contador[12]~45\);

-- Location: LCCOMB_X17_Y10_N8
\U_FILTRO1|contador[13]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_FILTRO1|contador[13]~46_combout\ = (\U_FILTRO1|contador\(13) & (!\U_FILTRO1|contador[12]~45\)) # (!\U_FILTRO1|contador\(13) & ((\U_FILTRO1|contador[12]~45\) # (GND)))
-- \U_FILTRO1|contador[13]~47\ = CARRY((!\U_FILTRO1|contador[12]~45\) # (!\U_FILTRO1|contador\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_FILTRO1|contador\(13),
	datad => VCC,
	cin => \U_FILTRO1|contador[12]~45\,
	combout => \U_FILTRO1|contador[13]~46_combout\,
	cout => \U_FILTRO1|contador[13]~47\);

-- Location: LCCOMB_X17_Y10_N10
\U_FILTRO1|contador[14]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_FILTRO1|contador[14]~48_combout\ = (\U_FILTRO1|contador\(14) & (\U_FILTRO1|contador[13]~47\ $ (GND))) # (!\U_FILTRO1|contador\(14) & (!\U_FILTRO1|contador[13]~47\ & VCC))
-- \U_FILTRO1|contador[14]~49\ = CARRY((\U_FILTRO1|contador\(14) & !\U_FILTRO1|contador[13]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_FILTRO1|contador\(14),
	datad => VCC,
	cin => \U_FILTRO1|contador[13]~47\,
	combout => \U_FILTRO1|contador[14]~48_combout\,
	cout => \U_FILTRO1|contador[14]~49\);

-- Location: LCCOMB_X17_Y10_N12
\U_FILTRO1|contador[15]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_FILTRO1|contador[15]~50_combout\ = (\U_FILTRO1|contador\(15) & (!\U_FILTRO1|contador[14]~49\)) # (!\U_FILTRO1|contador\(15) & ((\U_FILTRO1|contador[14]~49\) # (GND)))
-- \U_FILTRO1|contador[15]~51\ = CARRY((!\U_FILTRO1|contador[14]~49\) # (!\U_FILTRO1|contador\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_FILTRO1|contador\(15),
	datad => VCC,
	cin => \U_FILTRO1|contador[14]~49\,
	combout => \U_FILTRO1|contador[15]~50_combout\,
	cout => \U_FILTRO1|contador[15]~51\);

-- Location: LCCOMB_X17_Y10_N14
\U_FILTRO1|contador[16]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_FILTRO1|contador[16]~52_combout\ = (\U_FILTRO1|contador\(16) & (\U_FILTRO1|contador[15]~51\ $ (GND))) # (!\U_FILTRO1|contador\(16) & (!\U_FILTRO1|contador[15]~51\ & VCC))
-- \U_FILTRO1|contador[16]~53\ = CARRY((\U_FILTRO1|contador\(16) & !\U_FILTRO1|contador[15]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_FILTRO1|contador\(16),
	datad => VCC,
	cin => \U_FILTRO1|contador[15]~51\,
	combout => \U_FILTRO1|contador[16]~52_combout\,
	cout => \U_FILTRO1|contador[16]~53\);

-- Location: LCCOMB_X17_Y10_N16
\U_FILTRO1|contador[17]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_FILTRO1|contador[17]~54_combout\ = (\U_FILTRO1|contador\(17) & (!\U_FILTRO1|contador[16]~53\)) # (!\U_FILTRO1|contador\(17) & ((\U_FILTRO1|contador[16]~53\) # (GND)))
-- \U_FILTRO1|contador[17]~55\ = CARRY((!\U_FILTRO1|contador[16]~53\) # (!\U_FILTRO1|contador\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_FILTRO1|contador\(17),
	datad => VCC,
	cin => \U_FILTRO1|contador[16]~53\,
	combout => \U_FILTRO1|contador[17]~54_combout\,
	cout => \U_FILTRO1|contador[17]~55\);

-- Location: LCCOMB_X17_Y10_N18
\U_FILTRO1|contador[18]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_FILTRO1|contador[18]~56_combout\ = \U_FILTRO1|contador[17]~55\ $ (!\U_FILTRO1|contador\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U_FILTRO1|contador\(18),
	cin => \U_FILTRO1|contador[17]~55\,
	combout => \U_FILTRO1|contador[18]~56_combout\);

-- Location: LCCOMB_X18_Y11_N16
\U_FILTRO3|contador[1]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_FILTRO3|contador[1]~22_combout\ = (\U_FILTRO3|contador\(1) & (!\U_FILTRO3|contador[0]~20\)) # (!\U_FILTRO3|contador\(1) & ((\U_FILTRO3|contador[0]~20\) # (GND)))
-- \U_FILTRO3|contador[1]~23\ = CARRY((!\U_FILTRO3|contador[0]~20\) # (!\U_FILTRO3|contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_FILTRO3|contador\(1),
	datad => VCC,
	cin => \U_FILTRO3|contador[0]~20\,
	combout => \U_FILTRO3|contador[1]~22_combout\,
	cout => \U_FILTRO3|contador[1]~23\);

-- Location: LCCOMB_X18_Y11_N24
\U_FILTRO3|contador[5]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_FILTRO3|contador[5]~30_combout\ = (\U_FILTRO3|contador\(5) & (!\U_FILTRO3|contador[4]~29\)) # (!\U_FILTRO3|contador\(5) & ((\U_FILTRO3|contador[4]~29\) # (GND)))
-- \U_FILTRO3|contador[5]~31\ = CARRY((!\U_FILTRO3|contador[4]~29\) # (!\U_FILTRO3|contador\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_FILTRO3|contador\(5),
	datad => VCC,
	cin => \U_FILTRO3|contador[4]~29\,
	combout => \U_FILTRO3|contador[5]~30_combout\,
	cout => \U_FILTRO3|contador[5]~31\);

-- Location: LCCOMB_X18_Y10_N6
\U_FILTRO3|contador[12]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_FILTRO3|contador[12]~44_combout\ = (\U_FILTRO3|contador\(12) & (\U_FILTRO3|contador[11]~43\ $ (GND))) # (!\U_FILTRO3|contador\(12) & (!\U_FILTRO3|contador[11]~43\ & VCC))
-- \U_FILTRO3|contador[12]~45\ = CARRY((\U_FILTRO3|contador\(12) & !\U_FILTRO3|contador[11]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_FILTRO3|contador\(12),
	datad => VCC,
	cin => \U_FILTRO3|contador[11]~43\,
	combout => \U_FILTRO3|contador[12]~44_combout\,
	cout => \U_FILTRO3|contador[12]~45\);

-- Location: LCCOMB_X18_Y10_N10
\U_FILTRO3|contador[14]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_FILTRO3|contador[14]~48_combout\ = (\U_FILTRO3|contador\(14) & (\U_FILTRO3|contador[13]~47\ $ (GND))) # (!\U_FILTRO3|contador\(14) & (!\U_FILTRO3|contador[13]~47\ & VCC))
-- \U_FILTRO3|contador[14]~49\ = CARRY((\U_FILTRO3|contador\(14) & !\U_FILTRO3|contador[13]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_FILTRO3|contador\(14),
	datad => VCC,
	cin => \U_FILTRO3|contador[13]~47\,
	combout => \U_FILTRO3|contador[14]~48_combout\,
	cout => \U_FILTRO3|contador[14]~49\);

-- Location: LCCOMB_X18_Y10_N16
\U_FILTRO3|contador[17]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_FILTRO3|contador[17]~54_combout\ = (\U_FILTRO3|contador\(17) & (!\U_FILTRO3|contador[16]~53\)) # (!\U_FILTRO3|contador\(17) & ((\U_FILTRO3|contador[16]~53\) # (GND)))
-- \U_FILTRO3|contador[17]~55\ = CARRY((!\U_FILTRO3|contador[16]~53\) # (!\U_FILTRO3|contador\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_FILTRO3|contador\(17),
	datad => VCC,
	cin => \U_FILTRO3|contador[16]~53\,
	combout => \U_FILTRO3|contador[17]~54_combout\,
	cout => \U_FILTRO3|contador[17]~55\);

-- Location: LCFF_X10_Y10_N9
\U_BLOCO_DADOS|estoque_tortilha_g[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \U_BLOCO_DADOS|estoque_tortilha_g[0]~0_combout\,
	aclr => \ch_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_BLOCO_DADOS|estoque_tortilha_g\(0));

-- Location: LCCOMB_X9_Y10_N10
\U_BLOCO_DADOS|Mux9~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_BLOCO_DADOS|Mux9~2_combout\ = (!\ch_produto~combout\(1) & (!\ch_produto~combout\(0) & (!\U_BLOCO_DADOS|estoque_tortilha_g\(0) & \ch_produto~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ch_produto~combout\(1),
	datab => \ch_produto~combout\(0),
	datac => \U_BLOCO_DADOS|estoque_tortilha_g\(0),
	datad => \ch_produto~combout\(2),
	combout => \U_BLOCO_DADOS|Mux9~2_combout\);

-- Location: LCCOMB_X7_Y8_N26
\U_DISP|Div0|auto_generated|divider|divider|StageOut[54]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div0|auto_generated|divider|divider|StageOut[54]~55_combout\ = (!\U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	combout => \U_DISP|Div0|auto_generated|divider|divider|StageOut[54]~55_combout\);

-- Location: LCCOMB_X7_Y9_N8
\U_DISP|Div0|auto_generated|divider|divider|StageOut[53]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div0|auto_generated|divider|divider|StageOut[53]~56_combout\ = (\U_BLOCO_DADOS|soma_atual\(8) & \U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_BLOCO_DADOS|soma_atual\(8),
	datac => \U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \U_DISP|Div0|auto_generated|divider|divider|StageOut[53]~56_combout\);

-- Location: LCCOMB_X7_Y9_N20
\U_DISP|Div0|auto_generated|divider|divider|StageOut[52]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div0|auto_generated|divider|divider|StageOut[52]~58_combout\ = (\U_BLOCO_DADOS|soma_atual\(7) & \U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BLOCO_DADOS|soma_atual\(7),
	datac => \U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \U_DISP|Div0|auto_generated|divider|divider|StageOut[52]~58_combout\);

-- Location: LCCOMB_X8_Y9_N12
\U_DISP|Div0|auto_generated|divider|divider|StageOut[51]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div0|auto_generated|divider|divider|StageOut[51]~61_combout\ = (!\U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	combout => \U_DISP|Div0|auto_generated|divider|divider|StageOut[51]~61_combout\);

-- Location: LCCOMB_X8_Y9_N10
\U_DISP|Div0|auto_generated|divider|divider|StageOut[50]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div0|auto_generated|divider|divider|StageOut[50]~63_combout\ = (!\U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	combout => \U_DISP|Div0|auto_generated|divider|divider|StageOut[50]~63_combout\);

-- Location: LCCOMB_X7_Y9_N30
\U_DISP|Div0|auto_generated|divider|divider|StageOut[49]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div0|auto_generated|divider|divider|StageOut[49]~64_combout\ = (\U_BLOCO_DADOS|soma_atual\(4) & \U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BLOCO_DADOS|soma_atual\(4),
	datac => \U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \U_DISP|Div0|auto_generated|divider|divider|StageOut[49]~64_combout\);

-- Location: LCCOMB_X8_Y9_N8
\U_DISP|Div0|auto_generated|divider|divider|StageOut[62]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div0|auto_generated|divider|divider|StageOut[62]~66_combout\ = (\U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ & !\U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	datad => \U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \U_DISP|Div0|auto_generated|divider|divider|StageOut[62]~66_combout\);

-- Location: LCCOMB_X8_Y9_N30
\U_DISP|Div0|auto_generated|divider|divider|StageOut[60]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div0|auto_generated|divider|divider|StageOut[60]~68_combout\ = (\U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ & !\U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	datad => \U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \U_DISP|Div0|auto_generated|divider|divider|StageOut[60]~68_combout\);

-- Location: LCCOMB_X9_Y9_N20
\U_DISP|Div0|auto_generated|divider|divider|StageOut[58]~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div0|auto_generated|divider|divider|StageOut[58]~71_combout\ = (\U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\ & !\U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	datad => \U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \U_DISP|Div0|auto_generated|divider|divider|StageOut[58]~71_combout\);

-- Location: LCCOMB_X7_Y8_N24
\U_DISP|Div0|auto_generated|divider|divider|StageOut[48]~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div0|auto_generated|divider|divider|StageOut[48]~73_combout\ = (\U_BLOCO_DADOS|soma_atual\(3) & \U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BLOCO_DADOS|soma_atual\(3),
	datac => \U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \U_DISP|Div0|auto_generated|divider|divider|StageOut[48]~73_combout\);

-- Location: LCCOMB_X7_Y8_N2
\U_DISP|Div0|auto_generated|divider|divider|StageOut[48]~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div0|auto_generated|divider|divider|StageOut[48]~74_combout\ = (\U_BLOCO_DADOS|soma_atual\(3) & !\U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BLOCO_DADOS|soma_atual\(3),
	datac => \U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \U_DISP|Div0|auto_generated|divider|divider|StageOut[48]~74_combout\);

-- Location: LCCOMB_X10_Y9_N4
\U_DISP|Div0|auto_generated|divider|divider|StageOut[57]~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div0|auto_generated|divider|divider|StageOut[57]~75_combout\ = (\U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\ & !\U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\,
	datad => \U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \U_DISP|Div0|auto_generated|divider|divider|StageOut[57]~75_combout\);

-- Location: LCCOMB_X12_Y9_N4
\U_DISP|Div0|auto_generated|divider|divider|StageOut[69]~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div0|auto_generated|divider|divider|StageOut[69]~77_combout\ = (\U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\ & !\U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\,
	datad => \U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	combout => \U_DISP|Div0|auto_generated|divider|divider|StageOut[69]~77_combout\);

-- Location: LCCOMB_X10_Y9_N10
\U_DISP|Div0|auto_generated|divider|divider|StageOut[68]~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div0|auto_generated|divider|divider|StageOut[68]~78_combout\ = (\U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\ & !\U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\,
	datad => \U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	combout => \U_DISP|Div0|auto_generated|divider|divider|StageOut[68]~78_combout\);

-- Location: LCCOMB_X9_Y9_N30
\U_DISP|Div0|auto_generated|divider|divider|StageOut[65]~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div0|auto_generated|divider|divider|StageOut[65]~81_combout\ = (\U_BLOCO_DADOS|soma_atual\(2) & \U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_BLOCO_DADOS|soma_atual\(2),
	datad => \U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	combout => \U_DISP|Div0|auto_generated|divider|divider|StageOut[65]~81_combout\);

-- Location: LCCOMB_X10_Y8_N22
\U_DISP|Mod0|auto_generated|divider|divider|StageOut[66]~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod0|auto_generated|divider|divider|StageOut[66]~91_combout\ = (\U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ & !\U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	datad => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[66]~91_combout\);

-- Location: LCCOMB_X10_Y8_N26
\U_DISP|Mod0|auto_generated|divider|divider|StageOut[65]~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod0|auto_generated|divider|divider|StageOut[65]~93_combout\ = (!\U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	combout => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[65]~93_combout\);

-- Location: LCCOMB_X10_Y8_N30
\U_DISP|Mod0|auto_generated|divider|divider|StageOut[64]~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod0|auto_generated|divider|divider|StageOut[64]~95_combout\ = (\U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ & !\U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	datad => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[64]~95_combout\);

-- Location: LCCOMB_X10_Y8_N18
\U_DISP|Mod0|auto_generated|divider|divider|StageOut[63]~97\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod0|auto_generated|divider|divider|StageOut[63]~97_combout\ = (!\U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	combout => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[63]~97_combout\);

-- Location: LCCOMB_X10_Y8_N16
\U_DISP|Mod0|auto_generated|divider|divider|StageOut[62]~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod0|auto_generated|divider|divider|StageOut[62]~98_combout\ = (\U_BLOCO_DADOS|soma_atual\(5) & \U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_BLOCO_DADOS|soma_atual\(5),
	datad => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[62]~98_combout\);

-- Location: LCCOMB_X9_Y8_N20
\U_DISP|Mod0|auto_generated|divider|divider|StageOut[61]~100\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod0|auto_generated|divider|divider|StageOut[61]~100_combout\ = (\U_BLOCO_DADOS|soma_atual\(4) & \U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BLOCO_DADOS|soma_atual\(4),
	datac => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[61]~100_combout\);

-- Location: LCCOMB_X9_Y8_N2
\U_DISP|Mod0|auto_generated|divider|divider|StageOut[77]~102\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod0|auto_generated|divider|divider|StageOut[77]~102_combout\ = (\U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\ & !\U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	datac => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[77]~102_combout\);

-- Location: LCCOMB_X9_Y8_N0
\U_DISP|Mod0|auto_generated|divider|divider|StageOut[76]~103\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod0|auto_generated|divider|divider|StageOut[76]~103_combout\ = (!\U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	combout => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[76]~103_combout\);

-- Location: LCCOMB_X8_Y8_N20
\U_DISP|Mod0|auto_generated|divider|divider|StageOut[75]~104\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod0|auto_generated|divider|divider|StageOut[75]~104_combout\ = (\U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ & !\U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	datac => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[75]~104_combout\);

-- Location: LCCOMB_X8_Y8_N26
\U_DISP|Mod0|auto_generated|divider|divider|StageOut[74]~105\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod0|auto_generated|divider|divider|StageOut[74]~105_combout\ = (\U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ & !\U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	datac => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[74]~105_combout\);

-- Location: LCCOMB_X7_Y8_N30
\U_DISP|Mod0|auto_generated|divider|divider|StageOut[72]~108\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod0|auto_generated|divider|divider|StageOut[72]~108_combout\ = (!\U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	combout => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[72]~108_combout\);

-- Location: LCCOMB_X7_Y8_N20
\U_DISP|Mod0|auto_generated|divider|divider|StageOut[71]~109\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod0|auto_generated|divider|divider|StageOut[71]~109_combout\ = (\U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \U_BLOCO_DADOS|soma_atual\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \U_BLOCO_DADOS|soma_atual\(3),
	combout => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[71]~109_combout\);

-- Location: LCCOMB_X8_Y7_N24
\U_DISP|Mod0|auto_generated|divider|divider|StageOut[88]~111\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod0|auto_generated|divider|divider|StageOut[88]~111_combout\ = (\U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & !\U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datad => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	combout => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[88]~111_combout\);

-- Location: LCCOMB_X8_Y7_N2
\U_DISP|Mod0|auto_generated|divider|divider|StageOut[86]~113\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod0|auto_generated|divider|divider|StageOut[86]~113_combout\ = (\U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\ & !\U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\,
	datad => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	combout => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[86]~113_combout\);

-- Location: LCCOMB_X7_Y7_N30
\U_DISP|Mod0|auto_generated|divider|divider|StageOut[84]~115\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod0|auto_generated|divider|divider|StageOut[84]~115_combout\ = (\U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\ & !\U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\,
	datad => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	combout => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[84]~115_combout\);

-- Location: LCCOMB_X9_Y7_N18
\U_DISP|Mod0|auto_generated|divider|divider|StageOut[81]~119\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod0|auto_generated|divider|divider|StageOut[81]~119_combout\ = (!\U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & \U_BLOCO_DADOS|soma_atual\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datac => \U_BLOCO_DADOS|soma_atual\(2),
	combout => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[81]~119_combout\);

-- Location: LCCOMB_X10_Y5_N12
\U_DISP|Mod0|auto_generated|divider|divider|StageOut[99]~120\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod0|auto_generated|divider|divider|StageOut[99]~120_combout\ = (\U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\ & !\U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\,
	datad => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	combout => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[99]~120_combout\);

-- Location: LCCOMB_X10_Y5_N6
\U_DISP|Mod0|auto_generated|divider|divider|StageOut[98]~121\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod0|auto_generated|divider|divider|StageOut[98]~121_combout\ = (\U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\ & !\U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	datad => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	combout => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[98]~121_combout\);

-- Location: LCCOMB_X9_Y5_N30
\U_DISP|Div1|auto_generated|divider|divider|StageOut[18]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div1|auto_generated|divider|divider|StageOut[18]~56_combout\ = (\U_DISP|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\U_DISP|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_DISP|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \U_DISP|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \U_DISP|Div1|auto_generated|divider|divider|StageOut[18]~56_combout\);

-- Location: LCCOMB_X9_Y5_N16
\U_DISP|Div1|auto_generated|divider|divider|StageOut[17]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div1|auto_generated|divider|divider|StageOut[17]~57_combout\ = (\U_DISP|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\U_DISP|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_DISP|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \U_DISP|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \U_DISP|Div1|auto_generated|divider|divider|StageOut[17]~57_combout\);

-- Location: LCCOMB_X10_Y4_N0
\U_DISP|Mod0|auto_generated|divider|divider|StageOut[96]~123\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod0|auto_generated|divider|divider|StageOut[96]~123_combout\ = (!\U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	datac => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~8_combout\,
	combout => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[96]~123_combout\);

-- Location: LCCOMB_X9_Y5_N18
\U_DISP|Div1|auto_generated|divider|divider|StageOut[15]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div1|auto_generated|divider|divider|StageOut[15]~59_combout\ = (\U_DISP|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\ & !\U_DISP|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_DISP|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\,
	datad => \U_DISP|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \U_DISP|Div1|auto_generated|divider|divider|StageOut[15]~59_combout\);

-- Location: LCCOMB_X8_Y5_N20
\U_DISP|Div1|auto_generated|divider|divider|StageOut[22]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div1|auto_generated|divider|divider|StageOut[22]~61_combout\ = (\U_DISP|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\U_DISP|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_DISP|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datac => \U_DISP|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \U_DISP|Div1|auto_generated|divider|divider|StageOut[22]~61_combout\);

-- Location: LCCOMB_X7_Y4_N10
\U_DISP|Mod0|auto_generated|divider|divider|StageOut[95]~124\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod0|auto_generated|divider|divider|StageOut[95]~124_combout\ = (\U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~6_combout\ & !\U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~6_combout\,
	datad => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	combout => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[95]~124_combout\);

-- Location: LCCOMB_X8_Y5_N12
\U_DISP|Div1|auto_generated|divider|divider|StageOut[20]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div1|auto_generated|divider|divider|StageOut[20]~63_combout\ = (!\U_DISP|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \U_DISP|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_DISP|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \U_DISP|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\,
	combout => \U_DISP|Div1|auto_generated|divider|divider|StageOut[20]~63_combout\);

-- Location: LCCOMB_X7_Y5_N10
\U_DISP|Div1|auto_generated|divider|divider|StageOut[27]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div1|auto_generated|divider|divider|StageOut[27]~65_combout\ = (!\U_DISP|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \U_DISP|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_DISP|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \U_DISP|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \U_DISP|Div1|auto_generated|divider|divider|StageOut[27]~65_combout\);

-- Location: LCCOMB_X7_Y3_N24
\U_DISP|Div1|auto_generated|divider|divider|StageOut[33]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div1|auto_generated|divider|divider|StageOut[33]~68_combout\ = (!\U_DISP|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \U_DISP|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_DISP|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \U_DISP|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	combout => \U_DISP|Div1|auto_generated|divider|divider|StageOut[33]~68_combout\);

-- Location: LCCOMB_X7_Y3_N26
\U_DISP|Div1|auto_generated|divider|divider|StageOut[31]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div1|auto_generated|divider|divider|StageOut[31]~70_combout\ = (!\U_DISP|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \U_DISP|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_DISP|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \U_DISP|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	combout => \U_DISP|Div1|auto_generated|divider|divider|StageOut[31]~70_combout\);

-- Location: LCCOMB_X9_Y7_N6
\U_DISP|Div1|auto_generated|divider|divider|StageOut[35]~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div1|auto_generated|divider|divider|StageOut[35]~75_combout\ = (\U_DISP|Div1|auto_generated|divider|divider|add_sub_7_result_int[0]~10_combout\ & !\U_DISP|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Div1|auto_generated|divider|divider|add_sub_7_result_int[0]~10_combout\,
	datad => \U_DISP|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \U_DISP|Div1|auto_generated|divider|divider|StageOut[35]~75_combout\);

-- Location: LCCOMB_X8_Y3_N16
\U_DISP|Div1|auto_generated|divider|divider|StageOut[41]~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div1|auto_generated|divider|divider|StageOut[41]~78_combout\ = (\U_DISP|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ & !\U_DISP|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_DISP|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	datad => \U_DISP|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \U_DISP|Div1|auto_generated|divider|divider|StageOut[41]~78_combout\);

-- Location: LCCOMB_X7_Y4_N20
\U_DISP|Mod0|auto_generated|divider|divider|StageOut[91]~128\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod0|auto_generated|divider|divider|StageOut[91]~128_combout\ = (\U_BLOCO_DADOS|soma_atual\(1) & \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_BLOCO_DADOS|soma_atual\(1),
	datad => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	combout => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[91]~128_combout\);

-- Location: LCCOMB_X7_Y4_N6
\U_DISP|Mod0|auto_generated|divider|divider|StageOut[80]~129\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod0|auto_generated|divider|divider|StageOut[80]~129_combout\ = (\U_BLOCO_DADOS|soma_atual\(1) & \U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BLOCO_DADOS|soma_atual\(1),
	datac => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	combout => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[80]~129_combout\);

-- Location: LCCOMB_X7_Y4_N26
\U_DISP|Mod0|auto_generated|divider|divider|StageOut[91]~131\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod0|auto_generated|divider|divider|StageOut[91]~131_combout\ = (\U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~18_combout\ & !\U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~18_combout\,
	datad => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	combout => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[91]~131_combout\);

-- Location: LCCOMB_X7_Y3_N14
\U_DISP|Div1|auto_generated|divider|divider|StageOut[40]~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div1|auto_generated|divider|divider|StageOut[40]~79_combout\ = (!\U_DISP|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & \U_DISP|Div1|auto_generated|divider|divider|add_sub_8_result_int[0]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_DISP|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datad => \U_DISP|Div1|auto_generated|divider|divider|add_sub_8_result_int[0]~10_combout\,
	combout => \U_DISP|Div1|auto_generated|divider|divider|StageOut[40]~79_combout\);

-- Location: LCCOMB_X10_Y4_N10
\U_DISP|Mod1|auto_generated|divider|divider|StageOut[33]~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|StageOut[33]~96_combout\ = (\U_DISP|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\U_DISP|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datac => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[33]~96_combout\);

-- Location: LCCOMB_X10_Y4_N24
\U_DISP|Mod1|auto_generated|divider|divider|StageOut[32]~97\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|StageOut[32]~97_combout\ = (\U_DISP|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\U_DISP|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datac => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[32]~97_combout\);

-- Location: LCCOMB_X9_Y4_N20
\U_DISP|Mod1|auto_generated|divider|divider|StageOut[44]~99\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|StageOut[44]~99_combout\ = (!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \U_DISP|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[44]~99_combout\);

-- Location: LCCOMB_X9_Y4_N18
\U_DISP|Mod1|auto_generated|divider|divider|StageOut[43]~100\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|StageOut[43]~100_combout\ = (\U_DISP|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\U_DISP|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[43]~100_combout\);

-- Location: LCCOMB_X9_Y4_N26
\U_DISP|Mod1|auto_generated|divider|divider|StageOut[41]~103\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|StageOut[41]~103_combout\ = (\U_DISP|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\U_DISP|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[41]~103_combout\);

-- Location: LCCOMB_X8_Y4_N0
\U_DISP|Mod1|auto_generated|divider|divider|StageOut[55]~104\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|StageOut[55]~104_combout\ = (!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[55]~104_combout\);

-- Location: LCCOMB_X8_Y4_N6
\U_DISP|Mod1|auto_generated|divider|divider|StageOut[54]~105\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|StageOut[54]~105_combout\ = (!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[54]~105_combout\);

-- Location: LCCOMB_X8_Y4_N24
\U_DISP|Mod1|auto_generated|divider|divider|StageOut[53]~106\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|StageOut[53]~106_combout\ = (!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[53]~106_combout\);

-- Location: LCCOMB_X9_Y4_N16
\U_DISP|Mod1|auto_generated|divider|divider|StageOut[52]~107\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|StageOut[52]~107_combout\ = (\U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[52]~107_combout\);

-- Location: LCCOMB_X8_Y4_N26
\U_DISP|Mod1|auto_generated|divider|divider|StageOut[51]~109\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|StageOut[51]~109_combout\ = (!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[51]~109_combout\);

-- Location: LCCOMB_X8_Y6_N6
\U_DISP|Mod1|auto_generated|divider|divider|StageOut[64]~112\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|StageOut[64]~112_combout\ = (\U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ & !\U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	datac => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[64]~112_combout\);

-- Location: LCCOMB_X7_Y7_N6
\U_DISP|Mod1|auto_generated|divider|divider|StageOut[62]~114\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|StageOut[62]~114_combout\ = (!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[62]~114_combout\);

-- Location: LCCOMB_X9_Y6_N4
\U_DISP|Mod1|auto_generated|divider|divider|StageOut[72]~122\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|StageOut[72]~122_combout\ = (\U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ & !\U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datad => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[72]~122_combout\);

-- Location: LCCOMB_X10_Y6_N0
\U_DISP|Mod1|auto_generated|divider|divider|StageOut[88]~127\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|StageOut[88]~127_combout\ = (!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & \U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datad => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[88]~127_combout\);

-- Location: LCCOMB_X9_Y6_N8
\U_DISP|Mod1|auto_generated|divider|divider|StageOut[87]~128\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|StageOut[87]~128_combout\ = (\U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~12_combout\ & !\U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~12_combout\,
	datad => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[87]~128_combout\);

-- Location: LCCOMB_X10_Y6_N2
\U_DISP|Mod1|auto_generated|divider|divider|StageOut[86]~129\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|StageOut[86]~129_combout\ = (!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & \U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datad => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[86]~129_combout\);

-- Location: LCCOMB_X10_Y6_N4
\U_DISP|Mod1|auto_generated|divider|divider|StageOut[85]~130\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|StageOut[85]~130_combout\ = (\U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & !\U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datad => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[85]~130_combout\);

-- Location: LCCOMB_X7_Y6_N4
\U_DISP|Equal20~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Equal20~3_combout\ = (!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ & (!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & 
-- (!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~6_combout\ & !\U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[9]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	datab => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datac => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~6_combout\,
	datad => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[9]~16_combout\,
	combout => \U_DISP|Equal20~3_combout\);

-- Location: LCCOMB_X6_Y6_N12
\U_DISP|Equal28~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Equal28~9_combout\ = (!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\ & (\U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ & 
-- !\U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	datac => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\,
	datad => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	combout => \U_DISP|Equal28~9_combout\);

-- Location: LCCOMB_X10_Y10_N18
\U_BLOCO_DADOS|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_BLOCO_DADOS|Mux0~0_combout\ = (!\ch_produto~combout\(1) & (!\ch_produto~combout\(0) & \ch_produto~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ch_produto~combout\(1),
	datab => \ch_produto~combout\(0),
	datad => \ch_produto~combout\(2),
	combout => \U_BLOCO_DADOS|Mux0~0_combout\);

-- Location: LCFF_X10_Y10_N21
\U_FILTRO1|botao_pulso\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \U_FILTRO1|process_0~0_combout\,
	aclr => \ch_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_FILTRO1|botao_pulso~regout\);

-- Location: LCCOMB_X10_Y10_N10
\U_BLOCO_DADOS|estoque_batata_g[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_BLOCO_DADOS|estoque_batata_g[0]~4_combout\ = (\U_CONTROLE|estado_atual.ENTREGA_PRODUTO~regout\ & !\ch_produto~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_CONTROLE|estado_atual.ENTREGA_PRODUTO~regout\,
	datad => \ch_produto~combout\(2),
	combout => \U_BLOCO_DADOS|estoque_batata_g[0]~4_combout\);

-- Location: LCCOMB_X10_Y10_N8
\U_BLOCO_DADOS|estoque_tortilha_g[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_BLOCO_DADOS|estoque_tortilha_g[0]~0_combout\ = (\U_BLOCO_DADOS|estoque_tortilha_g\(0)) # ((\U_CONTROLE|estado_atual.ENTREGA_PRODUTO~regout\ & \U_BLOCO_DADOS|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_CONTROLE|estado_atual.ENTREGA_PRODUTO~regout\,
	datac => \U_BLOCO_DADOS|estoque_tortilha_g\(0),
	datad => \U_BLOCO_DADOS|Mux0~0_combout\,
	combout => \U_BLOCO_DADOS|estoque_tortilha_g[0]~0_combout\);

-- Location: LCCOMB_X10_Y10_N16
\U_CONTROLE|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_CONTROLE|Selector0~0_combout\ = (\U_CONTROLE|estado_atual.AVALIA_ESTOQUE~regout\) # ((\U_FILTRO1|botao_pulso~regout\ & !\U_CONTROLE|estado_atual.RECEBE_MOEDA~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FILTRO1|botao_pulso~regout\,
	datab => \U_CONTROLE|estado_atual.AVALIA_ESTOQUE~regout\,
	datad => \U_CONTROLE|estado_atual.RECEBE_MOEDA~regout\,
	combout => \U_CONTROLE|Selector0~0_combout\);

-- Location: LCFF_X9_Y10_N25
\U_FILTRO2|botao_ant\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	sdata => \U_FILTRO2|botao_estavel~regout\,
	aclr => \ch_reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_FILTRO2|botao_ant~regout\);

-- Location: LCFF_X17_Y10_N21
\U_FILTRO1|botao_estavel\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \U_FILTRO1|botao_estavel~0_combout\,
	aclr => \ch_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_FILTRO1|botao_estavel~regout\);

-- Location: LCFF_X10_Y10_N17
\U_FILTRO1|botao_ant\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	sdata => \U_FILTRO1|botao_estavel~regout\,
	aclr => \ch_reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_FILTRO1|botao_ant~regout\);

-- Location: LCCOMB_X10_Y10_N20
\U_FILTRO1|process_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_FILTRO1|process_0~0_combout\ = (\U_FILTRO1|botao_estavel~regout\ & !\U_FILTRO1|botao_ant~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FILTRO1|botao_estavel~regout\,
	datad => \U_FILTRO1|botao_ant~regout\,
	combout => \U_FILTRO1|process_0~0_combout\);

-- Location: LCCOMB_X15_Y10_N20
\U_FILTRO2|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_FILTRO2|Equal0~3_combout\ = (\U_FILTRO2|contador\(14)) # (((\U_FILTRO2|contador\(12)) # (!\U_FILTRO2|contador\(13))) # (!\U_FILTRO2|contador\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FILTRO2|contador\(14),
	datab => \U_FILTRO2|contador\(15),
	datac => \U_FILTRO2|contador\(13),
	datad => \U_FILTRO2|contador\(12),
	combout => \U_FILTRO2|Equal0~3_combout\);

-- Location: LCCOMB_X17_Y11_N12
\U_FILTRO1|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_FILTRO1|Equal0~0_combout\ = (\U_FILTRO1|contador\(1)) # ((\U_FILTRO1|contador\(0)) # ((\U_FILTRO1|contador\(3)) # (\U_FILTRO1|contador\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FILTRO1|contador\(1),
	datab => \U_FILTRO1|contador\(0),
	datac => \U_FILTRO1|contador\(3),
	datad => \U_FILTRO1|contador\(2),
	combout => \U_FILTRO1|Equal0~0_combout\);

-- Location: LCCOMB_X17_Y11_N10
\U_FILTRO1|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_FILTRO1|Equal0~1_combout\ = ((\U_FILTRO1|contador\(7)) # ((\U_FILTRO1|contador\(4)) # (\U_FILTRO1|contador\(6)))) # (!\U_FILTRO1|contador\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FILTRO1|contador\(5),
	datab => \U_FILTRO1|contador\(7),
	datac => \U_FILTRO1|contador\(4),
	datad => \U_FILTRO1|contador\(6),
	combout => \U_FILTRO1|Equal0~1_combout\);

-- Location: LCCOMB_X17_Y10_N26
\U_FILTRO1|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_FILTRO1|Equal0~2_combout\ = (\U_FILTRO1|contador\(10)) # ((\U_FILTRO1|contador\(9)) # ((\U_FILTRO1|contador\(11)) # (!\U_FILTRO1|contador\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FILTRO1|contador\(10),
	datab => \U_FILTRO1|contador\(9),
	datac => \U_FILTRO1|contador\(11),
	datad => \U_FILTRO1|contador\(8),
	combout => \U_FILTRO1|Equal0~2_combout\);

-- Location: LCCOMB_X17_Y10_N24
\U_FILTRO1|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_FILTRO1|Equal0~3_combout\ = (\U_FILTRO1|contador\(14)) # (((\U_FILTRO1|contador\(12)) # (!\U_FILTRO1|contador\(13))) # (!\U_FILTRO1|contador\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FILTRO1|contador\(14),
	datab => \U_FILTRO1|contador\(15),
	datac => \U_FILTRO1|contador\(13),
	datad => \U_FILTRO1|contador\(12),
	combout => \U_FILTRO1|Equal0~3_combout\);

-- Location: LCCOMB_X17_Y10_N30
\U_FILTRO1|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_FILTRO1|Equal0~4_combout\ = (\U_FILTRO1|Equal0~3_combout\) # ((\U_FILTRO1|Equal0~2_combout\) # ((\U_FILTRO1|Equal0~1_combout\) # (\U_FILTRO1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FILTRO1|Equal0~3_combout\,
	datab => \U_FILTRO1|Equal0~2_combout\,
	datac => \U_FILTRO1|Equal0~1_combout\,
	datad => \U_FILTRO1|Equal0~0_combout\,
	combout => \U_FILTRO1|Equal0~4_combout\);

-- Location: LCCOMB_X17_Y10_N28
\U_FILTRO1|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_FILTRO1|Equal0~5_combout\ = (((\U_FILTRO1|Equal0~4_combout\) # (!\U_FILTRO1|contador\(16))) # (!\U_FILTRO1|contador\(18))) # (!\U_FILTRO1|contador\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FILTRO1|contador\(17),
	datab => \U_FILTRO1|contador\(18),
	datac => \U_FILTRO1|contador\(16),
	datad => \U_FILTRO1|Equal0~4_combout\,
	combout => \U_FILTRO1|Equal0~5_combout\);

-- Location: LCCOMB_X17_Y10_N20
\U_FILTRO1|botao_estavel~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_FILTRO1|botao_estavel~0_combout\ = (\U_FILTRO1|Equal0~5_combout\ & ((\U_FILTRO1|botao_estavel~regout\))) # (!\U_FILTRO1|Equal0~5_combout\ & (\btn_confirmar~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \btn_confirmar~combout\,
	datac => \U_FILTRO1|botao_estavel~regout\,
	datad => \U_FILTRO1|Equal0~5_combout\,
	combout => \U_FILTRO1|botao_estavel~0_combout\);

-- Location: LCCOMB_X18_Y10_N20
\U_FILTRO3|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_FILTRO3|Equal0~3_combout\ = (\U_FILTRO3|contador\(14)) # (((\U_FILTRO3|contador\(12)) # (!\U_FILTRO3|contador\(13))) # (!\U_FILTRO3|contador\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FILTRO3|contador\(14),
	datab => \U_FILTRO3|contador\(15),
	datac => \U_FILTRO3|contador\(13),
	datad => \U_FILTRO3|contador\(12),
	combout => \U_FILTRO3|Equal0~3_combout\);

-- Location: LCCOMB_X17_Y10_N22
\U_FILTRO1|contador[14]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_FILTRO1|contador[14]~21_combout\ = (\btn_confirmar~combout\ $ (!\U_FILTRO1|botao_estavel~regout\)) # (!\U_FILTRO1|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \btn_confirmar~combout\,
	datac => \U_FILTRO1|botao_estavel~regout\,
	datad => \U_FILTRO1|Equal0~5_combout\,
	combout => \U_FILTRO1|contador[14]~21_combout\);

-- Location: LCCOMB_X9_Y9_N0
\U_DISP|Div0|auto_generated|divider|divider|StageOut[70]~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div0|auto_generated|divider|divider|StageOut[70]~85_combout\ = (\U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & ((\U_DISP|Div0|auto_generated|divider|divider|StageOut[61]~89_combout\) # 
-- ((!\U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	datac => \U_DISP|Div0|auto_generated|divider|divider|StageOut[61]~89_combout\,
	datad => \U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	combout => \U_DISP|Div0|auto_generated|divider|divider|StageOut[70]~85_combout\);

-- Location: LCCOMB_X10_Y5_N4
\U_DISP|Div1|auto_generated|divider|divider|StageOut[16]~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div1|auto_generated|divider|divider|StageOut[16]~82_combout\ = (\U_DISP|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\U_DISP|Mod0|auto_generated|divider|divider|StageOut[97]~141_combout\) # 
-- ((!\U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	datab => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~10_combout\,
	datac => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[97]~141_combout\,
	datad => \U_DISP|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \U_DISP|Div1|auto_generated|divider|divider|StageOut[16]~82_combout\);

-- Location: LCCOMB_X9_Y5_N2
\U_DISP|Div1|auto_generated|divider|divider|StageOut[23]~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div1|auto_generated|divider|divider|StageOut[23]~84_combout\ = (\U_DISP|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\U_DISP|Div1|auto_generated|divider|divider|StageOut[17]~81_combout\) # 
-- ((\U_DISP|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\U_DISP|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \U_DISP|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datac => \U_DISP|Div1|auto_generated|divider|divider|StageOut[17]~81_combout\,
	datad => \U_DISP|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \U_DISP|Div1|auto_generated|divider|divider|StageOut[23]~84_combout\);

-- Location: LCCOMB_X9_Y5_N26
\U_DISP|Div1|auto_generated|divider|divider|StageOut[21]~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div1|auto_generated|divider|divider|StageOut[21]~86_combout\ = (\U_DISP|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\U_DISP|Div1|auto_generated|divider|divider|StageOut[15]~83_combout\) # 
-- ((!\U_DISP|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \U_DISP|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \U_DISP|Div1|auto_generated|divider|divider|StageOut[15]~83_combout\,
	datac => \U_DISP|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \U_DISP|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\,
	combout => \U_DISP|Div1|auto_generated|divider|divider|StageOut[21]~86_combout\);

-- Location: LCCOMB_X8_Y5_N16
\U_DISP|Div1|auto_generated|divider|divider|StageOut[28]~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div1|auto_generated|divider|divider|StageOut[28]~88_combout\ = (\U_DISP|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\U_DISP|Div1|auto_generated|divider|divider|StageOut[22]~85_combout\) # 
-- ((\U_DISP|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\U_DISP|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \U_DISP|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datac => \U_DISP|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \U_DISP|Div1|auto_generated|divider|divider|StageOut[22]~85_combout\,
	combout => \U_DISP|Div1|auto_generated|divider|divider|StageOut[28]~88_combout\);

-- Location: LCCOMB_X8_Y5_N4
\U_DISP|Div1|auto_generated|divider|divider|StageOut[26]~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div1|auto_generated|divider|divider|StageOut[26]~90_combout\ = (\U_DISP|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\U_DISP|Div1|auto_generated|divider|divider|StageOut[20]~87_combout\) # 
-- ((\U_DISP|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ & !\U_DISP|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\,
	datab => \U_DISP|Div1|auto_generated|divider|divider|StageOut[20]~87_combout\,
	datac => \U_DISP|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \U_DISP|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \U_DISP|Div1|auto_generated|divider|divider|StageOut[26]~90_combout\);

-- Location: LCCOMB_X7_Y5_N6
\U_DISP|Div1|auto_generated|divider|divider|StageOut[25]~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div1|auto_generated|divider|divider|StageOut[25]~91_combout\ = (\U_DISP|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\U_DISP|Mod0|auto_generated|divider|divider|StageOut[94]~144_combout\) # 
-- ((!\U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[94]~144_combout\,
	datac => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	datad => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~4_combout\,
	combout => \U_DISP|Div1|auto_generated|divider|divider|StageOut[25]~91_combout\);

-- Location: LCCOMB_X7_Y5_N14
\U_DISP|Div1|auto_generated|divider|divider|StageOut[32]~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div1|auto_generated|divider|divider|StageOut[32]~93_combout\ = (\U_DISP|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\U_DISP|Div1|auto_generated|divider|divider|StageOut[26]~90_combout\) # 
-- ((\U_DISP|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\U_DISP|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Div1|auto_generated|divider|divider|StageOut[26]~90_combout\,
	datab => \U_DISP|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datac => \U_DISP|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \U_DISP|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \U_DISP|Div1|auto_generated|divider|divider|StageOut[32]~93_combout\);

-- Location: LCCOMB_X7_Y7_N26
\U_DISP|Div1|auto_generated|divider|divider|StageOut[30]~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div1|auto_generated|divider|divider|StageOut[30]~95_combout\ = (\U_DISP|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\U_DISP|Mod0|auto_generated|divider|divider|StageOut[93]~153_combout\) # 
-- ((\U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~2_combout\ & !\U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~2_combout\,
	datab => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	datac => \U_DISP|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[93]~153_combout\,
	combout => \U_DISP|Div1|auto_generated|divider|divider|StageOut[30]~95_combout\);

-- Location: LCCOMB_X7_Y3_N12
\U_DISP|Div1|auto_generated|divider|divider|StageOut[38]~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div1|auto_generated|divider|divider|StageOut[38]~96_combout\ = (\U_DISP|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\U_DISP|Div1|auto_generated|divider|divider|StageOut[32]~93_combout\) # 
-- ((!\U_DISP|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \U_DISP|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Div1|auto_generated|divider|divider|StageOut[32]~93_combout\,
	datab => \U_DISP|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \U_DISP|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \U_DISP|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	combout => \U_DISP|Div1|auto_generated|divider|divider|StageOut[38]~96_combout\);

-- Location: LCCOMB_X7_Y3_N22
\U_DISP|Div1|auto_generated|divider|divider|StageOut[37]~97\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div1|auto_generated|divider|divider|StageOut[37]~97_combout\ = (\U_DISP|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\U_DISP|Div1|auto_generated|divider|divider|StageOut[31]~94_combout\) # 
-- ((!\U_DISP|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \U_DISP|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datab => \U_DISP|Div1|auto_generated|divider|divider|StageOut[31]~94_combout\,
	datac => \U_DISP|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \U_DISP|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	combout => \U_DISP|Div1|auto_generated|divider|divider|StageOut[37]~97_combout\);

-- Location: LCCOMB_X7_Y3_N20
\U_DISP|Div1|auto_generated|divider|divider|StageOut[36]~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div1|auto_generated|divider|divider|StageOut[36]~98_combout\ = (\U_DISP|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\U_DISP|Div1|auto_generated|divider|divider|StageOut[30]~95_combout\) # 
-- ((!\U_DISP|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \U_DISP|Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \U_DISP|Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\,
	datac => \U_DISP|Div1|auto_generated|divider|divider|StageOut[30]~95_combout\,
	datad => \U_DISP|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \U_DISP|Div1|auto_generated|divider|divider|StageOut[36]~98_combout\);

-- Location: LCCOMB_X7_Y3_N30
\U_DISP|Div1|auto_generated|divider|divider|StageOut[43]~99\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div1|auto_generated|divider|divider|StageOut[43]~99_combout\ = (\U_DISP|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & ((\U_DISP|Div1|auto_generated|divider|divider|StageOut[37]~97_combout\) # 
-- ((!\U_DISP|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & \U_DISP|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datab => \U_DISP|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datac => \U_DISP|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datad => \U_DISP|Div1|auto_generated|divider|divider|StageOut[37]~97_combout\,
	combout => \U_DISP|Div1|auto_generated|divider|divider|StageOut[43]~99_combout\);

-- Location: LCCOMB_X8_Y3_N12
\U_DISP|Div1|auto_generated|divider|divider|StageOut[42]~100\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div1|auto_generated|divider|divider|StageOut[42]~100_combout\ = (\U_DISP|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & ((\U_DISP|Div1|auto_generated|divider|divider|StageOut[36]~98_combout\) # 
-- ((\U_DISP|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ & !\U_DISP|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datab => \U_DISP|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datac => \U_DISP|Div1|auto_generated|divider|divider|StageOut[36]~98_combout\,
	datad => \U_DISP|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \U_DISP|Div1|auto_generated|divider|divider|StageOut[42]~100_combout\);

-- Location: LCCOMB_X7_Y4_N14
\U_DISP|Mod1|auto_generated|divider|divider|StageOut[40]~146\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|StageOut[40]~146_combout\ = (\U_DISP|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\U_DISP|Mod0|auto_generated|divider|divider|StageOut[95]~143_combout\) # 
-- ((\U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~6_combout\ & !\U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[95]~143_combout\,
	datac => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~6_combout\,
	datad => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[40]~146_combout\);

-- Location: LCCOMB_X7_Y5_N16
\U_DISP|Mod1|auto_generated|divider|divider|StageOut[50]~153\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|StageOut[50]~153_combout\ = (!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\U_DISP|Mod0|auto_generated|divider|divider|StageOut[94]~144_combout\) # 
-- ((!\U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[94]~144_combout\,
	datac => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	datad => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~4_combout\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[50]~153_combout\);

-- Location: LCCOMB_X7_Y7_N12
\U_DISP|Mod1|auto_generated|divider|divider|StageOut[73]~165\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|StageOut[73]~165_combout\ = (\U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[62]~158_combout\) # 
-- ((!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[62]~158_combout\,
	datac => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[73]~165_combout\);

-- Location: LCCOMB_X9_Y6_N10
\U_DISP|Mod1|auto_generated|divider|divider|StageOut[84]~171\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|StageOut[84]~171_combout\ = (\U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & ((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[73]~165_combout\) # 
-- ((\U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ & !\U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datab => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datac => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[73]~165_combout\,
	datad => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[84]~171_combout\);

-- Location: LCCOMB_X7_Y9_N26
\U_DISP|Div0|auto_generated|divider|divider|StageOut[61]~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div0|auto_generated|divider|divider|StageOut[61]~89_combout\ = (\U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- (\U_BLOCO_DADOS|soma_atual\(7))) # (!\U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BLOCO_DADOS|soma_atual\(7),
	datab => \U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	combout => \U_DISP|Div0|auto_generated|divider|divider|StageOut[61]~89_combout\);

-- Location: LCCOMB_X8_Y9_N14
\U_DISP|Div0|auto_generated|divider|divider|StageOut[59]~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div0|auto_generated|divider|divider|StageOut[59]~91_combout\ = (\U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- (\U_BLOCO_DADOS|soma_atual\(5))) # (!\U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BLOCO_DADOS|soma_atual\(5),
	datab => \U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	datad => \U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \U_DISP|Div0|auto_generated|divider|divider|StageOut[59]~91_combout\);

-- Location: LCCOMB_X9_Y9_N2
\U_DISP|Div0|auto_generated|divider|divider|StageOut[67]~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div0|auto_generated|divider|divider|StageOut[67]~92_combout\ = (\U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & ((\U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- ((\U_BLOCO_DADOS|soma_atual\(4)))) # (!\U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	datac => \U_BLOCO_DADOS|soma_atual\(4),
	datad => \U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	combout => \U_DISP|Div0|auto_generated|divider|divider|StageOut[67]~92_combout\);

-- Location: LCCOMB_X10_Y9_N6
\U_DISP|Div0|auto_generated|divider|divider|StageOut[66]~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div0|auto_generated|divider|divider|StageOut[66]~93_combout\ = (\U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & ((\U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- ((\U_BLOCO_DADOS|soma_atual\(3)))) # (!\U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\,
	datac => \U_BLOCO_DADOS|soma_atual\(3),
	datad => \U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	combout => \U_DISP|Div0|auto_generated|divider|divider|StageOut[66]~93_combout\);

-- Location: LCCOMB_X9_Y8_N26
\U_DISP|Mod0|auto_generated|divider|divider|StageOut[73]~149\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod0|auto_generated|divider|divider|StageOut[73]~149_combout\ = (\U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- ((\U_BLOCO_DADOS|soma_atual\(5)))) # (!\U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	datad => \U_BLOCO_DADOS|soma_atual\(5),
	combout => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[73]~149_combout\);

-- Location: LCCOMB_X7_Y7_N14
\U_DISP|Mod0|auto_generated|divider|divider|StageOut[82]~151\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod0|auto_generated|divider|divider|StageOut[82]~151_combout\ = (\U_BLOCO_DADOS|soma_atual\(3) & \U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_BLOCO_DADOS|soma_atual\(3),
	datad => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	combout => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[82]~151_combout\);

-- Location: LCCOMB_X7_Y4_N2
\U_DISP|Mod1|auto_generated|divider|divider|StageOut[80]~175\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|StageOut[80]~175_combout\ = (!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & ((\U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & 
-- ((\U_BLOCO_DADOS|soma_atual\(1)))) # (!\U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & (\U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datab => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~18_combout\,
	datac => \U_BLOCO_DADOS|soma_atual\(1),
	datad => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[80]~175_combout\);

-- Location: LCCOMB_X9_Y7_N16
\U_DISP|Mod1|auto_generated|divider|divider|StageOut[70]~177\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|StageOut[70]~177_combout\ = (!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & 
-- ((\U_BLOCO_DADOS|soma_atual\(2)))) # (!\U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & (\U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	datab => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datac => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~0_combout\,
	datad => \U_BLOCO_DADOS|soma_atual\(2),
	combout => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[70]~177_combout\);

-- Location: LCCOMB_X6_Y4_N10
\U_DISP|Equal10~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Equal10~2_combout\ = (\U_DISP|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & \U_DISP|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_DISP|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \U_DISP|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \U_DISP|Equal10~2_combout\);

-- Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\btn_confirmar~I\ : cycloneii_io
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
	padio => ww_btn_confirmar,
	combout => \btn_confirmar~combout\);

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk_50~I\ : cycloneii_io
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
	padio => ww_clk_50,
	combout => \clk_50~combout\);

-- Location: CLKCTRL_G2
\clk_50~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_50~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_50~clkctrl_outclk\);

-- Location: PIN_139,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ch_valor_moeda[1]~I\ : cycloneii_io
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
	padio => ww_ch_valor_moeda(1),
	combout => \ch_valor_moeda~combout\(1));

-- Location: PIN_22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ch_valor_moeda[2]~I\ : cycloneii_io
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
	padio => ww_ch_valor_moeda(2),
	combout => \ch_valor_moeda~combout\(2));

-- Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ch_valor_moeda[0]~I\ : cycloneii_io
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
	padio => ww_ch_valor_moeda(0),
	combout => \ch_valor_moeda~combout\(0));

-- Location: LCCOMB_X7_Y10_N18
\U_BLOCO_DADOS|incremento~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_BLOCO_DADOS|incremento~0_combout\ = (!\ch_valor_moeda~combout\(0) & (\ch_valor_moeda~combout\(1) $ (\ch_valor_moeda~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ch_valor_moeda~combout\(1),
	datac => \ch_valor_moeda~combout\(2),
	datad => \ch_valor_moeda~combout\(0),
	combout => \U_BLOCO_DADOS|incremento~0_combout\);

-- Location: LCCOMB_X7_Y10_N16
\U_BLOCO_DADOS|incremento~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_BLOCO_DADOS|incremento~1_combout\ = (!\ch_valor_moeda~combout\(2) & (\ch_valor_moeda~combout\(1) $ (\ch_valor_moeda~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ch_valor_moeda~combout\(1),
	datac => \ch_valor_moeda~combout\(2),
	datad => \ch_valor_moeda~combout\(0),
	combout => \U_BLOCO_DADOS|incremento~1_combout\);

-- Location: LCCOMB_X7_Y10_N24
\U_BLOCO_DADOS|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_BLOCO_DADOS|Equal2~0_combout\ = (!\ch_valor_moeda~combout\(1) & (\ch_valor_moeda~combout\(2) & !\ch_valor_moeda~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ch_valor_moeda~combout\(1),
	datac => \ch_valor_moeda~combout\(2),
	datad => \ch_valor_moeda~combout\(0),
	combout => \U_BLOCO_DADOS|Equal2~0_combout\);

-- Location: LCCOMB_X7_Y10_N28
\U_BLOCO_DADOS|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_BLOCO_DADOS|Equal1~0_combout\ = (\ch_valor_moeda~combout\(1) & (!\ch_valor_moeda~combout\(2) & !\ch_valor_moeda~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ch_valor_moeda~combout\(1),
	datac => \ch_valor_moeda~combout\(2),
	datad => \ch_valor_moeda~combout\(0),
	combout => \U_BLOCO_DADOS|Equal1~0_combout\);

-- Location: LCCOMB_X7_Y10_N14
\U_BLOCO_DADOS|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_BLOCO_DADOS|Equal0~0_combout\ = (\ch_valor_moeda~combout\(1)) # ((\ch_valor_moeda~combout\(2)) # (!\ch_valor_moeda~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ch_valor_moeda~combout\(1),
	datac => \ch_valor_moeda~combout\(2),
	datad => \ch_valor_moeda~combout\(0),
	combout => \U_BLOCO_DADOS|Equal0~0_combout\);

-- Location: LCCOMB_X8_Y10_N0
\U_BLOCO_DADOS|soma_atual[0]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_BLOCO_DADOS|soma_atual[0]~10_combout\ = (\U_BLOCO_DADOS|soma_atual\(0) & (\U_BLOCO_DADOS|Equal0~0_combout\ $ (GND))) # (!\U_BLOCO_DADOS|soma_atual\(0) & (!\U_BLOCO_DADOS|Equal0~0_combout\ & VCC))
-- \U_BLOCO_DADOS|soma_atual[0]~11\ = CARRY((\U_BLOCO_DADOS|soma_atual\(0) & !\U_BLOCO_DADOS|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BLOCO_DADOS|soma_atual\(0),
	datab => \U_BLOCO_DADOS|Equal0~0_combout\,
	datad => VCC,
	combout => \U_BLOCO_DADOS|soma_atual[0]~10_combout\,
	cout => \U_BLOCO_DADOS|soma_atual[0]~11\);

-- Location: LCCOMB_X8_Y10_N2
\U_BLOCO_DADOS|soma_atual[1]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_BLOCO_DADOS|soma_atual[1]~12_combout\ = (\U_BLOCO_DADOS|soma_atual\(1) & ((\U_BLOCO_DADOS|Equal1~0_combout\ & (\U_BLOCO_DADOS|soma_atual[0]~11\ & VCC)) # (!\U_BLOCO_DADOS|Equal1~0_combout\ & (!\U_BLOCO_DADOS|soma_atual[0]~11\)))) # 
-- (!\U_BLOCO_DADOS|soma_atual\(1) & ((\U_BLOCO_DADOS|Equal1~0_combout\ & (!\U_BLOCO_DADOS|soma_atual[0]~11\)) # (!\U_BLOCO_DADOS|Equal1~0_combout\ & ((\U_BLOCO_DADOS|soma_atual[0]~11\) # (GND)))))
-- \U_BLOCO_DADOS|soma_atual[1]~13\ = CARRY((\U_BLOCO_DADOS|soma_atual\(1) & (!\U_BLOCO_DADOS|Equal1~0_combout\ & !\U_BLOCO_DADOS|soma_atual[0]~11\)) # (!\U_BLOCO_DADOS|soma_atual\(1) & ((!\U_BLOCO_DADOS|soma_atual[0]~11\) # 
-- (!\U_BLOCO_DADOS|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BLOCO_DADOS|soma_atual\(1),
	datab => \U_BLOCO_DADOS|Equal1~0_combout\,
	datad => VCC,
	cin => \U_BLOCO_DADOS|soma_atual[0]~11\,
	combout => \U_BLOCO_DADOS|soma_atual[1]~12_combout\,
	cout => \U_BLOCO_DADOS|soma_atual[1]~13\);

-- Location: LCCOMB_X8_Y10_N4
\U_BLOCO_DADOS|soma_atual[2]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_BLOCO_DADOS|soma_atual[2]~14_combout\ = ((\U_BLOCO_DADOS|soma_atual\(2) $ (\U_BLOCO_DADOS|Equal2~0_combout\ $ (!\U_BLOCO_DADOS|soma_atual[1]~13\)))) # (GND)
-- \U_BLOCO_DADOS|soma_atual[2]~15\ = CARRY((\U_BLOCO_DADOS|soma_atual\(2) & ((\U_BLOCO_DADOS|Equal2~0_combout\) # (!\U_BLOCO_DADOS|soma_atual[1]~13\))) # (!\U_BLOCO_DADOS|soma_atual\(2) & (\U_BLOCO_DADOS|Equal2~0_combout\ & 
-- !\U_BLOCO_DADOS|soma_atual[1]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BLOCO_DADOS|soma_atual\(2),
	datab => \U_BLOCO_DADOS|Equal2~0_combout\,
	datad => VCC,
	cin => \U_BLOCO_DADOS|soma_atual[1]~13\,
	combout => \U_BLOCO_DADOS|soma_atual[2]~14_combout\,
	cout => \U_BLOCO_DADOS|soma_atual[2]~15\);

-- Location: LCCOMB_X8_Y10_N6
\U_BLOCO_DADOS|soma_atual[3]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_BLOCO_DADOS|soma_atual[3]~16_combout\ = (\U_BLOCO_DADOS|Equal0~0_combout\ & ((\U_BLOCO_DADOS|soma_atual\(3) & (!\U_BLOCO_DADOS|soma_atual[2]~15\)) # (!\U_BLOCO_DADOS|soma_atual\(3) & ((\U_BLOCO_DADOS|soma_atual[2]~15\) # (GND))))) # 
-- (!\U_BLOCO_DADOS|Equal0~0_combout\ & ((\U_BLOCO_DADOS|soma_atual\(3) & (\U_BLOCO_DADOS|soma_atual[2]~15\ & VCC)) # (!\U_BLOCO_DADOS|soma_atual\(3) & (!\U_BLOCO_DADOS|soma_atual[2]~15\))))
-- \U_BLOCO_DADOS|soma_atual[3]~17\ = CARRY((\U_BLOCO_DADOS|Equal0~0_combout\ & ((!\U_BLOCO_DADOS|soma_atual[2]~15\) # (!\U_BLOCO_DADOS|soma_atual\(3)))) # (!\U_BLOCO_DADOS|Equal0~0_combout\ & (!\U_BLOCO_DADOS|soma_atual\(3) & 
-- !\U_BLOCO_DADOS|soma_atual[2]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BLOCO_DADOS|Equal0~0_combout\,
	datab => \U_BLOCO_DADOS|soma_atual\(3),
	datad => VCC,
	cin => \U_BLOCO_DADOS|soma_atual[2]~15\,
	combout => \U_BLOCO_DADOS|soma_atual[3]~16_combout\,
	cout => \U_BLOCO_DADOS|soma_atual[3]~17\);

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ch_reset~I\ : cycloneii_io
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
	padio => ww_ch_reset,
	combout => \ch_reset~combout\);

-- Location: CLKCTRL_G1
\ch_reset~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \ch_reset~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \ch_reset~clkctrl_outclk\);

-- Location: LCCOMB_X15_Y11_N14
\U_FILTRO2|contador[0]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_FILTRO2|contador[0]~19_combout\ = \U_FILTRO2|contador\(0) $ (VCC)
-- \U_FILTRO2|contador[0]~20\ = CARRY(\U_FILTRO2|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_FILTRO2|contador\(0),
	datad => VCC,
	combout => \U_FILTRO2|contador[0]~19_combout\,
	cout => \U_FILTRO2|contador[0]~20\);

-- Location: PIN_126,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\btn_desistir~I\ : cycloneii_io
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
	padio => ww_btn_desistir,
	combout => \btn_desistir~combout\);

-- Location: LCCOMB_X15_Y10_N22
\U_FILTRO2|contador[5]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_FILTRO2|contador[5]~21_combout\ = (\U_FILTRO2|botao_estavel~regout\ $ (!\btn_desistir~combout\)) # (!\U_FILTRO2|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FILTRO2|botao_estavel~regout\,
	datac => \btn_desistir~combout\,
	datad => \U_FILTRO2|Equal0~5_combout\,
	combout => \U_FILTRO2|contador[5]~21_combout\);

-- Location: LCFF_X15_Y11_N15
\U_FILTRO2|contador[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \U_FILTRO2|contador[0]~19_combout\,
	aclr => \ch_reset~clkctrl_outclk\,
	sclr => \U_FILTRO2|contador[5]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_FILTRO2|contador\(0));

-- Location: LCCOMB_X15_Y11_N18
\U_FILTRO2|contador[2]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_FILTRO2|contador[2]~24_combout\ = (\U_FILTRO2|contador\(2) & (\U_FILTRO2|contador[1]~23\ $ (GND))) # (!\U_FILTRO2|contador\(2) & (!\U_FILTRO2|contador[1]~23\ & VCC))
-- \U_FILTRO2|contador[2]~25\ = CARRY((\U_FILTRO2|contador\(2) & !\U_FILTRO2|contador[1]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_FILTRO2|contador\(2),
	datad => VCC,
	cin => \U_FILTRO2|contador[1]~23\,
	combout => \U_FILTRO2|contador[2]~24_combout\,
	cout => \U_FILTRO2|contador[2]~25\);

-- Location: LCFF_X15_Y11_N19
\U_FILTRO2|contador[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \U_FILTRO2|contador[2]~24_combout\,
	aclr => \ch_reset~clkctrl_outclk\,
	sclr => \U_FILTRO2|contador[5]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_FILTRO2|contador\(2));

-- Location: LCCOMB_X15_Y11_N20
\U_FILTRO2|contador[3]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_FILTRO2|contador[3]~26_combout\ = (\U_FILTRO2|contador\(3) & (!\U_FILTRO2|contador[2]~25\)) # (!\U_FILTRO2|contador\(3) & ((\U_FILTRO2|contador[2]~25\) # (GND)))
-- \U_FILTRO2|contador[3]~27\ = CARRY((!\U_FILTRO2|contador[2]~25\) # (!\U_FILTRO2|contador\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_FILTRO2|contador\(3),
	datad => VCC,
	cin => \U_FILTRO2|contador[2]~25\,
	combout => \U_FILTRO2|contador[3]~26_combout\,
	cout => \U_FILTRO2|contador[3]~27\);

-- Location: LCCOMB_X15_Y11_N22
\U_FILTRO2|contador[4]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_FILTRO2|contador[4]~28_combout\ = (\U_FILTRO2|contador\(4) & (\U_FILTRO2|contador[3]~27\ $ (GND))) # (!\U_FILTRO2|contador\(4) & (!\U_FILTRO2|contador[3]~27\ & VCC))
-- \U_FILTRO2|contador[4]~29\ = CARRY((\U_FILTRO2|contador\(4) & !\U_FILTRO2|contador[3]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_FILTRO2|contador\(4),
	datad => VCC,
	cin => \U_FILTRO2|contador[3]~27\,
	combout => \U_FILTRO2|contador[4]~28_combout\,
	cout => \U_FILTRO2|contador[4]~29\);

-- Location: LCFF_X15_Y11_N23
\U_FILTRO2|contador[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \U_FILTRO2|contador[4]~28_combout\,
	aclr => \ch_reset~clkctrl_outclk\,
	sclr => \U_FILTRO2|contador[5]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_FILTRO2|contador\(4));

-- Location: LCCOMB_X15_Y11_N26
\U_FILTRO2|contador[6]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_FILTRO2|contador[6]~32_combout\ = (\U_FILTRO2|contador\(6) & (\U_FILTRO2|contador[5]~31\ $ (GND))) # (!\U_FILTRO2|contador\(6) & (!\U_FILTRO2|contador[5]~31\ & VCC))
-- \U_FILTRO2|contador[6]~33\ = CARRY((\U_FILTRO2|contador\(6) & !\U_FILTRO2|contador[5]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_FILTRO2|contador\(6),
	datad => VCC,
	cin => \U_FILTRO2|contador[5]~31\,
	combout => \U_FILTRO2|contador[6]~32_combout\,
	cout => \U_FILTRO2|contador[6]~33\);

-- Location: LCFF_X15_Y11_N27
\U_FILTRO2|contador[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \U_FILTRO2|contador[6]~32_combout\,
	aclr => \ch_reset~clkctrl_outclk\,
	sclr => \U_FILTRO2|contador[5]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_FILTRO2|contador\(6));

-- Location: LCCOMB_X15_Y11_N28
\U_FILTRO2|contador[7]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_FILTRO2|contador[7]~34_combout\ = (\U_FILTRO2|contador\(7) & (!\U_FILTRO2|contador[6]~33\)) # (!\U_FILTRO2|contador\(7) & ((\U_FILTRO2|contador[6]~33\) # (GND)))
-- \U_FILTRO2|contador[7]~35\ = CARRY((!\U_FILTRO2|contador[6]~33\) # (!\U_FILTRO2|contador\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_FILTRO2|contador\(7),
	datad => VCC,
	cin => \U_FILTRO2|contador[6]~33\,
	combout => \U_FILTRO2|contador[7]~34_combout\,
	cout => \U_FILTRO2|contador[7]~35\);

-- Location: LCCOMB_X15_Y11_N30
\U_FILTRO2|contador[8]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_FILTRO2|contador[8]~36_combout\ = (\U_FILTRO2|contador\(8) & (\U_FILTRO2|contador[7]~35\ $ (GND))) # (!\U_FILTRO2|contador\(8) & (!\U_FILTRO2|contador[7]~35\ & VCC))
-- \U_FILTRO2|contador[8]~37\ = CARRY((\U_FILTRO2|contador\(8) & !\U_FILTRO2|contador[7]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_FILTRO2|contador\(8),
	datad => VCC,
	cin => \U_FILTRO2|contador[7]~35\,
	combout => \U_FILTRO2|contador[8]~36_combout\,
	cout => \U_FILTRO2|contador[8]~37\);

-- Location: LCFF_X15_Y11_N31
\U_FILTRO2|contador[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \U_FILTRO2|contador[8]~36_combout\,
	aclr => \ch_reset~clkctrl_outclk\,
	sclr => \U_FILTRO2|contador[5]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_FILTRO2|contador\(8));

-- Location: LCCOMB_X15_Y10_N0
\U_FILTRO2|contador[9]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_FILTRO2|contador[9]~38_combout\ = (\U_FILTRO2|contador\(9) & (!\U_FILTRO2|contador[8]~37\)) # (!\U_FILTRO2|contador\(9) & ((\U_FILTRO2|contador[8]~37\) # (GND)))
-- \U_FILTRO2|contador[9]~39\ = CARRY((!\U_FILTRO2|contador[8]~37\) # (!\U_FILTRO2|contador\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_FILTRO2|contador\(9),
	datad => VCC,
	cin => \U_FILTRO2|contador[8]~37\,
	combout => \U_FILTRO2|contador[9]~38_combout\,
	cout => \U_FILTRO2|contador[9]~39\);

-- Location: LCFF_X15_Y10_N1
\U_FILTRO2|contador[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \U_FILTRO2|contador[9]~38_combout\,
	aclr => \ch_reset~clkctrl_outclk\,
	sclr => \U_FILTRO2|contador[5]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_FILTRO2|contador\(9));

-- Location: LCCOMB_X15_Y10_N2
\U_FILTRO2|contador[10]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_FILTRO2|contador[10]~40_combout\ = (\U_FILTRO2|contador\(10) & (\U_FILTRO2|contador[9]~39\ $ (GND))) # (!\U_FILTRO2|contador\(10) & (!\U_FILTRO2|contador[9]~39\ & VCC))
-- \U_FILTRO2|contador[10]~41\ = CARRY((\U_FILTRO2|contador\(10) & !\U_FILTRO2|contador[9]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_FILTRO2|contador\(10),
	datad => VCC,
	cin => \U_FILTRO2|contador[9]~39\,
	combout => \U_FILTRO2|contador[10]~40_combout\,
	cout => \U_FILTRO2|contador[10]~41\);

-- Location: LCFF_X15_Y10_N3
\U_FILTRO2|contador[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \U_FILTRO2|contador[10]~40_combout\,
	aclr => \ch_reset~clkctrl_outclk\,
	sclr => \U_FILTRO2|contador[5]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_FILTRO2|contador\(10));

-- Location: LCCOMB_X15_Y10_N4
\U_FILTRO2|contador[11]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_FILTRO2|contador[11]~42_combout\ = (\U_FILTRO2|contador\(11) & (!\U_FILTRO2|contador[10]~41\)) # (!\U_FILTRO2|contador\(11) & ((\U_FILTRO2|contador[10]~41\) # (GND)))
-- \U_FILTRO2|contador[11]~43\ = CARRY((!\U_FILTRO2|contador[10]~41\) # (!\U_FILTRO2|contador\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_FILTRO2|contador\(11),
	datad => VCC,
	cin => \U_FILTRO2|contador[10]~41\,
	combout => \U_FILTRO2|contador[11]~42_combout\,
	cout => \U_FILTRO2|contador[11]~43\);

-- Location: LCFF_X15_Y10_N5
\U_FILTRO2|contador[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \U_FILTRO2|contador[11]~42_combout\,
	aclr => \ch_reset~clkctrl_outclk\,
	sclr => \U_FILTRO2|contador[5]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_FILTRO2|contador\(11));

-- Location: LCCOMB_X15_Y10_N8
\U_FILTRO2|contador[13]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_FILTRO2|contador[13]~46_combout\ = (\U_FILTRO2|contador\(13) & (!\U_FILTRO2|contador[12]~45\)) # (!\U_FILTRO2|contador\(13) & ((\U_FILTRO2|contador[12]~45\) # (GND)))
-- \U_FILTRO2|contador[13]~47\ = CARRY((!\U_FILTRO2|contador[12]~45\) # (!\U_FILTRO2|contador\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_FILTRO2|contador\(13),
	datad => VCC,
	cin => \U_FILTRO2|contador[12]~45\,
	combout => \U_FILTRO2|contador[13]~46_combout\,
	cout => \U_FILTRO2|contador[13]~47\);

-- Location: LCFF_X15_Y10_N9
\U_FILTRO2|contador[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \U_FILTRO2|contador[13]~46_combout\,
	aclr => \ch_reset~clkctrl_outclk\,
	sclr => \U_FILTRO2|contador[5]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_FILTRO2|contador\(13));

-- Location: LCCOMB_X15_Y10_N12
\U_FILTRO2|contador[15]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_FILTRO2|contador[15]~50_combout\ = (\U_FILTRO2|contador\(15) & (!\U_FILTRO2|contador[14]~49\)) # (!\U_FILTRO2|contador\(15) & ((\U_FILTRO2|contador[14]~49\) # (GND)))
-- \U_FILTRO2|contador[15]~51\ = CARRY((!\U_FILTRO2|contador[14]~49\) # (!\U_FILTRO2|contador\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_FILTRO2|contador\(15),
	datad => VCC,
	cin => \U_FILTRO2|contador[14]~49\,
	combout => \U_FILTRO2|contador[15]~50_combout\,
	cout => \U_FILTRO2|contador[15]~51\);

-- Location: LCFF_X15_Y10_N13
\U_FILTRO2|contador[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \U_FILTRO2|contador[15]~50_combout\,
	aclr => \ch_reset~clkctrl_outclk\,
	sclr => \U_FILTRO2|contador[5]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_FILTRO2|contador\(15));

-- Location: LCCOMB_X15_Y10_N14
\U_FILTRO2|contador[16]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_FILTRO2|contador[16]~52_combout\ = (\U_FILTRO2|contador\(16) & (\U_FILTRO2|contador[15]~51\ $ (GND))) # (!\U_FILTRO2|contador\(16) & (!\U_FILTRO2|contador[15]~51\ & VCC))
-- \U_FILTRO2|contador[16]~53\ = CARRY((\U_FILTRO2|contador\(16) & !\U_FILTRO2|contador[15]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_FILTRO2|contador\(16),
	datad => VCC,
	cin => \U_FILTRO2|contador[15]~51\,
	combout => \U_FILTRO2|contador[16]~52_combout\,
	cout => \U_FILTRO2|contador[16]~53\);

-- Location: LCFF_X15_Y10_N15
\U_FILTRO2|contador[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \U_FILTRO2|contador[16]~52_combout\,
	aclr => \ch_reset~clkctrl_outclk\,
	sclr => \U_FILTRO2|contador[5]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_FILTRO2|contador\(16));

-- Location: LCCOMB_X15_Y10_N18
\U_FILTRO2|contador[18]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_FILTRO2|contador[18]~56_combout\ = \U_FILTRO2|contador[17]~55\ $ (!\U_FILTRO2|contador\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U_FILTRO2|contador\(18),
	cin => \U_FILTRO2|contador[17]~55\,
	combout => \U_FILTRO2|contador[18]~56_combout\);

-- Location: LCFF_X15_Y10_N19
\U_FILTRO2|contador[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \U_FILTRO2|contador[18]~56_combout\,
	aclr => \ch_reset~clkctrl_outclk\,
	sclr => \U_FILTRO2|contador[5]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_FILTRO2|contador\(18));

-- Location: LCCOMB_X15_Y10_N26
\U_FILTRO2|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_FILTRO2|Equal0~2_combout\ = (\U_FILTRO2|contador\(9)) # ((\U_FILTRO2|contador\(10)) # ((\U_FILTRO2|contador\(11)) # (!\U_FILTRO2|contador\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FILTRO2|contador\(9),
	datab => \U_FILTRO2|contador\(10),
	datac => \U_FILTRO2|contador\(11),
	datad => \U_FILTRO2|contador\(8),
	combout => \U_FILTRO2|Equal0~2_combout\);

-- Location: LCFF_X15_Y11_N21
\U_FILTRO2|contador[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \U_FILTRO2|contador[3]~26_combout\,
	aclr => \ch_reset~clkctrl_outclk\,
	sclr => \U_FILTRO2|contador[5]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_FILTRO2|contador\(3));

-- Location: LCCOMB_X15_Y11_N12
\U_FILTRO2|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_FILTRO2|Equal0~0_combout\ = (\U_FILTRO2|contador\(1)) # ((\U_FILTRO2|contador\(0)) # ((\U_FILTRO2|contador\(3)) # (\U_FILTRO2|contador\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FILTRO2|contador\(1),
	datab => \U_FILTRO2|contador\(0),
	datac => \U_FILTRO2|contador\(3),
	datad => \U_FILTRO2|contador\(2),
	combout => \U_FILTRO2|Equal0~0_combout\);

-- Location: LCFF_X15_Y11_N29
\U_FILTRO2|contador[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \U_FILTRO2|contador[7]~34_combout\,
	aclr => \ch_reset~clkctrl_outclk\,
	sclr => \U_FILTRO2|contador[5]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_FILTRO2|contador\(7));

-- Location: LCCOMB_X15_Y11_N10
\U_FILTRO2|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_FILTRO2|Equal0~1_combout\ = ((\U_FILTRO2|contador\(6)) # ((\U_FILTRO2|contador\(7)) # (\U_FILTRO2|contador\(4)))) # (!\U_FILTRO2|contador\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FILTRO2|contador\(5),
	datab => \U_FILTRO2|contador\(6),
	datac => \U_FILTRO2|contador\(7),
	datad => \U_FILTRO2|contador\(4),
	combout => \U_FILTRO2|Equal0~1_combout\);

-- Location: LCCOMB_X15_Y10_N30
\U_FILTRO2|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_FILTRO2|Equal0~4_combout\ = (\U_FILTRO2|Equal0~3_combout\) # ((\U_FILTRO2|Equal0~2_combout\) # ((\U_FILTRO2|Equal0~0_combout\) # (\U_FILTRO2|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FILTRO2|Equal0~3_combout\,
	datab => \U_FILTRO2|Equal0~2_combout\,
	datac => \U_FILTRO2|Equal0~0_combout\,
	datad => \U_FILTRO2|Equal0~1_combout\,
	combout => \U_FILTRO2|Equal0~4_combout\);

-- Location: LCCOMB_X15_Y10_N28
\U_FILTRO2|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_FILTRO2|Equal0~5_combout\ = (((\U_FILTRO2|Equal0~4_combout\) # (!\U_FILTRO2|contador\(16))) # (!\U_FILTRO2|contador\(18))) # (!\U_FILTRO2|contador\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FILTRO2|contador\(17),
	datab => \U_FILTRO2|contador\(18),
	datac => \U_FILTRO2|contador\(16),
	datad => \U_FILTRO2|Equal0~4_combout\,
	combout => \U_FILTRO2|Equal0~5_combout\);

-- Location: LCCOMB_X15_Y10_N24
\U_FILTRO2|botao_estavel~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_FILTRO2|botao_estavel~0_combout\ = (\U_FILTRO2|Equal0~5_combout\ & ((\U_FILTRO2|botao_estavel~regout\))) # (!\U_FILTRO2|Equal0~5_combout\ & (\btn_desistir~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn_desistir~combout\,
	datac => \U_FILTRO2|botao_estavel~regout\,
	datad => \U_FILTRO2|Equal0~5_combout\,
	combout => \U_FILTRO2|botao_estavel~0_combout\);

-- Location: LCFF_X15_Y10_N25
\U_FILTRO2|botao_estavel\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \U_FILTRO2|botao_estavel~0_combout\,
	aclr => \ch_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_FILTRO2|botao_estavel~regout\);

-- Location: LCCOMB_X9_Y10_N4
\U_FILTRO2|process_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_FILTRO2|process_0~0_combout\ = (!\U_FILTRO2|botao_ant~regout\ & \U_FILTRO2|botao_estavel~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FILTRO2|botao_ant~regout\,
	datac => \U_FILTRO2|botao_estavel~regout\,
	combout => \U_FILTRO2|process_0~0_combout\);

-- Location: LCFF_X9_Y10_N5
\U_FILTRO2|botao_pulso\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \U_FILTRO2|process_0~0_combout\,
	aclr => \ch_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_FILTRO2|botao_pulso~regout\);

-- Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ch_produto[2]~I\ : cycloneii_io
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
	padio => ww_ch_produto(2),
	combout => \ch_produto~combout\(2));

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ch_produto[0]~I\ : cycloneii_io
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
	padio => ww_ch_produto(0),
	combout => \ch_produto~combout\(0));

-- Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ch_produto[1]~I\ : cycloneii_io
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
	padio => ww_ch_produto(1),
	combout => \ch_produto~combout\(1));

-- Location: LCCOMB_X10_Y10_N0
\U_BLOCO_DADOS|estoque_batata_p[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_BLOCO_DADOS|estoque_batata_p[0]~0_combout\ = (\U_BLOCO_DADOS|estoque_batata_p\(0)) # ((\U_BLOCO_DADOS|estoque_batata_g[0]~4_combout\ & (!\ch_produto~combout\(0) & !\ch_produto~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BLOCO_DADOS|estoque_batata_g[0]~4_combout\,
	datab => \ch_produto~combout\(0),
	datac => \U_BLOCO_DADOS|estoque_batata_p\(0),
	datad => \ch_produto~combout\(1),
	combout => \U_BLOCO_DADOS|estoque_batata_p[0]~0_combout\);

-- Location: LCFF_X10_Y10_N1
\U_BLOCO_DADOS|estoque_batata_p[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \U_BLOCO_DADOS|estoque_batata_p[0]~0_combout\,
	aclr => \ch_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_BLOCO_DADOS|estoque_batata_p\(0));

-- Location: LCCOMB_X10_Y10_N2
\U_BLOCO_DADOS|estoque_batata_m[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_BLOCO_DADOS|estoque_batata_m[0]~0_combout\ = (\U_BLOCO_DADOS|estoque_batata_m\(0)) # ((\U_BLOCO_DADOS|estoque_batata_g[0]~4_combout\ & (\ch_produto~combout\(0) & !\ch_produto~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BLOCO_DADOS|estoque_batata_g[0]~4_combout\,
	datab => \ch_produto~combout\(0),
	datac => \U_BLOCO_DADOS|estoque_batata_m\(0),
	datad => \ch_produto~combout\(1),
	combout => \U_BLOCO_DADOS|estoque_batata_m[0]~0_combout\);

-- Location: LCFF_X10_Y10_N3
\U_BLOCO_DADOS|estoque_batata_m[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \U_BLOCO_DADOS|estoque_batata_m[0]~0_combout\,
	aclr => \ch_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_BLOCO_DADOS|estoque_batata_m\(0));

-- Location: LCCOMB_X10_Y10_N22
\U_BLOCO_DADOS|Mux9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_BLOCO_DADOS|Mux9~0_combout\ = (\ch_produto~combout\(1) & (\ch_produto~combout\(0))) # (!\ch_produto~combout\(1) & ((\ch_produto~combout\(0) & ((!\U_BLOCO_DADOS|estoque_batata_m\(0)))) # (!\ch_produto~combout\(0) & 
-- (!\U_BLOCO_DADOS|estoque_batata_p\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ch_produto~combout\(1),
	datab => \ch_produto~combout\(0),
	datac => \U_BLOCO_DADOS|estoque_batata_p\(0),
	datad => \U_BLOCO_DADOS|estoque_batata_m\(0),
	combout => \U_BLOCO_DADOS|Mux9~0_combout\);

-- Location: LCCOMB_X10_Y10_N24
\U_BLOCO_DADOS|estoque_tortilha_p[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_BLOCO_DADOS|estoque_tortilha_p[0]~0_combout\ = (\U_BLOCO_DADOS|estoque_tortilha_p\(0)) # ((\U_BLOCO_DADOS|estoque_batata_g[0]~4_combout\ & (\ch_produto~combout\(0) & \ch_produto~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BLOCO_DADOS|estoque_batata_g[0]~4_combout\,
	datab => \ch_produto~combout\(0),
	datac => \U_BLOCO_DADOS|estoque_tortilha_p\(0),
	datad => \ch_produto~combout\(1),
	combout => \U_BLOCO_DADOS|estoque_tortilha_p[0]~0_combout\);

-- Location: LCFF_X10_Y10_N25
\U_BLOCO_DADOS|estoque_tortilha_p[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \U_BLOCO_DADOS|estoque_tortilha_p[0]~0_combout\,
	aclr => \ch_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_BLOCO_DADOS|estoque_tortilha_p\(0));

-- Location: LCCOMB_X10_Y10_N12
\U_BLOCO_DADOS|estoque_batata_g[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_BLOCO_DADOS|estoque_batata_g[0]~5_combout\ = (\U_BLOCO_DADOS|estoque_batata_g\(0)) # ((\U_BLOCO_DADOS|estoque_batata_g[0]~4_combout\ & (!\ch_produto~combout\(0) & \ch_produto~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BLOCO_DADOS|estoque_batata_g[0]~4_combout\,
	datab => \ch_produto~combout\(0),
	datac => \U_BLOCO_DADOS|estoque_batata_g\(0),
	datad => \ch_produto~combout\(1),
	combout => \U_BLOCO_DADOS|estoque_batata_g[0]~5_combout\);

-- Location: LCFF_X10_Y10_N13
\U_BLOCO_DADOS|estoque_batata_g[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \U_BLOCO_DADOS|estoque_batata_g[0]~5_combout\,
	aclr => \ch_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_BLOCO_DADOS|estoque_batata_g\(0));

-- Location: LCCOMB_X10_Y10_N26
\U_BLOCO_DADOS|Mux9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_BLOCO_DADOS|Mux9~1_combout\ = (\ch_produto~combout\(1) & ((\U_BLOCO_DADOS|Mux9~0_combout\ & (!\U_BLOCO_DADOS|estoque_tortilha_p\(0))) # (!\U_BLOCO_DADOS|Mux9~0_combout\ & ((!\U_BLOCO_DADOS|estoque_batata_g\(0)))))) # (!\ch_produto~combout\(1) & 
-- (\U_BLOCO_DADOS|Mux9~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ch_produto~combout\(1),
	datab => \U_BLOCO_DADOS|Mux9~0_combout\,
	datac => \U_BLOCO_DADOS|estoque_tortilha_p\(0),
	datad => \U_BLOCO_DADOS|estoque_batata_g\(0),
	combout => \U_BLOCO_DADOS|Mux9~1_combout\);

-- Location: LCCOMB_X9_Y10_N28
\U_CONTROLE|sem_estoque~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_CONTROLE|sem_estoque~0_combout\ = (!\U_BLOCO_DADOS|Mux9~2_combout\ & (\U_CONTROLE|estado_atual.AVALIA_ESTOQUE~regout\ & ((\ch_produto~combout\(2)) # (!\U_BLOCO_DADOS|Mux9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BLOCO_DADOS|Mux9~2_combout\,
	datab => \U_CONTROLE|estado_atual.AVALIA_ESTOQUE~regout\,
	datac => \U_BLOCO_DADOS|Mux9~1_combout\,
	datad => \ch_produto~combout\(2),
	combout => \U_CONTROLE|sem_estoque~0_combout\);

-- Location: LCCOMB_X9_Y10_N30
\U_CONTROLE|Selector0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_CONTROLE|Selector0~3_combout\ = (!\U_CONTROLE|estado_atual.ENTREGA_PRODUTO~regout\ & (!\U_CONTROLE|estado_atual.DEVOLUCAO~regout\ & ((\U_CONTROLE|Selector4~0_combout\) # (!\U_CONTROLE|sem_estoque~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CONTROLE|estado_atual.ENTREGA_PRODUTO~regout\,
	datab => \U_CONTROLE|sem_estoque~0_combout\,
	datac => \U_CONTROLE|estado_atual.DEVOLUCAO~regout\,
	datad => \U_CONTROLE|Selector4~0_combout\,
	combout => \U_CONTROLE|Selector0~3_combout\);

-- Location: LCCOMB_X10_Y10_N14
\U_CONTROLE|Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_CONTROLE|Selector0~1_combout\ = (\U_CONTROLE|Selector0~0_combout\) # ((\U_CONTROLE|estado_atual.ENTREGA_PRODUTO~regout\) # ((\U_CONTROLE|Selector4~0_combout\) # (\U_CONTROLE|estado_atual.DEVOLUCAO~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CONTROLE|Selector0~0_combout\,
	datab => \U_CONTROLE|estado_atual.ENTREGA_PRODUTO~regout\,
	datac => \U_CONTROLE|Selector4~0_combout\,
	datad => \U_CONTROLE|estado_atual.DEVOLUCAO~regout\,
	combout => \U_CONTROLE|Selector0~1_combout\);

-- Location: LCCOMB_X8_Y10_N16
\U_BLOCO_DADOS|soma_atual[8]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_BLOCO_DADOS|soma_atual[8]~26_combout\ = (\U_BLOCO_DADOS|soma_atual\(8) & (\U_BLOCO_DADOS|soma_atual[7]~25\ $ (GND))) # (!\U_BLOCO_DADOS|soma_atual\(8) & (!\U_BLOCO_DADOS|soma_atual[7]~25\ & VCC))
-- \U_BLOCO_DADOS|soma_atual[8]~27\ = CARRY((\U_BLOCO_DADOS|soma_atual\(8) & !\U_BLOCO_DADOS|soma_atual[7]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BLOCO_DADOS|soma_atual\(8),
	datad => VCC,
	cin => \U_BLOCO_DADOS|soma_atual[7]~25\,
	combout => \U_BLOCO_DADOS|soma_atual[8]~26_combout\,
	cout => \U_BLOCO_DADOS|soma_atual[8]~27\);

-- Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\btn_inserir_moeda~I\ : cycloneii_io
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
	padio => ww_btn_inserir_moeda,
	combout => \btn_inserir_moeda~combout\);

-- Location: LCCOMB_X18_Y11_N14
\U_FILTRO3|contador[0]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_FILTRO3|contador[0]~19_combout\ = \U_FILTRO3|contador\(0) $ (VCC)
-- \U_FILTRO3|contador[0]~20\ = CARRY(\U_FILTRO3|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_FILTRO3|contador\(0),
	datad => VCC,
	combout => \U_FILTRO3|contador[0]~19_combout\,
	cout => \U_FILTRO3|contador[0]~20\);

-- Location: LCCOMB_X18_Y10_N22
\U_FILTRO3|contador[8]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_FILTRO3|contador[8]~21_combout\ = (\btn_inserir_moeda~combout\ $ (!\U_FILTRO3|botao_estavel~regout\)) # (!\U_FILTRO3|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \btn_inserir_moeda~combout\,
	datac => \U_FILTRO3|botao_estavel~regout\,
	datad => \U_FILTRO3|Equal0~5_combout\,
	combout => \U_FILTRO3|contador[8]~21_combout\);

-- Location: LCFF_X18_Y11_N15
\U_FILTRO3|contador[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \U_FILTRO3|contador[0]~19_combout\,
	aclr => \ch_reset~clkctrl_outclk\,
	sclr => \U_FILTRO3|contador[8]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_FILTRO3|contador\(0));

-- Location: LCCOMB_X18_Y11_N18
\U_FILTRO3|contador[2]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_FILTRO3|contador[2]~24_combout\ = (\U_FILTRO3|contador\(2) & (\U_FILTRO3|contador[1]~23\ $ (GND))) # (!\U_FILTRO3|contador\(2) & (!\U_FILTRO3|contador[1]~23\ & VCC))
-- \U_FILTRO3|contador[2]~25\ = CARRY((\U_FILTRO3|contador\(2) & !\U_FILTRO3|contador[1]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_FILTRO3|contador\(2),
	datad => VCC,
	cin => \U_FILTRO3|contador[1]~23\,
	combout => \U_FILTRO3|contador[2]~24_combout\,
	cout => \U_FILTRO3|contador[2]~25\);

-- Location: LCFF_X18_Y11_N19
\U_FILTRO3|contador[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \U_FILTRO3|contador[2]~24_combout\,
	aclr => \ch_reset~clkctrl_outclk\,
	sclr => \U_FILTRO3|contador[8]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_FILTRO3|contador\(2));

-- Location: LCCOMB_X18_Y11_N20
\U_FILTRO3|contador[3]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_FILTRO3|contador[3]~26_combout\ = (\U_FILTRO3|contador\(3) & (!\U_FILTRO3|contador[2]~25\)) # (!\U_FILTRO3|contador\(3) & ((\U_FILTRO3|contador[2]~25\) # (GND)))
-- \U_FILTRO3|contador[3]~27\ = CARRY((!\U_FILTRO3|contador[2]~25\) # (!\U_FILTRO3|contador\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_FILTRO3|contador\(3),
	datad => VCC,
	cin => \U_FILTRO3|contador[2]~25\,
	combout => \U_FILTRO3|contador[3]~26_combout\,
	cout => \U_FILTRO3|contador[3]~27\);

-- Location: LCCOMB_X18_Y11_N22
\U_FILTRO3|contador[4]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_FILTRO3|contador[4]~28_combout\ = (\U_FILTRO3|contador\(4) & (\U_FILTRO3|contador[3]~27\ $ (GND))) # (!\U_FILTRO3|contador\(4) & (!\U_FILTRO3|contador[3]~27\ & VCC))
-- \U_FILTRO3|contador[4]~29\ = CARRY((\U_FILTRO3|contador\(4) & !\U_FILTRO3|contador[3]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_FILTRO3|contador\(4),
	datad => VCC,
	cin => \U_FILTRO3|contador[3]~27\,
	combout => \U_FILTRO3|contador[4]~28_combout\,
	cout => \U_FILTRO3|contador[4]~29\);

-- Location: LCFF_X18_Y11_N23
\U_FILTRO3|contador[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \U_FILTRO3|contador[4]~28_combout\,
	aclr => \ch_reset~clkctrl_outclk\,
	sclr => \U_FILTRO3|contador[8]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_FILTRO3|contador\(4));

-- Location: LCCOMB_X18_Y11_N26
\U_FILTRO3|contador[6]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_FILTRO3|contador[6]~32_combout\ = (\U_FILTRO3|contador\(6) & (\U_FILTRO3|contador[5]~31\ $ (GND))) # (!\U_FILTRO3|contador\(6) & (!\U_FILTRO3|contador[5]~31\ & VCC))
-- \U_FILTRO3|contador[6]~33\ = CARRY((\U_FILTRO3|contador\(6) & !\U_FILTRO3|contador[5]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_FILTRO3|contador\(6),
	datad => VCC,
	cin => \U_FILTRO3|contador[5]~31\,
	combout => \U_FILTRO3|contador[6]~32_combout\,
	cout => \U_FILTRO3|contador[6]~33\);

-- Location: LCCOMB_X18_Y11_N28
\U_FILTRO3|contador[7]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_FILTRO3|contador[7]~34_combout\ = (\U_FILTRO3|contador\(7) & (!\U_FILTRO3|contador[6]~33\)) # (!\U_FILTRO3|contador\(7) & ((\U_FILTRO3|contador[6]~33\) # (GND)))
-- \U_FILTRO3|contador[7]~35\ = CARRY((!\U_FILTRO3|contador[6]~33\) # (!\U_FILTRO3|contador\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_FILTRO3|contador\(7),
	datad => VCC,
	cin => \U_FILTRO3|contador[6]~33\,
	combout => \U_FILTRO3|contador[7]~34_combout\,
	cout => \U_FILTRO3|contador[7]~35\);

-- Location: LCFF_X18_Y11_N29
\U_FILTRO3|contador[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \U_FILTRO3|contador[7]~34_combout\,
	aclr => \ch_reset~clkctrl_outclk\,
	sclr => \U_FILTRO3|contador[8]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_FILTRO3|contador\(7));

-- Location: LCCOMB_X18_Y11_N30
\U_FILTRO3|contador[8]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_FILTRO3|contador[8]~36_combout\ = (\U_FILTRO3|contador\(8) & (\U_FILTRO3|contador[7]~35\ $ (GND))) # (!\U_FILTRO3|contador\(8) & (!\U_FILTRO3|contador[7]~35\ & VCC))
-- \U_FILTRO3|contador[8]~37\ = CARRY((\U_FILTRO3|contador\(8) & !\U_FILTRO3|contador[7]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_FILTRO3|contador\(8),
	datad => VCC,
	cin => \U_FILTRO3|contador[7]~35\,
	combout => \U_FILTRO3|contador[8]~36_combout\,
	cout => \U_FILTRO3|contador[8]~37\);

-- Location: LCFF_X18_Y11_N31
\U_FILTRO3|contador[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \U_FILTRO3|contador[8]~36_combout\,
	aclr => \ch_reset~clkctrl_outclk\,
	sclr => \U_FILTRO3|contador[8]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_FILTRO3|contador\(8));

-- Location: LCCOMB_X18_Y10_N0
\U_FILTRO3|contador[9]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_FILTRO3|contador[9]~38_combout\ = (\U_FILTRO3|contador\(9) & (!\U_FILTRO3|contador[8]~37\)) # (!\U_FILTRO3|contador\(9) & ((\U_FILTRO3|contador[8]~37\) # (GND)))
-- \U_FILTRO3|contador[9]~39\ = CARRY((!\U_FILTRO3|contador[8]~37\) # (!\U_FILTRO3|contador\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_FILTRO3|contador\(9),
	datad => VCC,
	cin => \U_FILTRO3|contador[8]~37\,
	combout => \U_FILTRO3|contador[9]~38_combout\,
	cout => \U_FILTRO3|contador[9]~39\);

-- Location: LCFF_X18_Y10_N1
\U_FILTRO3|contador[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \U_FILTRO3|contador[9]~38_combout\,
	aclr => \ch_reset~clkctrl_outclk\,
	sclr => \U_FILTRO3|contador[8]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_FILTRO3|contador\(9));

-- Location: LCCOMB_X18_Y10_N2
\U_FILTRO3|contador[10]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_FILTRO3|contador[10]~40_combout\ = (\U_FILTRO3|contador\(10) & (\U_FILTRO3|contador[9]~39\ $ (GND))) # (!\U_FILTRO3|contador\(10) & (!\U_FILTRO3|contador[9]~39\ & VCC))
-- \U_FILTRO3|contador[10]~41\ = CARRY((\U_FILTRO3|contador\(10) & !\U_FILTRO3|contador[9]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_FILTRO3|contador\(10),
	datad => VCC,
	cin => \U_FILTRO3|contador[9]~39\,
	combout => \U_FILTRO3|contador[10]~40_combout\,
	cout => \U_FILTRO3|contador[10]~41\);

-- Location: LCFF_X18_Y10_N3
\U_FILTRO3|contador[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \U_FILTRO3|contador[10]~40_combout\,
	aclr => \ch_reset~clkctrl_outclk\,
	sclr => \U_FILTRO3|contador[8]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_FILTRO3|contador\(10));

-- Location: LCCOMB_X18_Y10_N4
\U_FILTRO3|contador[11]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_FILTRO3|contador[11]~42_combout\ = (\U_FILTRO3|contador\(11) & (!\U_FILTRO3|contador[10]~41\)) # (!\U_FILTRO3|contador\(11) & ((\U_FILTRO3|contador[10]~41\) # (GND)))
-- \U_FILTRO3|contador[11]~43\ = CARRY((!\U_FILTRO3|contador[10]~41\) # (!\U_FILTRO3|contador\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_FILTRO3|contador\(11),
	datad => VCC,
	cin => \U_FILTRO3|contador[10]~41\,
	combout => \U_FILTRO3|contador[11]~42_combout\,
	cout => \U_FILTRO3|contador[11]~43\);

-- Location: LCFF_X18_Y10_N5
\U_FILTRO3|contador[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \U_FILTRO3|contador[11]~42_combout\,
	aclr => \ch_reset~clkctrl_outclk\,
	sclr => \U_FILTRO3|contador[8]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_FILTRO3|contador\(11));

-- Location: LCCOMB_X18_Y10_N8
\U_FILTRO3|contador[13]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_FILTRO3|contador[13]~46_combout\ = (\U_FILTRO3|contador\(13) & (!\U_FILTRO3|contador[12]~45\)) # (!\U_FILTRO3|contador\(13) & ((\U_FILTRO3|contador[12]~45\) # (GND)))
-- \U_FILTRO3|contador[13]~47\ = CARRY((!\U_FILTRO3|contador[12]~45\) # (!\U_FILTRO3|contador\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_FILTRO3|contador\(13),
	datad => VCC,
	cin => \U_FILTRO3|contador[12]~45\,
	combout => \U_FILTRO3|contador[13]~46_combout\,
	cout => \U_FILTRO3|contador[13]~47\);

-- Location: LCFF_X18_Y10_N9
\U_FILTRO3|contador[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \U_FILTRO3|contador[13]~46_combout\,
	aclr => \ch_reset~clkctrl_outclk\,
	sclr => \U_FILTRO3|contador[8]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_FILTRO3|contador\(13));

-- Location: LCCOMB_X18_Y10_N12
\U_FILTRO3|contador[15]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_FILTRO3|contador[15]~50_combout\ = (\U_FILTRO3|contador\(15) & (!\U_FILTRO3|contador[14]~49\)) # (!\U_FILTRO3|contador\(15) & ((\U_FILTRO3|contador[14]~49\) # (GND)))
-- \U_FILTRO3|contador[15]~51\ = CARRY((!\U_FILTRO3|contador[14]~49\) # (!\U_FILTRO3|contador\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_FILTRO3|contador\(15),
	datad => VCC,
	cin => \U_FILTRO3|contador[14]~49\,
	combout => \U_FILTRO3|contador[15]~50_combout\,
	cout => \U_FILTRO3|contador[15]~51\);

-- Location: LCFF_X18_Y10_N13
\U_FILTRO3|contador[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \U_FILTRO3|contador[15]~50_combout\,
	aclr => \ch_reset~clkctrl_outclk\,
	sclr => \U_FILTRO3|contador[8]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_FILTRO3|contador\(15));

-- Location: LCCOMB_X18_Y10_N14
\U_FILTRO3|contador[16]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_FILTRO3|contador[16]~52_combout\ = (\U_FILTRO3|contador\(16) & (\U_FILTRO3|contador[15]~51\ $ (GND))) # (!\U_FILTRO3|contador\(16) & (!\U_FILTRO3|contador[15]~51\ & VCC))
-- \U_FILTRO3|contador[16]~53\ = CARRY((\U_FILTRO3|contador\(16) & !\U_FILTRO3|contador[15]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_FILTRO3|contador\(16),
	datad => VCC,
	cin => \U_FILTRO3|contador[15]~51\,
	combout => \U_FILTRO3|contador[16]~52_combout\,
	cout => \U_FILTRO3|contador[16]~53\);

-- Location: LCFF_X18_Y10_N15
\U_FILTRO3|contador[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \U_FILTRO3|contador[16]~52_combout\,
	aclr => \ch_reset~clkctrl_outclk\,
	sclr => \U_FILTRO3|contador[8]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_FILTRO3|contador\(16));

-- Location: LCCOMB_X18_Y10_N18
\U_FILTRO3|contador[18]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_FILTRO3|contador[18]~56_combout\ = \U_FILTRO3|contador[17]~55\ $ (!\U_FILTRO3|contador\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U_FILTRO3|contador\(18),
	cin => \U_FILTRO3|contador[17]~55\,
	combout => \U_FILTRO3|contador[18]~56_combout\);

-- Location: LCFF_X18_Y10_N19
\U_FILTRO3|contador[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \U_FILTRO3|contador[18]~56_combout\,
	aclr => \ch_reset~clkctrl_outclk\,
	sclr => \U_FILTRO3|contador[8]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_FILTRO3|contador\(18));

-- Location: LCCOMB_X18_Y10_N30
\U_FILTRO3|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_FILTRO3|Equal0~2_combout\ = (\U_FILTRO3|contador\(10)) # ((\U_FILTRO3|contador\(9)) # ((\U_FILTRO3|contador\(11)) # (!\U_FILTRO3|contador\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FILTRO3|contador\(10),
	datab => \U_FILTRO3|contador\(9),
	datac => \U_FILTRO3|contador\(11),
	datad => \U_FILTRO3|contador\(8),
	combout => \U_FILTRO3|Equal0~2_combout\);

-- Location: LCFF_X18_Y11_N21
\U_FILTRO3|contador[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \U_FILTRO3|contador[3]~26_combout\,
	aclr => \ch_reset~clkctrl_outclk\,
	sclr => \U_FILTRO3|contador[8]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_FILTRO3|contador\(3));

-- Location: LCCOMB_X18_Y11_N12
\U_FILTRO3|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_FILTRO3|Equal0~0_combout\ = (\U_FILTRO3|contador\(1)) # ((\U_FILTRO3|contador\(0)) # ((\U_FILTRO3|contador\(3)) # (\U_FILTRO3|contador\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FILTRO3|contador\(1),
	datab => \U_FILTRO3|contador\(0),
	datac => \U_FILTRO3|contador\(3),
	datad => \U_FILTRO3|contador\(2),
	combout => \U_FILTRO3|Equal0~0_combout\);

-- Location: LCFF_X18_Y11_N27
\U_FILTRO3|contador[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \U_FILTRO3|contador[6]~32_combout\,
	aclr => \ch_reset~clkctrl_outclk\,
	sclr => \U_FILTRO3|contador[8]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_FILTRO3|contador\(6));

-- Location: LCCOMB_X18_Y11_N10
\U_FILTRO3|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_FILTRO3|Equal0~1_combout\ = ((\U_FILTRO3|contador\(7)) # ((\U_FILTRO3|contador\(6)) # (\U_FILTRO3|contador\(4)))) # (!\U_FILTRO3|contador\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FILTRO3|contador\(5),
	datab => \U_FILTRO3|contador\(7),
	datac => \U_FILTRO3|contador\(6),
	datad => \U_FILTRO3|contador\(4),
	combout => \U_FILTRO3|Equal0~1_combout\);

-- Location: LCCOMB_X18_Y10_N26
\U_FILTRO3|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_FILTRO3|Equal0~4_combout\ = (\U_FILTRO3|Equal0~3_combout\) # ((\U_FILTRO3|Equal0~2_combout\) # ((\U_FILTRO3|Equal0~0_combout\) # (\U_FILTRO3|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FILTRO3|Equal0~3_combout\,
	datab => \U_FILTRO3|Equal0~2_combout\,
	datac => \U_FILTRO3|Equal0~0_combout\,
	datad => \U_FILTRO3|Equal0~1_combout\,
	combout => \U_FILTRO3|Equal0~4_combout\);

-- Location: LCCOMB_X18_Y10_N28
\U_FILTRO3|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_FILTRO3|Equal0~5_combout\ = (((\U_FILTRO3|Equal0~4_combout\) # (!\U_FILTRO3|contador\(16))) # (!\U_FILTRO3|contador\(18))) # (!\U_FILTRO3|contador\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FILTRO3|contador\(17),
	datab => \U_FILTRO3|contador\(18),
	datac => \U_FILTRO3|contador\(16),
	datad => \U_FILTRO3|Equal0~4_combout\,
	combout => \U_FILTRO3|Equal0~5_combout\);

-- Location: LCCOMB_X18_Y10_N24
\U_FILTRO3|botao_estavel~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_FILTRO3|botao_estavel~0_combout\ = (\U_FILTRO3|Equal0~5_combout\ & ((\U_FILTRO3|botao_estavel~regout\))) # (!\U_FILTRO3|Equal0~5_combout\ & (\btn_inserir_moeda~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \btn_inserir_moeda~combout\,
	datac => \U_FILTRO3|botao_estavel~regout\,
	datad => \U_FILTRO3|Equal0~5_combout\,
	combout => \U_FILTRO3|botao_estavel~0_combout\);

-- Location: LCFF_X18_Y10_N25
\U_FILTRO3|botao_estavel\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \U_FILTRO3|botao_estavel~0_combout\,
	aclr => \ch_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_FILTRO3|botao_estavel~regout\);

-- Location: LCCOMB_X14_Y10_N2
\U_FILTRO3|botao_ant~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_FILTRO3|botao_ant~feeder_combout\ = \U_FILTRO3|botao_estavel~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_FILTRO3|botao_estavel~regout\,
	combout => \U_FILTRO3|botao_ant~feeder_combout\);

-- Location: LCFF_X14_Y10_N3
\U_FILTRO3|botao_ant\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \U_FILTRO3|botao_ant~feeder_combout\,
	aclr => \ch_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_FILTRO3|botao_ant~regout\);

-- Location: LCCOMB_X14_Y10_N8
\U_FILTRO3|process_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_FILTRO3|process_0~0_combout\ = (!\U_FILTRO3|botao_ant~regout\ & \U_FILTRO3|botao_estavel~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_FILTRO3|botao_ant~regout\,
	datad => \U_FILTRO3|botao_estavel~regout\,
	combout => \U_FILTRO3|process_0~0_combout\);

-- Location: LCFF_X14_Y10_N9
\U_FILTRO3|botao_pulso\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \U_FILTRO3|process_0~0_combout\,
	aclr => \ch_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_FILTRO3|botao_pulso~regout\);

-- Location: LCCOMB_X10_Y10_N28
\U_BLOCO_DADOS|soma_atual[7]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_BLOCO_DADOS|soma_atual[7]~30_combout\ = (\U_CONTROLE|estado_atual.DEVOLUCAO~regout\) # (((\U_FILTRO3|botao_pulso~regout\ & \U_CONTROLE|estado_atual.RECEBE_MOEDA~regout\)) # (!\U_CONTROLE|estado_atual.ESPERA~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CONTROLE|estado_atual.DEVOLUCAO~regout\,
	datab => \U_FILTRO3|botao_pulso~regout\,
	datac => \U_CONTROLE|estado_atual.ESPERA~regout\,
	datad => \U_CONTROLE|estado_atual.RECEBE_MOEDA~regout\,
	combout => \U_BLOCO_DADOS|soma_atual[7]~30_combout\);

-- Location: LCFF_X8_Y10_N17
\U_BLOCO_DADOS|soma_atual[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \U_BLOCO_DADOS|soma_atual[8]~26_combout\,
	aclr => \ch_reset~clkctrl_outclk\,
	sclr => \U_CONTROLE|limpar_soma~combout\,
	ena => \U_BLOCO_DADOS|soma_atual[7]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_BLOCO_DADOS|soma_atual\(8));

-- Location: LCFF_X8_Y10_N5
\U_BLOCO_DADOS|soma_atual[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \U_BLOCO_DADOS|soma_atual[2]~14_combout\,
	aclr => \ch_reset~clkctrl_outclk\,
	sclr => \U_CONTROLE|limpar_soma~combout\,
	ena => \U_BLOCO_DADOS|soma_atual[7]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_BLOCO_DADOS|soma_atual\(2));

-- Location: LCFF_X8_Y10_N3
\U_BLOCO_DADOS|soma_atual[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \U_BLOCO_DADOS|soma_atual[1]~12_combout\,
	aclr => \ch_reset~clkctrl_outclk\,
	sclr => \U_CONTROLE|limpar_soma~combout\,
	ena => \U_BLOCO_DADOS|soma_atual[7]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_BLOCO_DADOS|soma_atual\(1));

-- Location: LCCOMB_X9_Y10_N8
\U_BLOCO_DADOS|LessThan5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_BLOCO_DADOS|LessThan5~0_combout\ = (((!\U_BLOCO_DADOS|soma_atual\(1)) # (!\U_BLOCO_DADOS|soma_atual\(3))) # (!\U_BLOCO_DADOS|soma_atual\(2))) # (!\U_BLOCO_DADOS|soma_atual\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BLOCO_DADOS|soma_atual\(4),
	datab => \U_BLOCO_DADOS|soma_atual\(2),
	datac => \U_BLOCO_DADOS|soma_atual\(3),
	datad => \U_BLOCO_DADOS|soma_atual\(1),
	combout => \U_BLOCO_DADOS|LessThan5~0_combout\);

-- Location: LCCOMB_X9_Y10_N6
\U_BLOCO_DADOS|LessThan5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_BLOCO_DADOS|LessThan5~1_combout\ = ((!\U_BLOCO_DADOS|soma_atual\(5) & \U_BLOCO_DADOS|LessThan5~0_combout\)) # (!\U_BLOCO_DADOS|soma_atual\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BLOCO_DADOS|soma_atual\(5),
	datac => \U_BLOCO_DADOS|LessThan5~0_combout\,
	datad => \U_BLOCO_DADOS|soma_atual\(6),
	combout => \U_BLOCO_DADOS|LessThan5~1_combout\);

-- Location: LCCOMB_X9_Y10_N20
\U_BLOCO_DADOS|LessThan5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_BLOCO_DADOS|LessThan5~2_combout\ = (\U_BLOCO_DADOS|Mux0~0_combout\ & (\U_BLOCO_DADOS|soma_atual\(8) & (!\U_BLOCO_DADOS|soma_atual\(7) & \U_BLOCO_DADOS|LessThan5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BLOCO_DADOS|Mux0~0_combout\,
	datab => \U_BLOCO_DADOS|soma_atual\(8),
	datac => \U_BLOCO_DADOS|soma_atual\(7),
	datad => \U_BLOCO_DADOS|LessThan5~1_combout\,
	combout => \U_BLOCO_DADOS|LessThan5~2_combout\);

-- Location: LCCOMB_X8_Y10_N10
\U_BLOCO_DADOS|soma_atual[5]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_BLOCO_DADOS|soma_atual[5]~20_combout\ = (\U_BLOCO_DADOS|soma_atual\(5) & ((\U_BLOCO_DADOS|incremento~0_combout\ & (\U_BLOCO_DADOS|soma_atual[4]~19\ & VCC)) # (!\U_BLOCO_DADOS|incremento~0_combout\ & (!\U_BLOCO_DADOS|soma_atual[4]~19\)))) # 
-- (!\U_BLOCO_DADOS|soma_atual\(5) & ((\U_BLOCO_DADOS|incremento~0_combout\ & (!\U_BLOCO_DADOS|soma_atual[4]~19\)) # (!\U_BLOCO_DADOS|incremento~0_combout\ & ((\U_BLOCO_DADOS|soma_atual[4]~19\) # (GND)))))
-- \U_BLOCO_DADOS|soma_atual[5]~21\ = CARRY((\U_BLOCO_DADOS|soma_atual\(5) & (!\U_BLOCO_DADOS|incremento~0_combout\ & !\U_BLOCO_DADOS|soma_atual[4]~19\)) # (!\U_BLOCO_DADOS|soma_atual\(5) & ((!\U_BLOCO_DADOS|soma_atual[4]~19\) # 
-- (!\U_BLOCO_DADOS|incremento~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BLOCO_DADOS|soma_atual\(5),
	datab => \U_BLOCO_DADOS|incremento~0_combout\,
	datad => VCC,
	cin => \U_BLOCO_DADOS|soma_atual[4]~19\,
	combout => \U_BLOCO_DADOS|soma_atual[5]~20_combout\,
	cout => \U_BLOCO_DADOS|soma_atual[5]~21\);

-- Location: LCFF_X8_Y10_N11
\U_BLOCO_DADOS|soma_atual[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \U_BLOCO_DADOS|soma_atual[5]~20_combout\,
	aclr => \ch_reset~clkctrl_outclk\,
	sclr => \U_CONTROLE|limpar_soma~combout\,
	ena => \U_BLOCO_DADOS|soma_atual[7]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_BLOCO_DADOS|soma_atual\(5));

-- Location: LCCOMB_X9_Y10_N0
\U_BLOCO_DADOS|LessThan5~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_BLOCO_DADOS|LessThan5~8_combout\ = (\ch_produto~combout\(0) & (!\U_BLOCO_DADOS|soma_atual\(5) & ((!\U_BLOCO_DADOS|soma_atual\(2)) # (!\U_BLOCO_DADOS|soma_atual\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BLOCO_DADOS|soma_atual\(1),
	datab => \ch_produto~combout\(0),
	datac => \U_BLOCO_DADOS|soma_atual\(2),
	datad => \U_BLOCO_DADOS|soma_atual\(5),
	combout => \U_BLOCO_DADOS|LessThan5~8_combout\);

-- Location: LCCOMB_X9_Y10_N14
\U_BLOCO_DADOS|LessThan5~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_BLOCO_DADOS|LessThan5~9_combout\ = (\ch_produto~combout\(1)) # (((!\U_BLOCO_DADOS|soma_atual\(3) & \U_BLOCO_DADOS|LessThan5~8_combout\)) # (!\U_BLOCO_DADOS|soma_atual\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ch_produto~combout\(1),
	datab => \U_BLOCO_DADOS|soma_atual\(3),
	datac => \U_BLOCO_DADOS|soma_atual\(7),
	datad => \U_BLOCO_DADOS|LessThan5~8_combout\,
	combout => \U_BLOCO_DADOS|LessThan5~9_combout\);

-- Location: LCCOMB_X8_Y10_N8
\U_BLOCO_DADOS|soma_atual[4]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_BLOCO_DADOS|soma_atual[4]~18_combout\ = ((\U_BLOCO_DADOS|soma_atual\(4) $ (\U_BLOCO_DADOS|incremento~1_combout\ $ (!\U_BLOCO_DADOS|soma_atual[3]~17\)))) # (GND)
-- \U_BLOCO_DADOS|soma_atual[4]~19\ = CARRY((\U_BLOCO_DADOS|soma_atual\(4) & ((\U_BLOCO_DADOS|incremento~1_combout\) # (!\U_BLOCO_DADOS|soma_atual[3]~17\))) # (!\U_BLOCO_DADOS|soma_atual\(4) & (\U_BLOCO_DADOS|incremento~1_combout\ & 
-- !\U_BLOCO_DADOS|soma_atual[3]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BLOCO_DADOS|soma_atual\(4),
	datab => \U_BLOCO_DADOS|incremento~1_combout\,
	datad => VCC,
	cin => \U_BLOCO_DADOS|soma_atual[3]~17\,
	combout => \U_BLOCO_DADOS|soma_atual[4]~18_combout\,
	cout => \U_BLOCO_DADOS|soma_atual[4]~19\);

-- Location: LCFF_X8_Y10_N9
\U_BLOCO_DADOS|soma_atual[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \U_BLOCO_DADOS|soma_atual[4]~18_combout\,
	aclr => \ch_reset~clkctrl_outclk\,
	sclr => \U_CONTROLE|limpar_soma~combout\,
	ena => \U_BLOCO_DADOS|soma_atual[7]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_BLOCO_DADOS|soma_atual\(4));

-- Location: LCCOMB_X8_Y10_N20
\U_BLOCO_DADOS|LessThan5~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_BLOCO_DADOS|LessThan5~5_combout\ = (!\U_BLOCO_DADOS|soma_atual\(3) & ((\ch_produto~combout\(1)) # (!\U_BLOCO_DADOS|soma_atual\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ch_produto~combout\(1),
	datac => \U_BLOCO_DADOS|soma_atual\(7),
	datad => \U_BLOCO_DADOS|soma_atual\(3),
	combout => \U_BLOCO_DADOS|LessThan5~5_combout\);

-- Location: LCFF_X8_Y10_N1
\U_BLOCO_DADOS|soma_atual[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \U_BLOCO_DADOS|soma_atual[0]~10_combout\,
	aclr => \ch_reset~clkctrl_outclk\,
	sclr => \U_CONTROLE|limpar_soma~combout\,
	ena => \U_BLOCO_DADOS|soma_atual[7]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_BLOCO_DADOS|soma_atual\(0));

-- Location: LCCOMB_X8_Y10_N26
\U_BLOCO_DADOS|LessThan5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_BLOCO_DADOS|LessThan5~4_combout\ = (!\U_BLOCO_DADOS|soma_atual\(2) & (!\U_BLOCO_DADOS|soma_atual\(7) & ((!\U_BLOCO_DADOS|soma_atual\(0)) # (!\U_BLOCO_DADOS|soma_atual\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BLOCO_DADOS|soma_atual\(2),
	datab => \U_BLOCO_DADOS|soma_atual\(1),
	datac => \U_BLOCO_DADOS|soma_atual\(7),
	datad => \U_BLOCO_DADOS|soma_atual\(0),
	combout => \U_BLOCO_DADOS|LessThan5~4_combout\);

-- Location: LCCOMB_X8_Y10_N30
\U_BLOCO_DADOS|LessThan5~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_BLOCO_DADOS|LessThan5~6_combout\ = (\U_BLOCO_DADOS|LessThan5~5_combout\) # ((\U_BLOCO_DADOS|LessThan5~4_combout\) # ((\ch_produto~combout\(0) & !\U_BLOCO_DADOS|soma_atual\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ch_produto~combout\(0),
	datab => \U_BLOCO_DADOS|soma_atual\(6),
	datac => \U_BLOCO_DADOS|LessThan5~5_combout\,
	datad => \U_BLOCO_DADOS|LessThan5~4_combout\,
	combout => \U_BLOCO_DADOS|LessThan5~6_combout\);

-- Location: LCCOMB_X8_Y10_N28
\U_BLOCO_DADOS|LessThan5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_BLOCO_DADOS|LessThan5~3_combout\ = (((!\U_BLOCO_DADOS|soma_atual\(2) & !\U_BLOCO_DADOS|soma_atual\(1))) # (!\U_BLOCO_DADOS|soma_atual\(4))) # (!\U_BLOCO_DADOS|soma_atual\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BLOCO_DADOS|soma_atual\(3),
	datab => \U_BLOCO_DADOS|soma_atual\(2),
	datac => \U_BLOCO_DADOS|soma_atual\(4),
	datad => \U_BLOCO_DADOS|soma_atual\(1),
	combout => \U_BLOCO_DADOS|LessThan5~3_combout\);

-- Location: LCCOMB_X8_Y10_N24
\U_BLOCO_DADOS|LessThan5~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_BLOCO_DADOS|LessThan5~12_combout\ = ((!\ch_produto~combout\(0) & ((\U_BLOCO_DADOS|LessThan5~3_combout\) # (!\U_BLOCO_DADOS|soma_atual\(5))))) # (!\U_BLOCO_DADOS|soma_atual\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BLOCO_DADOS|soma_atual\(5),
	datab => \ch_produto~combout\(0),
	datac => \U_BLOCO_DADOS|soma_atual\(7),
	datad => \U_BLOCO_DADOS|LessThan5~3_combout\,
	combout => \U_BLOCO_DADOS|LessThan5~12_combout\);

-- Location: LCCOMB_X8_Y10_N22
\U_BLOCO_DADOS|LessThan5~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_BLOCO_DADOS|LessThan5~13_combout\ = (\U_BLOCO_DADOS|LessThan5~12_combout\ & ((\ch_produto~combout\(0) & ((!\U_BLOCO_DADOS|soma_atual\(7)))) # (!\ch_produto~combout\(0) & (\ch_produto~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ch_produto~combout\(0),
	datab => \ch_produto~combout\(1),
	datac => \U_BLOCO_DADOS|LessThan5~12_combout\,
	datad => \U_BLOCO_DADOS|soma_atual\(7),
	combout => \U_BLOCO_DADOS|LessThan5~13_combout\);

-- Location: LCCOMB_X9_Y10_N26
\U_BLOCO_DADOS|LessThan5~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_BLOCO_DADOS|LessThan5~7_combout\ = (\U_BLOCO_DADOS|LessThan5~13_combout\) # ((!\U_BLOCO_DADOS|soma_atual\(5) & (!\U_BLOCO_DADOS|soma_atual\(4) & \U_BLOCO_DADOS|LessThan5~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BLOCO_DADOS|soma_atual\(5),
	datab => \U_BLOCO_DADOS|soma_atual\(4),
	datac => \U_BLOCO_DADOS|LessThan5~6_combout\,
	datad => \U_BLOCO_DADOS|LessThan5~13_combout\,
	combout => \U_BLOCO_DADOS|LessThan5~7_combout\);

-- Location: LCCOMB_X9_Y10_N12
\U_BLOCO_DADOS|LessThan5~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_BLOCO_DADOS|LessThan5~10_combout\ = (!\ch_produto~combout\(2) & ((\U_BLOCO_DADOS|LessThan5~7_combout\) # ((!\U_BLOCO_DADOS|soma_atual\(6) & \U_BLOCO_DADOS|LessThan5~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BLOCO_DADOS|soma_atual\(6),
	datab => \ch_produto~combout\(2),
	datac => \U_BLOCO_DADOS|LessThan5~9_combout\,
	datad => \U_BLOCO_DADOS|LessThan5~7_combout\,
	combout => \U_BLOCO_DADOS|LessThan5~10_combout\);

-- Location: LCCOMB_X9_Y10_N18
\U_BLOCO_DADOS|LessThan5~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_BLOCO_DADOS|LessThan5~11_combout\ = (\U_BLOCO_DADOS|LessThan5~2_combout\) # ((!\U_BLOCO_DADOS|soma_atual\(8) & ((\U_BLOCO_DADOS|Mux0~0_combout\) # (\U_BLOCO_DADOS|LessThan5~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BLOCO_DADOS|Mux0~0_combout\,
	datab => \U_BLOCO_DADOS|soma_atual\(8),
	datac => \U_BLOCO_DADOS|LessThan5~2_combout\,
	datad => \U_BLOCO_DADOS|LessThan5~10_combout\,
	combout => \U_BLOCO_DADOS|LessThan5~11_combout\);

-- Location: LCCOMB_X9_Y10_N22
\U_CONTROLE|Selector0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_CONTROLE|Selector0~2_combout\ = (\U_CONTROLE|Selector0~1_combout\) # ((\U_CONTROLE|estado_atual.RECEBE_MOEDA~regout\ & ((\U_BLOCO_DADOS|soma_atual\(9)) # (!\U_BLOCO_DADOS|LessThan5~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CONTROLE|estado_atual.RECEBE_MOEDA~regout\,
	datab => \U_BLOCO_DADOS|soma_atual\(9),
	datac => \U_CONTROLE|Selector0~1_combout\,
	datad => \U_BLOCO_DADOS|LessThan5~11_combout\,
	combout => \U_CONTROLE|Selector0~2_combout\);

-- Location: LCFF_X9_Y10_N31
\U_CONTROLE|estado_atual.ESPERA\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \U_CONTROLE|Selector0~3_combout\,
	aclr => \ch_reset~clkctrl_outclk\,
	ena => \U_CONTROLE|Selector0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_CONTROLE|estado_atual.ESPERA~regout\);

-- Location: LCCOMB_X10_Y10_N30
\U_CONTROLE|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_CONTROLE|Selector1~0_combout\ = (\U_FILTRO1|botao_pulso~regout\ & !\U_CONTROLE|estado_atual.ESPERA~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FILTRO1|botao_pulso~regout\,
	datac => \U_CONTROLE|estado_atual.ESPERA~regout\,
	combout => \U_CONTROLE|Selector1~0_combout\);

-- Location: LCFF_X10_Y10_N31
\U_CONTROLE|estado_atual.AVALIA_ESTOQUE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \U_CONTROLE|Selector1~0_combout\,
	aclr => \ch_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_CONTROLE|estado_atual.AVALIA_ESTOQUE~regout\);

-- Location: LCCOMB_X10_Y10_N6
\U_CONTROLE|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_CONTROLE|Selector2~0_combout\ = (!\U_CONTROLE|estado_atual.DEVOLUCAO~regout\ & (!\U_CONTROLE|estado_atual.ENTREGA_PRODUTO~regout\ & (!\U_CONTROLE|Selector4~0_combout\ & \U_CONTROLE|estado_atual.AVALIA_ESTOQUE~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CONTROLE|estado_atual.DEVOLUCAO~regout\,
	datab => \U_CONTROLE|estado_atual.ENTREGA_PRODUTO~regout\,
	datac => \U_CONTROLE|Selector4~0_combout\,
	datad => \U_CONTROLE|estado_atual.AVALIA_ESTOQUE~regout\,
	combout => \U_CONTROLE|Selector2~0_combout\);

-- Location: LCCOMB_X9_Y10_N2
\U_CONTROLE|Selector2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_CONTROLE|Selector2~1_combout\ = (\U_CONTROLE|Selector2~0_combout\ & ((\U_BLOCO_DADOS|Mux9~2_combout\) # ((!\ch_produto~combout\(2) & \U_BLOCO_DADOS|Mux9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BLOCO_DADOS|Mux9~2_combout\,
	datab => \ch_produto~combout\(2),
	datac => \U_BLOCO_DADOS|Mux9~1_combout\,
	datad => \U_CONTROLE|Selector2~0_combout\,
	combout => \U_CONTROLE|Selector2~1_combout\);

-- Location: LCFF_X9_Y10_N3
\U_CONTROLE|estado_atual.RECEBE_MOEDA\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \U_CONTROLE|Selector2~1_combout\,
	aclr => \ch_reset~clkctrl_outclk\,
	ena => \U_CONTROLE|Selector0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_CONTROLE|estado_atual.RECEBE_MOEDA~regout\);

-- Location: LCCOMB_X10_Y10_N4
\U_CONTROLE|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_CONTROLE|Selector4~0_combout\ = (\U_FILTRO2|botao_pulso~regout\ & \U_CONTROLE|estado_atual.RECEBE_MOEDA~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_FILTRO2|botao_pulso~regout\,
	datad => \U_CONTROLE|estado_atual.RECEBE_MOEDA~regout\,
	combout => \U_CONTROLE|Selector4~0_combout\);

-- Location: LCFF_X10_Y10_N5
\U_CONTROLE|estado_atual.DEVOLUCAO\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \U_CONTROLE|Selector4~0_combout\,
	aclr => \ch_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_CONTROLE|estado_atual.DEVOLUCAO~regout\);

-- Location: LCCOMB_X9_Y10_N24
\U_CONTROLE|limpar_soma\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_CONTROLE|limpar_soma~combout\ = (\U_CONTROLE|estado_atual.DEVOLUCAO~regout\) # (!\U_CONTROLE|estado_atual.ESPERA~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_CONTROLE|estado_atual.DEVOLUCAO~regout\,
	datad => \U_CONTROLE|estado_atual.ESPERA~regout\,
	combout => \U_CONTROLE|limpar_soma~combout\);

-- Location: LCFF_X8_Y10_N7
\U_BLOCO_DADOS|soma_atual[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \U_BLOCO_DADOS|soma_atual[3]~16_combout\,
	aclr => \ch_reset~clkctrl_outclk\,
	sclr => \U_CONTROLE|limpar_soma~combout\,
	ena => \U_BLOCO_DADOS|soma_atual[7]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_BLOCO_DADOS|soma_atual\(3));

-- Location: LCCOMB_X8_Y10_N12
\U_BLOCO_DADOS|soma_atual[6]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_BLOCO_DADOS|soma_atual[6]~22_combout\ = ((\U_BLOCO_DADOS|Equal2~0_combout\ $ (\U_BLOCO_DADOS|soma_atual\(6) $ (!\U_BLOCO_DADOS|soma_atual[5]~21\)))) # (GND)
-- \U_BLOCO_DADOS|soma_atual[6]~23\ = CARRY((\U_BLOCO_DADOS|Equal2~0_combout\ & ((\U_BLOCO_DADOS|soma_atual\(6)) # (!\U_BLOCO_DADOS|soma_atual[5]~21\))) # (!\U_BLOCO_DADOS|Equal2~0_combout\ & (\U_BLOCO_DADOS|soma_atual\(6) & 
-- !\U_BLOCO_DADOS|soma_atual[5]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BLOCO_DADOS|Equal2~0_combout\,
	datab => \U_BLOCO_DADOS|soma_atual\(6),
	datad => VCC,
	cin => \U_BLOCO_DADOS|soma_atual[5]~21\,
	combout => \U_BLOCO_DADOS|soma_atual[6]~22_combout\,
	cout => \U_BLOCO_DADOS|soma_atual[6]~23\);

-- Location: LCFF_X8_Y10_N13
\U_BLOCO_DADOS|soma_atual[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \U_BLOCO_DADOS|soma_atual[6]~22_combout\,
	aclr => \ch_reset~clkctrl_outclk\,
	sclr => \U_CONTROLE|limpar_soma~combout\,
	ena => \U_BLOCO_DADOS|soma_atual[7]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_BLOCO_DADOS|soma_atual\(6));

-- Location: LCCOMB_X8_Y10_N14
\U_BLOCO_DADOS|soma_atual[7]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_BLOCO_DADOS|soma_atual[7]~24_combout\ = (\U_BLOCO_DADOS|soma_atual\(7) & (!\U_BLOCO_DADOS|soma_atual[6]~23\)) # (!\U_BLOCO_DADOS|soma_atual\(7) & ((\U_BLOCO_DADOS|soma_atual[6]~23\) # (GND)))
-- \U_BLOCO_DADOS|soma_atual[7]~25\ = CARRY((!\U_BLOCO_DADOS|soma_atual[6]~23\) # (!\U_BLOCO_DADOS|soma_atual\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_BLOCO_DADOS|soma_atual\(7),
	datad => VCC,
	cin => \U_BLOCO_DADOS|soma_atual[6]~23\,
	combout => \U_BLOCO_DADOS|soma_atual[7]~24_combout\,
	cout => \U_BLOCO_DADOS|soma_atual[7]~25\);

-- Location: LCFF_X8_Y10_N15
\U_BLOCO_DADOS|soma_atual[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \U_BLOCO_DADOS|soma_atual[7]~24_combout\,
	aclr => \ch_reset~clkctrl_outclk\,
	sclr => \U_CONTROLE|limpar_soma~combout\,
	ena => \U_BLOCO_DADOS|soma_atual[7]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_BLOCO_DADOS|soma_atual\(7));

-- Location: LCCOMB_X8_Y10_N18
\U_BLOCO_DADOS|soma_atual[9]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_BLOCO_DADOS|soma_atual[9]~28_combout\ = \U_BLOCO_DADOS|soma_atual[8]~27\ $ (\U_BLOCO_DADOS|soma_atual\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U_BLOCO_DADOS|soma_atual\(9),
	cin => \U_BLOCO_DADOS|soma_atual[8]~27\,
	combout => \U_BLOCO_DADOS|soma_atual[9]~28_combout\);

-- Location: LCFF_X8_Y10_N19
\U_BLOCO_DADOS|soma_atual[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \U_BLOCO_DADOS|soma_atual[9]~28_combout\,
	aclr => \ch_reset~clkctrl_outclk\,
	sclr => \U_CONTROLE|limpar_soma~combout\,
	ena => \U_BLOCO_DADOS|soma_atual[7]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_BLOCO_DADOS|soma_atual\(9));

-- Location: LCCOMB_X9_Y10_N16
\U_CONTROLE|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_CONTROLE|Selector3~0_combout\ = (\U_CONTROLE|estado_atual.RECEBE_MOEDA~regout\ & (!\U_FILTRO2|botao_pulso~regout\ & ((\U_BLOCO_DADOS|soma_atual\(9)) # (!\U_BLOCO_DADOS|LessThan5~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CONTROLE|estado_atual.RECEBE_MOEDA~regout\,
	datab => \U_BLOCO_DADOS|soma_atual\(9),
	datac => \U_FILTRO2|botao_pulso~regout\,
	datad => \U_BLOCO_DADOS|LessThan5~11_combout\,
	combout => \U_CONTROLE|Selector3~0_combout\);

-- Location: LCFF_X9_Y10_N17
\U_CONTROLE|estado_atual.ENTREGA_PRODUTO\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50~clkctrl_outclk\,
	datain => \U_CONTROLE|Selector3~0_combout\,
	aclr => \ch_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_CONTROLE|estado_atual.ENTREGA_PRODUTO~regout\);

-- Location: LCCOMB_X7_Y8_N8
\U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ = (\U_BLOCO_DADOS|soma_atual\(7) & ((GND) # (!\U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))) # (!\U_BLOCO_DADOS|soma_atual\(7) & 
-- (\U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ $ (GND)))
-- \U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ = CARRY((\U_BLOCO_DADOS|soma_atual\(7)) # (!\U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_BLOCO_DADOS|soma_atual\(7),
	datad => VCC,
	cin => \U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\,
	combout => \U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	cout => \U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\);

-- Location: LCCOMB_X7_Y8_N10
\U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ = (\U_BLOCO_DADOS|soma_atual\(8) & (!\U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\)) # (!\U_BLOCO_DADOS|soma_atual\(8) & 
-- ((\U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (GND)))
-- \U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ = CARRY((!\U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (!\U_BLOCO_DADOS|soma_atual\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_BLOCO_DADOS|soma_atual\(8),
	datad => VCC,
	cin => \U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\,
	combout => \U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	cout => \U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\);

-- Location: LCCOMB_X7_Y8_N14
\U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ = !\U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\,
	combout => \U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\);

-- Location: LCCOMB_X8_Y9_N0
\U_DISP|Div0|auto_generated|divider|divider|StageOut[54]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div0|auto_generated|divider|divider|StageOut[54]~54_combout\ = (\U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \U_BLOCO_DADOS|soma_atual\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \U_BLOCO_DADOS|soma_atual\(9),
	combout => \U_DISP|Div0|auto_generated|divider|divider|StageOut[54]~54_combout\);

-- Location: LCCOMB_X7_Y9_N6
\U_DISP|Div0|auto_generated|divider|divider|StageOut[53]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div0|auto_generated|divider|divider|StageOut[53]~57_combout\ = (\U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ & !\U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	datac => \U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \U_DISP|Div0|auto_generated|divider|divider|StageOut[53]~57_combout\);

-- Location: LCCOMB_X7_Y9_N18
\U_DISP|Div0|auto_generated|divider|divider|StageOut[52]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div0|auto_generated|divider|divider|StageOut[52]~59_combout\ = (!\U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	combout => \U_DISP|Div0|auto_generated|divider|divider|StageOut[52]~59_combout\);

-- Location: LCCOMB_X8_Y9_N2
\U_DISP|Div0|auto_generated|divider|divider|StageOut[51]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div0|auto_generated|divider|divider|StageOut[51]~60_combout\ = (\U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \U_BLOCO_DADOS|soma_atual\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \U_BLOCO_DADOS|soma_atual\(6),
	combout => \U_DISP|Div0|auto_generated|divider|divider|StageOut[51]~60_combout\);

-- Location: LCCOMB_X7_Y9_N16
\U_DISP|Div0|auto_generated|divider|divider|StageOut[50]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div0|auto_generated|divider|divider|StageOut[50]~62_combout\ = (\U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \U_BLOCO_DADOS|soma_atual\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \U_BLOCO_DADOS|soma_atual\(5),
	combout => \U_DISP|Div0|auto_generated|divider|divider|StageOut[50]~62_combout\);

-- Location: LCCOMB_X7_Y9_N4
\U_DISP|Div0|auto_generated|divider|divider|StageOut[49]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div0|auto_generated|divider|divider|StageOut[49]~65_combout\ = (\U_BLOCO_DADOS|soma_atual\(4) & !\U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BLOCO_DADOS|soma_atual\(4),
	datac => \U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \U_DISP|Div0|auto_generated|divider|divider|StageOut[49]~65_combout\);

-- Location: LCCOMB_X8_Y9_N18
\U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ = (\U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ & (((\U_DISP|Div0|auto_generated|divider|divider|StageOut[50]~63_combout\) # 
-- (\U_DISP|Div0|auto_generated|divider|divider|StageOut[50]~62_combout\)))) # (!\U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ & (!\U_DISP|Div0|auto_generated|divider|divider|StageOut[50]~63_combout\ & 
-- (!\U_DISP|Div0|auto_generated|divider|divider|StageOut[50]~62_combout\)))
-- \U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ = CARRY((!\U_DISP|Div0|auto_generated|divider|divider|StageOut[50]~63_combout\ & (!\U_DISP|Div0|auto_generated|divider|divider|StageOut[50]~62_combout\ & 
-- !\U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Div0|auto_generated|divider|divider|StageOut[50]~63_combout\,
	datab => \U_DISP|Div0|auto_generated|divider|divider|StageOut[50]~62_combout\,
	datad => VCC,
	cin => \U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\,
	combout => \U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	cout => \U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\);

-- Location: LCCOMB_X8_Y9_N22
\U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ = (\U_DISP|Div0|auto_generated|divider|divider|StageOut[52]~58_combout\ & (((!\U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\)))) # 
-- (!\U_DISP|Div0|auto_generated|divider|divider|StageOut[52]~58_combout\ & ((\U_DISP|Div0|auto_generated|divider|divider|StageOut[52]~59_combout\ & (!\U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\)) # 
-- (!\U_DISP|Div0|auto_generated|divider|divider|StageOut[52]~59_combout\ & ((\U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\) # (GND)))))
-- \U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ = CARRY(((!\U_DISP|Div0|auto_generated|divider|divider|StageOut[52]~58_combout\ & !\U_DISP|Div0|auto_generated|divider|divider|StageOut[52]~59_combout\)) # 
-- (!\U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Div0|auto_generated|divider|divider|StageOut[52]~58_combout\,
	datab => \U_DISP|Div0|auto_generated|divider|divider|StageOut[52]~59_combout\,
	datad => VCC,
	cin => \U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\,
	combout => \U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	cout => \U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\);

-- Location: LCCOMB_X8_Y9_N26
\U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\ = CARRY((!\U_DISP|Div0|auto_generated|divider|divider|StageOut[54]~55_combout\ & (!\U_DISP|Div0|auto_generated|divider|divider|StageOut[54]~54_combout\ & 
-- !\U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Div0|auto_generated|divider|divider|StageOut[54]~55_combout\,
	datab => \U_DISP|Div0|auto_generated|divider|divider|StageOut[54]~54_combout\,
	datad => VCC,
	cin => \U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\,
	cout => \U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\);

-- Location: LCCOMB_X8_Y9_N28
\U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ = \U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\,
	combout => \U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\);

-- Location: LCCOMB_X7_Y9_N24
\U_DISP|Div0|auto_generated|divider|divider|StageOut[62]~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div0|auto_generated|divider|divider|StageOut[62]~88_combout\ = (\U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- ((\U_BLOCO_DADOS|soma_atual\(8)))) # (!\U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datab => \U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	datac => \U_BLOCO_DADOS|soma_atual\(8),
	datad => \U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \U_DISP|Div0|auto_generated|divider|divider|StageOut[62]~88_combout\);

-- Location: LCCOMB_X9_Y9_N4
\U_DISP|Div0|auto_generated|divider|divider|StageOut[61]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div0|auto_generated|divider|divider|StageOut[61]~67_combout\ = (\U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ & !\U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	datad => \U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \U_DISP|Div0|auto_generated|divider|divider|StageOut[61]~67_combout\);

-- Location: LCCOMB_X8_Y9_N6
\U_DISP|Div0|auto_generated|divider|divider|StageOut[60]~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div0|auto_generated|divider|divider|StageOut[60]~90_combout\ = (\U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- ((\U_BLOCO_DADOS|soma_atual\(6)))) # (!\U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	datab => \U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \U_BLOCO_DADOS|soma_atual\(6),
	combout => \U_DISP|Div0|auto_generated|divider|divider|StageOut[60]~90_combout\);

-- Location: LCCOMB_X8_Y9_N4
\U_DISP|Div0|auto_generated|divider|divider|StageOut[59]~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div0|auto_generated|divider|divider|StageOut[59]~69_combout\ = (!\U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	combout => \U_DISP|Div0|auto_generated|divider|divider|StageOut[59]~69_combout\);

-- Location: LCCOMB_X9_Y9_N26
\U_DISP|Div0|auto_generated|divider|divider|StageOut[58]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div0|auto_generated|divider|divider|StageOut[58]~70_combout\ = (\U_BLOCO_DADOS|soma_atual\(4) & \U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_BLOCO_DADOS|soma_atual\(4),
	datad => \U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \U_DISP|Div0|auto_generated|divider|divider|StageOut[58]~70_combout\);

-- Location: LCCOMB_X10_Y9_N30
\U_DISP|Div0|auto_generated|divider|divider|StageOut[57]~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div0|auto_generated|divider|divider|StageOut[57]~72_combout\ = (\U_BLOCO_DADOS|soma_atual\(3) & \U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_BLOCO_DADOS|soma_atual\(3),
	datad => \U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \U_DISP|Div0|auto_generated|divider|divider|StageOut[57]~72_combout\);

-- Location: LCCOMB_X9_Y9_N6
\U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\ = (((\U_DISP|Div0|auto_generated|divider|divider|StageOut[57]~75_combout\) # (\U_DISP|Div0|auto_generated|divider|divider|StageOut[57]~72_combout\)))
-- \U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~1\ = CARRY((\U_DISP|Div0|auto_generated|divider|divider|StageOut[57]~75_combout\) # (\U_DISP|Div0|auto_generated|divider|divider|StageOut[57]~72_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Div0|auto_generated|divider|divider|StageOut[57]~75_combout\,
	datab => \U_DISP|Div0|auto_generated|divider|divider|StageOut[57]~72_combout\,
	datad => VCC,
	combout => \U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\,
	cout => \U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~1\);

-- Location: LCCOMB_X9_Y9_N14
\U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\ = (\U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~7\ & (((\U_DISP|Div0|auto_generated|divider|divider|StageOut[61]~89_combout\) # 
-- (\U_DISP|Div0|auto_generated|divider|divider|StageOut[61]~67_combout\)))) # (!\U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~7\ & ((((\U_DISP|Div0|auto_generated|divider|divider|StageOut[61]~89_combout\) # 
-- (\U_DISP|Div0|auto_generated|divider|divider|StageOut[61]~67_combout\)))))
-- \U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~9\ = CARRY((!\U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~7\ & ((\U_DISP|Div0|auto_generated|divider|divider|StageOut[61]~89_combout\) # 
-- (\U_DISP|Div0|auto_generated|divider|divider|StageOut[61]~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Div0|auto_generated|divider|divider|StageOut[61]~89_combout\,
	datab => \U_DISP|Div0|auto_generated|divider|divider|StageOut[61]~67_combout\,
	datad => VCC,
	cin => \U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~7\,
	combout => \U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\,
	cout => \U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~9\);

-- Location: LCCOMB_X9_Y9_N16
\U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~11_cout\ = CARRY((!\U_DISP|Div0|auto_generated|divider|divider|StageOut[62]~66_combout\ & (!\U_DISP|Div0|auto_generated|divider|divider|StageOut[62]~88_combout\ & 
-- !\U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Div0|auto_generated|divider|divider|StageOut[62]~66_combout\,
	datab => \U_DISP|Div0|auto_generated|divider|divider|StageOut[62]~88_combout\,
	datad => VCC,
	cin => \U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~9\,
	cout => \U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~11_cout\);

-- Location: LCCOMB_X9_Y9_N18
\U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ = \U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~11_cout\,
	combout => \U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\);

-- Location: LCCOMB_X9_Y9_N24
\U_DISP|Div0|auto_generated|divider|divider|StageOut[70]~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div0|auto_generated|divider|divider|StageOut[70]~76_combout\ = (\U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\ & !\U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\,
	datad => \U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	combout => \U_DISP|Div0|auto_generated|divider|divider|StageOut[70]~76_combout\);

-- Location: LCCOMB_X9_Y9_N22
\U_DISP|Div0|auto_generated|divider|divider|StageOut[69]~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div0|auto_generated|divider|divider|StageOut[69]~86_combout\ = (\U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & ((\U_DISP|Div0|auto_generated|divider|divider|StageOut[60]~90_combout\) # 
-- ((\U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ & !\U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	datab => \U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \U_DISP|Div0|auto_generated|divider|divider|StageOut[60]~90_combout\,
	datad => \U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	combout => \U_DISP|Div0|auto_generated|divider|divider|StageOut[69]~86_combout\);

-- Location: LCCOMB_X9_Y9_N28
\U_DISP|Div0|auto_generated|divider|divider|StageOut[68]~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div0|auto_generated|divider|divider|StageOut[68]~87_combout\ = (\U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & ((\U_DISP|Div0|auto_generated|divider|divider|StageOut[59]~91_combout\) # 
-- ((\U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ & !\U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Div0|auto_generated|divider|divider|StageOut[59]~91_combout\,
	datab => \U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	datac => \U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	combout => \U_DISP|Div0|auto_generated|divider|divider|StageOut[68]~87_combout\);

-- Location: LCCOMB_X10_Y9_N0
\U_DISP|Div0|auto_generated|divider|divider|StageOut[67]~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div0|auto_generated|divider|divider|StageOut[67]~79_combout\ = (\U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\ & !\U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\,
	datad => \U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	combout => \U_DISP|Div0|auto_generated|divider|divider|StageOut[67]~79_combout\);

-- Location: LCCOMB_X12_Y9_N6
\U_DISP|Div0|auto_generated|divider|divider|StageOut[66]~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div0|auto_generated|divider|divider|StageOut[66]~80_combout\ = (\U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\ & !\U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\,
	datad => \U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	combout => \U_DISP|Div0|auto_generated|divider|divider|StageOut[66]~80_combout\);

-- Location: LCCOMB_X10_Y9_N8
\U_DISP|Div0|auto_generated|divider|divider|StageOut[56]~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div0|auto_generated|divider|divider|StageOut[56]~83_combout\ = (\U_BLOCO_DADOS|soma_atual\(2) & !\U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_BLOCO_DADOS|soma_atual\(2),
	datad => \U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \U_DISP|Div0|auto_generated|divider|divider|StageOut[56]~83_combout\);

-- Location: LCCOMB_X10_Y9_N2
\U_DISP|Div0|auto_generated|divider|divider|StageOut[56]~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div0|auto_generated|divider|divider|StageOut[56]~82_combout\ = (\U_BLOCO_DADOS|soma_atual\(2) & \U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_BLOCO_DADOS|soma_atual\(2),
	datad => \U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \U_DISP|Div0|auto_generated|divider|divider|StageOut[56]~82_combout\);

-- Location: LCCOMB_X10_Y9_N12
\U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~14_combout\ = (\U_DISP|Div0|auto_generated|divider|divider|StageOut[56]~83_combout\) # (\U_DISP|Div0|auto_generated|divider|divider|StageOut[56]~82_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_DISP|Div0|auto_generated|divider|divider|StageOut[56]~83_combout\,
	datad => \U_DISP|Div0|auto_generated|divider|divider|StageOut[56]~82_combout\,
	combout => \U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~14_combout\);

-- Location: LCCOMB_X10_Y9_N28
\U_DISP|Div0|auto_generated|divider|divider|StageOut[65]~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div0|auto_generated|divider|divider|StageOut[65]~84_combout\ = (!\U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & \U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datad => \U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~14_combout\,
	combout => \U_DISP|Div0|auto_generated|divider|divider|StageOut[65]~84_combout\);

-- Location: LCCOMB_X10_Y9_N14
\U_DISP|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~1_cout\ = CARRY((\U_DISP|Div0|auto_generated|divider|divider|StageOut[65]~81_combout\) # (\U_DISP|Div0|auto_generated|divider|divider|StageOut[65]~84_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Div0|auto_generated|divider|divider|StageOut[65]~81_combout\,
	datab => \U_DISP|Div0|auto_generated|divider|divider|StageOut[65]~84_combout\,
	datad => VCC,
	cout => \U_DISP|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~1_cout\);

-- Location: LCCOMB_X10_Y9_N16
\U_DISP|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~3_cout\ = CARRY((!\U_DISP|Div0|auto_generated|divider|divider|StageOut[66]~93_combout\ & (!\U_DISP|Div0|auto_generated|divider|divider|StageOut[66]~80_combout\ & 
-- !\U_DISP|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Div0|auto_generated|divider|divider|StageOut[66]~93_combout\,
	datab => \U_DISP|Div0|auto_generated|divider|divider|StageOut[66]~80_combout\,
	datad => VCC,
	cin => \U_DISP|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~1_cout\,
	cout => \U_DISP|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~3_cout\);

-- Location: LCCOMB_X10_Y9_N18
\U_DISP|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~5_cout\ = CARRY((\U_DISP|Div0|auto_generated|divider|divider|StageOut[67]~92_combout\) # ((\U_DISP|Div0|auto_generated|divider|divider|StageOut[67]~79_combout\) # 
-- (!\U_DISP|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Div0|auto_generated|divider|divider|StageOut[67]~92_combout\,
	datab => \U_DISP|Div0|auto_generated|divider|divider|StageOut[67]~79_combout\,
	datad => VCC,
	cin => \U_DISP|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~3_cout\,
	cout => \U_DISP|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~5_cout\);

-- Location: LCCOMB_X10_Y9_N20
\U_DISP|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~7_cout\ = CARRY(((!\U_DISP|Div0|auto_generated|divider|divider|StageOut[68]~78_combout\ & !\U_DISP|Div0|auto_generated|divider|divider|StageOut[68]~87_combout\)) # 
-- (!\U_DISP|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~5_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Div0|auto_generated|divider|divider|StageOut[68]~78_combout\,
	datab => \U_DISP|Div0|auto_generated|divider|divider|StageOut[68]~87_combout\,
	datad => VCC,
	cin => \U_DISP|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~5_cout\,
	cout => \U_DISP|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~7_cout\);

-- Location: LCCOMB_X10_Y9_N22
\U_DISP|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~9_cout\ = CARRY((!\U_DISP|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~7_cout\ & ((\U_DISP|Div0|auto_generated|divider|divider|StageOut[69]~77_combout\) # 
-- (\U_DISP|Div0|auto_generated|divider|divider|StageOut[69]~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Div0|auto_generated|divider|divider|StageOut[69]~77_combout\,
	datab => \U_DISP|Div0|auto_generated|divider|divider|StageOut[69]~86_combout\,
	datad => VCC,
	cin => \U_DISP|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~7_cout\,
	cout => \U_DISP|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~9_cout\);

-- Location: LCCOMB_X10_Y9_N24
\U_DISP|Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~11_cout\ = CARRY((!\U_DISP|Div0|auto_generated|divider|divider|StageOut[70]~85_combout\ & (!\U_DISP|Div0|auto_generated|divider|divider|StageOut[70]~76_combout\ & 
-- !\U_DISP|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Div0|auto_generated|divider|divider|StageOut[70]~85_combout\,
	datab => \U_DISP|Div0|auto_generated|divider|divider|StageOut[70]~76_combout\,
	datad => VCC,
	cin => \U_DISP|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~9_cout\,
	cout => \U_DISP|Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~11_cout\);

-- Location: LCCOMB_X10_Y9_N26
\U_DISP|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\ = \U_DISP|Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U_DISP|Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~11_cout\,
	combout => \U_DISP|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\);

-- Location: LCCOMB_X7_Y9_N22
\U_DISP|WideOr5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|WideOr5~combout\ = (\U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & (\U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ $ 
-- (((\U_DISP|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\) # (!\U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\))))) # 
-- (!\U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & (((!\U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011110000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datab => \U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \U_DISP|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	combout => \U_DISP|WideOr5~combout\);

-- Location: LCCOMB_X7_Y9_N28
\U_DISP|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|WideOr4~0_combout\ = (\U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (!\U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & 
-- (!\U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\))) # (!\U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ $ 
-- (\U_DISP|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\)) # (!\U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011100100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datab => \U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \U_DISP|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	combout => \U_DISP|WideOr4~0_combout\);

-- Location: LCCOMB_X7_Y9_N10
\U_DISP|hex_centenas[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|hex_centenas\(2) = (\U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (!\U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & 
-- ((\U_DISP|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\) # (!\U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)))) # (!\U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ 
-- & (((!\U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datab => \U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \U_DISP|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	combout => \U_DISP|hex_centenas\(2));

-- Location: LCCOMB_X7_Y9_N12
\U_DISP|WideOr3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|WideOr3~combout\ = (\U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & (\U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ $ 
-- (((\U_DISP|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\) # (!\U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\))))) # 
-- (!\U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & (((!\U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & !\U_DISP|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\)) # 
-- (!\U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011110010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datab => \U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \U_DISP|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	combout => \U_DISP|WideOr3~combout\);

-- Location: LCCOMB_X7_Y9_N14
\U_DISP|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|WideOr2~0_combout\ = (\U_DISP|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\ & ((\U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & 
-- (\U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)) # (!\U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & ((\U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datab => \U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \U_DISP|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	combout => \U_DISP|WideOr2~0_combout\);

-- Location: LCCOMB_X7_Y9_N0
\U_DISP|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|WideOr1~0_combout\ = (\U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (((\U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- !\U_DISP|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\)) # (!\U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\))) # (!\U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- (((!\U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & !\U_DISP|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\)) # (!\U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011111010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datab => \U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \U_DISP|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	combout => \U_DISP|WideOr1~0_combout\);

-- Location: LCCOMB_X7_Y9_N2
\U_DISP|WideOr0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|WideOr0~combout\ = (\U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & (\U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ $ 
-- ((!\U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)))) # (!\U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & 
-- (((!\U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & !\U_DISP|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\)) # (!\U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011110010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datab => \U_DISP|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \U_DISP|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \U_DISP|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	combout => \U_DISP|WideOr0~combout\);

-- Location: LCCOMB_X10_Y8_N0
\U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ = \U_BLOCO_DADOS|soma_atual\(5) $ (VCC)
-- \U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ = CARRY(\U_BLOCO_DADOS|soma_atual\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BLOCO_DADOS|soma_atual\(5),
	datad => VCC,
	combout => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	cout => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\);

-- Location: LCCOMB_X10_Y8_N2
\U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ = (\U_BLOCO_DADOS|soma_atual\(6) & (\U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ & VCC)) # (!\U_BLOCO_DADOS|soma_atual\(6) & 
-- (!\U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))
-- \U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ = CARRY((!\U_BLOCO_DADOS|soma_atual\(6) & !\U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BLOCO_DADOS|soma_atual\(6),
	datad => VCC,
	cin => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\,
	combout => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	cout => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\);

-- Location: LCCOMB_X10_Y8_N4
\U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ = (\U_BLOCO_DADOS|soma_atual\(7) & ((GND) # (!\U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))) # (!\U_BLOCO_DADOS|soma_atual\(7) & 
-- (\U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ $ (GND)))
-- \U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ = CARRY((\U_BLOCO_DADOS|soma_atual\(7)) # (!\U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_BLOCO_DADOS|soma_atual\(7),
	datad => VCC,
	cin => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\,
	combout => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	cout => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\);

-- Location: LCCOMB_X10_Y8_N6
\U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ = (\U_BLOCO_DADOS|soma_atual\(8) & (!\U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\)) # (!\U_BLOCO_DADOS|soma_atual\(8) & 
-- ((\U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (GND)))
-- \U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ = CARRY((!\U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (!\U_BLOCO_DADOS|soma_atual\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_BLOCO_DADOS|soma_atual\(8),
	datad => VCC,
	cin => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\,
	combout => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	cout => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\);

-- Location: LCCOMB_X10_Y8_N8
\U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ = (\U_BLOCO_DADOS|soma_atual\(9) & (\U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ $ (GND))) # (!\U_BLOCO_DADOS|soma_atual\(9) & 
-- (!\U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ & VCC))
-- \U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ = CARRY((\U_BLOCO_DADOS|soma_atual\(9) & !\U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BLOCO_DADOS|soma_atual\(9),
	datad => VCC,
	cin => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\,
	combout => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	cout => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\);

-- Location: LCCOMB_X10_Y8_N10
\U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ = !\U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\,
	combout => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\);

-- Location: LCCOMB_X9_Y8_N30
\U_DISP|Mod0|auto_generated|divider|divider|StageOut[77]~145\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod0|auto_generated|divider|divider|StageOut[77]~145_combout\ = (\U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- ((\U_BLOCO_DADOS|soma_atual\(9)))) # (!\U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	datad => \U_BLOCO_DADOS|soma_atual\(9),
	combout => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[77]~145_combout\);

-- Location: LCCOMB_X10_Y8_N24
\U_DISP|Mod0|auto_generated|divider|divider|StageOut[66]~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod0|auto_generated|divider|divider|StageOut[66]~90_combout\ = (\U_BLOCO_DADOS|soma_atual\(9) & \U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_BLOCO_DADOS|soma_atual\(9),
	datad => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[66]~90_combout\);

-- Location: LCCOMB_X10_Y8_N20
\U_DISP|Mod0|auto_generated|divider|divider|StageOut[65]~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod0|auto_generated|divider|divider|StageOut[65]~92_combout\ = (\U_BLOCO_DADOS|soma_atual\(8) & \U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_BLOCO_DADOS|soma_atual\(8),
	datad => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[65]~92_combout\);

-- Location: LCCOMB_X10_Y8_N12
\U_DISP|Mod0|auto_generated|divider|divider|StageOut[64]~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod0|auto_generated|divider|divider|StageOut[64]~94_combout\ = (\U_BLOCO_DADOS|soma_atual\(7) & \U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_BLOCO_DADOS|soma_atual\(7),
	datad => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[64]~94_combout\);

-- Location: LCCOMB_X10_Y8_N28
\U_DISP|Mod0|auto_generated|divider|divider|StageOut[63]~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod0|auto_generated|divider|divider|StageOut[63]~96_combout\ = (\U_BLOCO_DADOS|soma_atual\(6) & \U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_BLOCO_DADOS|soma_atual\(6),
	datad => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[63]~96_combout\);

-- Location: LCCOMB_X10_Y8_N14
\U_DISP|Mod0|auto_generated|divider|divider|StageOut[62]~99\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod0|auto_generated|divider|divider|StageOut[62]~99_combout\ = (!\U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	combout => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[62]~99_combout\);

-- Location: LCCOMB_X9_Y8_N22
\U_DISP|Mod0|auto_generated|divider|divider|StageOut[61]~101\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod0|auto_generated|divider|divider|StageOut[61]~101_combout\ = (\U_BLOCO_DADOS|soma_atual\(4) & !\U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BLOCO_DADOS|soma_atual\(4),
	datac => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[61]~101_combout\);

-- Location: LCCOMB_X9_Y8_N4
\U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\ = (((\U_DISP|Mod0|auto_generated|divider|divider|StageOut[61]~100_combout\) # (\U_DISP|Mod0|auto_generated|divider|divider|StageOut[61]~101_combout\)))
-- \U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ = CARRY((\U_DISP|Mod0|auto_generated|divider|divider|StageOut[61]~100_combout\) # (\U_DISP|Mod0|auto_generated|divider|divider|StageOut[61]~101_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[61]~100_combout\,
	datab => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[61]~101_combout\,
	datad => VCC,
	combout => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	cout => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\);

-- Location: LCCOMB_X9_Y8_N6
\U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ = (\U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ & (((\U_DISP|Mod0|auto_generated|divider|divider|StageOut[62]~98_combout\) # 
-- (\U_DISP|Mod0|auto_generated|divider|divider|StageOut[62]~99_combout\)))) # (!\U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ & (!\U_DISP|Mod0|auto_generated|divider|divider|StageOut[62]~98_combout\ & 
-- (!\U_DISP|Mod0|auto_generated|divider|divider|StageOut[62]~99_combout\)))
-- \U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ = CARRY((!\U_DISP|Mod0|auto_generated|divider|divider|StageOut[62]~98_combout\ & (!\U_DISP|Mod0|auto_generated|divider|divider|StageOut[62]~99_combout\ & 
-- !\U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[62]~98_combout\,
	datab => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[62]~99_combout\,
	datad => VCC,
	cin => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\,
	combout => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	cout => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\);

-- Location: LCCOMB_X9_Y8_N8
\U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ = (\U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ & ((((\U_DISP|Mod0|auto_generated|divider|divider|StageOut[63]~97_combout\) # 
-- (\U_DISP|Mod0|auto_generated|divider|divider|StageOut[63]~96_combout\))))) # (!\U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ & ((\U_DISP|Mod0|auto_generated|divider|divider|StageOut[63]~97_combout\) # 
-- ((\U_DISP|Mod0|auto_generated|divider|divider|StageOut[63]~96_combout\) # (GND))))
-- \U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ = CARRY((\U_DISP|Mod0|auto_generated|divider|divider|StageOut[63]~97_combout\) # ((\U_DISP|Mod0|auto_generated|divider|divider|StageOut[63]~96_combout\) # 
-- (!\U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[63]~97_combout\,
	datab => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[63]~96_combout\,
	datad => VCC,
	cin => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\,
	combout => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	cout => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\);

-- Location: LCCOMB_X9_Y8_N10
\U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ = (\U_DISP|Mod0|auto_generated|divider|divider|StageOut[64]~95_combout\ & (((!\U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\)))) # 
-- (!\U_DISP|Mod0|auto_generated|divider|divider|StageOut[64]~95_combout\ & ((\U_DISP|Mod0|auto_generated|divider|divider|StageOut[64]~94_combout\ & (!\U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\)) # 
-- (!\U_DISP|Mod0|auto_generated|divider|divider|StageOut[64]~94_combout\ & ((\U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\) # (GND)))))
-- \U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ = CARRY(((!\U_DISP|Mod0|auto_generated|divider|divider|StageOut[64]~95_combout\ & !\U_DISP|Mod0|auto_generated|divider|divider|StageOut[64]~94_combout\)) # 
-- (!\U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[64]~95_combout\,
	datab => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[64]~94_combout\,
	datad => VCC,
	cin => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\,
	combout => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	cout => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\);

-- Location: LCCOMB_X9_Y8_N12
\U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ = (\U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ & (((\U_DISP|Mod0|auto_generated|divider|divider|StageOut[65]~93_combout\) # 
-- (\U_DISP|Mod0|auto_generated|divider|divider|StageOut[65]~92_combout\)))) # (!\U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ & ((((\U_DISP|Mod0|auto_generated|divider|divider|StageOut[65]~93_combout\) # 
-- (\U_DISP|Mod0|auto_generated|divider|divider|StageOut[65]~92_combout\)))))
-- \U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ = CARRY((!\U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ & ((\U_DISP|Mod0|auto_generated|divider|divider|StageOut[65]~93_combout\) # 
-- (\U_DISP|Mod0|auto_generated|divider|divider|StageOut[65]~92_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[65]~93_combout\,
	datab => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[65]~92_combout\,
	datad => VCC,
	cin => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\,
	combout => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	cout => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\);

-- Location: LCCOMB_X9_Y8_N14
\U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\ = (\U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ & (((\U_DISP|Mod0|auto_generated|divider|divider|StageOut[66]~91_combout\) # 
-- (\U_DISP|Mod0|auto_generated|divider|divider|StageOut[66]~90_combout\)))) # (!\U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ & (!\U_DISP|Mod0|auto_generated|divider|divider|StageOut[66]~91_combout\ & 
-- (!\U_DISP|Mod0|auto_generated|divider|divider|StageOut[66]~90_combout\)))
-- \U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\ = CARRY((!\U_DISP|Mod0|auto_generated|divider|divider|StageOut[66]~91_combout\ & (!\U_DISP|Mod0|auto_generated|divider|divider|StageOut[66]~90_combout\ & 
-- !\U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[66]~91_combout\,
	datab => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[66]~90_combout\,
	datad => VCC,
	cin => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\,
	combout => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	cout => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\);

-- Location: LCCOMB_X9_Y8_N16
\U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ = \U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\,
	combout => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\);

-- Location: LCCOMB_X9_Y8_N24
\U_DISP|Mod0|auto_generated|divider|divider|StageOut[76]~146\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod0|auto_generated|divider|divider|StageOut[76]~146_combout\ = (\U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- (\U_BLOCO_DADOS|soma_atual\(8))) # (!\U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BLOCO_DADOS|soma_atual\(8),
	datab => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	combout => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[76]~146_combout\);

-- Location: LCCOMB_X9_Y8_N18
\U_DISP|Mod0|auto_generated|divider|divider|StageOut[75]~147\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod0|auto_generated|divider|divider|StageOut[75]~147_combout\ = (\U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- (\U_BLOCO_DADOS|soma_atual\(7))) # (!\U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \U_BLOCO_DADOS|soma_atual\(7),
	datac => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	combout => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[75]~147_combout\);

-- Location: LCCOMB_X9_Y8_N28
\U_DISP|Mod0|auto_generated|divider|divider|StageOut[74]~148\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod0|auto_generated|divider|divider|StageOut[74]~148_combout\ = (\U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- (\U_BLOCO_DADOS|soma_atual\(6))) # (!\U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \U_BLOCO_DADOS|soma_atual\(6),
	datac => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	combout => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[74]~148_combout\);

-- Location: LCCOMB_X8_Y8_N28
\U_DISP|Mod0|auto_generated|divider|divider|StageOut[73]~106\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod0|auto_generated|divider|divider|StageOut[73]~106_combout\ = (!\U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	combout => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[73]~106_combout\);

-- Location: LCCOMB_X7_Y8_N16
\U_DISP|Mod0|auto_generated|divider|divider|StageOut[72]~107\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod0|auto_generated|divider|divider|StageOut[72]~107_combout\ = (\U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \U_BLOCO_DADOS|soma_atual\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \U_BLOCO_DADOS|soma_atual\(4),
	combout => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[72]~107_combout\);

-- Location: LCCOMB_X7_Y8_N18
\U_DISP|Mod0|auto_generated|divider|divider|StageOut[71]~110\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod0|auto_generated|divider|divider|StageOut[71]~110_combout\ = (!\U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \U_BLOCO_DADOS|soma_atual\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \U_BLOCO_DADOS|soma_atual\(3),
	combout => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[71]~110_combout\);

-- Location: LCCOMB_X8_Y8_N0
\U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\ = (((\U_DISP|Mod0|auto_generated|divider|divider|StageOut[71]~109_combout\) # (\U_DISP|Mod0|auto_generated|divider|divider|StageOut[71]~110_combout\)))
-- \U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~1\ = CARRY((\U_DISP|Mod0|auto_generated|divider|divider|StageOut[71]~109_combout\) # (\U_DISP|Mod0|auto_generated|divider|divider|StageOut[71]~110_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[71]~109_combout\,
	datab => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[71]~110_combout\,
	datad => VCC,
	combout => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\,
	cout => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~1\);

-- Location: LCCOMB_X8_Y8_N2
\U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\ = (\U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~1\ & (((\U_DISP|Mod0|auto_generated|divider|divider|StageOut[72]~108_combout\) # 
-- (\U_DISP|Mod0|auto_generated|divider|divider|StageOut[72]~107_combout\)))) # (!\U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~1\ & (!\U_DISP|Mod0|auto_generated|divider|divider|StageOut[72]~108_combout\ & 
-- (!\U_DISP|Mod0|auto_generated|divider|divider|StageOut[72]~107_combout\)))
-- \U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~3\ = CARRY((!\U_DISP|Mod0|auto_generated|divider|divider|StageOut[72]~108_combout\ & (!\U_DISP|Mod0|auto_generated|divider|divider|StageOut[72]~107_combout\ & 
-- !\U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[72]~108_combout\,
	datab => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[72]~107_combout\,
	datad => VCC,
	cin => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~1\,
	combout => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\,
	cout => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~3\);

-- Location: LCCOMB_X8_Y8_N4
\U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\ = (\U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~3\ & ((((\U_DISP|Mod0|auto_generated|divider|divider|StageOut[73]~149_combout\) # 
-- (\U_DISP|Mod0|auto_generated|divider|divider|StageOut[73]~106_combout\))))) # (!\U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~3\ & ((\U_DISP|Mod0|auto_generated|divider|divider|StageOut[73]~149_combout\) # 
-- ((\U_DISP|Mod0|auto_generated|divider|divider|StageOut[73]~106_combout\) # (GND))))
-- \U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\ = CARRY((\U_DISP|Mod0|auto_generated|divider|divider|StageOut[73]~149_combout\) # ((\U_DISP|Mod0|auto_generated|divider|divider|StageOut[73]~106_combout\) # 
-- (!\U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[73]~149_combout\,
	datab => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[73]~106_combout\,
	datad => VCC,
	cin => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~3\,
	combout => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\,
	cout => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\);

-- Location: LCCOMB_X8_Y8_N6
\U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\ = (\U_DISP|Mod0|auto_generated|divider|divider|StageOut[74]~105_combout\ & (((!\U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\)))) # 
-- (!\U_DISP|Mod0|auto_generated|divider|divider|StageOut[74]~105_combout\ & ((\U_DISP|Mod0|auto_generated|divider|divider|StageOut[74]~148_combout\ & (!\U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\)) # 
-- (!\U_DISP|Mod0|auto_generated|divider|divider|StageOut[74]~148_combout\ & ((\U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\) # (GND)))))
-- \U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~7\ = CARRY(((!\U_DISP|Mod0|auto_generated|divider|divider|StageOut[74]~105_combout\ & !\U_DISP|Mod0|auto_generated|divider|divider|StageOut[74]~148_combout\)) # 
-- (!\U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[74]~105_combout\,
	datab => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[74]~148_combout\,
	datad => VCC,
	cin => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\,
	combout => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\,
	cout => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~7\);

-- Location: LCCOMB_X8_Y8_N10
\U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\ = (\U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~9\ & (((\U_DISP|Mod0|auto_generated|divider|divider|StageOut[76]~103_combout\) # 
-- (\U_DISP|Mod0|auto_generated|divider|divider|StageOut[76]~146_combout\)))) # (!\U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~9\ & (!\U_DISP|Mod0|auto_generated|divider|divider|StageOut[76]~103_combout\ & 
-- (!\U_DISP|Mod0|auto_generated|divider|divider|StageOut[76]~146_combout\)))
-- \U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~11\ = CARRY((!\U_DISP|Mod0|auto_generated|divider|divider|StageOut[76]~103_combout\ & (!\U_DISP|Mod0|auto_generated|divider|divider|StageOut[76]~146_combout\ & 
-- !\U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[76]~103_combout\,
	datab => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[76]~146_combout\,
	datad => VCC,
	cin => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~9\,
	combout => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\,
	cout => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~11\);

-- Location: LCCOMB_X8_Y8_N14
\U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ = !\U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~13\,
	combout => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\);

-- Location: LCCOMB_X8_Y8_N18
\U_DISP|Mod0|auto_generated|divider|divider|StageOut[88]~134\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod0|auto_generated|divider|divider|StageOut[88]~134_combout\ = (\U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & ((\U_DISP|Mod0|auto_generated|divider|divider|StageOut[77]~145_combout\) # 
-- ((!\U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datac => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	datad => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[77]~145_combout\,
	combout => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[88]~134_combout\);

-- Location: LCCOMB_X8_Y7_N30
\U_DISP|Mod0|auto_generated|divider|divider|StageOut[87]~112\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod0|auto_generated|divider|divider|StageOut[87]~112_combout\ = (\U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\ & !\U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\,
	datad => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	combout => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[87]~112_combout\);

-- Location: LCCOMB_X8_Y8_N30
\U_DISP|Mod0|auto_generated|divider|divider|StageOut[86]~136\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod0|auto_generated|divider|divider|StageOut[86]~136_combout\ = (\U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & ((\U_DISP|Mod0|auto_generated|divider|divider|StageOut[75]~147_combout\) # 
-- ((!\U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datac => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	datad => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[75]~147_combout\,
	combout => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[86]~136_combout\);

-- Location: LCCOMB_X9_Y7_N30
\U_DISP|Mod0|auto_generated|divider|divider|StageOut[85]~114\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod0|auto_generated|divider|divider|StageOut[85]~114_combout\ = (!\U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & \U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datad => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\,
	combout => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[85]~114_combout\);

-- Location: LCCOMB_X8_Y8_N22
\U_DISP|Mod0|auto_generated|divider|divider|StageOut[84]~138\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod0|auto_generated|divider|divider|StageOut[84]~138_combout\ = (\U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & ((\U_DISP|Mod0|auto_generated|divider|divider|StageOut[73]~149_combout\) # 
-- ((!\U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[73]~149_combout\,
	datab => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datac => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	combout => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[84]~138_combout\);

-- Location: LCCOMB_X7_Y7_N24
\U_DISP|Mod0|auto_generated|divider|divider|StageOut[83]~116\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod0|auto_generated|divider|divider|StageOut[83]~116_combout\ = (\U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\ & !\U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\,
	datad => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	combout => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[83]~116_combout\);

-- Location: LCCOMB_X7_Y7_N22
\U_DISP|Mod0|auto_generated|divider|divider|StageOut[82]~117\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod0|auto_generated|divider|divider|StageOut[82]~117_combout\ = (\U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\ & !\U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\,
	datad => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	combout => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[82]~117_combout\);

-- Location: LCCOMB_X9_Y7_N8
\U_DISP|Mod0|auto_generated|divider|divider|StageOut[81]~118\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod0|auto_generated|divider|divider|StageOut[81]~118_combout\ = (\U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & \U_BLOCO_DADOS|soma_atual\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datac => \U_BLOCO_DADOS|soma_atual\(2),
	combout => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[81]~118_combout\);

-- Location: LCCOMB_X8_Y7_N4
\U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~0_combout\ = (((\U_DISP|Mod0|auto_generated|divider|divider|StageOut[81]~119_combout\) # (\U_DISP|Mod0|auto_generated|divider|divider|StageOut[81]~118_combout\)))
-- \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~1\ = CARRY((\U_DISP|Mod0|auto_generated|divider|divider|StageOut[81]~119_combout\) # (\U_DISP|Mod0|auto_generated|divider|divider|StageOut[81]~118_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[81]~119_combout\,
	datab => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[81]~118_combout\,
	datad => VCC,
	combout => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~0_combout\,
	cout => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~1\);

-- Location: LCCOMB_X8_Y7_N8
\U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~4_combout\ = (\U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~3\ & ((((\U_DISP|Mod0|auto_generated|divider|divider|StageOut[83]~150_combout\) # 
-- (\U_DISP|Mod0|auto_generated|divider|divider|StageOut[83]~116_combout\))))) # (!\U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~3\ & ((\U_DISP|Mod0|auto_generated|divider|divider|StageOut[83]~150_combout\) # 
-- ((\U_DISP|Mod0|auto_generated|divider|divider|StageOut[83]~116_combout\) # (GND))))
-- \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~5\ = CARRY((\U_DISP|Mod0|auto_generated|divider|divider|StageOut[83]~150_combout\) # ((\U_DISP|Mod0|auto_generated|divider|divider|StageOut[83]~116_combout\) # 
-- (!\U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[83]~150_combout\,
	datab => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[83]~116_combout\,
	datad => VCC,
	cin => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~3\,
	combout => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~4_combout\,
	cout => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~5\);

-- Location: LCCOMB_X8_Y7_N10
\U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~6_combout\ = (\U_DISP|Mod0|auto_generated|divider|divider|StageOut[84]~115_combout\ & (((!\U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~5\)))) # 
-- (!\U_DISP|Mod0|auto_generated|divider|divider|StageOut[84]~115_combout\ & ((\U_DISP|Mod0|auto_generated|divider|divider|StageOut[84]~138_combout\ & (!\U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~5\)) # 
-- (!\U_DISP|Mod0|auto_generated|divider|divider|StageOut[84]~138_combout\ & ((\U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~5\) # (GND)))))
-- \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~7\ = CARRY(((!\U_DISP|Mod0|auto_generated|divider|divider|StageOut[84]~115_combout\ & !\U_DISP|Mod0|auto_generated|divider|divider|StageOut[84]~138_combout\)) # 
-- (!\U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[84]~115_combout\,
	datab => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[84]~138_combout\,
	datad => VCC,
	cin => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~5\,
	combout => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~6_combout\,
	cout => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~7\);

-- Location: LCCOMB_X8_Y7_N12
\U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~8_combout\ = (\U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~7\ & (((\U_DISP|Mod0|auto_generated|divider|divider|StageOut[85]~137_combout\) # 
-- (\U_DISP|Mod0|auto_generated|divider|divider|StageOut[85]~114_combout\)))) # (!\U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~7\ & ((((\U_DISP|Mod0|auto_generated|divider|divider|StageOut[85]~137_combout\) # 
-- (\U_DISP|Mod0|auto_generated|divider|divider|StageOut[85]~114_combout\)))))
-- \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~9\ = CARRY((!\U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~7\ & ((\U_DISP|Mod0|auto_generated|divider|divider|StageOut[85]~137_combout\) # 
-- (\U_DISP|Mod0|auto_generated|divider|divider|StageOut[85]~114_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[85]~137_combout\,
	datab => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[85]~114_combout\,
	datad => VCC,
	cin => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~7\,
	combout => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~8_combout\,
	cout => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~9\);

-- Location: LCCOMB_X8_Y7_N14
\U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~10_combout\ = (\U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~9\ & (((\U_DISP|Mod0|auto_generated|divider|divider|StageOut[86]~113_combout\) # 
-- (\U_DISP|Mod0|auto_generated|divider|divider|StageOut[86]~136_combout\)))) # (!\U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~9\ & (!\U_DISP|Mod0|auto_generated|divider|divider|StageOut[86]~113_combout\ & 
-- (!\U_DISP|Mod0|auto_generated|divider|divider|StageOut[86]~136_combout\)))
-- \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~11\ = CARRY((!\U_DISP|Mod0|auto_generated|divider|divider|StageOut[86]~113_combout\ & (!\U_DISP|Mod0|auto_generated|divider|divider|StageOut[86]~136_combout\ & 
-- !\U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[86]~113_combout\,
	datab => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[86]~136_combout\,
	datad => VCC,
	cin => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~9\,
	combout => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~10_combout\,
	cout => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~11\);

-- Location: LCCOMB_X8_Y7_N16
\U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\ = (\U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~11\ & ((((\U_DISP|Mod0|auto_generated|divider|divider|StageOut[87]~135_combout\) # 
-- (\U_DISP|Mod0|auto_generated|divider|divider|StageOut[87]~112_combout\))))) # (!\U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~11\ & ((\U_DISP|Mod0|auto_generated|divider|divider|StageOut[87]~135_combout\) # 
-- ((\U_DISP|Mod0|auto_generated|divider|divider|StageOut[87]~112_combout\) # (GND))))
-- \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~13\ = CARRY((\U_DISP|Mod0|auto_generated|divider|divider|StageOut[87]~135_combout\) # ((\U_DISP|Mod0|auto_generated|divider|divider|StageOut[87]~112_combout\) # 
-- (!\U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[87]~135_combout\,
	datab => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[87]~112_combout\,
	datad => VCC,
	cin => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~11\,
	combout => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	cout => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~13\);

-- Location: LCCOMB_X8_Y7_N18
\U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\ = (\U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~13\ & (((\U_DISP|Mod0|auto_generated|divider|divider|StageOut[88]~111_combout\) # 
-- (\U_DISP|Mod0|auto_generated|divider|divider|StageOut[88]~134_combout\)))) # (!\U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~13\ & (!\U_DISP|Mod0|auto_generated|divider|divider|StageOut[88]~111_combout\ & 
-- (!\U_DISP|Mod0|auto_generated|divider|divider|StageOut[88]~134_combout\)))
-- \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~15\ = CARRY((!\U_DISP|Mod0|auto_generated|divider|divider|StageOut[88]~111_combout\ & (!\U_DISP|Mod0|auto_generated|divider|divider|StageOut[88]~134_combout\ & 
-- !\U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[88]~111_combout\,
	datab => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[88]~134_combout\,
	datad => VCC,
	cin => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~13\,
	combout => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\,
	cout => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~15\);

-- Location: LCCOMB_X8_Y7_N20
\U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ = \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~15\,
	combout => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\);

-- Location: LCCOMB_X8_Y7_N28
\U_DISP|Mod0|auto_generated|divider|divider|StageOut[99]~139\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod0|auto_generated|divider|divider|StageOut[99]~139_combout\ = (\U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & ((\U_DISP|Mod0|auto_generated|divider|divider|StageOut[88]~134_combout\) # 
-- ((\U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & !\U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datab => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[88]~134_combout\,
	datac => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	datad => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	combout => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[99]~139_combout\);

-- Location: LCCOMB_X8_Y8_N16
\U_DISP|Mod0|auto_generated|divider|divider|StageOut[87]~135\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod0|auto_generated|divider|divider|StageOut[87]~135_combout\ = (\U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & ((\U_DISP|Mod0|auto_generated|divider|divider|StageOut[76]~146_combout\) # 
-- ((!\U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datac => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	datad => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[76]~146_combout\,
	combout => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[87]~135_combout\);

-- Location: LCCOMB_X8_Y7_N26
\U_DISP|Mod0|auto_generated|divider|divider|StageOut[98]~140\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod0|auto_generated|divider|divider|StageOut[98]~140_combout\ = (\U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & ((\U_DISP|Mod0|auto_generated|divider|divider|StageOut[87]~135_combout\) # 
-- ((\U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\ & !\U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	datab => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\,
	datac => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[87]~135_combout\,
	datad => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	combout => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[98]~140_combout\);

-- Location: LCCOMB_X10_Y5_N0
\U_DISP|Mod0|auto_generated|divider|divider|StageOut[97]~122\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod0|auto_generated|divider|divider|StageOut[97]~122_combout\ = (\U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~10_combout\ & !\U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~10_combout\,
	datad => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	combout => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[97]~122_combout\);

-- Location: LCCOMB_X10_Y5_N16
\U_DISP|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = (((\U_DISP|Mod0|auto_generated|divider|divider|StageOut[97]~141_combout\) # (\U_DISP|Mod0|auto_generated|divider|divider|StageOut[97]~122_combout\)))
-- \U_DISP|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY((\U_DISP|Mod0|auto_generated|divider|divider|StageOut[97]~141_combout\) # (\U_DISP|Mod0|auto_generated|divider|divider|StageOut[97]~122_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[97]~141_combout\,
	datab => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[97]~122_combout\,
	datad => VCC,
	combout => \U_DISP|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \U_DISP|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X10_Y5_N22
\U_DISP|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\U_DISP|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U_DISP|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \U_DISP|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X9_Y5_N22
\U_DISP|Div1|auto_generated|divider|divider|StageOut[18]~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div1|auto_generated|divider|divider|StageOut[18]~80_combout\ = (\U_DISP|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\U_DISP|Mod0|auto_generated|divider|divider|StageOut[99]~139_combout\) # 
-- ((\U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\ & !\U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\,
	datab => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[99]~139_combout\,
	datac => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	datad => \U_DISP|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \U_DISP|Div1|auto_generated|divider|divider|StageOut[18]~80_combout\);

-- Location: LCCOMB_X10_Y5_N14
\U_DISP|Div1|auto_generated|divider|divider|StageOut[17]~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div1|auto_generated|divider|divider|StageOut[17]~81_combout\ = (\U_DISP|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\U_DISP|Mod0|auto_generated|divider|divider|StageOut[98]~140_combout\) # 
-- ((!\U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	datab => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[98]~140_combout\,
	datac => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	datad => \U_DISP|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \U_DISP|Div1|auto_generated|divider|divider|StageOut[17]~81_combout\);

-- Location: LCCOMB_X9_Y5_N4
\U_DISP|Div1|auto_generated|divider|divider|StageOut[16]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div1|auto_generated|divider|divider|StageOut[16]~58_combout\ = (\U_DISP|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\U_DISP|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_DISP|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \U_DISP|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \U_DISP|Div1|auto_generated|divider|divider|StageOut[16]~58_combout\);

-- Location: LCCOMB_X9_Y5_N28
\U_DISP|Div1|auto_generated|divider|divider|StageOut[15]~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div1|auto_generated|divider|divider|StageOut[15]~83_combout\ = (\U_DISP|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\U_DISP|Mod0|auto_generated|divider|divider|StageOut[96]~142_combout\) # 
-- ((\U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~8_combout\ & !\U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[96]~142_combout\,
	datab => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~8_combout\,
	datac => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	datad => \U_DISP|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \U_DISP|Div1|auto_generated|divider|divider|StageOut[15]~83_combout\);

-- Location: LCCOMB_X9_Y5_N6
\U_DISP|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\U_DISP|Div1|auto_generated|divider|divider|StageOut[15]~59_combout\) # (\U_DISP|Div1|auto_generated|divider|divider|StageOut[15]~83_combout\)))
-- \U_DISP|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\U_DISP|Div1|auto_generated|divider|divider|StageOut[15]~59_combout\) # (\U_DISP|Div1|auto_generated|divider|divider|StageOut[15]~83_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Div1|auto_generated|divider|divider|StageOut[15]~59_combout\,
	datab => \U_DISP|Div1|auto_generated|divider|divider|StageOut[15]~83_combout\,
	datad => VCC,
	combout => \U_DISP|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \U_DISP|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X9_Y5_N10
\U_DISP|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\U_DISP|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\U_DISP|Div1|auto_generated|divider|divider|StageOut[17]~57_combout\) # 
-- (\U_DISP|Div1|auto_generated|divider|divider|StageOut[17]~81_combout\)))) # (!\U_DISP|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\U_DISP|Div1|auto_generated|divider|divider|StageOut[17]~57_combout\) # 
-- (\U_DISP|Div1|auto_generated|divider|divider|StageOut[17]~81_combout\)))))
-- \U_DISP|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\U_DISP|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\U_DISP|Div1|auto_generated|divider|divider|StageOut[17]~57_combout\) # 
-- (\U_DISP|Div1|auto_generated|divider|divider|StageOut[17]~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Div1|auto_generated|divider|divider|StageOut[17]~57_combout\,
	datab => \U_DISP|Div1|auto_generated|divider|divider|StageOut[17]~81_combout\,
	datad => VCC,
	cin => \U_DISP|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \U_DISP|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \U_DISP|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X9_Y5_N12
\U_DISP|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\U_DISP|Div1|auto_generated|divider|divider|StageOut[18]~56_combout\ & (!\U_DISP|Div1|auto_generated|divider|divider|StageOut[18]~80_combout\ & 
-- !\U_DISP|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Div1|auto_generated|divider|divider|StageOut[18]~56_combout\,
	datab => \U_DISP|Div1|auto_generated|divider|divider|StageOut[18]~80_combout\,
	datad => VCC,
	cin => \U_DISP|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \U_DISP|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X9_Y5_N14
\U_DISP|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \U_DISP|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U_DISP|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \U_DISP|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X9_Y5_N24
\U_DISP|Div1|auto_generated|divider|divider|StageOut[23]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div1|auto_generated|divider|divider|StageOut[23]~60_combout\ = (!\U_DISP|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \U_DISP|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_DISP|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \U_DISP|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \U_DISP|Div1|auto_generated|divider|divider|StageOut[23]~60_combout\);

-- Location: LCCOMB_X9_Y5_N20
\U_DISP|Div1|auto_generated|divider|divider|StageOut[22]~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div1|auto_generated|divider|divider|StageOut[22]~85_combout\ = (\U_DISP|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\U_DISP|Div1|auto_generated|divider|divider|StageOut[16]~82_combout\) # 
-- ((\U_DISP|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\U_DISP|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Div1|auto_generated|divider|divider|StageOut[16]~82_combout\,
	datab => \U_DISP|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \U_DISP|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \U_DISP|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \U_DISP|Div1|auto_generated|divider|divider|StageOut[22]~85_combout\);

-- Location: LCCOMB_X8_Y5_N2
\U_DISP|Div1|auto_generated|divider|divider|StageOut[21]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div1|auto_generated|divider|divider|StageOut[21]~62_combout\ = (!\U_DISP|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \U_DISP|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_DISP|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \U_DISP|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \U_DISP|Div1|auto_generated|divider|divider|StageOut[21]~62_combout\);

-- Location: LCCOMB_X7_Y4_N28
\U_DISP|Div1|auto_generated|divider|divider|StageOut[20]~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div1|auto_generated|divider|divider|StageOut[20]~87_combout\ = (\U_DISP|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\U_DISP|Mod0|auto_generated|divider|divider|StageOut[95]~143_combout\) # 
-- ((\U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~6_combout\ & !\U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[95]~143_combout\,
	datab => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~6_combout\,
	datac => \U_DISP|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	combout => \U_DISP|Div1|auto_generated|divider|divider|StageOut[20]~87_combout\);

-- Location: LCCOMB_X8_Y5_N22
\U_DISP|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\U_DISP|Div1|auto_generated|divider|divider|StageOut[20]~63_combout\) # (\U_DISP|Div1|auto_generated|divider|divider|StageOut[20]~87_combout\)))
-- \U_DISP|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\U_DISP|Div1|auto_generated|divider|divider|StageOut[20]~63_combout\) # (\U_DISP|Div1|auto_generated|divider|divider|StageOut[20]~87_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Div1|auto_generated|divider|divider|StageOut[20]~63_combout\,
	datab => \U_DISP|Div1|auto_generated|divider|divider|StageOut[20]~87_combout\,
	datad => VCC,
	combout => \U_DISP|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \U_DISP|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X8_Y5_N24
\U_DISP|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\U_DISP|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\U_DISP|Div1|auto_generated|divider|divider|StageOut[21]~86_combout\) # 
-- (\U_DISP|Div1|auto_generated|divider|divider|StageOut[21]~62_combout\)))) # (!\U_DISP|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\U_DISP|Div1|auto_generated|divider|divider|StageOut[21]~86_combout\ & 
-- (!\U_DISP|Div1|auto_generated|divider|divider|StageOut[21]~62_combout\)))
-- \U_DISP|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\U_DISP|Div1|auto_generated|divider|divider|StageOut[21]~86_combout\ & (!\U_DISP|Div1|auto_generated|divider|divider|StageOut[21]~62_combout\ & 
-- !\U_DISP|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Div1|auto_generated|divider|divider|StageOut[21]~86_combout\,
	datab => \U_DISP|Div1|auto_generated|divider|divider|StageOut[21]~62_combout\,
	datad => VCC,
	cin => \U_DISP|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \U_DISP|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \U_DISP|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X8_Y5_N26
\U_DISP|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\U_DISP|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\U_DISP|Div1|auto_generated|divider|divider|StageOut[22]~61_combout\) # 
-- (\U_DISP|Div1|auto_generated|divider|divider|StageOut[22]~85_combout\)))) # (!\U_DISP|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\U_DISP|Div1|auto_generated|divider|divider|StageOut[22]~61_combout\) # 
-- (\U_DISP|Div1|auto_generated|divider|divider|StageOut[22]~85_combout\)))))
-- \U_DISP|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\U_DISP|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\U_DISP|Div1|auto_generated|divider|divider|StageOut[22]~61_combout\) # 
-- (\U_DISP|Div1|auto_generated|divider|divider|StageOut[22]~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Div1|auto_generated|divider|divider|StageOut[22]~61_combout\,
	datab => \U_DISP|Div1|auto_generated|divider|divider|StageOut[22]~85_combout\,
	datad => VCC,
	cin => \U_DISP|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \U_DISP|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \U_DISP|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X8_Y5_N28
\U_DISP|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\U_DISP|Div1|auto_generated|divider|divider|StageOut[23]~84_combout\ & (!\U_DISP|Div1|auto_generated|divider|divider|StageOut[23]~60_combout\ & 
-- !\U_DISP|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Div1|auto_generated|divider|divider|StageOut[23]~84_combout\,
	datab => \U_DISP|Div1|auto_generated|divider|divider|StageOut[23]~60_combout\,
	datad => VCC,
	cin => \U_DISP|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \U_DISP|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X8_Y5_N30
\U_DISP|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \U_DISP|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U_DISP|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \U_DISP|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X8_Y5_N18
\U_DISP|Div1|auto_generated|divider|divider|StageOut[27]~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div1|auto_generated|divider|divider|StageOut[27]~89_combout\ = (\U_DISP|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\U_DISP|Div1|auto_generated|divider|divider|StageOut[21]~86_combout\) # 
-- ((!\U_DISP|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \U_DISP|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Div1|auto_generated|divider|divider|StageOut[21]~86_combout\,
	datab => \U_DISP|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \U_DISP|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \U_DISP|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \U_DISP|Div1|auto_generated|divider|divider|StageOut[27]~89_combout\);

-- Location: LCCOMB_X7_Y5_N20
\U_DISP|Div1|auto_generated|divider|divider|StageOut[33]~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div1|auto_generated|divider|divider|StageOut[33]~92_combout\ = (\U_DISP|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\U_DISP|Div1|auto_generated|divider|divider|StageOut[27]~89_combout\) # 
-- ((!\U_DISP|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \U_DISP|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \U_DISP|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \U_DISP|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \U_DISP|Div1|auto_generated|divider|divider|StageOut[27]~89_combout\,
	combout => \U_DISP|Div1|auto_generated|divider|divider|StageOut[33]~92_combout\);

-- Location: LCCOMB_X8_Y5_N14
\U_DISP|Div1|auto_generated|divider|divider|StageOut[28]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div1|auto_generated|divider|divider|StageOut[28]~64_combout\ = (\U_DISP|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\U_DISP|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_DISP|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \U_DISP|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \U_DISP|Div1|auto_generated|divider|divider|StageOut[28]~64_combout\);

-- Location: LCCOMB_X8_Y5_N8
\U_DISP|Div1|auto_generated|divider|divider|StageOut[26]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div1|auto_generated|divider|divider|StageOut[26]~66_combout\ = (\U_DISP|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\U_DISP|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_DISP|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \U_DISP|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \U_DISP|Div1|auto_generated|divider|divider|StageOut[26]~66_combout\);

-- Location: LCCOMB_X7_Y5_N8
\U_DISP|Mod0|auto_generated|divider|divider|StageOut[94]~125\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod0|auto_generated|divider|divider|StageOut[94]~125_combout\ = (!\U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	datad => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~4_combout\,
	combout => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[94]~125_combout\);

-- Location: LCCOMB_X7_Y8_N28
\U_DISP|Mod0|auto_generated|divider|divider|StageOut[83]~150\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod0|auto_generated|divider|divider|StageOut[83]~150_combout\ = (\U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & ((\U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- (\U_BLOCO_DADOS|soma_atual\(4))) # (!\U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BLOCO_DADOS|soma_atual\(4),
	datab => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datac => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	combout => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[83]~150_combout\);

-- Location: LCCOMB_X7_Y7_N8
\U_DISP|Mod0|auto_generated|divider|divider|StageOut[94]~144\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod0|auto_generated|divider|divider|StageOut[94]~144_combout\ = (\U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & ((\U_DISP|Mod0|auto_generated|divider|divider|StageOut[83]~150_combout\) # 
-- ((\U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\ & !\U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\,
	datab => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	datac => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[83]~150_combout\,
	datad => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	combout => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[94]~144_combout\);

-- Location: LCCOMB_X7_Y5_N4
\U_DISP|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\ = (\U_DISP|Mod0|auto_generated|divider|divider|StageOut[94]~125_combout\) # (\U_DISP|Mod0|auto_generated|divider|divider|StageOut[94]~144_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[94]~125_combout\,
	datad => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[94]~144_combout\,
	combout => \U_DISP|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\);

-- Location: LCCOMB_X7_Y5_N2
\U_DISP|Div1|auto_generated|divider|divider|StageOut[25]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div1|auto_generated|divider|divider|StageOut[25]~67_combout\ = (\U_DISP|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\ & !\U_DISP|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_DISP|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\,
	datad => \U_DISP|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \U_DISP|Div1|auto_generated|divider|divider|StageOut[25]~67_combout\);

-- Location: LCCOMB_X7_Y5_N24
\U_DISP|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\U_DISP|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\U_DISP|Div1|auto_generated|divider|divider|StageOut[26]~90_combout\) # 
-- (\U_DISP|Div1|auto_generated|divider|divider|StageOut[26]~66_combout\)))) # (!\U_DISP|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\U_DISP|Div1|auto_generated|divider|divider|StageOut[26]~90_combout\ & 
-- (!\U_DISP|Div1|auto_generated|divider|divider|StageOut[26]~66_combout\)))
-- \U_DISP|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\U_DISP|Div1|auto_generated|divider|divider|StageOut[26]~90_combout\ & (!\U_DISP|Div1|auto_generated|divider|divider|StageOut[26]~66_combout\ & 
-- !\U_DISP|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Div1|auto_generated|divider|divider|StageOut[26]~90_combout\,
	datab => \U_DISP|Div1|auto_generated|divider|divider|StageOut[26]~66_combout\,
	datad => VCC,
	cin => \U_DISP|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \U_DISP|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \U_DISP|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X7_Y5_N28
\U_DISP|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\U_DISP|Div1|auto_generated|divider|divider|StageOut[28]~88_combout\ & (!\U_DISP|Div1|auto_generated|divider|divider|StageOut[28]~64_combout\ & 
-- !\U_DISP|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Div1|auto_generated|divider|divider|StageOut[28]~88_combout\,
	datab => \U_DISP|Div1|auto_generated|divider|divider|StageOut[28]~64_combout\,
	datad => VCC,
	cin => \U_DISP|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \U_DISP|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X7_Y5_N30
\U_DISP|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \U_DISP|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U_DISP|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	combout => \U_DISP|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\);

-- Location: LCCOMB_X7_Y3_N0
\U_DISP|Div1|auto_generated|divider|divider|StageOut[32]~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div1|auto_generated|divider|divider|StageOut[32]~69_combout\ = (!\U_DISP|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \U_DISP|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_DISP|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \U_DISP|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	combout => \U_DISP|Div1|auto_generated|divider|divider|StageOut[32]~69_combout\);

-- Location: LCCOMB_X7_Y5_N12
\U_DISP|Div1|auto_generated|divider|divider|StageOut[31]~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div1|auto_generated|divider|divider|StageOut[31]~94_combout\ = (\U_DISP|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\U_DISP|Div1|auto_generated|divider|divider|StageOut[25]~91_combout\) # 
-- ((\U_DISP|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\ & !\U_DISP|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Div1|auto_generated|divider|divider|StageOut[25]~91_combout\,
	datab => \U_DISP|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \U_DISP|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\,
	datad => \U_DISP|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \U_DISP|Div1|auto_generated|divider|divider|StageOut[31]~94_combout\);

-- Location: LCCOMB_X7_Y7_N28
\U_DISP|Mod0|auto_generated|divider|divider|StageOut[93]~153\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod0|auto_generated|divider|divider|StageOut[93]~153_combout\ = (\U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & ((\U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & 
-- ((\U_BLOCO_DADOS|soma_atual\(3)))) # (!\U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & (\U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\,
	datab => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	datac => \U_BLOCO_DADOS|soma_atual\(3),
	datad => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	combout => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[93]~153_combout\);

-- Location: LCCOMB_X7_Y7_N0
\U_DISP|Mod0|auto_generated|divider|divider|StageOut[93]~126\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod0|auto_generated|divider|divider|StageOut[93]~126_combout\ = (\U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~2_combout\ & !\U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~2_combout\,
	datad => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	combout => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[93]~126_combout\);

-- Location: LCCOMB_X7_Y7_N20
\U_DISP|Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\ = (\U_DISP|Mod0|auto_generated|divider|divider|StageOut[93]~153_combout\) # (\U_DISP|Mod0|auto_generated|divider|divider|StageOut[93]~126_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[93]~153_combout\,
	datad => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[93]~126_combout\,
	combout => \U_DISP|Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\);

-- Location: LCCOMB_X7_Y3_N28
\U_DISP|Div1|auto_generated|divider|divider|StageOut[30]~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div1|auto_generated|divider|divider|StageOut[30]~71_combout\ = (!\U_DISP|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \U_DISP|Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_DISP|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \U_DISP|Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\,
	combout => \U_DISP|Div1|auto_generated|divider|divider|StageOut[30]~71_combout\);

-- Location: LCCOMB_X7_Y3_N4
\U_DISP|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\U_DISP|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (((\U_DISP|Div1|auto_generated|divider|divider|StageOut[31]~70_combout\) # 
-- (\U_DISP|Div1|auto_generated|divider|divider|StageOut[31]~94_combout\)))) # (!\U_DISP|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (!\U_DISP|Div1|auto_generated|divider|divider|StageOut[31]~70_combout\ & 
-- (!\U_DISP|Div1|auto_generated|divider|divider|StageOut[31]~94_combout\)))
-- \U_DISP|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\U_DISP|Div1|auto_generated|divider|divider|StageOut[31]~70_combout\ & (!\U_DISP|Div1|auto_generated|divider|divider|StageOut[31]~94_combout\ & 
-- !\U_DISP|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Div1|auto_generated|divider|divider|StageOut[31]~70_combout\,
	datab => \U_DISP|Div1|auto_generated|divider|divider|StageOut[31]~94_combout\,
	datad => VCC,
	cin => \U_DISP|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \U_DISP|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \U_DISP|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X7_Y3_N8
\U_DISP|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\U_DISP|Div1|auto_generated|divider|divider|StageOut[33]~68_combout\ & (!\U_DISP|Div1|auto_generated|divider|divider|StageOut[33]~92_combout\ & 
-- !\U_DISP|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Div1|auto_generated|divider|divider|StageOut[33]~68_combout\,
	datab => \U_DISP|Div1|auto_generated|divider|divider|StageOut[33]~92_combout\,
	datad => VCC,
	cin => \U_DISP|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	cout => \U_DISP|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X7_Y3_N10
\U_DISP|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = \U_DISP|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U_DISP|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	combout => \U_DISP|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\);

-- Location: LCCOMB_X7_Y3_N18
\U_DISP|Div1|auto_generated|divider|divider|StageOut[38]~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div1|auto_generated|divider|divider|StageOut[38]~72_combout\ = (\U_DISP|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ & !\U_DISP|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datad => \U_DISP|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \U_DISP|Div1|auto_generated|divider|divider|StageOut[38]~72_combout\);

-- Location: LCCOMB_X7_Y3_N16
\U_DISP|Div1|auto_generated|divider|divider|StageOut[37]~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div1|auto_generated|divider|divider|StageOut[37]~73_combout\ = (\U_DISP|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ & !\U_DISP|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_DISP|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datad => \U_DISP|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \U_DISP|Div1|auto_generated|divider|divider|StageOut[37]~73_combout\);

-- Location: LCCOMB_X8_Y3_N30
\U_DISP|Div1|auto_generated|divider|divider|StageOut[36]~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div1|auto_generated|divider|divider|StageOut[36]~74_combout\ = (\U_DISP|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ & !\U_DISP|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datad => \U_DISP|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \U_DISP|Div1|auto_generated|divider|divider|StageOut[36]~74_combout\);

-- Location: LCCOMB_X9_Y7_N24
\U_DISP|Div1|auto_generated|divider|divider|StageOut[35]~103\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div1|auto_generated|divider|divider|StageOut[35]~103_combout\ = (\U_DISP|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & 
-- ((\U_BLOCO_DADOS|soma_atual\(2)))) # (!\U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & (\U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	datab => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~0_combout\,
	datac => \U_BLOCO_DADOS|soma_atual\(2),
	datad => \U_DISP|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \U_DISP|Div1|auto_generated|divider|divider|StageOut[35]~103_combout\);

-- Location: LCCOMB_X8_Y3_N20
\U_DISP|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ = (\U_DISP|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ & (((\U_DISP|Div1|auto_generated|divider|divider|StageOut[36]~98_combout\) # 
-- (\U_DISP|Div1|auto_generated|divider|divider|StageOut[36]~74_combout\)))) # (!\U_DISP|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ & (!\U_DISP|Div1|auto_generated|divider|divider|StageOut[36]~98_combout\ & 
-- (!\U_DISP|Div1|auto_generated|divider|divider|StageOut[36]~74_combout\)))
-- \U_DISP|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ = CARRY((!\U_DISP|Div1|auto_generated|divider|divider|StageOut[36]~98_combout\ & (!\U_DISP|Div1|auto_generated|divider|divider|StageOut[36]~74_combout\ & 
-- !\U_DISP|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Div1|auto_generated|divider|divider|StageOut[36]~98_combout\,
	datab => \U_DISP|Div1|auto_generated|divider|divider|StageOut[36]~74_combout\,
	datad => VCC,
	cin => \U_DISP|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\,
	combout => \U_DISP|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	cout => \U_DISP|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\);

-- Location: LCCOMB_X8_Y3_N22
\U_DISP|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ = (\U_DISP|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & (((\U_DISP|Div1|auto_generated|divider|divider|StageOut[37]~97_combout\) # 
-- (\U_DISP|Div1|auto_generated|divider|divider|StageOut[37]~73_combout\)))) # (!\U_DISP|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & ((((\U_DISP|Div1|auto_generated|divider|divider|StageOut[37]~97_combout\) # 
-- (\U_DISP|Div1|auto_generated|divider|divider|StageOut[37]~73_combout\)))))
-- \U_DISP|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ = CARRY((!\U_DISP|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & ((\U_DISP|Div1|auto_generated|divider|divider|StageOut[37]~97_combout\) # 
-- (\U_DISP|Div1|auto_generated|divider|divider|StageOut[37]~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Div1|auto_generated|divider|divider|StageOut[37]~97_combout\,
	datab => \U_DISP|Div1|auto_generated|divider|divider|StageOut[37]~73_combout\,
	datad => VCC,
	cin => \U_DISP|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\,
	combout => \U_DISP|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	cout => \U_DISP|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\);

-- Location: LCCOMB_X8_Y3_N24
\U_DISP|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\ = CARRY((!\U_DISP|Div1|auto_generated|divider|divider|StageOut[38]~96_combout\ & (!\U_DISP|Div1|auto_generated|divider|divider|StageOut[38]~72_combout\ & 
-- !\U_DISP|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Div1|auto_generated|divider|divider|StageOut[38]~96_combout\,
	datab => \U_DISP|Div1|auto_generated|divider|divider|StageOut[38]~72_combout\,
	datad => VCC,
	cin => \U_DISP|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\,
	cout => \U_DISP|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\);

-- Location: LCCOMB_X8_Y3_N26
\U_DISP|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ = \U_DISP|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U_DISP|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\,
	combout => \U_DISP|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\);

-- Location: LCCOMB_X8_Y3_N28
\U_DISP|Div1|auto_generated|divider|divider|StageOut[43]~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div1|auto_generated|divider|divider|StageOut[43]~76_combout\ = (\U_DISP|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ & !\U_DISP|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_DISP|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	datad => \U_DISP|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \U_DISP|Div1|auto_generated|divider|divider|StageOut[43]~76_combout\);

-- Location: LCCOMB_X8_Y3_N10
\U_DISP|Div1|auto_generated|divider|divider|StageOut[42]~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div1|auto_generated|divider|divider|StageOut[42]~77_combout\ = (\U_DISP|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ & !\U_DISP|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_DISP|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	datad => \U_DISP|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \U_DISP|Div1|auto_generated|divider|divider|StageOut[42]~77_combout\);

-- Location: LCCOMB_X9_Y7_N28
\U_DISP|Mod0|auto_generated|divider|divider|StageOut[92]~127\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod0|auto_generated|divider|divider|StageOut[92]~127_combout\ = (\U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~0_combout\ & !\U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~0_combout\,
	datac => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	combout => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[92]~127_combout\);

-- Location: LCCOMB_X9_Y7_N12
\U_DISP|Mod0|auto_generated|divider|divider|StageOut[92]~152\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod0|auto_generated|divider|divider|StageOut[92]~152_combout\ = (\U_BLOCO_DADOS|soma_atual\(2) & \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_BLOCO_DADOS|soma_atual\(2),
	datac => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	combout => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[92]~152_combout\);

-- Location: LCCOMB_X9_Y7_N20
\U_DISP|Div1|auto_generated|divider|divider|add_sub_7_result_int[0]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div1|auto_generated|divider|divider|add_sub_7_result_int[0]~10_combout\ = (\U_DISP|Mod0|auto_generated|divider|divider|StageOut[92]~127_combout\) # (\U_DISP|Mod0|auto_generated|divider|divider|StageOut[92]~152_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[92]~127_combout\,
	datad => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[92]~152_combout\,
	combout => \U_DISP|Div1|auto_generated|divider|divider|add_sub_7_result_int[0]~10_combout\);

-- Location: LCCOMB_X8_Y3_N14
\U_DISP|Div1|auto_generated|divider|divider|StageOut[41]~101\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div1|auto_generated|divider|divider|StageOut[41]~101_combout\ = (\U_DISP|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & ((\U_DISP|Div1|auto_generated|divider|divider|StageOut[35]~103_combout\) # 
-- ((!\U_DISP|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & \U_DISP|Div1|auto_generated|divider|divider|add_sub_7_result_int[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datab => \U_DISP|Div1|auto_generated|divider|divider|StageOut[35]~103_combout\,
	datac => \U_DISP|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datad => \U_DISP|Div1|auto_generated|divider|divider|add_sub_7_result_int[0]~10_combout\,
	combout => \U_DISP|Div1|auto_generated|divider|divider|StageOut[41]~101_combout\);

-- Location: LCCOMB_X7_Y4_N4
\U_DISP|Mod0|auto_generated|divider|divider|StageOut[80]~130\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod0|auto_generated|divider|divider|StageOut[80]~130_combout\ = (\U_BLOCO_DADOS|soma_atual\(1) & !\U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BLOCO_DADOS|soma_atual\(1),
	datac => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	combout => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[80]~130_combout\);

-- Location: LCCOMB_X7_Y4_N30
\U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~18_combout\ = (\U_DISP|Mod0|auto_generated|divider|divider|StageOut[80]~129_combout\) # (\U_DISP|Mod0|auto_generated|divider|divider|StageOut[80]~130_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[80]~129_combout\,
	datac => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[80]~130_combout\,
	combout => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~18_combout\);

-- Location: LCCOMB_X7_Y4_N22
\U_DISP|Div1|auto_generated|divider|divider|StageOut[40]~102\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div1|auto_generated|divider|divider|StageOut[40]~102_combout\ = (\U_DISP|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & ((\U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & 
-- (\U_BLOCO_DADOS|soma_atual\(1))) # (!\U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & ((\U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BLOCO_DADOS|soma_atual\(1),
	datab => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~18_combout\,
	datac => \U_DISP|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datad => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	combout => \U_DISP|Div1|auto_generated|divider|divider|StageOut[40]~102_combout\);

-- Location: LCCOMB_X8_Y3_N0
\U_DISP|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1_cout\ = CARRY((\U_DISP|Div1|auto_generated|divider|divider|StageOut[40]~79_combout\) # (\U_DISP|Div1|auto_generated|divider|divider|StageOut[40]~102_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Div1|auto_generated|divider|divider|StageOut[40]~79_combout\,
	datab => \U_DISP|Div1|auto_generated|divider|divider|StageOut[40]~102_combout\,
	datad => VCC,
	cout => \U_DISP|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1_cout\);

-- Location: LCCOMB_X8_Y3_N2
\U_DISP|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3_cout\ = CARRY((!\U_DISP|Div1|auto_generated|divider|divider|StageOut[41]~78_combout\ & (!\U_DISP|Div1|auto_generated|divider|divider|StageOut[41]~101_combout\ & 
-- !\U_DISP|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Div1|auto_generated|divider|divider|StageOut[41]~78_combout\,
	datab => \U_DISP|Div1|auto_generated|divider|divider|StageOut[41]~101_combout\,
	datad => VCC,
	cin => \U_DISP|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1_cout\,
	cout => \U_DISP|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3_cout\);

-- Location: LCCOMB_X8_Y3_N4
\U_DISP|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~5_cout\ = CARRY((!\U_DISP|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3_cout\ & ((\U_DISP|Div1|auto_generated|divider|divider|StageOut[42]~100_combout\) # 
-- (\U_DISP|Div1|auto_generated|divider|divider|StageOut[42]~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Div1|auto_generated|divider|divider|StageOut[42]~100_combout\,
	datab => \U_DISP|Div1|auto_generated|divider|divider|StageOut[42]~77_combout\,
	datad => VCC,
	cin => \U_DISP|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3_cout\,
	cout => \U_DISP|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~5_cout\);

-- Location: LCCOMB_X8_Y3_N6
\U_DISP|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\ = CARRY((!\U_DISP|Div1|auto_generated|divider|divider|StageOut[43]~99_combout\ & (!\U_DISP|Div1|auto_generated|divider|divider|StageOut[43]~76_combout\ & 
-- !\U_DISP|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Div1|auto_generated|divider|divider|StageOut[43]~99_combout\,
	datab => \U_DISP|Div1|auto_generated|divider|divider|StageOut[43]~76_combout\,
	datad => VCC,
	cin => \U_DISP|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~5_cout\,
	cout => \U_DISP|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\);

-- Location: LCCOMB_X8_Y3_N8
\U_DISP|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ = \U_DISP|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U_DISP|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\,
	combout => \U_DISP|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\);

-- Location: LCCOMB_X6_Y4_N28
\U_DISP|WideOr11~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|WideOr11~4_combout\ = (\U_DISP|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & (\U_DISP|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ $ 
-- (((\U_DISP|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\) # (!\U_DISP|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))))) # (!\U_DISP|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & 
-- (((!\U_DISP|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datab => \U_DISP|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datac => \U_DISP|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \U_DISP|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \U_DISP|WideOr11~4_combout\);

-- Location: LCCOMB_X6_Y4_N22
\U_DISP|WideOr11\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|WideOr11~combout\ = (((\U_DISP|WideOr11~4_combout\) # (!\U_DISP|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)) # (!\U_DISP|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)) # 
-- (!\U_DISP|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \U_DISP|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \U_DISP|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \U_DISP|WideOr11~4_combout\,
	combout => \U_DISP|WideOr11~combout\);

-- Location: LCCOMB_X6_Y4_N26
\U_DISP|Equal18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Equal18~0_combout\ = (\U_DISP|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\U_DISP|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- \U_DISP|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \U_DISP|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \U_DISP|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \U_DISP|Equal18~0_combout\);

-- Location: LCCOMB_X6_Y4_N14
\U_DISP|WideNor1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|WideNor1~0_combout\ = (\U_DISP|Equal18~0_combout\ & ((\U_DISP|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\) # ((\U_DISP|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- \U_DISP|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datab => \U_DISP|Equal18~0_combout\,
	datac => \U_DISP|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \U_DISP|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \U_DISP|WideNor1~0_combout\);

-- Location: LCCOMB_X6_Y4_N8
\U_DISP|WideOr10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|WideOr10~0_combout\ = (\U_DISP|Equal10~0_combout\ & (!\U_DISP|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (\U_DISP|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ $ 
-- (\U_DISP|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Equal10~0_combout\,
	datab => \U_DISP|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datac => \U_DISP|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \U_DISP|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \U_DISP|WideOr10~0_combout\);

-- Location: LCCOMB_X6_Y4_N16
\U_DISP|WideOr10\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|WideOr10~combout\ = (\U_DISP|WideOr10~0_combout\) # (!\U_DISP|WideNor1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_DISP|WideNor1~0_combout\,
	datac => \U_DISP|WideOr10~0_combout\,
	combout => \U_DISP|WideOr10~combout\);

-- Location: LCCOMB_X6_Y4_N20
\U_DISP|Equal10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Equal10~0_combout\ = (\U_DISP|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\U_DISP|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (\U_DISP|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \U_DISP|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \U_DISP|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \U_DISP|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \U_DISP|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \U_DISP|Equal10~0_combout\);

-- Location: LCCOMB_X6_Y4_N12
\U_DISP|Equal10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Equal10~1_combout\ = (\U_DISP|Equal10~0_combout\ & \U_DISP|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_DISP|Equal10~0_combout\,
	datad => \U_DISP|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \U_DISP|Equal10~1_combout\);

-- Location: LCCOMB_X6_Y4_N2
\U_DISP|hex_dezenas[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|hex_dezenas\(2) = ((\U_DISP|Equal10~1_combout\ & (\U_DISP|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & !\U_DISP|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\))) # (!\U_DISP|WideNor1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Equal10~1_combout\,
	datab => \U_DISP|WideNor1~0_combout\,
	datac => \U_DISP|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \U_DISP|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \U_DISP|hex_dezenas\(2));

-- Location: LCCOMB_X6_Y3_N0
\U_DISP|WideOr9~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|WideOr9~4_combout\ = (\U_DISP|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & (\U_DISP|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ $ 
-- (((\U_DISP|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\) # (!\U_DISP|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))))) # (!\U_DISP|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & 
-- (((!\U_DISP|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & !\U_DISP|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)) # (!\U_DISP|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100110110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datab => \U_DISP|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \U_DISP|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datad => \U_DISP|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \U_DISP|WideOr9~4_combout\);

-- Location: LCCOMB_X6_Y3_N10
\U_DISP|WideOr9\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|WideOr9~combout\ = ((\U_DISP|WideOr9~4_combout\) # ((!\U_DISP|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\) # (!\U_DISP|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))) # 
-- (!\U_DISP|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \U_DISP|WideOr9~4_combout\,
	datac => \U_DISP|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \U_DISP|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \U_DISP|WideOr9~combout\);

-- Location: LCCOMB_X6_Y4_N0
\U_DISP|Equal18~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Equal18~1_combout\ = (\U_DISP|Equal10~2_combout\ & (\U_DISP|Equal18~0_combout\ & (!\U_DISP|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \U_DISP|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Equal10~2_combout\,
	datab => \U_DISP|Equal18~0_combout\,
	datac => \U_DISP|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \U_DISP|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \U_DISP|Equal18~1_combout\);

-- Location: LCCOMB_X6_Y4_N30
\U_DISP|WideOr8\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|WideOr8~combout\ = (\U_DISP|Equal18~1_combout\) # ((\U_DISP|Equal10~1_combout\ & ((\U_DISP|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\) # 
-- (!\U_DISP|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Equal10~1_combout\,
	datab => \U_DISP|Equal18~1_combout\,
	datac => \U_DISP|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \U_DISP|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \U_DISP|WideOr8~combout\);

-- Location: LCCOMB_X6_Y4_N18
\U_DISP|WideOr7~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|WideOr7~4_combout\ = (\U_DISP|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (((\U_DISP|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- !\U_DISP|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\)) # (!\U_DISP|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\))) # (!\U_DISP|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- (((!\U_DISP|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & !\U_DISP|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\)) # (!\U_DISP|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011110110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datab => \U_DISP|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datac => \U_DISP|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \U_DISP|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \U_DISP|WideOr7~4_combout\);

-- Location: LCCOMB_X7_Y4_N18
\U_DISP|WideOr7~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|WideOr7~9_combout\ = ((\U_DISP|WideOr7~4_combout\) # ((!\U_DISP|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\) # (!\U_DISP|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))) # 
-- (!\U_DISP|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \U_DISP|WideOr7~4_combout\,
	datac => \U_DISP|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \U_DISP|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \U_DISP|WideOr7~9_combout\);

-- Location: LCCOMB_X6_Y4_N24
\U_DISP|WideOr6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|WideOr6~4_combout\ = (\U_DISP|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (\U_DISP|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ $ 
-- ((!\U_DISP|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)))) # (!\U_DISP|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (((!\U_DISP|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & 
-- !\U_DISP|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\)) # (!\U_DISP|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011110010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datab => \U_DISP|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datac => \U_DISP|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \U_DISP|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \U_DISP|WideOr6~4_combout\);

-- Location: LCCOMB_X7_Y4_N0
\U_DISP|WideOr6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|WideOr6~combout\ = ((\U_DISP|WideOr6~4_combout\) # ((!\U_DISP|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\) # (!\U_DISP|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))) # 
-- (!\U_DISP|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \U_DISP|WideOr6~4_combout\,
	datac => \U_DISP|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \U_DISP|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \U_DISP|WideOr6~combout\);

-- Location: LCCOMB_X6_Y6_N22
\U_DISP|Mod0|auto_generated|divider|divider|StageOut[90]~133\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod0|auto_generated|divider|divider|StageOut[90]~133_combout\ = (!\U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & \U_BLOCO_DADOS|soma_atual\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	datac => \U_BLOCO_DADOS|soma_atual\(0),
	combout => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[90]~133_combout\);

-- Location: LCCOMB_X6_Y6_N20
\U_DISP|Mod0|auto_generated|divider|divider|StageOut[90]~132\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod0|auto_generated|divider|divider|StageOut[90]~132_combout\ = (\U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & \U_BLOCO_DADOS|soma_atual\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	datac => \U_BLOCO_DADOS|soma_atual\(0),
	combout => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[90]~132_combout\);

-- Location: LCCOMB_X6_Y6_N0
\U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[0]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[0]~20_combout\ = (\U_DISP|Mod0|auto_generated|divider|divider|StageOut[90]~133_combout\) # (\U_DISP|Mod0|auto_generated|divider|divider|StageOut[90]~132_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[90]~133_combout\,
	datac => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[90]~132_combout\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[0]~20_combout\);

-- Location: LCCOMB_X10_Y5_N24
\U_DISP|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = (((\U_DISP|Mod0|auto_generated|divider|divider|StageOut[97]~141_combout\) # (\U_DISP|Mod0|auto_generated|divider|divider|StageOut[97]~122_combout\)))
-- \U_DISP|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY((\U_DISP|Mod0|auto_generated|divider|divider|StageOut[97]~141_combout\) # (\U_DISP|Mod0|auto_generated|divider|divider|StageOut[97]~122_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[97]~141_combout\,
	datab => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[97]~122_combout\,
	datad => VCC,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X10_Y5_N26
\U_DISP|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\U_DISP|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & (((\U_DISP|Mod0|auto_generated|divider|divider|StageOut[98]~121_combout\) # 
-- (\U_DISP|Mod0|auto_generated|divider|divider|StageOut[98]~140_combout\)))) # (!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & (!\U_DISP|Mod0|auto_generated|divider|divider|StageOut[98]~121_combout\ & 
-- (!\U_DISP|Mod0|auto_generated|divider|divider|StageOut[98]~140_combout\)))
-- \U_DISP|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\U_DISP|Mod0|auto_generated|divider|divider|StageOut[98]~121_combout\ & (!\U_DISP|Mod0|auto_generated|divider|divider|StageOut[98]~140_combout\ & 
-- !\U_DISP|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[98]~121_combout\,
	datab => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[98]~140_combout\,
	datad => VCC,
	cin => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X10_Y5_N28
\U_DISP|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\U_DISP|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & (((\U_DISP|Mod0|auto_generated|divider|divider|StageOut[99]~120_combout\) # 
-- (\U_DISP|Mod0|auto_generated|divider|divider|StageOut[99]~139_combout\)))) # (!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & ((((\U_DISP|Mod0|auto_generated|divider|divider|StageOut[99]~120_combout\) # 
-- (\U_DISP|Mod0|auto_generated|divider|divider|StageOut[99]~139_combout\)))))
-- \U_DISP|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & ((\U_DISP|Mod0|auto_generated|divider|divider|StageOut[99]~120_combout\) # 
-- (\U_DISP|Mod0|auto_generated|divider|divider|StageOut[99]~139_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[99]~120_combout\,
	datab => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[99]~139_combout\,
	datad => VCC,
	cin => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X10_Y5_N30
\U_DISP|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\U_DISP|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X10_Y5_N10
\U_DISP|Mod1|auto_generated|divider|divider|StageOut[33]~138\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|StageOut[33]~138_combout\ = (\U_DISP|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\U_DISP|Mod0|auto_generated|divider|divider|StageOut[99]~139_combout\) # 
-- ((!\U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	datab => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[99]~139_combout\,
	datac => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\,
	datad => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[33]~138_combout\);

-- Location: LCCOMB_X10_Y5_N8
\U_DISP|Mod1|auto_generated|divider|divider|StageOut[32]~139\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|StageOut[32]~139_combout\ = (\U_DISP|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\U_DISP|Mod0|auto_generated|divider|divider|StageOut[98]~140_combout\) # 
-- ((!\U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	datab => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[98]~140_combout\,
	datac => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	datad => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[32]~139_combout\);

-- Location: LCCOMB_X10_Y4_N22
\U_DISP|Mod1|auto_generated|divider|divider|StageOut[31]~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|StageOut[31]~98_combout\ = (!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \U_DISP|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[31]~98_combout\);

-- Location: LCCOMB_X8_Y8_N24
\U_DISP|Mod0|auto_generated|divider|divider|StageOut[85]~137\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod0|auto_generated|divider|divider|StageOut[85]~137_combout\ = (\U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & ((\U_DISP|Mod0|auto_generated|divider|divider|StageOut[74]~148_combout\) # 
-- ((!\U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datac => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	datad => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[74]~148_combout\,
	combout => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[85]~137_combout\);

-- Location: LCCOMB_X9_Y7_N4
\U_DISP|Mod0|auto_generated|divider|divider|StageOut[96]~142\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod0|auto_generated|divider|divider|StageOut[96]~142_combout\ = (\U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & ((\U_DISP|Mod0|auto_generated|divider|divider|StageOut[85]~137_combout\) # 
-- ((\U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\ & !\U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	datab => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\,
	datac => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datad => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[85]~137_combout\,
	combout => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[96]~142_combout\);

-- Location: LCCOMB_X10_Y4_N26
\U_DISP|Mod1|auto_generated|divider|divider|StageOut[30]~141\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|StageOut[30]~141_combout\ = (\U_DISP|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\U_DISP|Mod0|auto_generated|divider|divider|StageOut[96]~142_combout\) # 
-- ((!\U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	datab => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~8_combout\,
	datac => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[96]~142_combout\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[30]~141_combout\);

-- Location: LCCOMB_X10_Y4_N12
\U_DISP|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[30]~142_combout\) # (\U_DISP|Mod1|auto_generated|divider|divider|StageOut[30]~141_combout\)))
-- \U_DISP|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[30]~142_combout\) # (\U_DISP|Mod1|auto_generated|divider|divider|StageOut[30]~141_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[30]~142_combout\,
	datab => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[30]~141_combout\,
	datad => VCC,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X10_Y4_N14
\U_DISP|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\U_DISP|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[31]~140_combout\) # 
-- (\U_DISP|Mod1|auto_generated|divider|divider|StageOut[31]~98_combout\)))) # (!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\U_DISP|Mod1|auto_generated|divider|divider|StageOut[31]~140_combout\ & 
-- (!\U_DISP|Mod1|auto_generated|divider|divider|StageOut[31]~98_combout\)))
-- \U_DISP|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\U_DISP|Mod1|auto_generated|divider|divider|StageOut[31]~140_combout\ & (!\U_DISP|Mod1|auto_generated|divider|divider|StageOut[31]~98_combout\ & 
-- !\U_DISP|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[31]~140_combout\,
	datab => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[31]~98_combout\,
	datad => VCC,
	cin => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X10_Y4_N16
\U_DISP|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\U_DISP|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[32]~97_combout\) # 
-- (\U_DISP|Mod1|auto_generated|divider|divider|StageOut[32]~139_combout\)))) # (!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[32]~97_combout\) # 
-- (\U_DISP|Mod1|auto_generated|divider|divider|StageOut[32]~139_combout\)))))
-- \U_DISP|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[32]~97_combout\) # 
-- (\U_DISP|Mod1|auto_generated|divider|divider|StageOut[32]~139_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[32]~97_combout\,
	datab => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[32]~139_combout\,
	datad => VCC,
	cin => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X10_Y4_N18
\U_DISP|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ = (\U_DISP|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[33]~96_combout\) # 
-- (\U_DISP|Mod1|auto_generated|divider|divider|StageOut[33]~138_combout\)))) # (!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (!\U_DISP|Mod1|auto_generated|divider|divider|StageOut[33]~96_combout\ & 
-- (!\U_DISP|Mod1|auto_generated|divider|divider|StageOut[33]~138_combout\)))
-- \U_DISP|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ = CARRY((!\U_DISP|Mod1|auto_generated|divider|divider|StageOut[33]~96_combout\ & (!\U_DISP|Mod1|auto_generated|divider|divider|StageOut[33]~138_combout\ & 
-- !\U_DISP|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[33]~96_combout\,
	datab => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[33]~138_combout\,
	datad => VCC,
	cin => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	cout => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\);

-- Location: LCCOMB_X10_Y4_N20
\U_DISP|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \U_DISP|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X10_Y4_N8
\U_DISP|Mod1|auto_generated|divider|divider|StageOut[44]~143\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|StageOut[44]~143_combout\ = (\U_DISP|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[33]~138_combout\) # 
-- ((\U_DISP|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\U_DISP|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datac => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[33]~138_combout\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[44]~143_combout\);

-- Location: LCCOMB_X9_Y4_N30
\U_DISP|Mod1|auto_generated|divider|divider|StageOut[55]~148\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|StageOut[55]~148_combout\ = (\U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[44]~143_combout\) # 
-- ((!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \U_DISP|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[44]~143_combout\,
	datad => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[55]~148_combout\);

-- Location: LCCOMB_X10_Y4_N30
\U_DISP|Mod1|auto_generated|divider|divider|StageOut[43]~144\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|StageOut[43]~144_combout\ = (\U_DISP|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[32]~139_combout\) # 
-- ((\U_DISP|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\U_DISP|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datac => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[32]~139_combout\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[43]~144_combout\);

-- Location: LCCOMB_X9_Y4_N12
\U_DISP|Mod1|auto_generated|divider|divider|StageOut[54]~149\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|StageOut[54]~149_combout\ = (\U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[43]~144_combout\) # 
-- ((!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \U_DISP|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[43]~144_combout\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[54]~149_combout\);

-- Location: LCCOMB_X8_Y7_N0
\U_DISP|Mod0|auto_generated|divider|divider|StageOut[97]~141\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod0|auto_generated|divider|divider|StageOut[97]~141_combout\ = (\U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & ((\U_DISP|Mod0|auto_generated|divider|divider|StageOut[86]~136_combout\) # 
-- ((\U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\ & !\U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\,
	datab => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[86]~136_combout\,
	datac => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	datad => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	combout => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[97]~141_combout\);

-- Location: LCCOMB_X10_Y5_N2
\U_DISP|Mod1|auto_generated|divider|divider|StageOut[31]~140\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|StageOut[31]~140_combout\ = (\U_DISP|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\U_DISP|Mod0|auto_generated|divider|divider|StageOut[97]~141_combout\) # 
-- ((!\U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	datab => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~10_combout\,
	datac => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[97]~141_combout\,
	datad => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[31]~140_combout\);

-- Location: LCCOMB_X10_Y4_N4
\U_DISP|Mod1|auto_generated|divider|divider|StageOut[42]~145\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|StageOut[42]~145_combout\ = (\U_DISP|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[31]~140_combout\) # 
-- ((\U_DISP|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\U_DISP|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datac => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[31]~140_combout\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[42]~145_combout\);

-- Location: LCCOMB_X9_Y4_N22
\U_DISP|Mod1|auto_generated|divider|divider|StageOut[53]~150\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|StageOut[53]~150_combout\ = (\U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[42]~145_combout\) # 
-- ((!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \U_DISP|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[42]~145_combout\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[53]~150_combout\);

-- Location: LCCOMB_X10_Y4_N6
\U_DISP|Mod1|auto_generated|divider|divider|StageOut[30]~142\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|StageOut[30]~142_combout\ = (!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\U_DISP|Mod0|auto_generated|divider|divider|StageOut[96]~142_combout\) # 
-- ((!\U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	datab => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~8_combout\,
	datac => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[96]~142_combout\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[30]~142_combout\);

-- Location: LCCOMB_X10_Y4_N28
\U_DISP|Mod1|auto_generated|divider|divider|StageOut[41]~102\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|StageOut[41]~102_combout\ = (\U_DISP|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[30]~141_combout\) # 
-- (\U_DISP|Mod1|auto_generated|divider|divider|StageOut[30]~142_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[30]~141_combout\,
	datac => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[30]~142_combout\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[41]~102_combout\);

-- Location: LCCOMB_X9_Y4_N24
\U_DISP|Mod1|auto_generated|divider|divider|StageOut[52]~151\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|StageOut[52]~151_combout\ = (\U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[41]~102_combout\) # 
-- ((!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \U_DISP|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[41]~102_combout\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[52]~151_combout\);

-- Location: LCCOMB_X7_Y7_N10
\U_DISP|Mod0|auto_generated|divider|divider|StageOut[95]~143\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod0|auto_generated|divider|divider|StageOut[95]~143_combout\ = (\U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & ((\U_DISP|Mod0|auto_generated|divider|divider|StageOut[84]~138_combout\) # 
-- ((\U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\ & !\U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[84]~138_combout\,
	datab => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	datac => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\,
	datad => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	combout => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[95]~143_combout\);

-- Location: LCCOMB_X7_Y4_N8
\U_DISP|Mod1|auto_generated|divider|divider|StageOut[40]~147\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|StageOut[40]~147_combout\ = (!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\U_DISP|Mod0|auto_generated|divider|divider|StageOut[95]~143_combout\) # 
-- ((\U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~6_combout\ & !\U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[95]~143_combout\,
	datac => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~6_combout\,
	datad => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[40]~147_combout\);

-- Location: LCCOMB_X9_Y4_N28
\U_DISP|Mod1|auto_generated|divider|divider|StageOut[42]~101\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|StageOut[42]~101_combout\ = (\U_DISP|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\U_DISP|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[42]~101_combout\);

-- Location: LCCOMB_X9_Y4_N0
\U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[40]~146_combout\) # (\U_DISP|Mod1|auto_generated|divider|divider|StageOut[40]~147_combout\)))
-- \U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[40]~146_combout\) # (\U_DISP|Mod1|auto_generated|divider|divider|StageOut[40]~147_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[40]~146_combout\,
	datab => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[40]~147_combout\,
	datad => VCC,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X9_Y4_N2
\U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[41]~103_combout\) # 
-- (\U_DISP|Mod1|auto_generated|divider|divider|StageOut[41]~102_combout\)))) # (!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\U_DISP|Mod1|auto_generated|divider|divider|StageOut[41]~103_combout\ & 
-- (!\U_DISP|Mod1|auto_generated|divider|divider|StageOut[41]~102_combout\)))
-- \U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\U_DISP|Mod1|auto_generated|divider|divider|StageOut[41]~103_combout\ & (!\U_DISP|Mod1|auto_generated|divider|divider|StageOut[41]~102_combout\ & 
-- !\U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[41]~103_combout\,
	datab => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[41]~102_combout\,
	datad => VCC,
	cin => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X9_Y4_N4
\U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[42]~145_combout\) # 
-- (\U_DISP|Mod1|auto_generated|divider|divider|StageOut[42]~101_combout\)))) # (!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[42]~145_combout\) # 
-- (\U_DISP|Mod1|auto_generated|divider|divider|StageOut[42]~101_combout\)))))
-- \U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[42]~145_combout\) # 
-- (\U_DISP|Mod1|auto_generated|divider|divider|StageOut[42]~101_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[42]~145_combout\,
	datab => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[42]~101_combout\,
	datad => VCC,
	cin => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X9_Y4_N6
\U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ = (\U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[43]~100_combout\) # 
-- (\U_DISP|Mod1|auto_generated|divider|divider|StageOut[43]~144_combout\)))) # (!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (!\U_DISP|Mod1|auto_generated|divider|divider|StageOut[43]~100_combout\ & 
-- (!\U_DISP|Mod1|auto_generated|divider|divider|StageOut[43]~144_combout\)))
-- \U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ = CARRY((!\U_DISP|Mod1|auto_generated|divider|divider|StageOut[43]~100_combout\ & (!\U_DISP|Mod1|auto_generated|divider|divider|StageOut[43]~144_combout\ & 
-- !\U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[43]~100_combout\,
	datab => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[43]~144_combout\,
	datad => VCC,
	cin => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	cout => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\);

-- Location: LCCOMB_X9_Y4_N8
\U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = (\U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[44]~99_combout\) # 
-- (\U_DISP|Mod1|auto_generated|divider|divider|StageOut[44]~143_combout\))))) # (!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[44]~99_combout\) # 
-- ((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[44]~143_combout\) # (GND))))
-- \U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ = CARRY((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[44]~99_combout\) # ((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[44]~143_combout\) # 
-- (!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[44]~99_combout\,
	datab => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[44]~143_combout\,
	datad => VCC,
	cin => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	cout => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\);

-- Location: LCCOMB_X9_Y4_N10
\U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ = !\U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\);

-- Location: LCCOMB_X8_Y4_N2
\U_DISP|Mod1|auto_generated|divider|divider|StageOut[51]~108\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|StageOut[51]~108_combout\ = (\U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[40]~146_combout\) # 
-- (\U_DISP|Mod1|auto_generated|divider|divider|StageOut[40]~147_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[40]~146_combout\,
	datab => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[40]~147_combout\,
	datac => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[51]~108_combout\);

-- Location: LCCOMB_X7_Y5_N18
\U_DISP|Mod1|auto_generated|divider|divider|StageOut[50]~152\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|StageOut[50]~152_combout\ = (\U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\U_DISP|Mod0|auto_generated|divider|divider|StageOut[94]~144_combout\) # 
-- ((!\U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[94]~144_combout\,
	datac => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	datad => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~4_combout\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[50]~152_combout\);

-- Location: LCCOMB_X8_Y4_N12
\U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[52]~107_combout\) # 
-- (\U_DISP|Mod1|auto_generated|divider|divider|StageOut[52]~151_combout\)))) # (!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[52]~107_combout\) # 
-- (\U_DISP|Mod1|auto_generated|divider|divider|StageOut[52]~151_combout\)))))
-- \U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[52]~107_combout\) # 
-- (\U_DISP|Mod1|auto_generated|divider|divider|StageOut[52]~151_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[52]~107_combout\,
	datab => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[52]~151_combout\,
	datad => VCC,
	cin => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X8_Y4_N16
\U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = (\U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & ((((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[54]~105_combout\) # 
-- (\U_DISP|Mod1|auto_generated|divider|divider|StageOut[54]~149_combout\))))) # (!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & ((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[54]~105_combout\) # 
-- ((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[54]~149_combout\) # (GND))))
-- \U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ = CARRY((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[54]~105_combout\) # ((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[54]~149_combout\) # 
-- (!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[54]~105_combout\,
	datab => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[54]~149_combout\,
	datad => VCC,
	cin => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	cout => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\);

-- Location: LCCOMB_X8_Y4_N18
\U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ = (\U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & (((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[55]~104_combout\) # 
-- (\U_DISP|Mod1|auto_generated|divider|divider|StageOut[55]~148_combout\)))) # (!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & (!\U_DISP|Mod1|auto_generated|divider|divider|StageOut[55]~104_combout\ & 
-- (!\U_DISP|Mod1|auto_generated|divider|divider|StageOut[55]~148_combout\)))
-- \U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ = CARRY((!\U_DISP|Mod1|auto_generated|divider|divider|StageOut[55]~104_combout\ & (!\U_DISP|Mod1|auto_generated|divider|divider|StageOut[55]~148_combout\ & 
-- !\U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[55]~104_combout\,
	datab => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[55]~148_combout\,
	datad => VCC,
	cin => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	cout => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\);

-- Location: LCCOMB_X8_Y4_N20
\U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ = \U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\);

-- Location: LCCOMB_X8_Y5_N10
\U_DISP|Mod1|auto_generated|divider|divider|StageOut[66]~110\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|StageOut[66]~110_combout\ = (\U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & !\U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datac => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[66]~110_combout\);

-- Location: LCCOMB_X8_Y6_N28
\U_DISP|Mod1|auto_generated|divider|divider|StageOut[65]~111\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|StageOut[65]~111_combout\ = (!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[65]~111_combout\);

-- Location: LCCOMB_X8_Y4_N28
\U_DISP|Mod1|auto_generated|divider|divider|StageOut[64]~156\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|StageOut[64]~156_combout\ = (\U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[53]~150_combout\) # 
-- ((!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[53]~150_combout\,
	datac => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[64]~156_combout\);

-- Location: LCCOMB_X10_Y6_N16
\U_DISP|Mod1|auto_generated|divider|divider|StageOut[63]~113\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|StageOut[63]~113_combout\ = (\U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[63]~113_combout\);

-- Location: LCCOMB_X8_Y4_N22
\U_DISP|Mod1|auto_generated|divider|divider|StageOut[62]~158\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|StageOut[62]~158_combout\ = (\U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[51]~108_combout\) # 
-- ((!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[51]~108_combout\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[62]~158_combout\);

-- Location: LCCOMB_X8_Y6_N0
\U_DISP|Mod1|auto_generated|divider|divider|StageOut[61]~116\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|StageOut[61]~116_combout\ = (\U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & !\U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datac => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[61]~116_combout\);

-- Location: LCCOMB_X7_Y7_N16
\U_DISP|Mod1|auto_generated|divider|divider|StageOut[60]~159\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|StageOut[60]~159_combout\ = (\U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\U_DISP|Mod0|auto_generated|divider|divider|StageOut[93]~153_combout\) # 
-- ((\U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~2_combout\ & !\U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~2_combout\,
	datab => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	datac => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[93]~153_combout\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[60]~159_combout\);

-- Location: LCCOMB_X8_Y6_N14
\U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\ = (\U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ & (((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[63]~157_combout\) # 
-- (\U_DISP|Mod1|auto_generated|divider|divider|StageOut[63]~113_combout\)))) # (!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ & (!\U_DISP|Mod1|auto_generated|divider|divider|StageOut[63]~157_combout\ & 
-- (!\U_DISP|Mod1|auto_generated|divider|divider|StageOut[63]~113_combout\)))
-- \U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ = CARRY((!\U_DISP|Mod1|auto_generated|divider|divider|StageOut[63]~157_combout\ & (!\U_DISP|Mod1|auto_generated|divider|divider|StageOut[63]~113_combout\ & 
-- !\U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[63]~157_combout\,
	datab => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[63]~113_combout\,
	datad => VCC,
	cin => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\,
	cout => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\);

-- Location: LCCOMB_X8_Y6_N16
\U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = (\U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ & ((((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[64]~112_combout\) # 
-- (\U_DISP|Mod1|auto_generated|divider|divider|StageOut[64]~156_combout\))))) # (!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ & ((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[64]~112_combout\) # 
-- ((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[64]~156_combout\) # (GND))))
-- \U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ = CARRY((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[64]~112_combout\) # ((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[64]~156_combout\) # 
-- (!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[64]~112_combout\,
	datab => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[64]~156_combout\,
	datad => VCC,
	cin => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	cout => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9\);

-- Location: LCCOMB_X8_Y6_N18
\U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ = (\U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ & (((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[65]~155_combout\) # 
-- (\U_DISP|Mod1|auto_generated|divider|divider|StageOut[65]~111_combout\)))) # (!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ & (!\U_DISP|Mod1|auto_generated|divider|divider|StageOut[65]~155_combout\ & 
-- (!\U_DISP|Mod1|auto_generated|divider|divider|StageOut[65]~111_combout\)))
-- \U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ = CARRY((!\U_DISP|Mod1|auto_generated|divider|divider|StageOut[65]~155_combout\ & (!\U_DISP|Mod1|auto_generated|divider|divider|StageOut[65]~111_combout\ & 
-- !\U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[65]~155_combout\,
	datab => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[65]~111_combout\,
	datad => VCC,
	cin => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	cout => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11\);

-- Location: LCCOMB_X8_Y6_N20
\U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\ = (\U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ & ((((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[66]~154_combout\) # 
-- (\U_DISP|Mod1|auto_generated|divider|divider|StageOut[66]~110_combout\))))) # (!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ & ((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[66]~154_combout\) # 
-- ((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[66]~110_combout\) # (GND))))
-- \U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13\ = CARRY((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[66]~154_combout\) # ((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[66]~110_combout\) # 
-- (!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[66]~154_combout\,
	datab => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[66]~110_combout\,
	datad => VCC,
	cin => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\,
	cout => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13\);

-- Location: LCCOMB_X10_Y6_N22
\U_DISP|Mod1|auto_generated|divider|divider|StageOut[77]~117\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|StageOut[77]~117_combout\ = (!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & \U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[77]~117_combout\);

-- Location: LCCOMB_X8_Y6_N22
\U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ = !\U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\);

-- Location: LCCOMB_X9_Y6_N0
\U_DISP|Mod1|auto_generated|divider|divider|StageOut[76]~118\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|StageOut[76]~118_combout\ = (\U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ & !\U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	datad => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[76]~118_combout\);

-- Location: LCCOMB_X10_Y6_N8
\U_DISP|Mod1|auto_generated|divider|divider|StageOut[75]~119\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|StageOut[75]~119_combout\ = (!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & \U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datac => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[75]~119_combout\);

-- Location: LCCOMB_X10_Y6_N30
\U_DISP|Mod1|auto_generated|divider|divider|StageOut[74]~120\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|StageOut[74]~120_combout\ = (!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & \U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datac => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[74]~120_combout\);

-- Location: LCCOMB_X9_Y6_N30
\U_DISP|Mod1|auto_generated|divider|divider|StageOut[73]~121\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|StageOut[73]~121_combout\ = (\U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ & !\U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datad => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[73]~121_combout\);

-- Location: LCCOMB_X7_Y5_N0
\U_DISP|Mod1|auto_generated|divider|divider|StageOut[61]~115\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|StageOut[61]~115_combout\ = (\U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[50]~153_combout\) # 
-- (\U_DISP|Mod1|auto_generated|divider|divider|StageOut[50]~152_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[50]~153_combout\,
	datac => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[50]~152_combout\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[61]~115_combout\);

-- Location: LCCOMB_X8_Y6_N2
\U_DISP|Mod1|auto_generated|divider|divider|StageOut[72]~166\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|StageOut[72]~166_combout\ = (\U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[61]~115_combout\) # 
-- ((\U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & !\U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datab => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[61]~115_combout\,
	datad => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[72]~166_combout\);

-- Location: LCCOMB_X9_Y6_N2
\U_DISP|Mod1|auto_generated|divider|divider|StageOut[71]~124\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|StageOut[71]~124_combout\ = (\U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ & !\U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datad => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[71]~124_combout\);

-- Location: LCCOMB_X9_Y7_N26
\U_DISP|Mod1|auto_generated|divider|divider|StageOut[70]~176\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|StageOut[70]~176_combout\ = (\U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & 
-- ((\U_BLOCO_DADOS|soma_atual\(2)))) # (!\U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & (\U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	datab => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datac => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~0_combout\,
	datad => \U_BLOCO_DADOS|soma_atual\(2),
	combout => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[70]~176_combout\);

-- Location: LCCOMB_X9_Y6_N12
\U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ = (((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[70]~177_combout\) # (\U_DISP|Mod1|auto_generated|divider|divider|StageOut[70]~176_combout\)))
-- \U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ = CARRY((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[70]~177_combout\) # (\U_DISP|Mod1|auto_generated|divider|divider|StageOut[70]~176_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[70]~177_combout\,
	datab => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[70]~176_combout\,
	datad => VCC,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	cout => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\);

-- Location: LCCOMB_X9_Y6_N14
\U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ = (\U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ & (((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[71]~123_combout\) # 
-- (\U_DISP|Mod1|auto_generated|divider|divider|StageOut[71]~124_combout\)))) # (!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ & (!\U_DISP|Mod1|auto_generated|divider|divider|StageOut[71]~123_combout\ & 
-- (!\U_DISP|Mod1|auto_generated|divider|divider|StageOut[71]~124_combout\)))
-- \U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ = CARRY((!\U_DISP|Mod1|auto_generated|divider|divider|StageOut[71]~123_combout\ & (!\U_DISP|Mod1|auto_generated|divider|divider|StageOut[71]~124_combout\ & 
-- !\U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[71]~123_combout\,
	datab => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[71]~124_combout\,
	datad => VCC,
	cin => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	cout => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\);

-- Location: LCCOMB_X9_Y6_N16
\U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ = (\U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & (((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[72]~122_combout\) # 
-- (\U_DISP|Mod1|auto_generated|divider|divider|StageOut[72]~166_combout\)))) # (!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & ((((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[72]~122_combout\) # 
-- (\U_DISP|Mod1|auto_generated|divider|divider|StageOut[72]~166_combout\)))))
-- \U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ = CARRY((!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & ((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[72]~122_combout\) # 
-- (\U_DISP|Mod1|auto_generated|divider|divider|StageOut[72]~166_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[72]~122_combout\,
	datab => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[72]~166_combout\,
	datad => VCC,
	cin => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	cout => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\);

-- Location: LCCOMB_X9_Y6_N18
\U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\ = (\U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ & (((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[73]~165_combout\) # 
-- (\U_DISP|Mod1|auto_generated|divider|divider|StageOut[73]~121_combout\)))) # (!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ & (!\U_DISP|Mod1|auto_generated|divider|divider|StageOut[73]~165_combout\ & 
-- (!\U_DISP|Mod1|auto_generated|divider|divider|StageOut[73]~121_combout\)))
-- \U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~7\ = CARRY((!\U_DISP|Mod1|auto_generated|divider|divider|StageOut[73]~165_combout\ & (!\U_DISP|Mod1|auto_generated|divider|divider|StageOut[73]~121_combout\ & 
-- !\U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[73]~165_combout\,
	datab => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[73]~121_combout\,
	datad => VCC,
	cin => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\,
	cout => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~7\);

-- Location: LCCOMB_X9_Y6_N20
\U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ = (\U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~7\ & ((((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[74]~164_combout\) # 
-- (\U_DISP|Mod1|auto_generated|divider|divider|StageOut[74]~120_combout\))))) # (!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~7\ & ((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[74]~164_combout\) # 
-- ((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[74]~120_combout\) # (GND))))
-- \U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~9\ = CARRY((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[74]~164_combout\) # ((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[74]~120_combout\) # 
-- (!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[74]~164_combout\,
	datab => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[74]~120_combout\,
	datad => VCC,
	cin => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~7\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	cout => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~9\);

-- Location: LCCOMB_X9_Y6_N22
\U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ = (\U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~9\ & (((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[75]~163_combout\) # 
-- (\U_DISP|Mod1|auto_generated|divider|divider|StageOut[75]~119_combout\)))) # (!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~9\ & (!\U_DISP|Mod1|auto_generated|divider|divider|StageOut[75]~163_combout\ & 
-- (!\U_DISP|Mod1|auto_generated|divider|divider|StageOut[75]~119_combout\)))
-- \U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~11\ = CARRY((!\U_DISP|Mod1|auto_generated|divider|divider|StageOut[75]~163_combout\ & (!\U_DISP|Mod1|auto_generated|divider|divider|StageOut[75]~119_combout\ & 
-- !\U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[75]~163_combout\,
	datab => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[75]~119_combout\,
	datad => VCC,
	cin => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~9\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	cout => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~11\);

-- Location: LCCOMB_X9_Y6_N26
\U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\ = (\U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~13\ & (((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[77]~161_combout\) # 
-- (\U_DISP|Mod1|auto_generated|divider|divider|StageOut[77]~117_combout\)))) # (!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~13\ & (!\U_DISP|Mod1|auto_generated|divider|divider|StageOut[77]~161_combout\ & 
-- (!\U_DISP|Mod1|auto_generated|divider|divider|StageOut[77]~117_combout\)))
-- \U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~15\ = CARRY((!\U_DISP|Mod1|auto_generated|divider|divider|StageOut[77]~161_combout\ & (!\U_DISP|Mod1|auto_generated|divider|divider|StageOut[77]~117_combout\ & 
-- !\U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[77]~161_combout\,
	datab => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[77]~117_combout\,
	datad => VCC,
	cin => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~13\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\,
	cout => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~15\);

-- Location: LCCOMB_X9_Y6_N28
\U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ = \U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~15\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\);

-- Location: LCCOMB_X8_Y4_N4
\U_DISP|Mod1|auto_generated|divider|divider|StageOut[66]~154\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|StageOut[66]~154_combout\ = (\U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[55]~148_combout\) # 
-- ((!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[55]~148_combout\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[66]~154_combout\);

-- Location: LCCOMB_X9_Y7_N14
\U_DISP|Mod1|auto_generated|divider|divider|StageOut[77]~161\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|StageOut[77]~161_combout\ = (\U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[66]~154_combout\) # 
-- ((\U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & !\U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datab => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[66]~154_combout\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[77]~161_combout\);

-- Location: LCCOMB_X10_Y6_N20
\U_DISP|Mod1|auto_generated|divider|divider|StageOut[88]~167\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|StageOut[88]~167_combout\ = (\U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & ((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[77]~161_combout\) # 
-- ((!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & \U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datab => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\,
	datac => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datad => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[77]~161_combout\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[88]~167_combout\);

-- Location: LCCOMB_X8_Y4_N30
\U_DISP|Mod1|auto_generated|divider|divider|StageOut[65]~155\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|StageOut[65]~155_combout\ = (\U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[54]~149_combout\) # 
-- ((!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[54]~149_combout\,
	datac => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[65]~155_combout\);

-- Location: LCCOMB_X8_Y6_N30
\U_DISP|Mod1|auto_generated|divider|divider|StageOut[76]~162\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|StageOut[76]~162_combout\ = (\U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[65]~155_combout\) # 
-- ((\U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & !\U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[65]~155_combout\,
	datad => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[76]~162_combout\);

-- Location: LCCOMB_X8_Y6_N24
\U_DISP|Mod1|auto_generated|divider|divider|StageOut[87]~168\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|StageOut[87]~168_combout\ = (\U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & ((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[76]~162_combout\) # 
-- ((\U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ & !\U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	datab => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datac => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[76]~162_combout\,
	datad => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[87]~168_combout\);

-- Location: LCCOMB_X8_Y6_N4
\U_DISP|Mod1|auto_generated|divider|divider|StageOut[75]~163\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|StageOut[75]~163_combout\ = (\U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[64]~156_combout\) # 
-- ((\U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ & !\U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	datab => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[64]~156_combout\,
	datad => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[75]~163_combout\);

-- Location: LCCOMB_X10_Y6_N6
\U_DISP|Mod1|auto_generated|divider|divider|StageOut[86]~169\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|StageOut[86]~169_combout\ = (\U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & ((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[75]~163_combout\) # 
-- ((!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & \U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datab => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[75]~163_combout\,
	datac => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[86]~169_combout\);

-- Location: LCCOMB_X9_Y4_N14
\U_DISP|Mod1|auto_generated|divider|divider|StageOut[63]~157\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|StageOut[63]~157_combout\ = (\U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[52]~151_combout\) # 
-- ((!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datac => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[52]~151_combout\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[63]~157_combout\);

-- Location: LCCOMB_X10_Y6_N26
\U_DISP|Mod1|auto_generated|divider|divider|StageOut[74]~164\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|StageOut[74]~164_combout\ = (\U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[63]~157_combout\) # 
-- ((!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datac => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[63]~157_combout\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[74]~164_combout\);

-- Location: LCCOMB_X10_Y6_N12
\U_DISP|Mod1|auto_generated|divider|divider|StageOut[85]~170\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|StageOut[85]~170_combout\ = (\U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & ((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[74]~164_combout\) # 
-- ((!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & \U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datab => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datac => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\,
	datad => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[74]~164_combout\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[85]~170_combout\);

-- Location: LCCOMB_X7_Y6_N0
\U_DISP|Mod1|auto_generated|divider|divider|StageOut[84]~131\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|StageOut[84]~131_combout\ = (!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & \U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datad => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[84]~131_combout\);

-- Location: LCCOMB_X10_Y6_N10
\U_DISP|Mod1|auto_generated|divider|divider|StageOut[83]~132\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|StageOut[83]~132_combout\ = (!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & \U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datad => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[83]~132_combout\);

-- Location: LCCOMB_X7_Y7_N2
\U_DISP|Mod1|auto_generated|divider|divider|StageOut[60]~160\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|StageOut[60]~160_combout\ = (!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\U_DISP|Mod0|auto_generated|divider|divider|StageOut[93]~153_combout\) # 
-- ((\U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~2_combout\ & !\U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~2_combout\,
	datab => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	datac => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \U_DISP|Mod0|auto_generated|divider|divider|StageOut[93]~153_combout\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[60]~160_combout\);

-- Location: LCCOMB_X7_Y7_N4
\U_DISP|Mod1|auto_generated|divider|divider|StageOut[71]~123\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|StageOut[71]~123_combout\ = (\U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[60]~160_combout\) # 
-- (\U_DISP|Mod1|auto_generated|divider|divider|StageOut[60]~159_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[60]~160_combout\,
	datac => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[60]~159_combout\,
	datad => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[71]~123_combout\);

-- Location: LCCOMB_X9_Y6_N6
\U_DISP|Mod1|auto_generated|divider|divider|StageOut[82]~173\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|StageOut[82]~173_combout\ = (\U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & ((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[71]~123_combout\) # 
-- ((\U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ & !\U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datab => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datac => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[71]~123_combout\,
	datad => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[82]~173_combout\);

-- Location: LCCOMB_X9_Y7_N0
\U_DISP|Mod1|auto_generated|divider|divider|StageOut[81]~125\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|StageOut[81]~125_combout\ = (\U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & ((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[70]~177_combout\) # 
-- (\U_DISP|Mod1|auto_generated|divider|divider|StageOut[70]~176_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[70]~177_combout\,
	datac => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datad => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[70]~176_combout\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[81]~125_combout\);

-- Location: LCCOMB_X7_Y4_N12
\U_DISP|Mod1|auto_generated|divider|divider|StageOut[80]~174\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|StageOut[80]~174_combout\ = (\U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & ((\U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & 
-- ((\U_BLOCO_DADOS|soma_atual\(1)))) # (!\U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & (\U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datab => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~18_combout\,
	datac => \U_BLOCO_DADOS|soma_atual\(1),
	datad => \U_DISP|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[80]~174_combout\);

-- Location: LCCOMB_X7_Y6_N10
\U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\ = (((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[80]~175_combout\) # (\U_DISP|Mod1|auto_generated|divider|divider|StageOut[80]~174_combout\)))
-- \U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ = CARRY((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[80]~175_combout\) # (\U_DISP|Mod1|auto_generated|divider|divider|StageOut[80]~174_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[80]~175_combout\,
	datab => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[80]~174_combout\,
	datad => VCC,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	cout => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\);

-- Location: LCCOMB_X7_Y6_N14
\U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ = (\U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ & (((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[82]~133_combout\) # 
-- (\U_DISP|Mod1|auto_generated|divider|divider|StageOut[82]~173_combout\)))) # (!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ & ((((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[82]~133_combout\) # 
-- (\U_DISP|Mod1|auto_generated|divider|divider|StageOut[82]~173_combout\)))))
-- \U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ = CARRY((!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ & ((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[82]~133_combout\) # 
-- (\U_DISP|Mod1|auto_generated|divider|divider|StageOut[82]~173_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[82]~133_combout\,
	datab => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[82]~173_combout\,
	datad => VCC,
	cin => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\,
	cout => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~5\);

-- Location: LCCOMB_X7_Y6_N22
\U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[7]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[7]~12_combout\ = (\U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~11\ & ((((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[86]~129_combout\) # 
-- (\U_DISP|Mod1|auto_generated|divider|divider|StageOut[86]~169_combout\))))) # (!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~11\ & ((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[86]~129_combout\) # 
-- ((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[86]~169_combout\) # (GND))))
-- \U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[7]~13\ = CARRY((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[86]~129_combout\) # ((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[86]~169_combout\) # 
-- (!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[86]~129_combout\,
	datab => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[86]~169_combout\,
	datad => VCC,
	cin => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~11\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[7]~12_combout\,
	cout => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[7]~13\);

-- Location: LCCOMB_X7_Y6_N24
\U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\ = (\U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[7]~13\ & (((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[87]~128_combout\) # 
-- (\U_DISP|Mod1|auto_generated|divider|divider|StageOut[87]~168_combout\)))) # (!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[7]~13\ & (!\U_DISP|Mod1|auto_generated|divider|divider|StageOut[87]~128_combout\ & 
-- (!\U_DISP|Mod1|auto_generated|divider|divider|StageOut[87]~168_combout\)))
-- \U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~15\ = CARRY((!\U_DISP|Mod1|auto_generated|divider|divider|StageOut[87]~128_combout\ & (!\U_DISP|Mod1|auto_generated|divider|divider|StageOut[87]~168_combout\ & 
-- !\U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[7]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[87]~128_combout\,
	datab => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[87]~168_combout\,
	datad => VCC,
	cin => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[7]~13\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\,
	cout => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~15\);

-- Location: LCCOMB_X7_Y6_N28
\U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ = !\U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[9]~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[9]~17\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\);

-- Location: LCCOMB_X6_Y6_N28
\U_DISP|Mod1|auto_generated|divider|divider|StageOut[90]~136\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|StageOut[90]~136_combout\ = (\U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & ((\U_BLOCO_DADOS|soma_atual\(0)))) # 
-- (!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & (\U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[0]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[0]~20_combout\,
	datac => \U_BLOCO_DADOS|soma_atual\(0),
	datad => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[90]~136_combout\);

-- Location: LCCOMB_X7_Y6_N30
\U_DISP|Mod1|auto_generated|divider|divider|StageOut[82]~133\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|StageOut[82]~133_combout\ = (!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & \U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datad => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[82]~133_combout\);

-- Location: LCCOMB_X6_Y6_N18
\U_DISP|Equal28~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Equal28~8_combout\ = (!\U_DISP|Mod1|auto_generated|divider|divider|StageOut[80]~175_combout\ & (!\U_DISP|Mod1|auto_generated|divider|divider|StageOut[80]~174_combout\ & ((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[82]~173_combout\) # 
-- (\U_DISP|Mod1|auto_generated|divider|divider|StageOut[82]~133_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[80]~175_combout\,
	datab => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[80]~174_combout\,
	datac => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[82]~173_combout\,
	datad => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[82]~133_combout\,
	combout => \U_DISP|Equal28~8_combout\);

-- Location: LCCOMB_X9_Y7_N22
\U_DISP|Equal28~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Equal28~12_combout\ = (\U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & (!\U_DISP|Mod1|auto_generated|divider|divider|StageOut[70]~177_combout\ & 
-- ((!\U_DISP|Mod1|auto_generated|divider|divider|StageOut[70]~176_combout\)))) # (!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & (((!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[70]~177_combout\,
	datab => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	datac => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datad => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[70]~176_combout\,
	combout => \U_DISP|Equal28~12_combout\);

-- Location: LCCOMB_X6_Y6_N26
\U_DISP|Equal28~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Equal28~10_combout\ = (\U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & (((\U_DISP|Equal28~8_combout\ & \U_DISP|Equal28~12_combout\)))) # 
-- (!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & (\U_DISP|Equal28~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Equal28~9_combout\,
	datab => \U_DISP|Equal28~8_combout\,
	datac => \U_DISP|Equal28~12_combout\,
	datad => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	combout => \U_DISP|Equal28~10_combout\);

-- Location: LCCOMB_X6_Y6_N16
\U_DISP|Equal20~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Equal20~4_combout\ = (!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[7]~12_combout\ & !\U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[7]~12_combout\,
	datad => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\,
	combout => \U_DISP|Equal20~4_combout\);

-- Location: LCCOMB_X8_Y6_N26
\U_DISP|Mod1|auto_generated|divider|divider|StageOut[83]~172\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|StageOut[83]~172_combout\ = (\U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & ((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[72]~166_combout\) # 
-- ((\U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ & !\U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datab => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datac => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[72]~166_combout\,
	datad => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[83]~172_combout\);

-- Location: LCCOMB_X7_Y6_N6
\U_DISP|Equal20~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Equal20~2_combout\ = (!\U_DISP|Mod1|auto_generated|divider|divider|StageOut[84]~171_combout\ & (!\U_DISP|Mod1|auto_generated|divider|divider|StageOut[83]~132_combout\ & (!\U_DISP|Mod1|auto_generated|divider|divider|StageOut[83]~172_combout\ & 
-- !\U_DISP|Mod1|auto_generated|divider|divider|StageOut[84]~131_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[84]~171_combout\,
	datab => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[83]~132_combout\,
	datac => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[83]~172_combout\,
	datad => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[84]~131_combout\,
	combout => \U_DISP|Equal20~2_combout\);

-- Location: LCCOMB_X6_Y6_N6
\U_DISP|Equal20~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Equal20~5_combout\ = (\U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & (((\U_DISP|Equal20~2_combout\)))) # (!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & 
-- (\U_DISP|Equal20~3_combout\ & (\U_DISP|Equal20~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Equal20~3_combout\,
	datab => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	datac => \U_DISP|Equal20~4_combout\,
	datad => \U_DISP|Equal20~2_combout\,
	combout => \U_DISP|Equal20~5_combout\);

-- Location: LCCOMB_X6_Y6_N24
\U_DISP|Equal28~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Equal28~11_combout\ = (\U_DISP|Equal20~9_combout\ & (!\U_DISP|Mod1|auto_generated|divider|divider|StageOut[90]~136_combout\ & (\U_DISP|Equal28~10_combout\ & \U_DISP|Equal20~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Equal20~9_combout\,
	datab => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[90]~136_combout\,
	datac => \U_DISP|Equal28~10_combout\,
	datad => \U_DISP|Equal20~5_combout\,
	combout => \U_DISP|Equal28~11_combout\);

-- Location: LCCOMB_X6_Y6_N14
\U_DISP|Mod1|auto_generated|divider|divider|StageOut[91]~135\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|StageOut[91]~135_combout\ = (\U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & ((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[80]~175_combout\) # 
-- ((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[80]~174_combout\)))) # (!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & (((\U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[80]~175_combout\,
	datab => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[80]~174_combout\,
	datac => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	datad => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[91]~135_combout\);

-- Location: LCCOMB_X9_Y7_N2
\U_DISP|Mod1|auto_generated|divider|divider|StageOut[81]~126\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|StageOut[81]~126_combout\ = (\U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ & !\U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	datac => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[81]~126_combout\);

-- Location: LCCOMB_X7_Y6_N8
\U_DISP|Mod1|auto_generated|divider|divider|StageOut[92]~134\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|StageOut[92]~134_combout\ = (\U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & (((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[81]~126_combout\) # 
-- (\U_DISP|Mod1|auto_generated|divider|divider|StageOut[81]~125_combout\)))) # (!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & (\U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	datab => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	datac => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[81]~126_combout\,
	datad => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[81]~125_combout\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[92]~134_combout\);

-- Location: LCCOMB_X5_Y6_N0
\U_DISP|WideNor2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|WideNor2~0_combout\ = (!\U_DISP|Equal28~11_combout\ & (((!\U_DISP|Mod1|auto_generated|divider|divider|StageOut[91]~135_combout\ & \U_DISP|Mod1|auto_generated|divider|divider|StageOut[92]~134_combout\)) # (!\U_DISP|Equal20~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Equal20~10_combout\,
	datab => \U_DISP|Equal28~11_combout\,
	datac => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[91]~135_combout\,
	datad => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[92]~134_combout\,
	combout => \U_DISP|WideNor2~0_combout\);

-- Location: LCCOMB_X6_Y6_N10
\U_DISP|Mod1|auto_generated|divider|divider|StageOut[93]~137\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Mod1|auto_generated|divider|divider|StageOut[93]~137_combout\ = (\U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & ((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[82]~173_combout\) # 
-- ((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[82]~133_combout\)))) # (!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & (((\U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[82]~173_combout\,
	datab => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[82]~133_combout\,
	datac => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\,
	datad => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	combout => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[93]~137_combout\);

-- Location: LCCOMB_X10_Y6_N14
\U_DISP|Equal20~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Equal20~7_combout\ = (!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\ & (!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & 
-- !\U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\,
	datac => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datad => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	combout => \U_DISP|Equal20~7_combout\);

-- Location: LCCOMB_X10_Y6_N28
\U_DISP|Equal20~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Equal20~6_combout\ = (!\U_DISP|Mod1|auto_generated|divider|divider|StageOut[77]~117_combout\ & (!\U_DISP|Mod1|auto_generated|divider|divider|StageOut[77]~161_combout\ & (!\U_DISP|Mod1|auto_generated|divider|divider|StageOut[74]~120_combout\ & 
-- !\U_DISP|Mod1|auto_generated|divider|divider|StageOut[74]~164_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[77]~117_combout\,
	datab => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[77]~161_combout\,
	datac => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[74]~120_combout\,
	datad => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[74]~164_combout\,
	combout => \U_DISP|Equal20~6_combout\);

-- Location: LCCOMB_X10_Y6_N18
\U_DISP|Equal20~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Equal20~12_combout\ = (!\U_DISP|Mod1|auto_generated|divider|divider|StageOut[75]~163_combout\ & (\U_DISP|Equal20~6_combout\ & ((\U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\) # 
-- (!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datab => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[75]~163_combout\,
	datac => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \U_DISP|Equal20~6_combout\,
	combout => \U_DISP|Equal20~12_combout\);

-- Location: LCCOMB_X10_Y6_N24
\U_DISP|Equal20~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Equal20~8_combout\ = (\U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & ((\U_DISP|Equal20~12_combout\))) # (!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & 
-- (\U_DISP|Equal20~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datac => \U_DISP|Equal20~7_combout\,
	datad => \U_DISP|Equal20~12_combout\,
	combout => \U_DISP|Equal20~8_combout\);

-- Location: LCCOMB_X7_Y6_N2
\U_DISP|Equal20~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Equal20~9_combout\ = ((!\U_DISP|Mod1|auto_generated|divider|divider|StageOut[87]~128_combout\ & (\U_DISP|Equal20~8_combout\ & !\U_DISP|Mod1|auto_generated|divider|divider|StageOut[87]~168_combout\))) # 
-- (!\U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[87]~128_combout\,
	datab => \U_DISP|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	datac => \U_DISP|Equal20~8_combout\,
	datad => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[87]~168_combout\,
	combout => \U_DISP|Equal20~9_combout\);

-- Location: LCCOMB_X6_Y6_N30
\U_DISP|Equal21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Equal21~0_combout\ = (\U_DISP|Equal20~5_combout\ & (\U_DISP|Mod1|auto_generated|divider|divider|StageOut[90]~136_combout\ & (!\U_DISP|Mod1|auto_generated|divider|divider|StageOut[93]~137_combout\ & \U_DISP|Equal20~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Equal20~5_combout\,
	datab => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[90]~136_combout\,
	datac => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[93]~137_combout\,
	datad => \U_DISP|Equal20~9_combout\,
	combout => \U_DISP|Equal21~0_combout\);

-- Location: LCCOMB_X5_Y6_N30
\U_DISP|WideNor2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|WideNor2~1_combout\ = (!\U_DISP|Mod1|auto_generated|divider|divider|StageOut[91]~135_combout\ & ((\U_DISP|Equal21~0_combout\) # ((\U_DISP|Equal20~10_combout\ & \U_DISP|Mod1|auto_generated|divider|divider|StageOut[92]~134_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Equal20~10_combout\,
	datab => \U_DISP|Equal21~0_combout\,
	datac => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[91]~135_combout\,
	datad => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[92]~134_combout\,
	combout => \U_DISP|WideNor2~1_combout\);

-- Location: LCCOMB_X5_Y6_N16
\U_DISP|WideNor2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|WideNor2~3_combout\ = (\U_DISP|Mod1|auto_generated|divider|divider|StageOut[91]~135_combout\) # ((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[92]~134_combout\ & (!\U_DISP|Equal20~10_combout\)) # 
-- (!\U_DISP|Mod1|auto_generated|divider|divider|StageOut[92]~134_combout\ & ((!\U_DISP|Equal21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Equal20~10_combout\,
	datab => \U_DISP|Equal21~0_combout\,
	datac => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[91]~135_combout\,
	datad => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[92]~134_combout\,
	combout => \U_DISP|WideNor2~3_combout\);

-- Location: LCCOMB_X6_Y6_N8
\U_DISP|Equal29~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Equal29~0_combout\ = (\U_DISP|Equal20~9_combout\ & (\U_DISP|Mod1|auto_generated|divider|divider|StageOut[90]~136_combout\ & (\U_DISP|Equal28~10_combout\ & \U_DISP|Equal20~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Equal20~9_combout\,
	datab => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[90]~136_combout\,
	datac => \U_DISP|Equal28~10_combout\,
	datad => \U_DISP|Equal20~5_combout\,
	combout => \U_DISP|Equal29~0_combout\);

-- Location: LCCOMB_X6_Y6_N2
\U_DISP|WideNor2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|WideNor2~2_combout\ = (\U_DISP|Equal29~0_combout\) # ((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[91]~135_combout\ & \U_DISP|Equal21~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[91]~135_combout\,
	datac => \U_DISP|Equal29~0_combout\,
	datad => \U_DISP|Equal21~0_combout\,
	combout => \U_DISP|WideNor2~2_combout\);

-- Location: LCCOMB_X5_Y6_N22
\U_DISP|WideOr17\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|WideOr17~combout\ = ((\U_DISP|WideNor2~0_combout\ & (!\U_DISP|WideNor2~1_combout\ & !\U_DISP|WideNor2~2_combout\))) # (!\U_DISP|WideNor2~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|WideNor2~0_combout\,
	datab => \U_DISP|WideNor2~1_combout\,
	datac => \U_DISP|WideNor2~3_combout\,
	datad => \U_DISP|WideNor2~2_combout\,
	combout => \U_DISP|WideOr17~combout\);

-- Location: LCCOMB_X5_Y6_N24
\U_DISP|WideOr16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|WideOr16~0_combout\ = (\U_DISP|Mod1|auto_generated|divider|divider|StageOut[92]~134_combout\ & ((\U_DISP|Mod1|auto_generated|divider|divider|StageOut[91]~135_combout\ & (\U_DISP|Equal20~10_combout\)) # 
-- (!\U_DISP|Mod1|auto_generated|divider|divider|StageOut[91]~135_combout\ & ((\U_DISP|Equal21~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Equal20~10_combout\,
	datab => \U_DISP|Equal21~0_combout\,
	datac => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[91]~135_combout\,
	datad => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[92]~134_combout\,
	combout => \U_DISP|WideOr16~0_combout\);

-- Location: LCCOMB_X5_Y6_N6
\U_DISP|WideOr16\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|WideOr16~combout\ = (\U_DISP|WideOr16~0_combout\) # ((\U_DISP|WideNor2~0_combout\ & (!\U_DISP|WideNor2~1_combout\ & !\U_DISP|WideNor2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|WideNor2~0_combout\,
	datab => \U_DISP|WideNor2~1_combout\,
	datac => \U_DISP|WideOr16~0_combout\,
	datad => \U_DISP|WideNor2~2_combout\,
	combout => \U_DISP|WideOr16~combout\);

-- Location: LCCOMB_X5_Y6_N20
\U_DISP|Equal22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Equal22~0_combout\ = (\U_DISP|Equal20~10_combout\ & (\U_DISP|Mod1|auto_generated|divider|divider|StageOut[91]~135_combout\ & !\U_DISP|Mod1|auto_generated|divider|divider|StageOut[92]~134_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Equal20~10_combout\,
	datac => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[91]~135_combout\,
	datad => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[92]~134_combout\,
	combout => \U_DISP|Equal22~0_combout\);

-- Location: LCCOMB_X5_Y6_N2
\U_DISP|hex_unidades[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|hex_unidades\(2) = (\U_DISP|Equal22~0_combout\) # ((\U_DISP|WideNor2~0_combout\ & (!\U_DISP|WideNor2~1_combout\ & !\U_DISP|WideNor2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|WideNor2~0_combout\,
	datab => \U_DISP|WideNor2~1_combout\,
	datac => \U_DISP|Equal22~0_combout\,
	datad => \U_DISP|WideNor2~2_combout\,
	combout => \U_DISP|hex_unidades\(2));

-- Location: LCCOMB_X5_Y6_N12
\U_DISP|WideOr12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|WideOr12~0_combout\ = (\U_DISP|Mod1|auto_generated|divider|divider|StageOut[91]~135_combout\ $ (\U_DISP|Mod1|auto_generated|divider|divider|StageOut[92]~134_combout\)) # (!\U_DISP|Equal21~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_DISP|Equal21~0_combout\,
	datac => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[91]~135_combout\,
	datad => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[92]~134_combout\,
	combout => \U_DISP|WideOr12~0_combout\);

-- Location: LCCOMB_X5_Y6_N28
\U_DISP|Equal24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Equal24~0_combout\ = (\U_DISP|Equal20~10_combout\ & (!\U_DISP|Mod1|auto_generated|divider|divider|StageOut[91]~135_combout\ & \U_DISP|Mod1|auto_generated|divider|divider|StageOut[92]~134_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Equal20~10_combout\,
	datac => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[91]~135_combout\,
	datad => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[92]~134_combout\,
	combout => \U_DISP|Equal24~0_combout\);

-- Location: LCCOMB_X5_Y6_N26
\U_DISP|WideNor2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|WideNor2~4_combout\ = (\U_DISP|WideNor2~1_combout\) # ((\U_DISP|WideNor2~2_combout\) # (!\U_DISP|WideNor2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_DISP|WideNor2~1_combout\,
	datac => \U_DISP|WideNor2~0_combout\,
	datad => \U_DISP|WideNor2~2_combout\,
	combout => \U_DISP|WideNor2~4_combout\);

-- Location: LCCOMB_X5_Y6_N10
\U_DISP|WideOr15\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|WideOr15~combout\ = ((\U_DISP|Equal24~0_combout\) # (!\U_DISP|WideNor2~4_combout\)) # (!\U_DISP|WideOr12~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|WideOr12~0_combout\,
	datab => \U_DISP|Equal24~0_combout\,
	datad => \U_DISP|WideNor2~4_combout\,
	combout => \U_DISP|WideOr15~combout\);

-- Location: LCCOMB_X5_Y6_N4
\U_DISP|WideOr13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|WideOr13~0_combout\ = (\U_DISP|Mod1|auto_generated|divider|divider|StageOut[91]~135_combout\ & (!\U_DISP|Mod1|auto_generated|divider|divider|StageOut[92]~134_combout\ & ((\U_DISP|Equal20~10_combout\) # (\U_DISP|Equal21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Equal20~10_combout\,
	datab => \U_DISP|Equal21~0_combout\,
	datac => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[91]~135_combout\,
	datad => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[92]~134_combout\,
	combout => \U_DISP|WideOr13~0_combout\);

-- Location: LCCOMB_X5_Y6_N18
\U_DISP|WideOr13\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|WideOr13~combout\ = ((\U_DISP|WideOr13~0_combout\) # (!\U_DISP|WideNor2~4_combout\)) # (!\U_DISP|WideOr12~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|WideOr12~0_combout\,
	datac => \U_DISP|WideOr13~0_combout\,
	datad => \U_DISP|WideNor2~4_combout\,
	combout => \U_DISP|WideOr13~combout\);

-- Location: LCCOMB_X5_Y6_N8
\U_DISP|Equal20~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Equal20~11_combout\ = (!\U_DISP|Mod1|auto_generated|divider|divider|StageOut[91]~135_combout\ & !\U_DISP|Mod1|auto_generated|divider|divider|StageOut[92]~134_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[91]~135_combout\,
	datad => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[92]~134_combout\,
	combout => \U_DISP|Equal20~11_combout\);

-- Location: LCCOMB_X6_Y6_N4
\U_DISP|Equal20~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|Equal20~10_combout\ = (\U_DISP|Equal20~5_combout\ & (!\U_DISP|Mod1|auto_generated|divider|divider|StageOut[90]~136_combout\ & (!\U_DISP|Mod1|auto_generated|divider|divider|StageOut[93]~137_combout\ & \U_DISP|Equal20~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|Equal20~5_combout\,
	datab => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[90]~136_combout\,
	datac => \U_DISP|Mod1|auto_generated|divider|divider|StageOut[93]~137_combout\,
	datad => \U_DISP|Equal20~9_combout\,
	combout => \U_DISP|Equal20~10_combout\);

-- Location: LCCOMB_X5_Y6_N14
\U_DISP|WideOr12\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_DISP|WideOr12~combout\ = (((\U_DISP|Equal20~11_combout\ & \U_DISP|Equal20~10_combout\)) # (!\U_DISP|WideNor2~4_combout\)) # (!\U_DISP|WideOr12~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISP|WideOr12~0_combout\,
	datab => \U_DISP|WideNor2~4_combout\,
	datac => \U_DISP|Equal20~11_combout\,
	datad => \U_DISP|Equal20~10_combout\,
	combout => \U_DISP|WideOr12~combout\);

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_liberar~I\ : cycloneii_io
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
	datain => \U_CONTROLE|estado_atual.ENTREGA_PRODUTO~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_liberar);

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_troco~I\ : cycloneii_io
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
	datain => \U_CONTROLE|estado_atual.ENTREGA_PRODUTO~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_troco);

-- Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_devolver~I\ : cycloneii_io
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
	datain => \U_CONTROLE|estado_atual.DEVOLUCAO~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_devolver);

-- Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_sem_estoque~I\ : cycloneii_io
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
	datain => \U_CONTROLE|sem_estoque~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_sem_estoque);

-- Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex_centenas[0]~I\ : cycloneii_io
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
	datain => \U_DISP|WideOr5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex_centenas(0));

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex_centenas[1]~I\ : cycloneii_io
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
	datain => \U_DISP|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex_centenas(1));

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex_centenas[2]~I\ : cycloneii_io
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
	datain => \U_DISP|hex_centenas\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex_centenas(2));

-- Location: PIN_9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex_centenas[3]~I\ : cycloneii_io
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
	datain => \U_DISP|WideOr3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex_centenas(3));

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex_centenas[4]~I\ : cycloneii_io
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
	datain => \U_DISP|ALT_INV_WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex_centenas(4));

-- Location: PIN_136,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex_centenas[5]~I\ : cycloneii_io
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
	datain => \U_DISP|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex_centenas(5));

-- Location: PIN_137,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex_centenas[6]~I\ : cycloneii_io
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
	datain => \U_DISP|WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex_centenas(6));

-- Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex_dezenas[0]~I\ : cycloneii_io
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
	datain => \U_DISP|WideOr11~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex_dezenas(0));

-- Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex_dezenas[1]~I\ : cycloneii_io
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
	datain => \U_DISP|WideOr10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex_dezenas(1));

-- Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex_dezenas[2]~I\ : cycloneii_io
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
	datain => \U_DISP|hex_dezenas\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex_dezenas(2));

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex_dezenas[3]~I\ : cycloneii_io
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
	datain => \U_DISP|WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex_dezenas(3));

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex_dezenas[4]~I\ : cycloneii_io
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
	datain => \U_DISP|ALT_INV_WideOr8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex_dezenas(4));

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex_dezenas[5]~I\ : cycloneii_io
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
	datain => \U_DISP|WideOr7~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex_dezenas(5));

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex_dezenas[6]~I\ : cycloneii_io
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
	datain => \U_DISP|WideOr6~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex_dezenas(6));

-- Location: PIN_135,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex_unidades[0]~I\ : cycloneii_io
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
	datain => \U_DISP|WideOr17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex_unidades(0));

-- Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex_unidades[1]~I\ : cycloneii_io
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
	datain => \U_DISP|WideOr16~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex_unidades(1));

-- Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex_unidades[2]~I\ : cycloneii_io
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
	datain => \U_DISP|hex_unidades\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex_unidades(2));

-- Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex_unidades[3]~I\ : cycloneii_io
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
	datain => \U_DISP|WideOr15~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex_unidades(3));

-- Location: PIN_31,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex_unidades[4]~I\ : cycloneii_io
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
	datain => \U_DISP|WideNor2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex_unidades(4));

-- Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex_unidades[5]~I\ : cycloneii_io
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
	datain => \U_DISP|WideOr13~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex_unidades(5));

-- Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex_unidades[6]~I\ : cycloneii_io
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
	datain => \U_DISP|WideOr12~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex_unidades(6));
END structure;


