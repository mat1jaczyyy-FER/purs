// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Nov  8 19:29:14 2022
// Host        : mat1-PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               h:/FER/7.semestar/purs/lab/matijaca_dominik/v4/vjezba4.gen/sources_1/bd/es/ip/es_led_blinker_0_0/es_led_blinker_0_0_stub.v
// Design      : es_led_blinker_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "led_blinker,Vivado 2020.2" *)
module es_led_blinker_0_0(clk, reset, square)
/* synthesis syn_black_box black_box_pad_pin="clk,reset,square" */;
  input clk;
  input reset;
  output square;
endmodule
