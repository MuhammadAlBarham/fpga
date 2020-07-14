////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: Low_Priority_Encoder_16_to_4_synthesis.v
// /___/   /\     Timestamp: Tue Jul 14 17:51:21 2020
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim Low_Priority_Encoder_16_to_4.ngc Low_Priority_Encoder_16_to_4_synthesis.v 
// Device	: xc3s500e-4-fg320
// Input file	: Low_Priority_Encoder_16_to_4.ngc
// Output file	: C:\Users\Phantom\Desktop\16_to_14_Low_Priority_Encoder\netgen\synthesis\Low_Priority_Encoder_16_to_4_synthesis.v
// # of Modules	: 1
// Design Name	: Low_Priority_Encoder_16_to_4
// Xilinx        : C:\Xilinx\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module Low_Priority_Encoder_16_to_4 (
  f, y, W
);
  output f;
  output [3 : 0] y;
  input [15 : 0] W;
  wire N14;
  wire N15;
  wire N17;
  wire W_0_IBUF_19;
  wire W_10_IBUF_20;
  wire W_11_IBUF_21;
  wire W_12_IBUF_22;
  wire W_13_IBUF_23;
  wire W_14_IBUF_24;
  wire W_15_IBUF_25;
  wire W_1_IBUF_26;
  wire W_2_IBUF_27;
  wire W_3_IBUF_28;
  wire W_4_IBUF_29;
  wire W_5_IBUF_30;
  wire W_6_IBUF_31;
  wire W_7_IBUF_32;
  wire W_8_IBUF_33;
  wire W_9_IBUF_34;
  wire f21_36;
  wire f26;
  wire f4_38;
  wire f9_39;
  wire f_OBUF_40;
  wire \y<0>11_42 ;
  wire \y<0>111_43 ;
  wire \y<0>30_44 ;
  wire \y<0>65_45 ;
  wire \y<1>11_47 ;
  wire \y<1>33_48 ;
  wire \y<2>22_50 ;
  wire \y<2>4_51 ;
  wire \y<2>9_52 ;
  wire \y<3>29_54 ;
  wire \y<3>9_55 ;
  wire y_0_OBUF_56;
  wire y_1_OBUF_57;
  wire y_2_OBUF_58;
  wire y_3_OBUF_59;
  LUT4 #(
    .INIT ( 16'h0001 ))
  \y<3>21  (
    .I0(W_3_IBUF_28),
    .I1(W_2_IBUF_27),
    .I2(W_0_IBUF_19),
    .I3(W_1_IBUF_26),
    .O(N14)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \y<3>4  (
    .I0(W_13_IBUF_23),
    .I1(W_12_IBUF_22),
    .I2(W_11_IBUF_21),
    .I3(W_10_IBUF_20),
    .O(f26)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \y<3>9  (
    .I0(W_9_IBUF_34),
    .I1(W_8_IBUF_33),
    .I2(W_15_IBUF_25),
    .I3(W_14_IBUF_24),
    .O(\y<3>9_55 )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \y<3>29  (
    .I0(W_7_IBUF_32),
    .I1(W_6_IBUF_31),
    .I2(W_5_IBUF_30),
    .I3(W_4_IBUF_29),
    .O(\y<3>29_54 )
  );
  LUT4 #(
    .INIT ( 16'hC080 ))
  \y<3>38  (
    .I0(f26),
    .I1(\y<3>29_54 ),
    .I2(N14),
    .I3(\y<3>9_55 ),
    .O(y_3_OBUF_59)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  f4 (
    .I0(W_9_IBUF_34),
    .I1(W_8_IBUF_33),
    .I2(W_7_IBUF_32),
    .I3(W_6_IBUF_31),
    .O(f4_38)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  f9 (
    .I0(W_5_IBUF_30),
    .I1(W_4_IBUF_29),
    .I2(W_3_IBUF_28),
    .I3(W_2_IBUF_27),
    .O(f9_39)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  f21 (
    .I0(W_1_IBUF_26),
    .I1(W_0_IBUF_19),
    .I2(W_15_IBUF_25),
    .I3(W_14_IBUF_24),
    .O(f21_36)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  f36 (
    .I0(f4_38),
    .I1(f9_39),
    .I2(f21_36),
    .I3(f26),
    .O(f_OBUF_40)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \y<2>4  (
    .I0(W_4_IBUF_29),
    .I1(W_5_IBUF_30),
    .I2(W_6_IBUF_31),
    .I3(W_7_IBUF_32),
    .O(\y<2>4_51 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \y<2>9  (
    .I0(W_12_IBUF_22),
    .I1(W_13_IBUF_23),
    .I2(W_14_IBUF_24),
    .I3(W_15_IBUF_25),
    .O(\y<2>9_52 )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \y<2>22  (
    .I0(W_10_IBUF_20),
    .I1(W_11_IBUF_21),
    .I2(W_8_IBUF_33),
    .I3(W_9_IBUF_34),
    .O(\y<2>22_50 )
  );
  LUT4 #(
    .INIT ( 16'hAA80 ))
  \y<2>47  (
    .I0(N14),
    .I1(\y<2>9_52 ),
    .I2(\y<2>22_50 ),
    .I3(\y<2>4_51 ),
    .O(y_2_OBUF_58)
  );
  LUT4 #(
    .INIT ( 16'h1110 ))
  \y<1>11  (
    .I0(W_12_IBUF_22),
    .I1(W_13_IBUF_23),
    .I2(W_14_IBUF_24),
    .I3(W_15_IBUF_25),
    .O(\y<1>11_47 )
  );
  LUT4 #(
    .INIT ( 16'h5510 ))
  \y<0>11  (
    .I0(W_12_IBUF_22),
    .I1(W_14_IBUF_24),
    .I2(W_15_IBUF_25),
    .I3(W_13_IBUF_23),
    .O(\y<0>11_42 )
  );
  LUT4 #(
    .INIT ( 16'hFF54 ))
  \y<0>30  (
    .I0(W_10_IBUF_20),
    .I1(\y<0>11_42 ),
    .I2(W_11_IBUF_21),
    .I3(W_9_IBUF_34),
    .O(\y<0>30_44 )
  );
  LUT4 #(
    .INIT ( 16'h5510 ))
  \y<0>65  (
    .I0(W_6_IBUF_31),
    .I1(W_8_IBUF_33),
    .I2(\y<0>30_44 ),
    .I3(W_7_IBUF_32),
    .O(\y<0>65_45 )
  );
  LUT4 #(
    .INIT ( 16'hFF54 ))
  \y<0>111  (
    .I0(W_4_IBUF_29),
    .I1(\y<0>65_45 ),
    .I2(W_5_IBUF_30),
    .I3(W_3_IBUF_28),
    .O(\y<0>111_43 )
  );
  LUT4 #(
    .INIT ( 16'h5510 ))
  \y<0>163  (
    .I0(W_0_IBUF_19),
    .I1(W_2_IBUF_27),
    .I2(\y<0>111_43 ),
    .I3(W_1_IBUF_26),
    .O(y_0_OBUF_56)
  );
  IBUF   W_15_IBUF (
    .I(W[15]),
    .O(W_15_IBUF_25)
  );
  IBUF   W_14_IBUF (
    .I(W[14]),
    .O(W_14_IBUF_24)
  );
  IBUF   W_13_IBUF (
    .I(W[13]),
    .O(W_13_IBUF_23)
  );
  IBUF   W_12_IBUF (
    .I(W[12]),
    .O(W_12_IBUF_22)
  );
  IBUF   W_11_IBUF (
    .I(W[11]),
    .O(W_11_IBUF_21)
  );
  IBUF   W_10_IBUF (
    .I(W[10]),
    .O(W_10_IBUF_20)
  );
  IBUF   W_9_IBUF (
    .I(W[9]),
    .O(W_9_IBUF_34)
  );
  IBUF   W_8_IBUF (
    .I(W[8]),
    .O(W_8_IBUF_33)
  );
  IBUF   W_7_IBUF (
    .I(W[7]),
    .O(W_7_IBUF_32)
  );
  IBUF   W_6_IBUF (
    .I(W[6]),
    .O(W_6_IBUF_31)
  );
  IBUF   W_5_IBUF (
    .I(W[5]),
    .O(W_5_IBUF_30)
  );
  IBUF   W_4_IBUF (
    .I(W[4]),
    .O(W_4_IBUF_29)
  );
  IBUF   W_3_IBUF (
    .I(W[3]),
    .O(W_3_IBUF_28)
  );
  IBUF   W_2_IBUF (
    .I(W[2]),
    .O(W_2_IBUF_27)
  );
  IBUF   W_1_IBUF (
    .I(W[1]),
    .O(W_1_IBUF_26)
  );
  IBUF   W_0_IBUF (
    .I(W[0]),
    .O(W_0_IBUF_19)
  );
  OBUF   f_OBUF (
    .I(f_OBUF_40),
    .O(f)
  );
  OBUF   y_3_OBUF (
    .I(y_3_OBUF_59),
    .O(y[3])
  );
  OBUF   y_2_OBUF (
    .I(y_2_OBUF_58),
    .O(y[2])
  );
  OBUF   y_1_OBUF (
    .I(y_1_OBUF_57),
    .O(y[1])
  );
  OBUF   y_0_OBUF (
    .I(y_0_OBUF_56),
    .O(y[0])
  );
  LUT4 #(
    .INIT ( 16'h5554 ))
  \y<1>33_SW0  (
    .I0(W_9_IBUF_34),
    .I1(W_10_IBUF_20),
    .I2(W_11_IBUF_21),
    .I3(\y<1>11_47 ),
    .O(N15)
  );
  LUT4 #(
    .INIT ( 16'hFFBA ))
  \y<1>33  (
    .I0(W_7_IBUF_32),
    .I1(W_8_IBUF_33),
    .I2(N15),
    .I3(W_6_IBUF_31),
    .O(\y<1>33_48 )
  );
  LUT4 #(
    .INIT ( 16'hFF10 ))
  \y<1>78_SW0  (
    .I0(W_4_IBUF_29),
    .I1(W_5_IBUF_30),
    .I2(\y<1>33_48 ),
    .I3(W_3_IBUF_28),
    .O(N17)
  );
  LUT4 #(
    .INIT ( 16'h1110 ))
  \y<1>78  (
    .I0(W_0_IBUF_19),
    .I1(W_1_IBUF_26),
    .I2(W_2_IBUF_27),
    .I3(N17),
    .O(y_1_OBUF_57)
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

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

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

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

endmodule

`endif

