-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Tue Nov  8 18:12:49 2022
-- Host        : mat1-PC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               h:/FER/7.semestar/purs/lab/matijaca_dominik/v3/vjezba3.gen/sources_1/bd/v3/ip/v3_led_blinker_0_0/v3_led_blinker_0_0_stub.vhdl
-- Design      : v3_led_blinker_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity v3_led_blinker_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    square : out STD_LOGIC
  );

end v3_led_blinker_0_0;

architecture stub of v3_led_blinker_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,reset,square";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "led_blinker,Vivado 2020.2";
begin
end;
