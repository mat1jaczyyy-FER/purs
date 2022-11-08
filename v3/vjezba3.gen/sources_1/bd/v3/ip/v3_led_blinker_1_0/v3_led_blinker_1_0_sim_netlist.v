// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Nov  8 18:12:49 2022
// Host        : mat1-PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               h:/FER/7.semestar/purs/lab/matijaca_dominik/v3/vjezba3.gen/sources_1/bd/v3/ip/v3_led_blinker_1_0/v3_led_blinker_1_0_sim_netlist.v
// Design      : v3_led_blinker_1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "v3_led_blinker_1_0,led_blinker,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "led_blinker,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module v3_led_blinker_1_0
   (clk,
    reset,
    square);
  input clk;
  input reset;
  output square;

  wire clk;
  wire reset;
  wire square;

  v3_led_blinker_1_0_led_blinker U0
       (.clk(clk),
        .reset(reset),
        .square(square));
endmodule

(* ORIG_REF_NAME = "led_blinker" *) 
module v3_led_blinker_1_0_led_blinker
   (square,
    reset,
    clk);
  output square;
  input reset;
  input clk;

  wire clk;
  wire \clk_divider[0]_i_2_n_0 ;
  wire \clk_divider_reg[0]_i_1_n_0 ;
  wire \clk_divider_reg[0]_i_1_n_1 ;
  wire \clk_divider_reg[0]_i_1_n_2 ;
  wire \clk_divider_reg[0]_i_1_n_3 ;
  wire \clk_divider_reg[0]_i_1_n_4 ;
  wire \clk_divider_reg[0]_i_1_n_5 ;
  wire \clk_divider_reg[0]_i_1_n_6 ;
  wire \clk_divider_reg[0]_i_1_n_7 ;
  wire \clk_divider_reg[12]_i_1_n_0 ;
  wire \clk_divider_reg[12]_i_1_n_1 ;
  wire \clk_divider_reg[12]_i_1_n_2 ;
  wire \clk_divider_reg[12]_i_1_n_3 ;
  wire \clk_divider_reg[12]_i_1_n_4 ;
  wire \clk_divider_reg[12]_i_1_n_5 ;
  wire \clk_divider_reg[12]_i_1_n_6 ;
  wire \clk_divider_reg[12]_i_1_n_7 ;
  wire \clk_divider_reg[16]_i_1_n_0 ;
  wire \clk_divider_reg[16]_i_1_n_1 ;
  wire \clk_divider_reg[16]_i_1_n_2 ;
  wire \clk_divider_reg[16]_i_1_n_3 ;
  wire \clk_divider_reg[16]_i_1_n_4 ;
  wire \clk_divider_reg[16]_i_1_n_5 ;
  wire \clk_divider_reg[16]_i_1_n_6 ;
  wire \clk_divider_reg[16]_i_1_n_7 ;
  wire \clk_divider_reg[20]_i_1_n_0 ;
  wire \clk_divider_reg[20]_i_1_n_1 ;
  wire \clk_divider_reg[20]_i_1_n_2 ;
  wire \clk_divider_reg[20]_i_1_n_3 ;
  wire \clk_divider_reg[20]_i_1_n_4 ;
  wire \clk_divider_reg[20]_i_1_n_5 ;
  wire \clk_divider_reg[20]_i_1_n_6 ;
  wire \clk_divider_reg[20]_i_1_n_7 ;
  wire \clk_divider_reg[27]_i_1_n_1 ;
  wire \clk_divider_reg[27]_i_1_n_2 ;
  wire \clk_divider_reg[27]_i_1_n_3 ;
  wire \clk_divider_reg[27]_i_1_n_4 ;
  wire \clk_divider_reg[27]_i_1_n_5 ;
  wire \clk_divider_reg[27]_i_1_n_6 ;
  wire \clk_divider_reg[27]_i_1_n_7 ;
  wire \clk_divider_reg[4]_i_1_n_0 ;
  wire \clk_divider_reg[4]_i_1_n_1 ;
  wire \clk_divider_reg[4]_i_1_n_2 ;
  wire \clk_divider_reg[4]_i_1_n_3 ;
  wire \clk_divider_reg[4]_i_1_n_4 ;
  wire \clk_divider_reg[4]_i_1_n_5 ;
  wire \clk_divider_reg[4]_i_1_n_6 ;
  wire \clk_divider_reg[4]_i_1_n_7 ;
  wire \clk_divider_reg[8]_i_1_n_0 ;
  wire \clk_divider_reg[8]_i_1_n_1 ;
  wire \clk_divider_reg[8]_i_1_n_2 ;
  wire \clk_divider_reg[8]_i_1_n_3 ;
  wire \clk_divider_reg[8]_i_1_n_4 ;
  wire \clk_divider_reg[8]_i_1_n_5 ;
  wire \clk_divider_reg[8]_i_1_n_6 ;
  wire \clk_divider_reg[8]_i_1_n_7 ;
  wire \clk_divider_reg_n_0_[0] ;
  wire \clk_divider_reg_n_0_[10] ;
  wire \clk_divider_reg_n_0_[11] ;
  wire \clk_divider_reg_n_0_[12] ;
  wire \clk_divider_reg_n_0_[13] ;
  wire \clk_divider_reg_n_0_[14] ;
  wire \clk_divider_reg_n_0_[15] ;
  wire \clk_divider_reg_n_0_[16] ;
  wire \clk_divider_reg_n_0_[17] ;
  wire \clk_divider_reg_n_0_[18] ;
  wire \clk_divider_reg_n_0_[19] ;
  wire \clk_divider_reg_n_0_[1] ;
  wire \clk_divider_reg_n_0_[20] ;
  wire \clk_divider_reg_n_0_[21] ;
  wire \clk_divider_reg_n_0_[22] ;
  wire \clk_divider_reg_n_0_[23] ;
  wire \clk_divider_reg_n_0_[24] ;
  wire \clk_divider_reg_n_0_[25] ;
  wire \clk_divider_reg_n_0_[26] ;
  wire \clk_divider_reg_n_0_[2] ;
  wire \clk_divider_reg_n_0_[3] ;
  wire \clk_divider_reg_n_0_[4] ;
  wire \clk_divider_reg_n_0_[5] ;
  wire \clk_divider_reg_n_0_[6] ;
  wire \clk_divider_reg_n_0_[7] ;
  wire \clk_divider_reg_n_0_[8] ;
  wire \clk_divider_reg_n_0_[9] ;
  wire reset;
  wire reset_sync;
  wire square;
  wire [3:3]\NLW_clk_divider_reg[27]_i_1_CO_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \clk_divider[0]_i_2 
       (.I0(\clk_divider_reg_n_0_[0] ),
        .O(\clk_divider[0]_i_2_n_0 ));
  FDRE \clk_divider_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_divider_reg[0]_i_1_n_7 ),
        .Q(\clk_divider_reg_n_0_[0] ),
        .R(reset_sync));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \clk_divider_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\clk_divider_reg[0]_i_1_n_0 ,\clk_divider_reg[0]_i_1_n_1 ,\clk_divider_reg[0]_i_1_n_2 ,\clk_divider_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\clk_divider_reg[0]_i_1_n_4 ,\clk_divider_reg[0]_i_1_n_5 ,\clk_divider_reg[0]_i_1_n_6 ,\clk_divider_reg[0]_i_1_n_7 }),
        .S({\clk_divider_reg_n_0_[3] ,\clk_divider_reg_n_0_[2] ,\clk_divider_reg_n_0_[1] ,\clk_divider[0]_i_2_n_0 }));
  FDRE \clk_divider_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_divider_reg[8]_i_1_n_5 ),
        .Q(\clk_divider_reg_n_0_[10] ),
        .R(reset_sync));
  FDRE \clk_divider_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_divider_reg[8]_i_1_n_4 ),
        .Q(\clk_divider_reg_n_0_[11] ),
        .R(reset_sync));
  FDRE \clk_divider_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_divider_reg[12]_i_1_n_7 ),
        .Q(\clk_divider_reg_n_0_[12] ),
        .R(reset_sync));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \clk_divider_reg[12]_i_1 
       (.CI(\clk_divider_reg[8]_i_1_n_0 ),
        .CO({\clk_divider_reg[12]_i_1_n_0 ,\clk_divider_reg[12]_i_1_n_1 ,\clk_divider_reg[12]_i_1_n_2 ,\clk_divider_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clk_divider_reg[12]_i_1_n_4 ,\clk_divider_reg[12]_i_1_n_5 ,\clk_divider_reg[12]_i_1_n_6 ,\clk_divider_reg[12]_i_1_n_7 }),
        .S({\clk_divider_reg_n_0_[15] ,\clk_divider_reg_n_0_[14] ,\clk_divider_reg_n_0_[13] ,\clk_divider_reg_n_0_[12] }));
  FDRE \clk_divider_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_divider_reg[12]_i_1_n_6 ),
        .Q(\clk_divider_reg_n_0_[13] ),
        .R(reset_sync));
  FDRE \clk_divider_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_divider_reg[12]_i_1_n_5 ),
        .Q(\clk_divider_reg_n_0_[14] ),
        .R(reset_sync));
  FDRE \clk_divider_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_divider_reg[12]_i_1_n_4 ),
        .Q(\clk_divider_reg_n_0_[15] ),
        .R(reset_sync));
  FDRE \clk_divider_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_divider_reg[16]_i_1_n_7 ),
        .Q(\clk_divider_reg_n_0_[16] ),
        .R(reset_sync));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \clk_divider_reg[16]_i_1 
       (.CI(\clk_divider_reg[12]_i_1_n_0 ),
        .CO({\clk_divider_reg[16]_i_1_n_0 ,\clk_divider_reg[16]_i_1_n_1 ,\clk_divider_reg[16]_i_1_n_2 ,\clk_divider_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clk_divider_reg[16]_i_1_n_4 ,\clk_divider_reg[16]_i_1_n_5 ,\clk_divider_reg[16]_i_1_n_6 ,\clk_divider_reg[16]_i_1_n_7 }),
        .S({\clk_divider_reg_n_0_[19] ,\clk_divider_reg_n_0_[18] ,\clk_divider_reg_n_0_[17] ,\clk_divider_reg_n_0_[16] }));
  FDRE \clk_divider_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_divider_reg[16]_i_1_n_6 ),
        .Q(\clk_divider_reg_n_0_[17] ),
        .R(reset_sync));
  FDRE \clk_divider_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_divider_reg[16]_i_1_n_5 ),
        .Q(\clk_divider_reg_n_0_[18] ),
        .R(reset_sync));
  FDRE \clk_divider_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_divider_reg[16]_i_1_n_4 ),
        .Q(\clk_divider_reg_n_0_[19] ),
        .R(reset_sync));
  FDRE \clk_divider_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_divider_reg[0]_i_1_n_6 ),
        .Q(\clk_divider_reg_n_0_[1] ),
        .R(reset_sync));
  FDRE \clk_divider_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_divider_reg[20]_i_1_n_7 ),
        .Q(\clk_divider_reg_n_0_[20] ),
        .R(reset_sync));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \clk_divider_reg[20]_i_1 
       (.CI(\clk_divider_reg[16]_i_1_n_0 ),
        .CO({\clk_divider_reg[20]_i_1_n_0 ,\clk_divider_reg[20]_i_1_n_1 ,\clk_divider_reg[20]_i_1_n_2 ,\clk_divider_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clk_divider_reg[20]_i_1_n_4 ,\clk_divider_reg[20]_i_1_n_5 ,\clk_divider_reg[20]_i_1_n_6 ,\clk_divider_reg[20]_i_1_n_7 }),
        .S({\clk_divider_reg_n_0_[23] ,\clk_divider_reg_n_0_[22] ,\clk_divider_reg_n_0_[21] ,\clk_divider_reg_n_0_[20] }));
  FDRE \clk_divider_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_divider_reg[20]_i_1_n_6 ),
        .Q(\clk_divider_reg_n_0_[21] ),
        .R(reset_sync));
  FDRE \clk_divider_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_divider_reg[20]_i_1_n_5 ),
        .Q(\clk_divider_reg_n_0_[22] ),
        .R(reset_sync));
  FDRE \clk_divider_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_divider_reg[20]_i_1_n_4 ),
        .Q(\clk_divider_reg_n_0_[23] ),
        .R(reset_sync));
  FDRE \clk_divider_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_divider_reg[27]_i_1_n_7 ),
        .Q(\clk_divider_reg_n_0_[24] ),
        .R(reset_sync));
  FDRE \clk_divider_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_divider_reg[27]_i_1_n_6 ),
        .Q(\clk_divider_reg_n_0_[25] ),
        .R(reset_sync));
  FDRE \clk_divider_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_divider_reg[27]_i_1_n_5 ),
        .Q(\clk_divider_reg_n_0_[26] ),
        .R(reset_sync));
  FDRE \clk_divider_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_divider_reg[27]_i_1_n_4 ),
        .Q(square),
        .R(reset_sync));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \clk_divider_reg[27]_i_1 
       (.CI(\clk_divider_reg[20]_i_1_n_0 ),
        .CO({\NLW_clk_divider_reg[27]_i_1_CO_UNCONNECTED [3],\clk_divider_reg[27]_i_1_n_1 ,\clk_divider_reg[27]_i_1_n_2 ,\clk_divider_reg[27]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clk_divider_reg[27]_i_1_n_4 ,\clk_divider_reg[27]_i_1_n_5 ,\clk_divider_reg[27]_i_1_n_6 ,\clk_divider_reg[27]_i_1_n_7 }),
        .S({square,\clk_divider_reg_n_0_[26] ,\clk_divider_reg_n_0_[25] ,\clk_divider_reg_n_0_[24] }));
  FDRE \clk_divider_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_divider_reg[0]_i_1_n_5 ),
        .Q(\clk_divider_reg_n_0_[2] ),
        .R(reset_sync));
  FDRE \clk_divider_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_divider_reg[0]_i_1_n_4 ),
        .Q(\clk_divider_reg_n_0_[3] ),
        .R(reset_sync));
  FDRE \clk_divider_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_divider_reg[4]_i_1_n_7 ),
        .Q(\clk_divider_reg_n_0_[4] ),
        .R(reset_sync));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \clk_divider_reg[4]_i_1 
       (.CI(\clk_divider_reg[0]_i_1_n_0 ),
        .CO({\clk_divider_reg[4]_i_1_n_0 ,\clk_divider_reg[4]_i_1_n_1 ,\clk_divider_reg[4]_i_1_n_2 ,\clk_divider_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clk_divider_reg[4]_i_1_n_4 ,\clk_divider_reg[4]_i_1_n_5 ,\clk_divider_reg[4]_i_1_n_6 ,\clk_divider_reg[4]_i_1_n_7 }),
        .S({\clk_divider_reg_n_0_[7] ,\clk_divider_reg_n_0_[6] ,\clk_divider_reg_n_0_[5] ,\clk_divider_reg_n_0_[4] }));
  FDRE \clk_divider_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_divider_reg[4]_i_1_n_6 ),
        .Q(\clk_divider_reg_n_0_[5] ),
        .R(reset_sync));
  FDRE \clk_divider_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_divider_reg[4]_i_1_n_5 ),
        .Q(\clk_divider_reg_n_0_[6] ),
        .R(reset_sync));
  FDRE \clk_divider_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_divider_reg[4]_i_1_n_4 ),
        .Q(\clk_divider_reg_n_0_[7] ),
        .R(reset_sync));
  FDRE \clk_divider_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_divider_reg[8]_i_1_n_7 ),
        .Q(\clk_divider_reg_n_0_[8] ),
        .R(reset_sync));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \clk_divider_reg[8]_i_1 
       (.CI(\clk_divider_reg[4]_i_1_n_0 ),
        .CO({\clk_divider_reg[8]_i_1_n_0 ,\clk_divider_reg[8]_i_1_n_1 ,\clk_divider_reg[8]_i_1_n_2 ,\clk_divider_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clk_divider_reg[8]_i_1_n_4 ,\clk_divider_reg[8]_i_1_n_5 ,\clk_divider_reg[8]_i_1_n_6 ,\clk_divider_reg[8]_i_1_n_7 }),
        .S({\clk_divider_reg_n_0_[11] ,\clk_divider_reg_n_0_[10] ,\clk_divider_reg_n_0_[9] ,\clk_divider_reg_n_0_[8] }));
  FDRE \clk_divider_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_divider_reg[8]_i_1_n_6 ),
        .Q(\clk_divider_reg_n_0_[9] ),
        .R(reset_sync));
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
