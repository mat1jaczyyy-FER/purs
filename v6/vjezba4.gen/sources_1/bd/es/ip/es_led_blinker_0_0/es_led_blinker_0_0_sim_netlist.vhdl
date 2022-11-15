-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Tue Nov 15 04:58:54 2022
-- Host        : mat1-PC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               h:/FER/7.semestar/purs/lab/matijaca_dominik/v6/vjezba4.gen/sources_1/bd/es/ip/es_led_blinker_0_0/es_led_blinker_0_0_sim_netlist.vhdl
-- Design      : es_led_blinker_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity es_led_blinker_0_0_led_blinker is
  port (
    square : out STD_LOGIC;
    reset : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of es_led_blinker_0_0_led_blinker : entity is "led_blinker";
end es_led_blinker_0_0_led_blinker;

architecture STRUCTURE of es_led_blinker_0_0_led_blinker is
  signal \clk_divider[0]_i_2_n_0\ : STD_LOGIC;
  signal \clk_divider_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \clk_divider_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \clk_divider_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \clk_divider_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \clk_divider_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \clk_divider_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \clk_divider_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \clk_divider_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \clk_divider_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \clk_divider_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \clk_divider_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \clk_divider_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \clk_divider_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \clk_divider_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \clk_divider_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \clk_divider_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \clk_divider_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \clk_divider_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \clk_divider_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \clk_divider_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \clk_divider_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \clk_divider_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \clk_divider_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \clk_divider_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \clk_divider_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \clk_divider_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \clk_divider_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \clk_divider_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \clk_divider_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \clk_divider_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \clk_divider_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \clk_divider_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \clk_divider_reg[25]_i_1_n_3\ : STD_LOGIC;
  signal \clk_divider_reg[25]_i_1_n_6\ : STD_LOGIC;
  signal \clk_divider_reg[25]_i_1_n_7\ : STD_LOGIC;
  signal \clk_divider_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \clk_divider_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \clk_divider_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \clk_divider_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \clk_divider_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \clk_divider_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \clk_divider_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \clk_divider_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \clk_divider_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \clk_divider_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \clk_divider_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \clk_divider_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \clk_divider_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \clk_divider_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \clk_divider_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \clk_divider_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \clk_divider_reg_n_0_[0]\ : STD_LOGIC;
  signal \clk_divider_reg_n_0_[10]\ : STD_LOGIC;
  signal \clk_divider_reg_n_0_[11]\ : STD_LOGIC;
  signal \clk_divider_reg_n_0_[12]\ : STD_LOGIC;
  signal \clk_divider_reg_n_0_[13]\ : STD_LOGIC;
  signal \clk_divider_reg_n_0_[14]\ : STD_LOGIC;
  signal \clk_divider_reg_n_0_[15]\ : STD_LOGIC;
  signal \clk_divider_reg_n_0_[16]\ : STD_LOGIC;
  signal \clk_divider_reg_n_0_[17]\ : STD_LOGIC;
  signal \clk_divider_reg_n_0_[18]\ : STD_LOGIC;
  signal \clk_divider_reg_n_0_[19]\ : STD_LOGIC;
  signal \clk_divider_reg_n_0_[1]\ : STD_LOGIC;
  signal \clk_divider_reg_n_0_[20]\ : STD_LOGIC;
  signal \clk_divider_reg_n_0_[21]\ : STD_LOGIC;
  signal \clk_divider_reg_n_0_[22]\ : STD_LOGIC;
  signal \clk_divider_reg_n_0_[23]\ : STD_LOGIC;
  signal \clk_divider_reg_n_0_[24]\ : STD_LOGIC;
  signal \clk_divider_reg_n_0_[2]\ : STD_LOGIC;
  signal \clk_divider_reg_n_0_[3]\ : STD_LOGIC;
  signal \clk_divider_reg_n_0_[4]\ : STD_LOGIC;
  signal \clk_divider_reg_n_0_[5]\ : STD_LOGIC;
  signal \clk_divider_reg_n_0_[6]\ : STD_LOGIC;
  signal \clk_divider_reg_n_0_[7]\ : STD_LOGIC;
  signal \clk_divider_reg_n_0_[8]\ : STD_LOGIC;
  signal \clk_divider_reg_n_0_[9]\ : STD_LOGIC;
  signal reset_sync : STD_LOGIC;
  signal \^square\ : STD_LOGIC;
  signal \NLW_clk_divider_reg[25]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_clk_divider_reg[25]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \clk_divider_reg[0]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \clk_divider_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \clk_divider_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \clk_divider_reg[20]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \clk_divider_reg[25]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \clk_divider_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \clk_divider_reg[8]_i_1\ : label is 11;
begin
  square <= \^square\;
\clk_divider[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \clk_divider_reg_n_0_[0]\,
      O => \clk_divider[0]_i_2_n_0\
    );
\clk_divider_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \clk_divider_reg[0]_i_1_n_7\,
      Q => \clk_divider_reg_n_0_[0]\,
      R => reset_sync
    );
\clk_divider_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \clk_divider_reg[0]_i_1_n_0\,
      CO(2) => \clk_divider_reg[0]_i_1_n_1\,
      CO(1) => \clk_divider_reg[0]_i_1_n_2\,
      CO(0) => \clk_divider_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \clk_divider_reg[0]_i_1_n_4\,
      O(2) => \clk_divider_reg[0]_i_1_n_5\,
      O(1) => \clk_divider_reg[0]_i_1_n_6\,
      O(0) => \clk_divider_reg[0]_i_1_n_7\,
      S(3) => \clk_divider_reg_n_0_[3]\,
      S(2) => \clk_divider_reg_n_0_[2]\,
      S(1) => \clk_divider_reg_n_0_[1]\,
      S(0) => \clk_divider[0]_i_2_n_0\
    );
\clk_divider_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \clk_divider_reg[8]_i_1_n_5\,
      Q => \clk_divider_reg_n_0_[10]\,
      R => reset_sync
    );
\clk_divider_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \clk_divider_reg[8]_i_1_n_4\,
      Q => \clk_divider_reg_n_0_[11]\,
      R => reset_sync
    );
\clk_divider_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \clk_divider_reg[12]_i_1_n_7\,
      Q => \clk_divider_reg_n_0_[12]\,
      R => reset_sync
    );
\clk_divider_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_divider_reg[8]_i_1_n_0\,
      CO(3) => \clk_divider_reg[12]_i_1_n_0\,
      CO(2) => \clk_divider_reg[12]_i_1_n_1\,
      CO(1) => \clk_divider_reg[12]_i_1_n_2\,
      CO(0) => \clk_divider_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clk_divider_reg[12]_i_1_n_4\,
      O(2) => \clk_divider_reg[12]_i_1_n_5\,
      O(1) => \clk_divider_reg[12]_i_1_n_6\,
      O(0) => \clk_divider_reg[12]_i_1_n_7\,
      S(3) => \clk_divider_reg_n_0_[15]\,
      S(2) => \clk_divider_reg_n_0_[14]\,
      S(1) => \clk_divider_reg_n_0_[13]\,
      S(0) => \clk_divider_reg_n_0_[12]\
    );
\clk_divider_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \clk_divider_reg[12]_i_1_n_6\,
      Q => \clk_divider_reg_n_0_[13]\,
      R => reset_sync
    );
\clk_divider_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \clk_divider_reg[12]_i_1_n_5\,
      Q => \clk_divider_reg_n_0_[14]\,
      R => reset_sync
    );
\clk_divider_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \clk_divider_reg[12]_i_1_n_4\,
      Q => \clk_divider_reg_n_0_[15]\,
      R => reset_sync
    );
\clk_divider_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \clk_divider_reg[16]_i_1_n_7\,
      Q => \clk_divider_reg_n_0_[16]\,
      R => reset_sync
    );
\clk_divider_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_divider_reg[12]_i_1_n_0\,
      CO(3) => \clk_divider_reg[16]_i_1_n_0\,
      CO(2) => \clk_divider_reg[16]_i_1_n_1\,
      CO(1) => \clk_divider_reg[16]_i_1_n_2\,
      CO(0) => \clk_divider_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clk_divider_reg[16]_i_1_n_4\,
      O(2) => \clk_divider_reg[16]_i_1_n_5\,
      O(1) => \clk_divider_reg[16]_i_1_n_6\,
      O(0) => \clk_divider_reg[16]_i_1_n_7\,
      S(3) => \clk_divider_reg_n_0_[19]\,
      S(2) => \clk_divider_reg_n_0_[18]\,
      S(1) => \clk_divider_reg_n_0_[17]\,
      S(0) => \clk_divider_reg_n_0_[16]\
    );
\clk_divider_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \clk_divider_reg[16]_i_1_n_6\,
      Q => \clk_divider_reg_n_0_[17]\,
      R => reset_sync
    );
\clk_divider_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \clk_divider_reg[16]_i_1_n_5\,
      Q => \clk_divider_reg_n_0_[18]\,
      R => reset_sync
    );
\clk_divider_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \clk_divider_reg[16]_i_1_n_4\,
      Q => \clk_divider_reg_n_0_[19]\,
      R => reset_sync
    );
\clk_divider_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \clk_divider_reg[0]_i_1_n_6\,
      Q => \clk_divider_reg_n_0_[1]\,
      R => reset_sync
    );
\clk_divider_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \clk_divider_reg[20]_i_1_n_7\,
      Q => \clk_divider_reg_n_0_[20]\,
      R => reset_sync
    );
\clk_divider_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_divider_reg[16]_i_1_n_0\,
      CO(3) => \clk_divider_reg[20]_i_1_n_0\,
      CO(2) => \clk_divider_reg[20]_i_1_n_1\,
      CO(1) => \clk_divider_reg[20]_i_1_n_2\,
      CO(0) => \clk_divider_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clk_divider_reg[20]_i_1_n_4\,
      O(2) => \clk_divider_reg[20]_i_1_n_5\,
      O(1) => \clk_divider_reg[20]_i_1_n_6\,
      O(0) => \clk_divider_reg[20]_i_1_n_7\,
      S(3) => \clk_divider_reg_n_0_[23]\,
      S(2) => \clk_divider_reg_n_0_[22]\,
      S(1) => \clk_divider_reg_n_0_[21]\,
      S(0) => \clk_divider_reg_n_0_[20]\
    );
\clk_divider_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \clk_divider_reg[20]_i_1_n_6\,
      Q => \clk_divider_reg_n_0_[21]\,
      R => reset_sync
    );
\clk_divider_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \clk_divider_reg[20]_i_1_n_5\,
      Q => \clk_divider_reg_n_0_[22]\,
      R => reset_sync
    );
\clk_divider_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \clk_divider_reg[20]_i_1_n_4\,
      Q => \clk_divider_reg_n_0_[23]\,
      R => reset_sync
    );
\clk_divider_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \clk_divider_reg[25]_i_1_n_7\,
      Q => \clk_divider_reg_n_0_[24]\,
      R => reset_sync
    );
\clk_divider_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \clk_divider_reg[25]_i_1_n_6\,
      Q => \^square\,
      R => reset_sync
    );
\clk_divider_reg[25]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_divider_reg[20]_i_1_n_0\,
      CO(3 downto 1) => \NLW_clk_divider_reg[25]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \clk_divider_reg[25]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_clk_divider_reg[25]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1) => \clk_divider_reg[25]_i_1_n_6\,
      O(0) => \clk_divider_reg[25]_i_1_n_7\,
      S(3 downto 2) => B"00",
      S(1) => \^square\,
      S(0) => \clk_divider_reg_n_0_[24]\
    );
\clk_divider_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \clk_divider_reg[0]_i_1_n_5\,
      Q => \clk_divider_reg_n_0_[2]\,
      R => reset_sync
    );
\clk_divider_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \clk_divider_reg[0]_i_1_n_4\,
      Q => \clk_divider_reg_n_0_[3]\,
      R => reset_sync
    );
\clk_divider_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \clk_divider_reg[4]_i_1_n_7\,
      Q => \clk_divider_reg_n_0_[4]\,
      R => reset_sync
    );
\clk_divider_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_divider_reg[0]_i_1_n_0\,
      CO(3) => \clk_divider_reg[4]_i_1_n_0\,
      CO(2) => \clk_divider_reg[4]_i_1_n_1\,
      CO(1) => \clk_divider_reg[4]_i_1_n_2\,
      CO(0) => \clk_divider_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clk_divider_reg[4]_i_1_n_4\,
      O(2) => \clk_divider_reg[4]_i_1_n_5\,
      O(1) => \clk_divider_reg[4]_i_1_n_6\,
      O(0) => \clk_divider_reg[4]_i_1_n_7\,
      S(3) => \clk_divider_reg_n_0_[7]\,
      S(2) => \clk_divider_reg_n_0_[6]\,
      S(1) => \clk_divider_reg_n_0_[5]\,
      S(0) => \clk_divider_reg_n_0_[4]\
    );
\clk_divider_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \clk_divider_reg[4]_i_1_n_6\,
      Q => \clk_divider_reg_n_0_[5]\,
      R => reset_sync
    );
\clk_divider_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \clk_divider_reg[4]_i_1_n_5\,
      Q => \clk_divider_reg_n_0_[6]\,
      R => reset_sync
    );
\clk_divider_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \clk_divider_reg[4]_i_1_n_4\,
      Q => \clk_divider_reg_n_0_[7]\,
      R => reset_sync
    );
\clk_divider_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \clk_divider_reg[8]_i_1_n_7\,
      Q => \clk_divider_reg_n_0_[8]\,
      R => reset_sync
    );
\clk_divider_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_divider_reg[4]_i_1_n_0\,
      CO(3) => \clk_divider_reg[8]_i_1_n_0\,
      CO(2) => \clk_divider_reg[8]_i_1_n_1\,
      CO(1) => \clk_divider_reg[8]_i_1_n_2\,
      CO(0) => \clk_divider_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clk_divider_reg[8]_i_1_n_4\,
      O(2) => \clk_divider_reg[8]_i_1_n_5\,
      O(1) => \clk_divider_reg[8]_i_1_n_6\,
      O(0) => \clk_divider_reg[8]_i_1_n_7\,
      S(3) => \clk_divider_reg_n_0_[11]\,
      S(2) => \clk_divider_reg_n_0_[10]\,
      S(1) => \clk_divider_reg_n_0_[9]\,
      S(0) => \clk_divider_reg_n_0_[8]\
    );
\clk_divider_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \clk_divider_reg[8]_i_1_n_6\,
      Q => \clk_divider_reg_n_0_[9]\,
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
entity es_led_blinker_0_0 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    square : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of es_led_blinker_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of es_led_blinker_0_0 : entity is "es_led_blinker_0_0,led_blinker,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of es_led_blinker_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of es_led_blinker_0_0 : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of es_led_blinker_0_0 : entity is "led_blinker,Vivado 2020.2";
end es_led_blinker_0_0;

architecture STRUCTURE of es_led_blinker_0_0 is
begin
U0: entity work.es_led_blinker_0_0_led_blinker
     port map (
      clk => clk,
      reset => reset,
      square => square
    );
end STRUCTURE;
