// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Wed Nov 12 16:47:44 2025
// Host        : DESKTOP-VEE6H17 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               D:/general/University/VHDL/MIPS/MIPS.srcs/sources_1/bd/MIPS_Design/MIPS_Design_stub.v
// Design      : MIPS_Design
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7vx415tffg1158-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module MIPS_Design(clk, rst)
/* synthesis syn_black_box black_box_pad_pin="clk,rst" */;
  input clk;
  input rst;
endmodule
