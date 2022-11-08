// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Nov  8 17:49:39 2022
// Host        : mat1-PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               h:/FER/7.semestar/purs/lab/matijaca_dominik/v3/vjezba3.gen/sources_1/bd/v3/ip/v3_led_blinker_0_0/v3_led_blinker_0_0_sim_netlist.v
// Design      : v3_led_blinker_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "v3_led_blinker_0_0,led_blinker,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "led_blinker,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module v3_led_blinker_0_0
   (clk,
    reset,
    square);
  input clk;
  input reset;
  output square;

  wire clk;
  wire reset;
  wire square;

  v3_led_blinker_0_0_led_blinker U0
       (.clk(clk),
        .reset(reset),
        .square(square));
endmodule

(* ORIG_REF_NAME = "led_blinker" *) 
module v3_led_blinker_0_0_led_blinker
   (square,
    reset,
    clk);
  output square;
  input reset;
  input clk;

  wire clk;
  wire [1:0]clk_divider;
  wire \clk_divider[0]_i_1_n_0 ;
  wire \clk_divider[1]_i_1_n_0 ;
  wire \clk_divider[2]_i_1_n_0 ;
  wire reset;
  wire reset_sync;
  wire square;

  LUT2 #(
    .INIT(4'h1)) 
    \clk_divider[0]_i_1 
       (.I0(clk_divider[0]),
        .I1(reset_sync),
        .O(\clk_divider[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \clk_divider[1]_i_1 
       (.I0(clk_divider[1]),
        .I1(clk_divider[0]),
        .I2(reset_sync),
        .O(\clk_divider[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    \clk_divider[2]_i_1 
       (.I0(square),
        .I1(clk_divider[1]),
        .I2(clk_divider[0]),
        .I3(reset_sync),
        .O(\clk_divider[2]_i_1_n_0 ));
  FDRE \clk_divider_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_divider[0]_i_1_n_0 ),
        .Q(clk_divider[0]),
        .R(1'b0));
  FDRE \clk_divider_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_divider[1]_i_1_n_0 ),
        .Q(clk_divider[1]),
        .R(1'b0));
  FDRE \clk_divider_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_divider[2]_i_1_n_0 ),
        .Q(square),
        .R(1'b0));
  FDRE reset_sync_reg
       (.C(clk),
        .CE(1'b1),
        .D(reset),
        .Q(reset_sync),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
