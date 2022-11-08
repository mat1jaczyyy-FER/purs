--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
--Date        : Tue Nov  8 18:12:07 2022
--Host        : mat1-PC running 64-bit major release  (build 9200)
--Command     : generate_target v3_wrapper.bd
--Design      : v3_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity v3_wrapper is
  port (
    LD2 : out STD_LOGIC;
    LD3 : out STD_LOGIC;
    clk : in STD_LOGIC;
    reset : in STD_LOGIC
  );
end v3_wrapper;

architecture STRUCTURE of v3_wrapper is
  component v3 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    LD2 : out STD_LOGIC;
    LD3 : out STD_LOGIC
  );
  end component v3;
begin
v3_i: component v3
     port map (
      LD2 => LD2,
      LD3 => LD3,
      clk => clk,
      reset => reset
    );
end STRUCTURE;
