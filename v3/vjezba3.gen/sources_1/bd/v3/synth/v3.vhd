--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
--Date        : Tue Nov  8 18:12:07 2022
--Host        : mat1-PC running 64-bit major release  (build 9200)
--Command     : generate_target v3.bd
--Design      : v3
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity v3 is
  port (
    LD2 : out STD_LOGIC;
    LD3 : out STD_LOGIC;
    clk : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of v3 : entity is "v3,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=v3,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=2,numReposBlks=2,numNonXlnxBlks=2,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of v3 : entity is "v3.hwdef";
end v3;

architecture STRUCTURE of v3 is
  component v3_led_blinker_0_0 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    square : out STD_LOGIC
  );
  end component v3_led_blinker_0_0;
  component v3_led_blinker_1_0 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    square : out STD_LOGIC
  );
  end component v3_led_blinker_1_0;
  signal clk_0_1 : STD_LOGIC;
  signal led_blinker_0_square : STD_LOGIC;
  signal led_blinker_1_square : STD_LOGIC;
  signal reset_0_1 : STD_LOGIC;
begin
  LD2 <= led_blinker_0_square;
  LD3 <= led_blinker_1_square;
  clk_0_1 <= clk;
  reset_0_1 <= reset;
led_blinker_0: component v3_led_blinker_0_0
     port map (
      clk => clk_0_1,
      reset => reset_0_1,
      square => led_blinker_0_square
    );
led_blinker_1: component v3_led_blinker_1_0
     port map (
      clk => clk_0_1,
      reset => reset_0_1,
      square => led_blinker_1_square
    );
end STRUCTURE;
