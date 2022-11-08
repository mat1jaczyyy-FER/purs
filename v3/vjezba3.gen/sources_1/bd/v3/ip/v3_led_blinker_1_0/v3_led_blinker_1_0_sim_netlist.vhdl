-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Tue Nov  8 17:49:39 2022
-- Host        : mat1-PC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               h:/FER/7.semestar/purs/lab/matijaca_dominik/v3/vjezba3.gen/sources_1/bd/v3/ip/v3_led_blinker_1_0/v3_led_blinker_1_0_sim_netlist.vhdl
-- Design      : v3_led_blinker_1_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity v3_led_blinker_1_0_led_blinker is
  port (
    square : out STD_LOGIC;
    reset : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of v3_led_blinker_1_0_led_blinker : entity is "led_blinker";
end v3_led_blinker_1_0_led_blinker;

architecture STRUCTURE of v3_led_blinker_1_0_led_blinker is
  signal \clk_divider_reg_n_0_[0]\ : STD_LOGIC;
  signal \clk_divider_reg_n_0_[1]\ : STD_LOGIC;
  signal \clk_divider_reg_n_0_[2]\ : STD_LOGIC;
  signal \clk_divider_reg_n_0_[3]\ : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal reset_sync : STD_LOGIC;
  signal \^square\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \clk_divider[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \clk_divider[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \clk_divider[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \clk_divider[4]_i_1\ : label is "soft_lutpair0";
begin
  square <= \^square\;
\clk_divider[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \clk_divider_reg_n_0_[0]\,
      O => plusOp(0)
    );
\clk_divider[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \clk_divider_reg_n_0_[0]\,
      I1 => \clk_divider_reg_n_0_[1]\,
      O => plusOp(1)
    );
\clk_divider[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \clk_divider_reg_n_0_[0]\,
      I1 => \clk_divider_reg_n_0_[1]\,
      I2 => \clk_divider_reg_n_0_[2]\,
      O => plusOp(2)
    );
\clk_divider[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \clk_divider_reg_n_0_[1]\,
      I1 => \clk_divider_reg_n_0_[0]\,
      I2 => \clk_divider_reg_n_0_[2]\,
      I3 => \clk_divider_reg_n_0_[3]\,
      O => plusOp(3)
    );
\clk_divider[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \clk_divider_reg_n_0_[2]\,
      I1 => \clk_divider_reg_n_0_[0]\,
      I2 => \clk_divider_reg_n_0_[1]\,
      I3 => \clk_divider_reg_n_0_[3]\,
      I4 => \^square\,
      O => plusOp(4)
    );
\clk_divider_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => plusOp(0),
      Q => \clk_divider_reg_n_0_[0]\,
      R => reset_sync
    );
\clk_divider_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => plusOp(1),
      Q => \clk_divider_reg_n_0_[1]\,
      R => reset_sync
    );
\clk_divider_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => plusOp(2),
      Q => \clk_divider_reg_n_0_[2]\,
      R => reset_sync
    );
\clk_divider_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => plusOp(3),
      Q => \clk_divider_reg_n_0_[3]\,
      R => reset_sync
    );
\clk_divider_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => plusOp(4),
      Q => \^square\,
      R => reset_sync
    );
reset_sync_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reset,
      Q => reset_sync,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity v3_led_blinker_1_0 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    square : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of v3_led_blinker_1_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of v3_led_blinker_1_0 : entity is "v3_led_blinker_1_0,led_blinker,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of v3_led_blinker_1_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of v3_led_blinker_1_0 : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of v3_led_blinker_1_0 : entity is "led_blinker,Vivado 2020.2";
end v3_led_blinker_1_0;

architecture STRUCTURE of v3_led_blinker_1_0 is
begin
U0: entity work.v3_led_blinker_1_0_led_blinker
     port map (
      clk => clk,
      reset => reset,
      square => square
    );
end STRUCTURE;
