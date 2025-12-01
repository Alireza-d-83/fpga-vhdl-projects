// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Feb 20 20:12:48 2025
// Host        : Alirezad_laptop running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               D:/University/VHDL/decoder/decoder.sim/sim_1/impl/timing/xsim/tb_decoder_4_16_time_impl.v
// Design      : decoder_4_16
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xczu2eg-sfva625-1L-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "30f3f7fc" *) 
(* NotValidForBitStream *)
module decoder_4_16
   (C);
  output [15:0]C;

  wire [15:0]C;

initial begin
 $sdf_annotate("tb_decoder_4_16_time_impl.sdf",,,,"tool_control");
end
  OBUF \C_OBUF[0]_inst 
       (.I(1'b1),
        .O(C[0]));
  OBUF \C_OBUF[10]_inst 
       (.I(1'b0),
        .O(C[10]));
  OBUF \C_OBUF[11]_inst 
       (.I(1'b0),
        .O(C[11]));
  OBUF \C_OBUF[12]_inst 
       (.I(1'b0),
        .O(C[12]));
  OBUF \C_OBUF[13]_inst 
       (.I(1'b0),
        .O(C[13]));
  OBUF \C_OBUF[14]_inst 
       (.I(1'b0),
        .O(C[14]));
  OBUF \C_OBUF[15]_inst 
       (.I(1'b0),
        .O(C[15]));
  OBUF \C_OBUF[1]_inst 
       (.I(1'b0),
        .O(C[1]));
  OBUF \C_OBUF[2]_inst 
       (.I(1'b0),
        .O(C[2]));
  OBUF \C_OBUF[3]_inst 
       (.I(1'b0),
        .O(C[3]));
  OBUF \C_OBUF[4]_inst 
       (.I(1'b0),
        .O(C[4]));
  OBUF \C_OBUF[5]_inst 
       (.I(1'b0),
        .O(C[5]));
  OBUF \C_OBUF[6]_inst 
       (.I(1'b0),
        .O(C[6]));
  OBUF \C_OBUF[7]_inst 
       (.I(1'b0),
        .O(C[7]));
  OBUF \C_OBUF[8]_inst 
       (.I(1'b0),
        .O(C[8]));
  OBUF \C_OBUF[9]_inst 
       (.I(1'b0),
        .O(C[9]));
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
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
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

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
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
