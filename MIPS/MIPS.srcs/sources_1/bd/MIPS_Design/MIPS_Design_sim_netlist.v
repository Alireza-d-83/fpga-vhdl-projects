// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Wed Nov 12 16:47:44 2025
// Host        : DESKTOP-VEE6H17 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/general/University/VHDL/MIPS/MIPS.srcs/sources_1/bd/MIPS_Design/MIPS_Design_sim_netlist.v
// Design      : MIPS_Design
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx415tffg1158-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* hw_handoff = "MIPS_Design.hwdef" *) 
(* NotValidForBitStream *)
module MIPS_Design
   (clk,
    rst);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_RESET rst, CLK_DOMAIN MIPS_Design_clk, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 RST.RST RST" *) (* x_interface_parameter = "XIL_INTERFACENAME RST.RST, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input rst;

  wire [31:0]ALU_0_Result_0;
  wire ALU_0_zeros;
  wire [2:0]ALU_Control_0_func;
  wire [1:0]Control_Unit_0_ALUOP;
  wire Control_Unit_0_ALUScr;
  wire Control_Unit_0_Branch;
  wire Control_Unit_0_MemRead;
  wire Control_Unit_0_MemtoReg;
  wire Control_Unit_0_RegDst;
  wire Control_Unit_0_RegWrite;
  wire [31:0]Data1;
  wire [31:0]Data2;
  wire [31:0]File_Register_0_ReadData1;
  wire [31:0]File_Register_0_ReadData2_0;
  wire [31:0]IM_0_ReadData_0;
  wire [29:0]PC_0_DataOut_0;
  wire [31:0]Sign_Extention_0_DataOut_0;
  wire clk;
  wire [31:0]mux_2x1_1_DataOut;
  wire [29:0]mux_2x1_2_DataOut;
  wire [31:0]mux_2x1_4_DataOut;
  wire [4:0]mux_addr_0_DataOut;
  wire rst;
  wire util_vector_logic_0_Res;
  wire [31:30]NLW_mux_2x1_2_DataOut_UNCONNECTED;

  (* CHECK_LICENSE_TYPE = "MIPS_Design_ALU_0_0,ALU,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* ip_definition_source = "module_ref" *) 
  (* x_core_info = "ALU,Vivado 2018.3" *) 
  MIPS_Design_MIPS_Design_ALU_0_0 ALU_0
       (.Data1(File_Register_0_ReadData1),
        .Data2(mux_2x1_1_DataOut),
        .Result(ALU_0_Result_0),
        .func(ALU_Control_0_func),
        .zeros(ALU_0_zeros));
  (* CHECK_LICENSE_TYPE = "MIPS_Design_ALU_Control_0_0,ALU_Control,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* ip_definition_source = "module_ref" *) 
  (* x_core_info = "ALU_Control,Vivado 2018.3" *) 
  MIPS_Design_MIPS_Design_ALU_Control_0_0 ALU_Control_0
       (.ALUOP(Control_Unit_0_ALUOP),
        .Instruction(IM_0_ReadData_0[5:0]),
        .func(ALU_Control_0_func));
  (* CHECK_LICENSE_TYPE = "MIPS_Design_Control_Unit_0_0,Control_Unit,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* ip_definition_source = "module_ref" *) 
  (* x_core_info = "Control_Unit,Vivado 2018.3" *) 
  MIPS_Design_MIPS_Design_Control_Unit_0_0 Control_Unit
       (.ALUOP(Control_Unit_0_ALUOP),
        .ALUScr(Control_Unit_0_ALUScr),
        .Branch(Control_Unit_0_Branch),
        .MemWrite(Control_Unit_0_MemRead),
        .MemtoReg(Control_Unit_0_MemtoReg),
        .OP(IM_0_ReadData_0[5:0]),
        .RegDst(Control_Unit_0_RegDst),
        .RegWrite(Control_Unit_0_RegWrite));
  (* CHECK_LICENSE_TYPE = "MIPS_Design_DM_0_0,DM,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* ip_definition_source = "module_ref" *) 
  (* x_core_info = "DM,Vivado 2018.3" *) 
  MIPS_Design_MIPS_Design_DM_0_0 DM_0
       (.Address(ALU_0_Result_0),
        .En(Control_Unit_0_MemRead),
        .ReadData(Data1),
        .WriteData(File_Register_0_ReadData2_0),
        .clk(clk));
  (* CHECK_LICENSE_TYPE = "MIPS_Design_File_Register_0_0,File_Register,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* ip_definition_source = "module_ref" *) 
  (* x_core_info = "File_Register,Vivado 2018.3" *) 
  MIPS_Design_MIPS_Design_File_Register_0_0 File_Register_0
       (.EN(Control_Unit_0_RegWrite),
        .ReadData1(File_Register_0_ReadData1),
        .ReadData2(File_Register_0_ReadData2_0),
        .ReadRegister1(IM_0_ReadData_0),
        .ReadRegister2(IM_0_ReadData_0),
        .WriteData(mux_2x1_4_DataOut),
        .WriteRegister({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,mux_addr_0_DataOut}),
        .clk(clk));
  (* CHECK_LICENSE_TYPE = "MIPS_Design_IM_0_0,IM,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* ip_definition_source = "module_ref" *) 
  (* x_core_info = "IM,Vivado 2018.3" *) 
  MIPS_Design_MIPS_Design_IM_0_0 IM_0
       (.ReadAddress({1'b0,1'b0,PC_0_DataOut_0}),
        .ReadData(IM_0_ReadData_0),
        .clk(clk));
  (* CHECK_LICENSE_TYPE = "MIPS_Design_PC_0_0,PC,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* ip_definition_source = "module_ref" *) 
  (* x_core_info = "PC,Vivado 2018.3" *) 
  MIPS_Design_MIPS_Design_PC_0_0 PC_0
       (.DataIn(mux_2x1_2_DataOut),
        .DataOut(PC_0_DataOut_0),
        .clk(clk),
        .rst(rst));
  (* CHECK_LICENSE_TYPE = "MIPS_Design_PC_Adder_0_0,PC_Adder,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* ip_definition_source = "module_ref" *) 
  (* x_core_info = "PC_Adder,Vivado 2018.3" *) 
  MIPS_Design_MIPS_Design_PC_Adder_0_0 PC_Adder_0
       (.PC_Data({1'b0,1'b0,PC_0_DataOut_0}),
        .PC_New_Data(Data2),
        .Signextention_data(Sign_Extention_0_DataOut_0));
  (* CHECK_LICENSE_TYPE = "MIPS_Design_Sign_Extention_0_0,Sign_Extention,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* ip_definition_source = "module_ref" *) 
  (* x_core_info = "Sign_Extention,Vivado 2018.3" *) 
  MIPS_Design_MIPS_Design_Sign_Extention_0_0 Sign_Extention_0
       (.DataIn(IM_0_ReadData_0[15:0]),
        .DataOut(Sign_Extention_0_DataOut_0));
  (* CHECK_LICENSE_TYPE = "MIPS_Design_mux_2x1_1_0,mux_2x1,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* ip_definition_source = "module_ref" *) 
  (* x_core_info = "mux_2x1,Vivado 2018.3" *) 
  MIPS_Design_MIPS_Design_mux_2x1_1_0 mux_2x1_1
       (.Data1(File_Register_0_ReadData2_0),
        .Data2(Sign_Extention_0_DataOut_0),
        .DataOut(mux_2x1_1_DataOut),
        .Selector(Control_Unit_0_ALUScr));
  (* CHECK_LICENSE_TYPE = "MIPS_Design_mux_2x1_2_1,mux_2x1,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* ip_definition_source = "module_ref" *) 
  (* x_core_info = "mux_2x1,Vivado 2018.3" *) 
  MIPS_Design_MIPS_Design_mux_2x1_2_1 mux_2x1_2
       (.Data1({1'b0,1'b0,PC_0_DataOut_0}),
        .Data2(Data2),
        .DataOut({NLW_mux_2x1_2_DataOut_UNCONNECTED[31:30],mux_2x1_2_DataOut}),
        .Selector(util_vector_logic_0_Res));
  (* CHECK_LICENSE_TYPE = "MIPS_Design_mux_2x1_4_0,mux_2x1,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* ip_definition_source = "module_ref" *) 
  (* x_core_info = "mux_2x1,Vivado 2018.3" *) 
  MIPS_Design_MIPS_Design_mux_2x1_4_0 mux_2x1_4
       (.Data1(Data1),
        .Data2(ALU_0_Result_0),
        .DataOut(mux_2x1_4_DataOut),
        .Selector(Control_Unit_0_MemtoReg));
  (* CHECK_LICENSE_TYPE = "MIPS_Design_mux_addr_0_0,mux_addr,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* ip_definition_source = "module_ref" *) 
  (* x_core_info = "mux_addr,Vivado 2018.3" *) 
  MIPS_Design_MIPS_Design_mux_addr_0_0 mux_addr_0
       (.Data1(IM_0_ReadData_0),
        .Data2(IM_0_ReadData_0),
        .DataOut(mux_addr_0_DataOut),
        .selector(Control_Unit_0_RegDst));
  (* CHECK_LICENSE_TYPE = "MIPS_Design_util_vector_logic_0_0,util_vector_logic_v2_0_1_util_vector_logic,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2018.3" *) 
  MIPS_Design_MIPS_Design_util_vector_logic_0_0 util_vector_logic_0
       (.Op1(Control_Unit_0_Branch),
        .Op2(ALU_0_zeros),
        .Res(util_vector_logic_0_Res));
endmodule

(* ORIG_REF_NAME = "ALU" *) 
module MIPS_Design_ALU
   (Result,
    Data2,
    Data1,
    func);
  output [31:0]Result;
  input [31:0]Data2;
  input [31:0]Data1;
  input [2:0]func;

  wire [31:0]Data1;
  wire [31:0]Data2;
  wire [31:0]Result;
  wire Result0_carry__0_i_1_n_0;
  wire Result0_carry__0_i_2_n_0;
  wire Result0_carry__0_i_3_n_0;
  wire Result0_carry__0_i_4_n_0;
  wire Result0_carry__0_n_0;
  wire Result0_carry__0_n_1;
  wire Result0_carry__0_n_2;
  wire Result0_carry__0_n_3;
  wire Result0_carry__1_i_1_n_0;
  wire Result0_carry__1_i_2_n_0;
  wire Result0_carry__1_i_3_n_0;
  wire Result0_carry__1_i_4_n_0;
  wire Result0_carry__1_n_0;
  wire Result0_carry__1_n_1;
  wire Result0_carry__1_n_2;
  wire Result0_carry__1_n_3;
  wire Result0_carry__2_i_1_n_0;
  wire Result0_carry__2_i_2_n_0;
  wire Result0_carry__2_i_3_n_0;
  wire Result0_carry__2_i_4_n_0;
  wire Result0_carry__2_n_0;
  wire Result0_carry__2_n_1;
  wire Result0_carry__2_n_2;
  wire Result0_carry__2_n_3;
  wire Result0_carry__3_i_1_n_0;
  wire Result0_carry__3_i_2_n_0;
  wire Result0_carry__3_i_3_n_0;
  wire Result0_carry__3_i_4_n_0;
  wire Result0_carry__3_n_0;
  wire Result0_carry__3_n_1;
  wire Result0_carry__3_n_2;
  wire Result0_carry__3_n_3;
  wire Result0_carry__4_i_1_n_0;
  wire Result0_carry__4_i_2_n_0;
  wire Result0_carry__4_i_3_n_0;
  wire Result0_carry__4_i_4_n_0;
  wire Result0_carry__4_n_0;
  wire Result0_carry__4_n_1;
  wire Result0_carry__4_n_2;
  wire Result0_carry__4_n_3;
  wire Result0_carry__5_i_1_n_0;
  wire Result0_carry__5_i_2_n_0;
  wire Result0_carry__5_i_3_n_0;
  wire Result0_carry__5_i_4_n_0;
  wire Result0_carry__5_n_0;
  wire Result0_carry__5_n_1;
  wire Result0_carry__5_n_2;
  wire Result0_carry__5_n_3;
  wire Result0_carry__6_i_1_n_0;
  wire Result0_carry__6_i_2_n_0;
  wire Result0_carry__6_i_3_n_0;
  wire Result0_carry__6_i_4_n_0;
  wire Result0_carry__6_n_1;
  wire Result0_carry__6_n_2;
  wire Result0_carry__6_n_3;
  wire Result0_carry_i_1_n_0;
  wire Result0_carry_i_2_n_0;
  wire Result0_carry_i_3_n_0;
  wire Result0_carry_i_4_n_0;
  wire Result0_carry_n_0;
  wire Result0_carry_n_1;
  wire Result0_carry_n_2;
  wire Result0_carry_n_3;
  wire \Result0_inferred__0/i__carry__0_n_0 ;
  wire \Result0_inferred__0/i__carry__0_n_1 ;
  wire \Result0_inferred__0/i__carry__0_n_2 ;
  wire \Result0_inferred__0/i__carry__0_n_3 ;
  wire \Result0_inferred__0/i__carry__1_n_0 ;
  wire \Result0_inferred__0/i__carry__1_n_1 ;
  wire \Result0_inferred__0/i__carry__1_n_2 ;
  wire \Result0_inferred__0/i__carry__1_n_3 ;
  wire \Result0_inferred__0/i__carry__2_n_0 ;
  wire \Result0_inferred__0/i__carry__2_n_1 ;
  wire \Result0_inferred__0/i__carry__2_n_2 ;
  wire \Result0_inferred__0/i__carry__2_n_3 ;
  wire \Result0_inferred__0/i__carry__3_n_0 ;
  wire \Result0_inferred__0/i__carry__3_n_1 ;
  wire \Result0_inferred__0/i__carry__3_n_2 ;
  wire \Result0_inferred__0/i__carry__3_n_3 ;
  wire \Result0_inferred__0/i__carry__4_n_0 ;
  wire \Result0_inferred__0/i__carry__4_n_1 ;
  wire \Result0_inferred__0/i__carry__4_n_2 ;
  wire \Result0_inferred__0/i__carry__4_n_3 ;
  wire \Result0_inferred__0/i__carry__5_n_0 ;
  wire \Result0_inferred__0/i__carry__5_n_1 ;
  wire \Result0_inferred__0/i__carry__5_n_2 ;
  wire \Result0_inferred__0/i__carry__5_n_3 ;
  wire \Result0_inferred__0/i__carry__6_n_1 ;
  wire \Result0_inferred__0/i__carry__6_n_2 ;
  wire \Result0_inferred__0/i__carry__6_n_3 ;
  wire \Result0_inferred__0/i__carry_n_0 ;
  wire \Result0_inferred__0/i__carry_n_1 ;
  wire \Result0_inferred__0/i__carry_n_2 ;
  wire \Result0_inferred__0/i__carry_n_3 ;
  wire Result0_n_100;
  wire Result0_n_101;
  wire Result0_n_102;
  wire Result0_n_103;
  wire Result0_n_104;
  wire Result0_n_105;
  wire Result0_n_74;
  wire Result0_n_75;
  wire Result0_n_76;
  wire Result0_n_77;
  wire Result0_n_78;
  wire Result0_n_79;
  wire Result0_n_80;
  wire Result0_n_81;
  wire Result0_n_82;
  wire Result0_n_83;
  wire Result0_n_84;
  wire Result0_n_85;
  wire Result0_n_86;
  wire Result0_n_87;
  wire Result0_n_88;
  wire Result0_n_89;
  wire Result0_n_90;
  wire Result0_n_91;
  wire Result0_n_92;
  wire Result0_n_93;
  wire Result0_n_94;
  wire Result0_n_95;
  wire Result0_n_96;
  wire Result0_n_97;
  wire Result0_n_98;
  wire Result0_n_99;
  wire \Result[0]_INST_0_i_1_n_0 ;
  wire \Result[10]_INST_0_i_1_n_0 ;
  wire \Result[11]_INST_0_i_1_n_0 ;
  wire \Result[12]_INST_0_i_1_n_0 ;
  wire \Result[13]_INST_0_i_1_n_0 ;
  wire \Result[14]_INST_0_i_1_n_0 ;
  wire \Result[15]_INST_0_i_1_n_0 ;
  wire \Result[16]_INST_0_i_1_n_0 ;
  wire \Result[17]_INST_0_i_1_n_0 ;
  wire \Result[18]_INST_0_i_1_n_0 ;
  wire \Result[19]_INST_0_i_1_n_0 ;
  wire \Result[1]_INST_0_i_1_n_0 ;
  wire \Result[20]_INST_0_i_1_n_0 ;
  wire \Result[21]_INST_0_i_1_n_0 ;
  wire \Result[22]_INST_0_i_1_n_0 ;
  wire \Result[23]_INST_0_i_1_n_0 ;
  wire \Result[24]_INST_0_i_1_n_0 ;
  wire \Result[25]_INST_0_i_1_n_0 ;
  wire \Result[26]_INST_0_i_1_n_0 ;
  wire \Result[27]_INST_0_i_1_n_0 ;
  wire \Result[28]_INST_0_i_1_n_0 ;
  wire \Result[29]_INST_0_i_1_n_0 ;
  wire \Result[2]_INST_0_i_1_n_0 ;
  wire \Result[30]_INST_0_i_1_n_0 ;
  wire \Result[31]_INST_0_i_1_n_0 ;
  wire \Result[3]_INST_0_i_1_n_0 ;
  wire \Result[4]_INST_0_i_1_n_0 ;
  wire \Result[5]_INST_0_i_1_n_0 ;
  wire \Result[6]_INST_0_i_1_n_0 ;
  wire \Result[7]_INST_0_i_1_n_0 ;
  wire \Result[8]_INST_0_i_1_n_0 ;
  wire \Result[9]_INST_0_i_1_n_0 ;
  wire [31:0]data0;
  wire [31:0]data1;
  wire [2:0]func;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry__1_i_4_n_0;
  wire i__carry__2_i_1_n_0;
  wire i__carry__2_i_2_n_0;
  wire i__carry__2_i_3_n_0;
  wire i__carry__2_i_4_n_0;
  wire i__carry__3_i_1_n_0;
  wire i__carry__3_i_2_n_0;
  wire i__carry__3_i_3_n_0;
  wire i__carry__3_i_4_n_0;
  wire i__carry__4_i_1_n_0;
  wire i__carry__4_i_2_n_0;
  wire i__carry__4_i_3_n_0;
  wire i__carry__4_i_4_n_0;
  wire i__carry__5_i_1_n_0;
  wire i__carry__5_i_2_n_0;
  wire i__carry__5_i_3_n_0;
  wire i__carry__5_i_4_n_0;
  wire i__carry__6_i_1_n_0;
  wire i__carry__6_i_2_n_0;
  wire i__carry__6_i_3_n_0;
  wire i__carry__6_i_4_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire NLW_Result0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_Result0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_Result0_OVERFLOW_UNCONNECTED;
  wire NLW_Result0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_Result0_PATTERNDETECT_UNCONNECTED;
  wire NLW_Result0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_Result0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_Result0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_Result0_CARRYOUT_UNCONNECTED;
  wire [47:32]NLW_Result0_P_UNCONNECTED;
  wire [47:0]NLW_Result0_PCOUT_UNCONNECTED;
  wire [3:3]NLW_Result0_carry__6_CO_UNCONNECTED;
  wire [3:3]\NLW_Result0_inferred__0/i__carry__6_CO_UNCONNECTED ;

  (* METHODOLOGY_DRC_VIOS = "{SYNTH-13 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    Result0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Data1[15:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_Result0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,Data2[15:0]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_Result0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_Result0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_Result0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_Result0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_Result0_OVERFLOW_UNCONNECTED),
        .P({NLW_Result0_P_UNCONNECTED[47:32],Result0_n_74,Result0_n_75,Result0_n_76,Result0_n_77,Result0_n_78,Result0_n_79,Result0_n_80,Result0_n_81,Result0_n_82,Result0_n_83,Result0_n_84,Result0_n_85,Result0_n_86,Result0_n_87,Result0_n_88,Result0_n_89,Result0_n_90,Result0_n_91,Result0_n_92,Result0_n_93,Result0_n_94,Result0_n_95,Result0_n_96,Result0_n_97,Result0_n_98,Result0_n_99,Result0_n_100,Result0_n_101,Result0_n_102,Result0_n_103,Result0_n_104,Result0_n_105}),
        .PATTERNBDETECT(NLW_Result0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_Result0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_Result0_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_Result0_UNDERFLOW_UNCONNECTED));
  CARRY4 Result0_carry
       (.CI(1'b0),
        .CO({Result0_carry_n_0,Result0_carry_n_1,Result0_carry_n_2,Result0_carry_n_3}),
        .CYINIT(1'b0),
        .DI(Data1[3:0]),
        .O(data0[3:0]),
        .S({Result0_carry_i_1_n_0,Result0_carry_i_2_n_0,Result0_carry_i_3_n_0,Result0_carry_i_4_n_0}));
  CARRY4 Result0_carry__0
       (.CI(Result0_carry_n_0),
        .CO({Result0_carry__0_n_0,Result0_carry__0_n_1,Result0_carry__0_n_2,Result0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(Data1[7:4]),
        .O(data0[7:4]),
        .S({Result0_carry__0_i_1_n_0,Result0_carry__0_i_2_n_0,Result0_carry__0_i_3_n_0,Result0_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    Result0_carry__0_i_1
       (.I0(Data1[7]),
        .I1(Data2[7]),
        .O(Result0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Result0_carry__0_i_2
       (.I0(Data1[6]),
        .I1(Data2[6]),
        .O(Result0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Result0_carry__0_i_3
       (.I0(Data1[5]),
        .I1(Data2[5]),
        .O(Result0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Result0_carry__0_i_4
       (.I0(Data1[4]),
        .I1(Data2[4]),
        .O(Result0_carry__0_i_4_n_0));
  CARRY4 Result0_carry__1
       (.CI(Result0_carry__0_n_0),
        .CO({Result0_carry__1_n_0,Result0_carry__1_n_1,Result0_carry__1_n_2,Result0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(Data1[11:8]),
        .O(data0[11:8]),
        .S({Result0_carry__1_i_1_n_0,Result0_carry__1_i_2_n_0,Result0_carry__1_i_3_n_0,Result0_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    Result0_carry__1_i_1
       (.I0(Data1[11]),
        .I1(Data2[11]),
        .O(Result0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Result0_carry__1_i_2
       (.I0(Data1[10]),
        .I1(Data2[10]),
        .O(Result0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Result0_carry__1_i_3
       (.I0(Data1[9]),
        .I1(Data2[9]),
        .O(Result0_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Result0_carry__1_i_4
       (.I0(Data1[8]),
        .I1(Data2[8]),
        .O(Result0_carry__1_i_4_n_0));
  CARRY4 Result0_carry__2
       (.CI(Result0_carry__1_n_0),
        .CO({Result0_carry__2_n_0,Result0_carry__2_n_1,Result0_carry__2_n_2,Result0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(Data1[15:12]),
        .O(data0[15:12]),
        .S({Result0_carry__2_i_1_n_0,Result0_carry__2_i_2_n_0,Result0_carry__2_i_3_n_0,Result0_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    Result0_carry__2_i_1
       (.I0(Data1[15]),
        .I1(Data2[15]),
        .O(Result0_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Result0_carry__2_i_2
       (.I0(Data1[14]),
        .I1(Data2[14]),
        .O(Result0_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Result0_carry__2_i_3
       (.I0(Data1[13]),
        .I1(Data2[13]),
        .O(Result0_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Result0_carry__2_i_4
       (.I0(Data1[12]),
        .I1(Data2[12]),
        .O(Result0_carry__2_i_4_n_0));
  CARRY4 Result0_carry__3
       (.CI(Result0_carry__2_n_0),
        .CO({Result0_carry__3_n_0,Result0_carry__3_n_1,Result0_carry__3_n_2,Result0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(Data1[19:16]),
        .O(data0[19:16]),
        .S({Result0_carry__3_i_1_n_0,Result0_carry__3_i_2_n_0,Result0_carry__3_i_3_n_0,Result0_carry__3_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    Result0_carry__3_i_1
       (.I0(Data1[19]),
        .I1(Data2[19]),
        .O(Result0_carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Result0_carry__3_i_2
       (.I0(Data1[18]),
        .I1(Data2[18]),
        .O(Result0_carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Result0_carry__3_i_3
       (.I0(Data1[17]),
        .I1(Data2[17]),
        .O(Result0_carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Result0_carry__3_i_4
       (.I0(Data1[16]),
        .I1(Data2[16]),
        .O(Result0_carry__3_i_4_n_0));
  CARRY4 Result0_carry__4
       (.CI(Result0_carry__3_n_0),
        .CO({Result0_carry__4_n_0,Result0_carry__4_n_1,Result0_carry__4_n_2,Result0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(Data1[23:20]),
        .O(data0[23:20]),
        .S({Result0_carry__4_i_1_n_0,Result0_carry__4_i_2_n_0,Result0_carry__4_i_3_n_0,Result0_carry__4_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    Result0_carry__4_i_1
       (.I0(Data1[23]),
        .I1(Data2[23]),
        .O(Result0_carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Result0_carry__4_i_2
       (.I0(Data1[22]),
        .I1(Data2[22]),
        .O(Result0_carry__4_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Result0_carry__4_i_3
       (.I0(Data1[21]),
        .I1(Data2[21]),
        .O(Result0_carry__4_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Result0_carry__4_i_4
       (.I0(Data1[20]),
        .I1(Data2[20]),
        .O(Result0_carry__4_i_4_n_0));
  CARRY4 Result0_carry__5
       (.CI(Result0_carry__4_n_0),
        .CO({Result0_carry__5_n_0,Result0_carry__5_n_1,Result0_carry__5_n_2,Result0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(Data1[27:24]),
        .O(data0[27:24]),
        .S({Result0_carry__5_i_1_n_0,Result0_carry__5_i_2_n_0,Result0_carry__5_i_3_n_0,Result0_carry__5_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    Result0_carry__5_i_1
       (.I0(Data1[27]),
        .I1(Data2[27]),
        .O(Result0_carry__5_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Result0_carry__5_i_2
       (.I0(Data1[26]),
        .I1(Data2[26]),
        .O(Result0_carry__5_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Result0_carry__5_i_3
       (.I0(Data1[25]),
        .I1(Data2[25]),
        .O(Result0_carry__5_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Result0_carry__5_i_4
       (.I0(Data1[24]),
        .I1(Data2[24]),
        .O(Result0_carry__5_i_4_n_0));
  CARRY4 Result0_carry__6
       (.CI(Result0_carry__5_n_0),
        .CO({NLW_Result0_carry__6_CO_UNCONNECTED[3],Result0_carry__6_n_1,Result0_carry__6_n_2,Result0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,Data1[30:28]}),
        .O(data0[31:28]),
        .S({Result0_carry__6_i_1_n_0,Result0_carry__6_i_2_n_0,Result0_carry__6_i_3_n_0,Result0_carry__6_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    Result0_carry__6_i_1
       (.I0(Data1[31]),
        .I1(Data2[31]),
        .O(Result0_carry__6_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Result0_carry__6_i_2
       (.I0(Data1[30]),
        .I1(Data2[30]),
        .O(Result0_carry__6_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Result0_carry__6_i_3
       (.I0(Data1[29]),
        .I1(Data2[29]),
        .O(Result0_carry__6_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Result0_carry__6_i_4
       (.I0(Data1[28]),
        .I1(Data2[28]),
        .O(Result0_carry__6_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Result0_carry_i_1
       (.I0(Data1[3]),
        .I1(Data2[3]),
        .O(Result0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Result0_carry_i_2
       (.I0(Data1[2]),
        .I1(Data2[2]),
        .O(Result0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Result0_carry_i_3
       (.I0(Data1[1]),
        .I1(Data2[1]),
        .O(Result0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Result0_carry_i_4
       (.I0(Data1[0]),
        .I1(Data2[0]),
        .O(Result0_carry_i_4_n_0));
  CARRY4 \Result0_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\Result0_inferred__0/i__carry_n_0 ,\Result0_inferred__0/i__carry_n_1 ,\Result0_inferred__0/i__carry_n_2 ,\Result0_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI(Data1[3:0]),
        .O(data1[3:0]),
        .S({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}));
  CARRY4 \Result0_inferred__0/i__carry__0 
       (.CI(\Result0_inferred__0/i__carry_n_0 ),
        .CO({\Result0_inferred__0/i__carry__0_n_0 ,\Result0_inferred__0/i__carry__0_n_1 ,\Result0_inferred__0/i__carry__0_n_2 ,\Result0_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI(Data1[7:4]),
        .O(data1[7:4]),
        .S({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}));
  CARRY4 \Result0_inferred__0/i__carry__1 
       (.CI(\Result0_inferred__0/i__carry__0_n_0 ),
        .CO({\Result0_inferred__0/i__carry__1_n_0 ,\Result0_inferred__0/i__carry__1_n_1 ,\Result0_inferred__0/i__carry__1_n_2 ,\Result0_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI(Data1[11:8]),
        .O(data1[11:8]),
        .S({i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0,i__carry__1_i_4_n_0}));
  CARRY4 \Result0_inferred__0/i__carry__2 
       (.CI(\Result0_inferred__0/i__carry__1_n_0 ),
        .CO({\Result0_inferred__0/i__carry__2_n_0 ,\Result0_inferred__0/i__carry__2_n_1 ,\Result0_inferred__0/i__carry__2_n_2 ,\Result0_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI(Data1[15:12]),
        .O(data1[15:12]),
        .S({i__carry__2_i_1_n_0,i__carry__2_i_2_n_0,i__carry__2_i_3_n_0,i__carry__2_i_4_n_0}));
  CARRY4 \Result0_inferred__0/i__carry__3 
       (.CI(\Result0_inferred__0/i__carry__2_n_0 ),
        .CO({\Result0_inferred__0/i__carry__3_n_0 ,\Result0_inferred__0/i__carry__3_n_1 ,\Result0_inferred__0/i__carry__3_n_2 ,\Result0_inferred__0/i__carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI(Data1[19:16]),
        .O(data1[19:16]),
        .S({i__carry__3_i_1_n_0,i__carry__3_i_2_n_0,i__carry__3_i_3_n_0,i__carry__3_i_4_n_0}));
  CARRY4 \Result0_inferred__0/i__carry__4 
       (.CI(\Result0_inferred__0/i__carry__3_n_0 ),
        .CO({\Result0_inferred__0/i__carry__4_n_0 ,\Result0_inferred__0/i__carry__4_n_1 ,\Result0_inferred__0/i__carry__4_n_2 ,\Result0_inferred__0/i__carry__4_n_3 }),
        .CYINIT(1'b0),
        .DI(Data1[23:20]),
        .O(data1[23:20]),
        .S({i__carry__4_i_1_n_0,i__carry__4_i_2_n_0,i__carry__4_i_3_n_0,i__carry__4_i_4_n_0}));
  CARRY4 \Result0_inferred__0/i__carry__5 
       (.CI(\Result0_inferred__0/i__carry__4_n_0 ),
        .CO({\Result0_inferred__0/i__carry__5_n_0 ,\Result0_inferred__0/i__carry__5_n_1 ,\Result0_inferred__0/i__carry__5_n_2 ,\Result0_inferred__0/i__carry__5_n_3 }),
        .CYINIT(1'b0),
        .DI(Data1[27:24]),
        .O(data1[27:24]),
        .S({i__carry__5_i_1_n_0,i__carry__5_i_2_n_0,i__carry__5_i_3_n_0,i__carry__5_i_4_n_0}));
  CARRY4 \Result0_inferred__0/i__carry__6 
       (.CI(\Result0_inferred__0/i__carry__5_n_0 ),
        .CO({\NLW_Result0_inferred__0/i__carry__6_CO_UNCONNECTED [3],\Result0_inferred__0/i__carry__6_n_1 ,\Result0_inferred__0/i__carry__6_n_2 ,\Result0_inferred__0/i__carry__6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,Data1[30:28]}),
        .O(data1[31:28]),
        .S({i__carry__6_i_1_n_0,i__carry__6_i_2_n_0,i__carry__6_i_3_n_0,i__carry__6_i_4_n_0}));
  LUT6 #(
    .INIT(64'h3AFAFAFA0ACA0A0A)) 
    \Result[0]_INST_0 
       (.I0(\Result[0]_INST_0_i_1_n_0 ),
        .I1(func[1]),
        .I2(func[2]),
        .I3(Data1[0]),
        .I4(func[0]),
        .I5(Result0_n_105),
        .O(Result[0]));
  LUT6 #(
    .INIT(64'hEFE08F8FEFE08080)) 
    \Result[0]_INST_0_i_1 
       (.I0(Data1[0]),
        .I1(Data2[0]),
        .I2(func[1]),
        .I3(data1[0]),
        .I4(func[0]),
        .I5(data0[0]),
        .O(\Result[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3AFAFAFA0ACA0A0A)) 
    \Result[10]_INST_0 
       (.I0(\Result[10]_INST_0_i_1_n_0 ),
        .I1(func[1]),
        .I2(func[2]),
        .I3(Data1[10]),
        .I4(func[0]),
        .I5(Result0_n_95),
        .O(Result[10]));
  LUT6 #(
    .INIT(64'hEFE08F8FEFE08080)) 
    \Result[10]_INST_0_i_1 
       (.I0(Data1[10]),
        .I1(Data2[10]),
        .I2(func[1]),
        .I3(data1[10]),
        .I4(func[0]),
        .I5(data0[10]),
        .O(\Result[10]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3AFAFAFA0ACA0A0A)) 
    \Result[11]_INST_0 
       (.I0(\Result[11]_INST_0_i_1_n_0 ),
        .I1(func[1]),
        .I2(func[2]),
        .I3(Data1[11]),
        .I4(func[0]),
        .I5(Result0_n_94),
        .O(Result[11]));
  LUT6 #(
    .INIT(64'hEFE08F8FEFE08080)) 
    \Result[11]_INST_0_i_1 
       (.I0(Data1[11]),
        .I1(Data2[11]),
        .I2(func[1]),
        .I3(data1[11]),
        .I4(func[0]),
        .I5(data0[11]),
        .O(\Result[11]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3AFAFAFA0ACA0A0A)) 
    \Result[12]_INST_0 
       (.I0(\Result[12]_INST_0_i_1_n_0 ),
        .I1(func[1]),
        .I2(func[2]),
        .I3(Data1[12]),
        .I4(func[0]),
        .I5(Result0_n_93),
        .O(Result[12]));
  LUT6 #(
    .INIT(64'hEFE08F8FEFE08080)) 
    \Result[12]_INST_0_i_1 
       (.I0(Data1[12]),
        .I1(Data2[12]),
        .I2(func[1]),
        .I3(data1[12]),
        .I4(func[0]),
        .I5(data0[12]),
        .O(\Result[12]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3AFAFAFA0ACA0A0A)) 
    \Result[13]_INST_0 
       (.I0(\Result[13]_INST_0_i_1_n_0 ),
        .I1(func[1]),
        .I2(func[2]),
        .I3(Data1[13]),
        .I4(func[0]),
        .I5(Result0_n_92),
        .O(Result[13]));
  LUT6 #(
    .INIT(64'hEFE08F8FEFE08080)) 
    \Result[13]_INST_0_i_1 
       (.I0(Data1[13]),
        .I1(Data2[13]),
        .I2(func[1]),
        .I3(data1[13]),
        .I4(func[0]),
        .I5(data0[13]),
        .O(\Result[13]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3AFAFAFA0ACA0A0A)) 
    \Result[14]_INST_0 
       (.I0(\Result[14]_INST_0_i_1_n_0 ),
        .I1(func[1]),
        .I2(func[2]),
        .I3(Data1[14]),
        .I4(func[0]),
        .I5(Result0_n_91),
        .O(Result[14]));
  LUT6 #(
    .INIT(64'hEFE08F8FEFE08080)) 
    \Result[14]_INST_0_i_1 
       (.I0(Data1[14]),
        .I1(Data2[14]),
        .I2(func[1]),
        .I3(data1[14]),
        .I4(func[0]),
        .I5(data0[14]),
        .O(\Result[14]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3AFAFAFA0ACA0A0A)) 
    \Result[15]_INST_0 
       (.I0(\Result[15]_INST_0_i_1_n_0 ),
        .I1(func[1]),
        .I2(func[2]),
        .I3(Data1[15]),
        .I4(func[0]),
        .I5(Result0_n_90),
        .O(Result[15]));
  LUT6 #(
    .INIT(64'hEFE08F8FEFE08080)) 
    \Result[15]_INST_0_i_1 
       (.I0(Data1[15]),
        .I1(Data2[15]),
        .I2(func[1]),
        .I3(data1[15]),
        .I4(func[0]),
        .I5(data0[15]),
        .O(\Result[15]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3AFAFAFA0ACA0A0A)) 
    \Result[16]_INST_0 
       (.I0(\Result[16]_INST_0_i_1_n_0 ),
        .I1(func[1]),
        .I2(func[2]),
        .I3(Data1[16]),
        .I4(func[0]),
        .I5(Result0_n_89),
        .O(Result[16]));
  LUT6 #(
    .INIT(64'hEFE08F8FEFE08080)) 
    \Result[16]_INST_0_i_1 
       (.I0(Data1[16]),
        .I1(Data2[16]),
        .I2(func[1]),
        .I3(data1[16]),
        .I4(func[0]),
        .I5(data0[16]),
        .O(\Result[16]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3AFAFAFA0ACA0A0A)) 
    \Result[17]_INST_0 
       (.I0(\Result[17]_INST_0_i_1_n_0 ),
        .I1(func[1]),
        .I2(func[2]),
        .I3(Data1[17]),
        .I4(func[0]),
        .I5(Result0_n_88),
        .O(Result[17]));
  LUT6 #(
    .INIT(64'hEFE08F8FEFE08080)) 
    \Result[17]_INST_0_i_1 
       (.I0(Data1[17]),
        .I1(Data2[17]),
        .I2(func[1]),
        .I3(data1[17]),
        .I4(func[0]),
        .I5(data0[17]),
        .O(\Result[17]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3AFAFAFA0ACA0A0A)) 
    \Result[18]_INST_0 
       (.I0(\Result[18]_INST_0_i_1_n_0 ),
        .I1(func[1]),
        .I2(func[2]),
        .I3(Data1[18]),
        .I4(func[0]),
        .I5(Result0_n_87),
        .O(Result[18]));
  LUT6 #(
    .INIT(64'hEFE08F8FEFE08080)) 
    \Result[18]_INST_0_i_1 
       (.I0(Data1[18]),
        .I1(Data2[18]),
        .I2(func[1]),
        .I3(data1[18]),
        .I4(func[0]),
        .I5(data0[18]),
        .O(\Result[18]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3AFAFAFA0ACA0A0A)) 
    \Result[19]_INST_0 
       (.I0(\Result[19]_INST_0_i_1_n_0 ),
        .I1(func[1]),
        .I2(func[2]),
        .I3(Data1[19]),
        .I4(func[0]),
        .I5(Result0_n_86),
        .O(Result[19]));
  LUT6 #(
    .INIT(64'hEFE08F8FEFE08080)) 
    \Result[19]_INST_0_i_1 
       (.I0(Data1[19]),
        .I1(Data2[19]),
        .I2(func[1]),
        .I3(data1[19]),
        .I4(func[0]),
        .I5(data0[19]),
        .O(\Result[19]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3AFAFAFA0ACA0A0A)) 
    \Result[1]_INST_0 
       (.I0(\Result[1]_INST_0_i_1_n_0 ),
        .I1(func[1]),
        .I2(func[2]),
        .I3(Data1[1]),
        .I4(func[0]),
        .I5(Result0_n_104),
        .O(Result[1]));
  LUT6 #(
    .INIT(64'hEFE08F8FEFE08080)) 
    \Result[1]_INST_0_i_1 
       (.I0(Data1[1]),
        .I1(Data2[1]),
        .I2(func[1]),
        .I3(data1[1]),
        .I4(func[0]),
        .I5(data0[1]),
        .O(\Result[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3AFAFAFA0ACA0A0A)) 
    \Result[20]_INST_0 
       (.I0(\Result[20]_INST_0_i_1_n_0 ),
        .I1(func[1]),
        .I2(func[2]),
        .I3(Data1[20]),
        .I4(func[0]),
        .I5(Result0_n_85),
        .O(Result[20]));
  LUT6 #(
    .INIT(64'hEFE08F8FEFE08080)) 
    \Result[20]_INST_0_i_1 
       (.I0(Data1[20]),
        .I1(Data2[20]),
        .I2(func[1]),
        .I3(data1[20]),
        .I4(func[0]),
        .I5(data0[20]),
        .O(\Result[20]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3AFAFAFA0ACA0A0A)) 
    \Result[21]_INST_0 
       (.I0(\Result[21]_INST_0_i_1_n_0 ),
        .I1(func[1]),
        .I2(func[2]),
        .I3(Data1[21]),
        .I4(func[0]),
        .I5(Result0_n_84),
        .O(Result[21]));
  LUT6 #(
    .INIT(64'hEFE08F8FEFE08080)) 
    \Result[21]_INST_0_i_1 
       (.I0(Data1[21]),
        .I1(Data2[21]),
        .I2(func[1]),
        .I3(data1[21]),
        .I4(func[0]),
        .I5(data0[21]),
        .O(\Result[21]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3AFAFAFA0ACA0A0A)) 
    \Result[22]_INST_0 
       (.I0(\Result[22]_INST_0_i_1_n_0 ),
        .I1(func[1]),
        .I2(func[2]),
        .I3(Data1[22]),
        .I4(func[0]),
        .I5(Result0_n_83),
        .O(Result[22]));
  LUT6 #(
    .INIT(64'hEFE08F8FEFE08080)) 
    \Result[22]_INST_0_i_1 
       (.I0(Data1[22]),
        .I1(Data2[22]),
        .I2(func[1]),
        .I3(data1[22]),
        .I4(func[0]),
        .I5(data0[22]),
        .O(\Result[22]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3AFAFAFA0ACA0A0A)) 
    \Result[23]_INST_0 
       (.I0(\Result[23]_INST_0_i_1_n_0 ),
        .I1(func[1]),
        .I2(func[2]),
        .I3(Data1[23]),
        .I4(func[0]),
        .I5(Result0_n_82),
        .O(Result[23]));
  LUT6 #(
    .INIT(64'hEFE08F8FEFE08080)) 
    \Result[23]_INST_0_i_1 
       (.I0(Data1[23]),
        .I1(Data2[23]),
        .I2(func[1]),
        .I3(data1[23]),
        .I4(func[0]),
        .I5(data0[23]),
        .O(\Result[23]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3AFAFAFA0ACA0A0A)) 
    \Result[24]_INST_0 
       (.I0(\Result[24]_INST_0_i_1_n_0 ),
        .I1(func[1]),
        .I2(func[2]),
        .I3(Data1[24]),
        .I4(func[0]),
        .I5(Result0_n_81),
        .O(Result[24]));
  LUT6 #(
    .INIT(64'hEFE08F8FEFE08080)) 
    \Result[24]_INST_0_i_1 
       (.I0(Data1[24]),
        .I1(Data2[24]),
        .I2(func[1]),
        .I3(data1[24]),
        .I4(func[0]),
        .I5(data0[24]),
        .O(\Result[24]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3AFAFAFA0ACA0A0A)) 
    \Result[25]_INST_0 
       (.I0(\Result[25]_INST_0_i_1_n_0 ),
        .I1(func[1]),
        .I2(func[2]),
        .I3(Data1[25]),
        .I4(func[0]),
        .I5(Result0_n_80),
        .O(Result[25]));
  LUT6 #(
    .INIT(64'hEFE08F8FEFE08080)) 
    \Result[25]_INST_0_i_1 
       (.I0(Data1[25]),
        .I1(Data2[25]),
        .I2(func[1]),
        .I3(data1[25]),
        .I4(func[0]),
        .I5(data0[25]),
        .O(\Result[25]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3AFAFAFA0ACA0A0A)) 
    \Result[26]_INST_0 
       (.I0(\Result[26]_INST_0_i_1_n_0 ),
        .I1(func[1]),
        .I2(func[2]),
        .I3(Data1[26]),
        .I4(func[0]),
        .I5(Result0_n_79),
        .O(Result[26]));
  LUT6 #(
    .INIT(64'hEFE08F8FEFE08080)) 
    \Result[26]_INST_0_i_1 
       (.I0(Data1[26]),
        .I1(Data2[26]),
        .I2(func[1]),
        .I3(data1[26]),
        .I4(func[0]),
        .I5(data0[26]),
        .O(\Result[26]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3AFAFAFA0ACA0A0A)) 
    \Result[27]_INST_0 
       (.I0(\Result[27]_INST_0_i_1_n_0 ),
        .I1(func[1]),
        .I2(func[2]),
        .I3(Data1[27]),
        .I4(func[0]),
        .I5(Result0_n_78),
        .O(Result[27]));
  LUT6 #(
    .INIT(64'hEFE08F8FEFE08080)) 
    \Result[27]_INST_0_i_1 
       (.I0(Data1[27]),
        .I1(Data2[27]),
        .I2(func[1]),
        .I3(data1[27]),
        .I4(func[0]),
        .I5(data0[27]),
        .O(\Result[27]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3AFAFAFA0ACA0A0A)) 
    \Result[28]_INST_0 
       (.I0(\Result[28]_INST_0_i_1_n_0 ),
        .I1(func[1]),
        .I2(func[2]),
        .I3(Data1[28]),
        .I4(func[0]),
        .I5(Result0_n_77),
        .O(Result[28]));
  LUT6 #(
    .INIT(64'hEFE08F8FEFE08080)) 
    \Result[28]_INST_0_i_1 
       (.I0(Data1[28]),
        .I1(Data2[28]),
        .I2(func[1]),
        .I3(data1[28]),
        .I4(func[0]),
        .I5(data0[28]),
        .O(\Result[28]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3AFAFAFA0ACA0A0A)) 
    \Result[29]_INST_0 
       (.I0(\Result[29]_INST_0_i_1_n_0 ),
        .I1(func[1]),
        .I2(func[2]),
        .I3(Data1[29]),
        .I4(func[0]),
        .I5(Result0_n_76),
        .O(Result[29]));
  LUT6 #(
    .INIT(64'hEFE08F8FEFE08080)) 
    \Result[29]_INST_0_i_1 
       (.I0(Data1[29]),
        .I1(Data2[29]),
        .I2(func[1]),
        .I3(data1[29]),
        .I4(func[0]),
        .I5(data0[29]),
        .O(\Result[29]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3AFAFAFA0ACA0A0A)) 
    \Result[2]_INST_0 
       (.I0(\Result[2]_INST_0_i_1_n_0 ),
        .I1(func[1]),
        .I2(func[2]),
        .I3(Data1[2]),
        .I4(func[0]),
        .I5(Result0_n_103),
        .O(Result[2]));
  LUT6 #(
    .INIT(64'hEFE08F8FEFE08080)) 
    \Result[2]_INST_0_i_1 
       (.I0(Data1[2]),
        .I1(Data2[2]),
        .I2(func[1]),
        .I3(data1[2]),
        .I4(func[0]),
        .I5(data0[2]),
        .O(\Result[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3AFAFAFA0ACA0A0A)) 
    \Result[30]_INST_0 
       (.I0(\Result[30]_INST_0_i_1_n_0 ),
        .I1(func[1]),
        .I2(func[2]),
        .I3(Data1[30]),
        .I4(func[0]),
        .I5(Result0_n_75),
        .O(Result[30]));
  LUT6 #(
    .INIT(64'hEFE08F8FEFE08080)) 
    \Result[30]_INST_0_i_1 
       (.I0(Data1[30]),
        .I1(Data2[30]),
        .I2(func[1]),
        .I3(data1[30]),
        .I4(func[0]),
        .I5(data0[30]),
        .O(\Result[30]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3AFAFAFA0ACA0A0A)) 
    \Result[31]_INST_0 
       (.I0(\Result[31]_INST_0_i_1_n_0 ),
        .I1(func[1]),
        .I2(func[2]),
        .I3(Data1[31]),
        .I4(func[0]),
        .I5(Result0_n_74),
        .O(Result[31]));
  LUT6 #(
    .INIT(64'hEFE08F8FEFE08080)) 
    \Result[31]_INST_0_i_1 
       (.I0(Data1[31]),
        .I1(Data2[31]),
        .I2(func[1]),
        .I3(data1[31]),
        .I4(func[0]),
        .I5(data0[31]),
        .O(\Result[31]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3AFAFAFA0ACA0A0A)) 
    \Result[3]_INST_0 
       (.I0(\Result[3]_INST_0_i_1_n_0 ),
        .I1(func[1]),
        .I2(func[2]),
        .I3(Data1[3]),
        .I4(func[0]),
        .I5(Result0_n_102),
        .O(Result[3]));
  LUT6 #(
    .INIT(64'hEFE08F8FEFE08080)) 
    \Result[3]_INST_0_i_1 
       (.I0(Data1[3]),
        .I1(Data2[3]),
        .I2(func[1]),
        .I3(data1[3]),
        .I4(func[0]),
        .I5(data0[3]),
        .O(\Result[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3AFAFAFA0ACA0A0A)) 
    \Result[4]_INST_0 
       (.I0(\Result[4]_INST_0_i_1_n_0 ),
        .I1(func[1]),
        .I2(func[2]),
        .I3(Data1[4]),
        .I4(func[0]),
        .I5(Result0_n_101),
        .O(Result[4]));
  LUT6 #(
    .INIT(64'hEFE08F8FEFE08080)) 
    \Result[4]_INST_0_i_1 
       (.I0(Data1[4]),
        .I1(Data2[4]),
        .I2(func[1]),
        .I3(data1[4]),
        .I4(func[0]),
        .I5(data0[4]),
        .O(\Result[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3AFAFAFA0ACA0A0A)) 
    \Result[5]_INST_0 
       (.I0(\Result[5]_INST_0_i_1_n_0 ),
        .I1(func[1]),
        .I2(func[2]),
        .I3(Data1[5]),
        .I4(func[0]),
        .I5(Result0_n_100),
        .O(Result[5]));
  LUT6 #(
    .INIT(64'hEFE08F8FEFE08080)) 
    \Result[5]_INST_0_i_1 
       (.I0(Data1[5]),
        .I1(Data2[5]),
        .I2(func[1]),
        .I3(data1[5]),
        .I4(func[0]),
        .I5(data0[5]),
        .O(\Result[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3AFAFAFA0ACA0A0A)) 
    \Result[6]_INST_0 
       (.I0(\Result[6]_INST_0_i_1_n_0 ),
        .I1(func[1]),
        .I2(func[2]),
        .I3(Data1[6]),
        .I4(func[0]),
        .I5(Result0_n_99),
        .O(Result[6]));
  LUT6 #(
    .INIT(64'hEFE08F8FEFE08080)) 
    \Result[6]_INST_0_i_1 
       (.I0(Data1[6]),
        .I1(Data2[6]),
        .I2(func[1]),
        .I3(data1[6]),
        .I4(func[0]),
        .I5(data0[6]),
        .O(\Result[6]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3AFAFAFA0ACA0A0A)) 
    \Result[7]_INST_0 
       (.I0(\Result[7]_INST_0_i_1_n_0 ),
        .I1(func[1]),
        .I2(func[2]),
        .I3(Data1[7]),
        .I4(func[0]),
        .I5(Result0_n_98),
        .O(Result[7]));
  LUT6 #(
    .INIT(64'hEFE08F8FEFE08080)) 
    \Result[7]_INST_0_i_1 
       (.I0(Data1[7]),
        .I1(Data2[7]),
        .I2(func[1]),
        .I3(data1[7]),
        .I4(func[0]),
        .I5(data0[7]),
        .O(\Result[7]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3AFAFAFA0ACA0A0A)) 
    \Result[8]_INST_0 
       (.I0(\Result[8]_INST_0_i_1_n_0 ),
        .I1(func[1]),
        .I2(func[2]),
        .I3(Data1[8]),
        .I4(func[0]),
        .I5(Result0_n_97),
        .O(Result[8]));
  LUT6 #(
    .INIT(64'hEFE08F8FEFE08080)) 
    \Result[8]_INST_0_i_1 
       (.I0(Data1[8]),
        .I1(Data2[8]),
        .I2(func[1]),
        .I3(data1[8]),
        .I4(func[0]),
        .I5(data0[8]),
        .O(\Result[8]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3AFAFAFA0ACA0A0A)) 
    \Result[9]_INST_0 
       (.I0(\Result[9]_INST_0_i_1_n_0 ),
        .I1(func[1]),
        .I2(func[2]),
        .I3(Data1[9]),
        .I4(func[0]),
        .I5(Result0_n_96),
        .O(Result[9]));
  LUT6 #(
    .INIT(64'hEFE08F8FEFE08080)) 
    \Result[9]_INST_0_i_1 
       (.I0(Data1[9]),
        .I1(Data2[9]),
        .I2(func[1]),
        .I3(data1[9]),
        .I4(func[0]),
        .I5(data0[9]),
        .O(\Result[9]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_1
       (.I0(Data2[7]),
        .I1(Data1[7]),
        .O(i__carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_2
       (.I0(Data2[6]),
        .I1(Data1[6]),
        .O(i__carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_3
       (.I0(Data2[5]),
        .I1(Data1[5]),
        .O(i__carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_4
       (.I0(Data2[4]),
        .I1(Data1[4]),
        .O(i__carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_1
       (.I0(Data2[11]),
        .I1(Data1[11]),
        .O(i__carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_2
       (.I0(Data2[10]),
        .I1(Data1[10]),
        .O(i__carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_3
       (.I0(Data2[9]),
        .I1(Data1[9]),
        .O(i__carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_4
       (.I0(Data2[8]),
        .I1(Data1[8]),
        .O(i__carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_1
       (.I0(Data2[15]),
        .I1(Data1[15]),
        .O(i__carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_2
       (.I0(Data2[14]),
        .I1(Data1[14]),
        .O(i__carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_3
       (.I0(Data2[13]),
        .I1(Data1[13]),
        .O(i__carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_4
       (.I0(Data2[12]),
        .I1(Data1[12]),
        .O(i__carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__3_i_1
       (.I0(Data2[19]),
        .I1(Data1[19]),
        .O(i__carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__3_i_2
       (.I0(Data2[18]),
        .I1(Data1[18]),
        .O(i__carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__3_i_3
       (.I0(Data2[17]),
        .I1(Data1[17]),
        .O(i__carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__3_i_4
       (.I0(Data2[16]),
        .I1(Data1[16]),
        .O(i__carry__3_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__4_i_1
       (.I0(Data2[23]),
        .I1(Data1[23]),
        .O(i__carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__4_i_2
       (.I0(Data2[22]),
        .I1(Data1[22]),
        .O(i__carry__4_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__4_i_3
       (.I0(Data2[21]),
        .I1(Data1[21]),
        .O(i__carry__4_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__4_i_4
       (.I0(Data2[20]),
        .I1(Data1[20]),
        .O(i__carry__4_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__5_i_1
       (.I0(Data2[27]),
        .I1(Data1[27]),
        .O(i__carry__5_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__5_i_2
       (.I0(Data2[26]),
        .I1(Data1[26]),
        .O(i__carry__5_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__5_i_3
       (.I0(Data2[25]),
        .I1(Data1[25]),
        .O(i__carry__5_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__5_i_4
       (.I0(Data2[24]),
        .I1(Data1[24]),
        .O(i__carry__5_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__6_i_1
       (.I0(Data2[31]),
        .I1(Data1[31]),
        .O(i__carry__6_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__6_i_2
       (.I0(Data2[30]),
        .I1(Data1[30]),
        .O(i__carry__6_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__6_i_3
       (.I0(Data2[29]),
        .I1(Data1[29]),
        .O(i__carry__6_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__6_i_4
       (.I0(Data2[28]),
        .I1(Data1[28]),
        .O(i__carry__6_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_1
       (.I0(Data2[3]),
        .I1(Data1[3]),
        .O(i__carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_2
       (.I0(Data2[2]),
        .I1(Data1[2]),
        .O(i__carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_3
       (.I0(Data2[1]),
        .I1(Data1[1]),
        .O(i__carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_4
       (.I0(Data2[0]),
        .I1(Data1[0]),
        .O(i__carry_i_4_n_0));
endmodule

(* ORIG_REF_NAME = "ALU_Control" *) 
module MIPS_Design_ALU_Control
   (func,
    ALUOP,
    Instruction);
  output [2:0]func;
  input [1:0]ALUOP;
  input [5:0]Instruction;

  wire [1:0]ALUOP;
  wire [5:0]Instruction;
  wire [2:0]func;
  wire \func_reg[0]_i_1_n_0 ;
  wire \func_reg[0]_i_2_n_0 ;
  wire \func_reg[0]_i_3_n_0 ;
  wire \func_reg[0]_i_4_n_0 ;
  wire \func_reg[0]_i_5_n_0 ;
  wire \func_reg[0]_i_6_n_0 ;
  wire \func_reg[1]_i_1_n_0 ;
  wire \func_reg[1]_i_2_n_0 ;
  wire \func_reg[1]_i_3_n_0 ;
  wire \func_reg[1]_i_4_n_0 ;
  wire \func_reg[1]_i_5_n_0 ;
  wire \func_reg[1]_i_6_n_0 ;
  wire \func_reg[2]_i_1_n_0 ;
  wire \func_reg[2]_i_2_n_0 ;
  wire \func_reg[2]_i_3_n_0 ;
  wire \func_reg[2]_i_4_n_0 ;
  wire \func_reg[2]_i_5_n_0 ;

  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \func_reg[0] 
       (.CLR(\func_reg[0]_i_3_n_0 ),
        .D(\func_reg[0]_i_1_n_0 ),
        .G(\func_reg[0]_i_2_n_0 ),
        .GE(1'b1),
        .Q(func[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \func_reg[0]_i_1 
       (.I0(Instruction[0]),
        .I1(\func_reg[0]_i_4_n_0 ),
        .I2(ALUOP[1]),
        .O(\func_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h5D)) 
    \func_reg[0]_i_2 
       (.I0(ALUOP[1]),
        .I1(\func_reg[0]_i_5_n_0 ),
        .I2(ALUOP[0]),
        .O(\func_reg[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \func_reg[0]_i_3 
       (.I0(\func_reg[0]_i_6_n_0 ),
        .I1(Instruction[5]),
        .I2(ALUOP[1]),
        .O(\func_reg[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFDFFFFEFFF)) 
    \func_reg[0]_i_4 
       (.I0(Instruction[1]),
        .I1(ALUOP[0]),
        .I2(Instruction[4]),
        .I3(Instruction[3]),
        .I4(Instruction[5]),
        .I5(Instruction[2]),
        .O(\func_reg[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h1000011010001108)) 
    \func_reg[0]_i_5 
       (.I0(Instruction[4]),
        .I1(Instruction[3]),
        .I2(Instruction[5]),
        .I3(Instruction[2]),
        .I4(Instruction[0]),
        .I5(Instruction[1]),
        .O(\func_reg[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \func_reg[0]_i_6 
       (.I0(Instruction[2]),
        .I1(Instruction[0]),
        .I2(Instruction[1]),
        .I3(ALUOP[0]),
        .I4(Instruction[3]),
        .I5(Instruction[4]),
        .O(\func_reg[0]_i_6_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \func_reg[1] 
       (.CLR(\func_reg[1]_i_3_n_0 ),
        .D(\func_reg[1]_i_1_n_0 ),
        .G(\func_reg[1]_i_2_n_0 ),
        .GE(1'b1),
        .Q(func[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \func_reg[1]_i_1 
       (.I0(\func_reg[1]_i_4_n_0 ),
        .I1(ALUOP[1]),
        .I2(Instruction[2]),
        .O(\func_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h5D)) 
    \func_reg[1]_i_2 
       (.I0(ALUOP[1]),
        .I1(\func_reg[1]_i_5_n_0 ),
        .I2(ALUOP[0]),
        .O(\func_reg[1]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \func_reg[1]_i_3 
       (.I0(\func_reg[1]_i_6_n_0 ),
        .I1(ALUOP[1]),
        .O(\func_reg[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000000009000C)) 
    \func_reg[1]_i_4 
       (.I0(Instruction[0]),
        .I1(Instruction[5]),
        .I2(ALUOP[0]),
        .I3(Instruction[4]),
        .I4(Instruction[1]),
        .I5(Instruction[3]),
        .O(\func_reg[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000B000500001000)) 
    \func_reg[1]_i_5 
       (.I0(Instruction[0]),
        .I1(Instruction[1]),
        .I2(Instruction[4]),
        .I3(Instruction[3]),
        .I4(Instruction[5]),
        .I5(Instruction[2]),
        .O(\func_reg[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \func_reg[1]_i_6 
       (.I0(ALUOP[0]),
        .I1(Instruction[5]),
        .I2(Instruction[3]),
        .I3(Instruction[4]),
        .I4(Instruction[2]),
        .I5(Instruction[0]),
        .O(\func_reg[1]_i_6_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \func_reg[2] 
       (.CLR(\func_reg[2]_i_3_n_0 ),
        .D(\func_reg[2]_i_1_n_0 ),
        .G(\func_reg[2]_i_2_n_0 ),
        .GE(1'b1),
        .Q(func[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \func_reg[2]_i_1 
       (.I0(\func_reg[2]_i_4_n_0 ),
        .I1(ALUOP[0]),
        .I2(ALUOP[1]),
        .O(\func_reg[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h5D)) 
    \func_reg[2]_i_2 
       (.I0(ALUOP[1]),
        .I1(\func_reg[2]_i_4_n_0 ),
        .I2(ALUOP[0]),
        .O(\func_reg[2]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \func_reg[2]_i_3 
       (.I0(\func_reg[2]_i_5_n_0 ),
        .I1(Instruction[5]),
        .I2(ALUOP[1]),
        .O(\func_reg[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000010000820002)) 
    \func_reg[2]_i_4 
       (.I0(Instruction[2]),
        .I1(Instruction[0]),
        .I2(Instruction[5]),
        .I3(Instruction[4]),
        .I4(Instruction[1]),
        .I5(Instruction[3]),
        .O(\func_reg[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000101000101)) 
    \func_reg[2]_i_5 
       (.I0(ALUOP[0]),
        .I1(Instruction[3]),
        .I2(Instruction[4]),
        .I3(Instruction[2]),
        .I4(Instruction[0]),
        .I5(Instruction[1]),
        .O(\func_reg[2]_i_5_n_0 ));
endmodule

(* ORIG_REF_NAME = "Control_Unit" *) 
module MIPS_Design_Control_Unit
   (RegDst,
    Branch,
    MemWrite,
    MemtoReg,
    ALUOP,
    OP);
  output RegDst;
  output Branch;
  output MemWrite;
  output MemtoReg;
  output [1:0]ALUOP;
  input [5:0]OP;

  wire [1:0]ALUOP;
  wire Branch;
  wire MemWrite;
  wire MemtoReg;
  wire [5:0]OP;
  wire RegDst;

  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \ALUOP[0]_INST_0 
       (.I0(OP[1]),
        .I1(OP[0]),
        .I2(OP[2]),
        .I3(OP[4]),
        .I4(OP[3]),
        .I5(OP[5]),
        .O(ALUOP[0]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \ALUOP[1]_INST_0 
       (.I0(OP[2]),
        .I1(OP[0]),
        .I2(OP[1]),
        .I3(OP[4]),
        .I4(OP[3]),
        .I5(OP[5]),
        .O(ALUOP[1]));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    Branch__0
       (.I0(OP[5]),
        .I1(OP[4]),
        .I2(OP[1]),
        .I3(OP[2]),
        .I4(OP[3]),
        .I5(OP[0]),
        .O(Branch));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    MemWrite__0
       (.I0(OP[2]),
        .I1(OP[4]),
        .I2(OP[1]),
        .I3(OP[0]),
        .I4(OP[5]),
        .I5(OP[3]),
        .O(MemWrite));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    MemtoReg__0
       (.I0(OP[2]),
        .I1(OP[4]),
        .I2(OP[1]),
        .I3(OP[0]),
        .I4(OP[3]),
        .I5(OP[5]),
        .O(MemtoReg));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    RegDst__0
       (.I0(OP[5]),
        .I1(OP[4]),
        .I2(OP[1]),
        .I3(OP[0]),
        .I4(OP[3]),
        .I5(OP[2]),
        .O(RegDst));
endmodule

(* ORIG_REF_NAME = "DM" *) 
module MIPS_Design_DM
   (ReadData,
    clk,
    WriteData,
    En,
    Address);
  output [31:0]ReadData;
  input clk;
  input [31:0]WriteData;
  input En;
  input [6:0]Address;

  wire [6:0]Address;
  wire En;
  wire [31:0]ReadData;
  wire [31:0]WriteData;
  wire clk;

  RAM128X1S #(
    .INIT(128'h00000000000000000000000000000001)) 
    DM_reg_0_127_0_0
       (.A0(Address[0]),
        .A1(Address[1]),
        .A2(Address[2]),
        .A3(Address[3]),
        .A4(Address[4]),
        .A5(Address[5]),
        .A6(Address[6]),
        .D(WriteData[0]),
        .O(ReadData[0]),
        .WCLK(clk),
        .WE(En));
  RAM128X1S #(
    .INIT(128'h00000000000000000000000000000000)) 
    DM_reg_0_127_10_10
       (.A0(Address[0]),
        .A1(Address[1]),
        .A2(Address[2]),
        .A3(Address[3]),
        .A4(Address[4]),
        .A5(Address[5]),
        .A6(Address[6]),
        .D(WriteData[10]),
        .O(ReadData[10]),
        .WCLK(clk),
        .WE(En));
  RAM128X1S #(
    .INIT(128'h00000000000000000000000000000000)) 
    DM_reg_0_127_11_11
       (.A0(Address[0]),
        .A1(Address[1]),
        .A2(Address[2]),
        .A3(Address[3]),
        .A4(Address[4]),
        .A5(Address[5]),
        .A6(Address[6]),
        .D(WriteData[11]),
        .O(ReadData[11]),
        .WCLK(clk),
        .WE(En));
  RAM128X1S #(
    .INIT(128'h00000000000000000000000000000000)) 
    DM_reg_0_127_12_12
       (.A0(Address[0]),
        .A1(Address[1]),
        .A2(Address[2]),
        .A3(Address[3]),
        .A4(Address[4]),
        .A5(Address[5]),
        .A6(Address[6]),
        .D(WriteData[12]),
        .O(ReadData[12]),
        .WCLK(clk),
        .WE(En));
  RAM128X1S #(
    .INIT(128'h00000000000000000000000000000000)) 
    DM_reg_0_127_13_13
       (.A0(Address[0]),
        .A1(Address[1]),
        .A2(Address[2]),
        .A3(Address[3]),
        .A4(Address[4]),
        .A5(Address[5]),
        .A6(Address[6]),
        .D(WriteData[13]),
        .O(ReadData[13]),
        .WCLK(clk),
        .WE(En));
  RAM128X1S #(
    .INIT(128'h00000000000000000000000000000000)) 
    DM_reg_0_127_14_14
       (.A0(Address[0]),
        .A1(Address[1]),
        .A2(Address[2]),
        .A3(Address[3]),
        .A4(Address[4]),
        .A5(Address[5]),
        .A6(Address[6]),
        .D(WriteData[14]),
        .O(ReadData[14]),
        .WCLK(clk),
        .WE(En));
  RAM128X1S #(
    .INIT(128'h00000000000000000000000000000000)) 
    DM_reg_0_127_15_15
       (.A0(Address[0]),
        .A1(Address[1]),
        .A2(Address[2]),
        .A3(Address[3]),
        .A4(Address[4]),
        .A5(Address[5]),
        .A6(Address[6]),
        .D(WriteData[15]),
        .O(ReadData[15]),
        .WCLK(clk),
        .WE(En));
  RAM128X1S #(
    .INIT(128'h00000000000000000000000000000000)) 
    DM_reg_0_127_16_16
       (.A0(Address[0]),
        .A1(Address[1]),
        .A2(Address[2]),
        .A3(Address[3]),
        .A4(Address[4]),
        .A5(Address[5]),
        .A6(Address[6]),
        .D(WriteData[16]),
        .O(ReadData[16]),
        .WCLK(clk),
        .WE(En));
  RAM128X1S #(
    .INIT(128'h00000000000000000000000000000000)) 
    DM_reg_0_127_17_17
       (.A0(Address[0]),
        .A1(Address[1]),
        .A2(Address[2]),
        .A3(Address[3]),
        .A4(Address[4]),
        .A5(Address[5]),
        .A6(Address[6]),
        .D(WriteData[17]),
        .O(ReadData[17]),
        .WCLK(clk),
        .WE(En));
  RAM128X1S #(
    .INIT(128'h00000000000000000000000000000000)) 
    DM_reg_0_127_18_18
       (.A0(Address[0]),
        .A1(Address[1]),
        .A2(Address[2]),
        .A3(Address[3]),
        .A4(Address[4]),
        .A5(Address[5]),
        .A6(Address[6]),
        .D(WriteData[18]),
        .O(ReadData[18]),
        .WCLK(clk),
        .WE(En));
  RAM128X1S #(
    .INIT(128'h00000000000000000000000000000000)) 
    DM_reg_0_127_19_19
       (.A0(Address[0]),
        .A1(Address[1]),
        .A2(Address[2]),
        .A3(Address[3]),
        .A4(Address[4]),
        .A5(Address[5]),
        .A6(Address[6]),
        .D(WriteData[19]),
        .O(ReadData[19]),
        .WCLK(clk),
        .WE(En));
  RAM128X1S #(
    .INIT(128'h00000000000000000000000000000000)) 
    DM_reg_0_127_1_1
       (.A0(Address[0]),
        .A1(Address[1]),
        .A2(Address[2]),
        .A3(Address[3]),
        .A4(Address[4]),
        .A5(Address[5]),
        .A6(Address[6]),
        .D(WriteData[1]),
        .O(ReadData[1]),
        .WCLK(clk),
        .WE(En));
  RAM128X1S #(
    .INIT(128'h00000000000000000000000000000000)) 
    DM_reg_0_127_20_20
       (.A0(Address[0]),
        .A1(Address[1]),
        .A2(Address[2]),
        .A3(Address[3]),
        .A4(Address[4]),
        .A5(Address[5]),
        .A6(Address[6]),
        .D(WriteData[20]),
        .O(ReadData[20]),
        .WCLK(clk),
        .WE(En));
  RAM128X1S #(
    .INIT(128'h00000000000000000000000000000000)) 
    DM_reg_0_127_21_21
       (.A0(Address[0]),
        .A1(Address[1]),
        .A2(Address[2]),
        .A3(Address[3]),
        .A4(Address[4]),
        .A5(Address[5]),
        .A6(Address[6]),
        .D(WriteData[21]),
        .O(ReadData[21]),
        .WCLK(clk),
        .WE(En));
  RAM128X1S #(
    .INIT(128'h00000000000000000000000000000000)) 
    DM_reg_0_127_22_22
       (.A0(Address[0]),
        .A1(Address[1]),
        .A2(Address[2]),
        .A3(Address[3]),
        .A4(Address[4]),
        .A5(Address[5]),
        .A6(Address[6]),
        .D(WriteData[22]),
        .O(ReadData[22]),
        .WCLK(clk),
        .WE(En));
  RAM128X1S #(
    .INIT(128'h00000000000000000000000000000000)) 
    DM_reg_0_127_23_23
       (.A0(Address[0]),
        .A1(Address[1]),
        .A2(Address[2]),
        .A3(Address[3]),
        .A4(Address[4]),
        .A5(Address[5]),
        .A6(Address[6]),
        .D(WriteData[23]),
        .O(ReadData[23]),
        .WCLK(clk),
        .WE(En));
  RAM128X1S #(
    .INIT(128'h00000000000000000000000000000000)) 
    DM_reg_0_127_24_24
       (.A0(Address[0]),
        .A1(Address[1]),
        .A2(Address[2]),
        .A3(Address[3]),
        .A4(Address[4]),
        .A5(Address[5]),
        .A6(Address[6]),
        .D(WriteData[24]),
        .O(ReadData[24]),
        .WCLK(clk),
        .WE(En));
  RAM128X1S #(
    .INIT(128'h00000000000000000000000000000000)) 
    DM_reg_0_127_25_25
       (.A0(Address[0]),
        .A1(Address[1]),
        .A2(Address[2]),
        .A3(Address[3]),
        .A4(Address[4]),
        .A5(Address[5]),
        .A6(Address[6]),
        .D(WriteData[25]),
        .O(ReadData[25]),
        .WCLK(clk),
        .WE(En));
  RAM128X1S #(
    .INIT(128'h00000000000000000000000000000000)) 
    DM_reg_0_127_26_26
       (.A0(Address[0]),
        .A1(Address[1]),
        .A2(Address[2]),
        .A3(Address[3]),
        .A4(Address[4]),
        .A5(Address[5]),
        .A6(Address[6]),
        .D(WriteData[26]),
        .O(ReadData[26]),
        .WCLK(clk),
        .WE(En));
  RAM128X1S #(
    .INIT(128'h00000000000000000000000000000000)) 
    DM_reg_0_127_27_27
       (.A0(Address[0]),
        .A1(Address[1]),
        .A2(Address[2]),
        .A3(Address[3]),
        .A4(Address[4]),
        .A5(Address[5]),
        .A6(Address[6]),
        .D(WriteData[27]),
        .O(ReadData[27]),
        .WCLK(clk),
        .WE(En));
  RAM128X1S #(
    .INIT(128'h00000000000000000000000000000000)) 
    DM_reg_0_127_28_28
       (.A0(Address[0]),
        .A1(Address[1]),
        .A2(Address[2]),
        .A3(Address[3]),
        .A4(Address[4]),
        .A5(Address[5]),
        .A6(Address[6]),
        .D(WriteData[28]),
        .O(ReadData[28]),
        .WCLK(clk),
        .WE(En));
  RAM128X1S #(
    .INIT(128'h00000000000000000000000000000000)) 
    DM_reg_0_127_29_29
       (.A0(Address[0]),
        .A1(Address[1]),
        .A2(Address[2]),
        .A3(Address[3]),
        .A4(Address[4]),
        .A5(Address[5]),
        .A6(Address[6]),
        .D(WriteData[29]),
        .O(ReadData[29]),
        .WCLK(clk),
        .WE(En));
  RAM128X1S #(
    .INIT(128'h00000000000000000000000000000000)) 
    DM_reg_0_127_2_2
       (.A0(Address[0]),
        .A1(Address[1]),
        .A2(Address[2]),
        .A3(Address[3]),
        .A4(Address[4]),
        .A5(Address[5]),
        .A6(Address[6]),
        .D(WriteData[2]),
        .O(ReadData[2]),
        .WCLK(clk),
        .WE(En));
  RAM128X1S #(
    .INIT(128'h00000000000000000000000000000000)) 
    DM_reg_0_127_30_30
       (.A0(Address[0]),
        .A1(Address[1]),
        .A2(Address[2]),
        .A3(Address[3]),
        .A4(Address[4]),
        .A5(Address[5]),
        .A6(Address[6]),
        .D(WriteData[30]),
        .O(ReadData[30]),
        .WCLK(clk),
        .WE(En));
  RAM128X1S #(
    .INIT(128'h00000000000000000000000000000000)) 
    DM_reg_0_127_31_31
       (.A0(Address[0]),
        .A1(Address[1]),
        .A2(Address[2]),
        .A3(Address[3]),
        .A4(Address[4]),
        .A5(Address[5]),
        .A6(Address[6]),
        .D(WriteData[31]),
        .O(ReadData[31]),
        .WCLK(clk),
        .WE(En));
  RAM128X1S #(
    .INIT(128'h00000000000000000000000000000000)) 
    DM_reg_0_127_3_3
       (.A0(Address[0]),
        .A1(Address[1]),
        .A2(Address[2]),
        .A3(Address[3]),
        .A4(Address[4]),
        .A5(Address[5]),
        .A6(Address[6]),
        .D(WriteData[3]),
        .O(ReadData[3]),
        .WCLK(clk),
        .WE(En));
  RAM128X1S #(
    .INIT(128'h00000000000000000000000000000000)) 
    DM_reg_0_127_4_4
       (.A0(Address[0]),
        .A1(Address[1]),
        .A2(Address[2]),
        .A3(Address[3]),
        .A4(Address[4]),
        .A5(Address[5]),
        .A6(Address[6]),
        .D(WriteData[4]),
        .O(ReadData[4]),
        .WCLK(clk),
        .WE(En));
  RAM128X1S #(
    .INIT(128'h00000000000000000000000000000000)) 
    DM_reg_0_127_5_5
       (.A0(Address[0]),
        .A1(Address[1]),
        .A2(Address[2]),
        .A3(Address[3]),
        .A4(Address[4]),
        .A5(Address[5]),
        .A6(Address[6]),
        .D(WriteData[5]),
        .O(ReadData[5]),
        .WCLK(clk),
        .WE(En));
  RAM128X1S #(
    .INIT(128'h00000000000000000000000000000000)) 
    DM_reg_0_127_6_6
       (.A0(Address[0]),
        .A1(Address[1]),
        .A2(Address[2]),
        .A3(Address[3]),
        .A4(Address[4]),
        .A5(Address[5]),
        .A6(Address[6]),
        .D(WriteData[6]),
        .O(ReadData[6]),
        .WCLK(clk),
        .WE(En));
  RAM128X1S #(
    .INIT(128'h00000000000000000000000000000000)) 
    DM_reg_0_127_7_7
       (.A0(Address[0]),
        .A1(Address[1]),
        .A2(Address[2]),
        .A3(Address[3]),
        .A4(Address[4]),
        .A5(Address[5]),
        .A6(Address[6]),
        .D(WriteData[7]),
        .O(ReadData[7]),
        .WCLK(clk),
        .WE(En));
  RAM128X1S #(
    .INIT(128'h00000000000000000000000000000000)) 
    DM_reg_0_127_8_8
       (.A0(Address[0]),
        .A1(Address[1]),
        .A2(Address[2]),
        .A3(Address[3]),
        .A4(Address[4]),
        .A5(Address[5]),
        .A6(Address[6]),
        .D(WriteData[8]),
        .O(ReadData[8]),
        .WCLK(clk),
        .WE(En));
  RAM128X1S #(
    .INIT(128'h00000000000000000000000000000000)) 
    DM_reg_0_127_9_9
       (.A0(Address[0]),
        .A1(Address[1]),
        .A2(Address[2]),
        .A3(Address[3]),
        .A4(Address[4]),
        .A5(Address[5]),
        .A6(Address[6]),
        .D(WriteData[9]),
        .O(ReadData[9]),
        .WCLK(clk),
        .WE(En));
endmodule

(* ORIG_REF_NAME = "File_Register" *) 
module MIPS_Design_File_Register
   (ReadData1,
    ReadData2,
    clk,
    EN,
    WriteData,
    ReadRegister1,
    WriteRegister,
    ReadRegister2);
  output [31:0]ReadData1;
  output [31:0]ReadData2;
  input clk;
  input EN;
  input [31:0]WriteData;
  input [4:0]ReadRegister1;
  input [4:0]WriteRegister;
  input [4:0]ReadRegister2;

  wire EN;
  wire [31:0]ReadData1;
  wire [31:0]ReadData2;
  wire [4:0]ReadRegister1;
  wire [4:0]ReadRegister2;
  wire [31:0]WriteData;
  wire [4:0]WriteRegister;
  wire clk;
  wire [1:0]NLW_file_register_reg_r1_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_file_register_reg_r1_0_31_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_file_register_reg_r1_0_31_18_23_DOD_UNCONNECTED;
  wire [1:0]NLW_file_register_reg_r1_0_31_24_29_DOD_UNCONNECTED;
  wire [1:0]NLW_file_register_reg_r1_0_31_30_31_DOB_UNCONNECTED;
  wire [1:0]NLW_file_register_reg_r1_0_31_30_31_DOC_UNCONNECTED;
  wire [1:0]NLW_file_register_reg_r1_0_31_30_31_DOD_UNCONNECTED;
  wire [1:0]NLW_file_register_reg_r1_0_31_6_11_DOD_UNCONNECTED;
  wire [1:0]NLW_file_register_reg_r2_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_file_register_reg_r2_0_31_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_file_register_reg_r2_0_31_18_23_DOD_UNCONNECTED;
  wire [1:0]NLW_file_register_reg_r2_0_31_24_29_DOD_UNCONNECTED;
  wire [1:0]NLW_file_register_reg_r2_0_31_30_31_DOB_UNCONNECTED;
  wire [1:0]NLW_file_register_reg_r2_0_31_30_31_DOC_UNCONNECTED;
  wire [1:0]NLW_file_register_reg_r2_0_31_30_31_DOD_UNCONNECTED;
  wire [1:0]NLW_file_register_reg_r2_0_31_6_11_DOD_UNCONNECTED;

  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    file_register_reg_r1_0_31_0_5
       (.ADDRA(ReadRegister1),
        .ADDRB(ReadRegister1),
        .ADDRC(ReadRegister1),
        .ADDRD(WriteRegister),
        .DIA(WriteData[1:0]),
        .DIB(WriteData[3:2]),
        .DIC(WriteData[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(ReadData1[1:0]),
        .DOB(ReadData1[3:2]),
        .DOC(ReadData1[5:4]),
        .DOD(NLW_file_register_reg_r1_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(EN));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "17" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    file_register_reg_r1_0_31_12_17
       (.ADDRA(ReadRegister1),
        .ADDRB(ReadRegister1),
        .ADDRC(ReadRegister1),
        .ADDRD(WriteRegister),
        .DIA(WriteData[13:12]),
        .DIB(WriteData[15:14]),
        .DIC(WriteData[17:16]),
        .DID({1'b0,1'b0}),
        .DOA(ReadData1[13:12]),
        .DOB(ReadData1[15:14]),
        .DOC(ReadData1[17:16]),
        .DOD(NLW_file_register_reg_r1_0_31_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(EN));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "23" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    file_register_reg_r1_0_31_18_23
       (.ADDRA(ReadRegister1),
        .ADDRB(ReadRegister1),
        .ADDRC(ReadRegister1),
        .ADDRD(WriteRegister),
        .DIA(WriteData[19:18]),
        .DIB(WriteData[21:20]),
        .DIC(WriteData[23:22]),
        .DID({1'b0,1'b0}),
        .DOA(ReadData1[19:18]),
        .DOB(ReadData1[21:20]),
        .DOC(ReadData1[23:22]),
        .DOD(NLW_file_register_reg_r1_0_31_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(EN));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "29" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    file_register_reg_r1_0_31_24_29
       (.ADDRA(ReadRegister1),
        .ADDRB(ReadRegister1),
        .ADDRC(ReadRegister1),
        .ADDRD(WriteRegister),
        .DIA(WriteData[25:24]),
        .DIB(WriteData[27:26]),
        .DIC(WriteData[29:28]),
        .DID({1'b0,1'b0}),
        .DOA(ReadData1[25:24]),
        .DOB(ReadData1[27:26]),
        .DOC(ReadData1[29:28]),
        .DOD(NLW_file_register_reg_r1_0_31_24_29_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(EN));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "31" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    file_register_reg_r1_0_31_30_31
       (.ADDRA(ReadRegister1),
        .ADDRB(ReadRegister1),
        .ADDRC(ReadRegister1),
        .ADDRD(WriteRegister),
        .DIA(WriteData[31:30]),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(ReadData1[31:30]),
        .DOB(NLW_file_register_reg_r1_0_31_30_31_DOB_UNCONNECTED[1:0]),
        .DOC(NLW_file_register_reg_r1_0_31_30_31_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_file_register_reg_r1_0_31_30_31_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(EN));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "11" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    file_register_reg_r1_0_31_6_11
       (.ADDRA(ReadRegister1),
        .ADDRB(ReadRegister1),
        .ADDRC(ReadRegister1),
        .ADDRD(WriteRegister),
        .DIA(WriteData[7:6]),
        .DIB(WriteData[9:8]),
        .DIC(WriteData[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(ReadData1[7:6]),
        .DOB(ReadData1[9:8]),
        .DOC(ReadData1[11:10]),
        .DOD(NLW_file_register_reg_r1_0_31_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(EN));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    file_register_reg_r2_0_31_0_5
       (.ADDRA(ReadRegister2),
        .ADDRB(ReadRegister2),
        .ADDRC(ReadRegister2),
        .ADDRD(WriteRegister),
        .DIA(WriteData[1:0]),
        .DIB(WriteData[3:2]),
        .DIC(WriteData[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(ReadData2[1:0]),
        .DOB(ReadData2[3:2]),
        .DOC(ReadData2[5:4]),
        .DOD(NLW_file_register_reg_r2_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(EN));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "17" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    file_register_reg_r2_0_31_12_17
       (.ADDRA(ReadRegister2),
        .ADDRB(ReadRegister2),
        .ADDRC(ReadRegister2),
        .ADDRD(WriteRegister),
        .DIA(WriteData[13:12]),
        .DIB(WriteData[15:14]),
        .DIC(WriteData[17:16]),
        .DID({1'b0,1'b0}),
        .DOA(ReadData2[13:12]),
        .DOB(ReadData2[15:14]),
        .DOC(ReadData2[17:16]),
        .DOD(NLW_file_register_reg_r2_0_31_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(EN));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "23" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    file_register_reg_r2_0_31_18_23
       (.ADDRA(ReadRegister2),
        .ADDRB(ReadRegister2),
        .ADDRC(ReadRegister2),
        .ADDRD(WriteRegister),
        .DIA(WriteData[19:18]),
        .DIB(WriteData[21:20]),
        .DIC(WriteData[23:22]),
        .DID({1'b0,1'b0}),
        .DOA(ReadData2[19:18]),
        .DOB(ReadData2[21:20]),
        .DOC(ReadData2[23:22]),
        .DOD(NLW_file_register_reg_r2_0_31_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(EN));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "29" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    file_register_reg_r2_0_31_24_29
       (.ADDRA(ReadRegister2),
        .ADDRB(ReadRegister2),
        .ADDRC(ReadRegister2),
        .ADDRD(WriteRegister),
        .DIA(WriteData[25:24]),
        .DIB(WriteData[27:26]),
        .DIC(WriteData[29:28]),
        .DID({1'b0,1'b0}),
        .DOA(ReadData2[25:24]),
        .DOB(ReadData2[27:26]),
        .DOC(ReadData2[29:28]),
        .DOD(NLW_file_register_reg_r2_0_31_24_29_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(EN));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "31" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    file_register_reg_r2_0_31_30_31
       (.ADDRA(ReadRegister2),
        .ADDRB(ReadRegister2),
        .ADDRC(ReadRegister2),
        .ADDRD(WriteRegister),
        .DIA(WriteData[31:30]),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(ReadData2[31:30]),
        .DOB(NLW_file_register_reg_r2_0_31_30_31_DOB_UNCONNECTED[1:0]),
        .DOC(NLW_file_register_reg_r2_0_31_30_31_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_file_register_reg_r2_0_31_30_31_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(EN));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "11" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    file_register_reg_r2_0_31_6_11
       (.ADDRA(ReadRegister2),
        .ADDRB(ReadRegister2),
        .ADDRC(ReadRegister2),
        .ADDRD(WriteRegister),
        .DIA(WriteData[7:6]),
        .DIB(WriteData[9:8]),
        .DIC(WriteData[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(ReadData2[7:6]),
        .DOB(ReadData2[9:8]),
        .DOC(ReadData2[11:10]),
        .DOD(NLW_file_register_reg_r2_0_31_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(EN));
endmodule

(* CHECK_LICENSE_TYPE = "MIPS_Design_ALU_0_0,ALU,{}" *) (* ORIG_REF_NAME = "MIPS_Design_ALU_0_0" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* ip_definition_source = "module_ref" *) (* x_core_info = "ALU,Vivado 2018.3" *) 
module MIPS_Design_MIPS_Design_ALU_0_0
   (Data1,
    Data2,
    func,
    Result,
    zeros);
  input [31:0]Data1;
  input [31:0]Data2;
  input [2:0]func;
  output [31:0]Result;
  output zeros;

  wire \<const0> ;
  wire [31:0]Data1;
  wire [31:0]Data2;
  wire [31:0]Result;
  wire [2:0]func;

  assign zeros = \<const0> ;
  GND GND
       (.G(\<const0> ));
  MIPS_Design_ALU U0
       (.Data1(Data1),
        .Data2(Data2),
        .Result(Result),
        .func(func));
endmodule

(* CHECK_LICENSE_TYPE = "MIPS_Design_ALU_Control_0_0,ALU_Control,{}" *) (* ORIG_REF_NAME = "MIPS_Design_ALU_Control_0_0" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* ip_definition_source = "module_ref" *) (* x_core_info = "ALU_Control,Vivado 2018.3" *) 
module MIPS_Design_MIPS_Design_ALU_Control_0_0
   (Instruction,
    ALUOP,
    func);
  input [5:0]Instruction;
  input [1:0]ALUOP;
  output [2:0]func;

  wire [1:0]ALUOP;
  wire [5:0]Instruction;
  wire [2:0]func;

  MIPS_Design_ALU_Control U0
       (.ALUOP(ALUOP),
        .Instruction(Instruction),
        .func(func));
endmodule

(* CHECK_LICENSE_TYPE = "MIPS_Design_Control_Unit_0_0,Control_Unit,{}" *) (* ORIG_REF_NAME = "MIPS_Design_Control_Unit_0_0" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* ip_definition_source = "module_ref" *) (* x_core_info = "Control_Unit,Vivado 2018.3" *) 
module MIPS_Design_MIPS_Design_Control_Unit_0_0
   (OP,
    RegDst,
    Branch,
    MemWrite,
    MemtoReg,
    ALUScr,
    RegWrite,
    ALUOP);
  input [5:0]OP;
  output RegDst;
  output Branch;
  output MemWrite;
  output MemtoReg;
  output ALUScr;
  output RegWrite;
  output [1:0]ALUOP;

  wire [1:0]ALUOP;
  wire ALUScr;
  wire Branch;
  wire MemWrite;
  wire MemtoReg;
  wire [5:0]OP;
  wire RegDst;
  wire RegWrite;

  LUT5 #(
    .INIT(32'h00080000)) 
    ALUScr_INST_0
       (.I0(OP[5]),
        .I1(OP[0]),
        .I2(OP[2]),
        .I3(OP[4]),
        .I4(OP[1]),
        .O(ALUScr));
  LUT6 #(
    .INIT(64'h0008000000000001)) 
    RegWrite_INST_0
       (.I0(OP[5]),
        .I1(OP[0]),
        .I2(OP[2]),
        .I3(OP[4]),
        .I4(OP[1]),
        .I5(OP[3]),
        .O(RegWrite));
  MIPS_Design_Control_Unit U0
       (.ALUOP(ALUOP),
        .Branch(Branch),
        .MemWrite(MemWrite),
        .MemtoReg(MemtoReg),
        .OP(OP),
        .RegDst(RegDst));
endmodule

(* CHECK_LICENSE_TYPE = "MIPS_Design_DM_0_0,DM,{}" *) (* ORIG_REF_NAME = "MIPS_Design_DM_0_0" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* ip_definition_source = "module_ref" *) (* x_core_info = "DM,Vivado 2018.3" *) 
module MIPS_Design_MIPS_Design_DM_0_0
   (clk,
    En,
    Address,
    WriteData,
    ReadData);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN MIPS_Design_clk, INSERT_VIP 0" *) input clk;
  input En;
  input [31:0]Address;
  input [31:0]WriteData;
  output [31:0]ReadData;

  wire [31:0]Address;
  wire En;
  wire [31:0]ReadData;
  wire [31:0]WriteData;
  wire clk;

  MIPS_Design_DM U0
       (.Address(Address[6:0]),
        .En(En),
        .ReadData(ReadData),
        .WriteData(WriteData),
        .clk(clk));
endmodule

(* CHECK_LICENSE_TYPE = "MIPS_Design_File_Register_0_0,File_Register,{}" *) (* ORIG_REF_NAME = "MIPS_Design_File_Register_0_0" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* ip_definition_source = "module_ref" *) (* x_core_info = "File_Register,Vivado 2018.3" *) 
module MIPS_Design_MIPS_Design_File_Register_0_0
   (clk,
    EN,
    ReadRegister1,
    ReadRegister2,
    WriteRegister,
    WriteData,
    ReadData1,
    ReadData2);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN MIPS_Design_clk, INSERT_VIP 0" *) input clk;
  input EN;
  input [31:0]ReadRegister1;
  input [31:0]ReadRegister2;
  input [31:0]WriteRegister;
  input [31:0]WriteData;
  output [31:0]ReadData1;
  output [31:0]ReadData2;

  wire EN;
  wire [31:0]ReadData1;
  wire [31:0]ReadData2;
  wire [31:0]ReadRegister1;
  wire [31:0]ReadRegister2;
  wire [31:0]WriteData;
  wire [31:0]WriteRegister;
  wire clk;

  MIPS_Design_File_Register U0
       (.EN(EN),
        .ReadData1(ReadData1),
        .ReadData2(ReadData2),
        .ReadRegister1(ReadRegister1[25:21]),
        .ReadRegister2(ReadRegister2[20:16]),
        .WriteData(WriteData),
        .WriteRegister(WriteRegister[4:0]),
        .clk(clk));
endmodule

(* CHECK_LICENSE_TYPE = "MIPS_Design_IM_0_0,IM,{}" *) (* ORIG_REF_NAME = "MIPS_Design_IM_0_0" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* ip_definition_source = "module_ref" *) (* x_core_info = "IM,Vivado 2018.3" *) 
module MIPS_Design_MIPS_Design_IM_0_0
   (clk,
    ReadAddress,
    ReadData);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN MIPS_Design_clk, INSERT_VIP 0" *) input clk;
  input [31:0]ReadAddress;
  output [31:0]ReadData;

  wire \<const0> ;
  wire [31:0]ReadAddress;
  wire [0:0]\^ReadData ;
  wire \ReadData[0]_INST_0_i_1_n_0 ;

  assign ReadData[31] = \<const0> ;
  assign ReadData[30] = \<const0> ;
  assign ReadData[29] = \<const0> ;
  assign ReadData[28] = \<const0> ;
  assign ReadData[27] = \<const0> ;
  assign ReadData[26] = \<const0> ;
  assign ReadData[25] = \<const0> ;
  assign ReadData[24] = \<const0> ;
  assign ReadData[23] = \<const0> ;
  assign ReadData[22] = \<const0> ;
  assign ReadData[21] = \<const0> ;
  assign ReadData[20] = \<const0> ;
  assign ReadData[19] = \<const0> ;
  assign ReadData[18] = \<const0> ;
  assign ReadData[17] = \<const0> ;
  assign ReadData[16] = \<const0> ;
  assign ReadData[15] = \<const0> ;
  assign ReadData[14] = \<const0> ;
  assign ReadData[13] = \<const0> ;
  assign ReadData[12] = \<const0> ;
  assign ReadData[11] = \<const0> ;
  assign ReadData[10] = \<const0> ;
  assign ReadData[9] = \<const0> ;
  assign ReadData[8] = \<const0> ;
  assign ReadData[7] = \<const0> ;
  assign ReadData[6] = \<const0> ;
  assign ReadData[5] = \<const0> ;
  assign ReadData[4] = \<const0> ;
  assign ReadData[3] = \<const0> ;
  assign ReadData[2] = \<const0> ;
  assign ReadData[1] = \<const0> ;
  assign ReadData[0] = \^ReadData [0];
  GND GND
       (.G(\<const0> ));
  LUT2 #(
    .INIT(4'h2)) 
    \ReadData[0]_INST_0 
       (.I0(\ReadData[0]_INST_0_i_1_n_0 ),
        .I1(ReadAddress[5]),
        .O(\^ReadData ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \ReadData[0]_INST_0_i_1 
       (.I0(ReadAddress[4]),
        .I1(ReadAddress[2]),
        .I2(ReadAddress[0]),
        .I3(ReadAddress[1]),
        .I4(ReadAddress[3]),
        .I5(ReadAddress[6]),
        .O(\ReadData[0]_INST_0_i_1_n_0 ));
endmodule

(* CHECK_LICENSE_TYPE = "MIPS_Design_PC_0_0,PC,{}" *) (* ORIG_REF_NAME = "MIPS_Design_PC_0_0" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* ip_definition_source = "module_ref" *) (* x_core_info = "PC,Vivado 2018.3" *) 
module MIPS_Design_MIPS_Design_PC_0_0
   (rst,
    clk,
    DataIn,
    DataOut);
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input rst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN MIPS_Design_clk, INSERT_VIP 0" *) input clk;
  input [29:0]DataIn;
  output [29:0]DataOut;

  wire [29:0]DataIn;
  wire [29:0]DataOut;
  wire clk;
  wire rst;

  MIPS_Design_PC U0
       (.DataIn(DataIn),
        .DataOut(DataOut),
        .clk(clk),
        .rst(rst));
endmodule

(* CHECK_LICENSE_TYPE = "MIPS_Design_PC_Adder_0_0,PC_Adder,{}" *) (* ORIG_REF_NAME = "MIPS_Design_PC_Adder_0_0" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* ip_definition_source = "module_ref" *) (* x_core_info = "PC_Adder,Vivado 2018.3" *) 
module MIPS_Design_MIPS_Design_PC_Adder_0_0
   (PC_Data,
    Signextention_data,
    PC_New_Data);
  input [31:0]PC_Data;
  input [31:0]Signextention_data;
  output [31:0]PC_New_Data;

  wire [31:0]PC_Data;
  wire [31:0]PC_New_Data;
  wire [31:0]Signextention_data;

  MIPS_Design_PC_Adder U0
       (.PC_Data(PC_Data),
        .PC_New_Data(PC_New_Data),
        .Signextention_data(Signextention_data));
endmodule

(* CHECK_LICENSE_TYPE = "MIPS_Design_Sign_Extention_0_0,Sign_Extention,{}" *) (* ORIG_REF_NAME = "MIPS_Design_Sign_Extention_0_0" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* ip_definition_source = "module_ref" *) (* x_core_info = "Sign_Extention,Vivado 2018.3" *) 
module MIPS_Design_MIPS_Design_Sign_Extention_0_0
   (DataIn,
    DataOut);
  input [15:0]DataIn;
  output [31:0]DataOut;

  wire [15:0]DataIn;

  assign DataOut[31] = DataIn[15];
  assign DataOut[30] = DataIn[15];
  assign DataOut[29] = DataIn[15];
  assign DataOut[28] = DataIn[15];
  assign DataOut[27] = DataIn[15];
  assign DataOut[26] = DataIn[15];
  assign DataOut[25] = DataIn[15];
  assign DataOut[24] = DataIn[15];
  assign DataOut[23] = DataIn[15];
  assign DataOut[22] = DataIn[15];
  assign DataOut[21] = DataIn[15];
  assign DataOut[20] = DataIn[15];
  assign DataOut[19] = DataIn[15];
  assign DataOut[18] = DataIn[15];
  assign DataOut[17] = DataIn[15];
  assign DataOut[16] = DataIn[15];
  assign DataOut[15:0] = DataIn;
endmodule

(* CHECK_LICENSE_TYPE = "MIPS_Design_mux_2x1_1_0,mux_2x1,{}" *) (* ORIG_REF_NAME = "MIPS_Design_mux_2x1_1_0" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* ip_definition_source = "module_ref" *) (* x_core_info = "mux_2x1,Vivado 2018.3" *) 
module MIPS_Design_MIPS_Design_mux_2x1_1_0
   (Data1,
    Data2,
    Selector,
    DataOut);
  input [31:0]Data1;
  input [31:0]Data2;
  input Selector;
  output [31:0]DataOut;

  wire [31:0]Data1;
  wire [31:0]Data2;
  wire [31:0]DataOut;
  wire Selector;

  MIPS_Design_mux_2x1_1 U0
       (.Data1(Data1),
        .Data2(Data2),
        .DataOut(DataOut),
        .Selector(Selector));
endmodule

(* CHECK_LICENSE_TYPE = "MIPS_Design_mux_2x1_2_1,mux_2x1,{}" *) (* ORIG_REF_NAME = "MIPS_Design_mux_2x1_2_1" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* ip_definition_source = "module_ref" *) (* x_core_info = "mux_2x1,Vivado 2018.3" *) 
module MIPS_Design_MIPS_Design_mux_2x1_2_1
   (Data1,
    Data2,
    Selector,
    DataOut);
  input [31:0]Data1;
  input [31:0]Data2;
  input Selector;
  output [31:0]DataOut;

  wire [31:0]Data1;
  wire [31:0]Data2;
  wire [31:0]DataOut;
  wire Selector;

  MIPS_Design_mux_2x1_0 U0
       (.Data1(Data1),
        .Data2(Data2),
        .DataOut(DataOut),
        .Selector(Selector));
endmodule

(* CHECK_LICENSE_TYPE = "MIPS_Design_mux_2x1_4_0,mux_2x1,{}" *) (* ORIG_REF_NAME = "MIPS_Design_mux_2x1_4_0" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* ip_definition_source = "module_ref" *) (* x_core_info = "mux_2x1,Vivado 2018.3" *) 
module MIPS_Design_MIPS_Design_mux_2x1_4_0
   (Data1,
    Data2,
    Selector,
    DataOut);
  input [31:0]Data1;
  input [31:0]Data2;
  input Selector;
  output [31:0]DataOut;

  wire [31:0]Data1;
  wire [31:0]Data2;
  wire [31:0]DataOut;
  wire Selector;

  MIPS_Design_mux_2x1 U0
       (.Data1(Data1),
        .Data2(Data2),
        .DataOut(DataOut),
        .Selector(Selector));
endmodule

(* CHECK_LICENSE_TYPE = "MIPS_Design_mux_addr_0_0,mux_addr,{}" *) (* ORIG_REF_NAME = "MIPS_Design_mux_addr_0_0" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* ip_definition_source = "module_ref" *) (* x_core_info = "mux_addr,Vivado 2018.3" *) 
module MIPS_Design_MIPS_Design_mux_addr_0_0
   (selector,
    Data1,
    Data2,
    DataOut);
  input selector;
  input [31:0]Data1;
  input [31:0]Data2;
  output [4:0]DataOut;

  wire [31:0]Data1;
  wire [31:0]Data2;
  wire [4:0]DataOut;
  wire selector;

  MIPS_Design_mux_addr U0
       (.Data1(Data1[20:16]),
        .Data2(Data2[15:11]),
        .DataOut(DataOut),
        .selector(selector));
endmodule

(* CHECK_LICENSE_TYPE = "MIPS_Design_util_vector_logic_0_0,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* ORIG_REF_NAME = "MIPS_Design_util_vector_logic_0_0" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2018.3" *) 
module MIPS_Design_MIPS_Design_util_vector_logic_0_0
   (Op1,
    Op2,
    Res);
  input [0:0]Op1;
  input [0:0]Op2;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Op2;
  wire [0:0]Res;

  LUT2 #(
    .INIT(4'h8)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .I1(Op2),
        .O(Res));
endmodule

(* ORIG_REF_NAME = "PC" *) 
module MIPS_Design_PC
   (DataOut,
    DataIn,
    rst,
    clk);
  output [29:0]DataOut;
  input [29:0]DataIn;
  input rst;
  input clk;

  wire [29:0]DataIn;
  wire [29:0]DataOut;
  wire \DataOut_reg[12]_i_1_n_0 ;
  wire \DataOut_reg[12]_i_1_n_1 ;
  wire \DataOut_reg[12]_i_1_n_2 ;
  wire \DataOut_reg[12]_i_1_n_3 ;
  wire \DataOut_reg[16]_i_1_n_0 ;
  wire \DataOut_reg[16]_i_1_n_1 ;
  wire \DataOut_reg[16]_i_1_n_2 ;
  wire \DataOut_reg[16]_i_1_n_3 ;
  wire \DataOut_reg[20]_i_1_n_0 ;
  wire \DataOut_reg[20]_i_1_n_1 ;
  wire \DataOut_reg[20]_i_1_n_2 ;
  wire \DataOut_reg[20]_i_1_n_3 ;
  wire \DataOut_reg[24]_i_1_n_0 ;
  wire \DataOut_reg[24]_i_1_n_1 ;
  wire \DataOut_reg[24]_i_1_n_2 ;
  wire \DataOut_reg[24]_i_1_n_3 ;
  wire \DataOut_reg[28]_i_1_n_0 ;
  wire \DataOut_reg[28]_i_1_n_1 ;
  wire \DataOut_reg[28]_i_1_n_2 ;
  wire \DataOut_reg[28]_i_1_n_3 ;
  wire \DataOut_reg[4]_i_1_n_0 ;
  wire \DataOut_reg[4]_i_1_n_1 ;
  wire \DataOut_reg[4]_i_1_n_2 ;
  wire \DataOut_reg[4]_i_1_n_3 ;
  wire \DataOut_reg[8]_i_1_n_0 ;
  wire \DataOut_reg[8]_i_1_n_1 ;
  wire \DataOut_reg[8]_i_1_n_2 ;
  wire \DataOut_reg[8]_i_1_n_3 ;
  wire clk;
  wire [29:0]plusOp;
  wire rst;
  wire [3:0]\NLW_DataOut_reg[29]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_DataOut_reg[29]_i_1_O_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \DataOut[0]_i_1 
       (.I0(DataIn[0]),
        .O(plusOp[0]));
  FDRE \DataOut_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(plusOp[0]),
        .Q(DataOut[0]),
        .R(rst));
  FDRE \DataOut_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(plusOp[10]),
        .Q(DataOut[10]),
        .R(rst));
  FDRE \DataOut_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(plusOp[11]),
        .Q(DataOut[11]),
        .R(rst));
  FDRE \DataOut_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(plusOp[12]),
        .Q(DataOut[12]),
        .R(rst));
  CARRY4 \DataOut_reg[12]_i_1 
       (.CI(\DataOut_reg[8]_i_1_n_0 ),
        .CO({\DataOut_reg[12]_i_1_n_0 ,\DataOut_reg[12]_i_1_n_1 ,\DataOut_reg[12]_i_1_n_2 ,\DataOut_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[12:9]),
        .S(DataIn[12:9]));
  FDRE \DataOut_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(plusOp[13]),
        .Q(DataOut[13]),
        .R(rst));
  FDRE \DataOut_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(plusOp[14]),
        .Q(DataOut[14]),
        .R(rst));
  FDRE \DataOut_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(plusOp[15]),
        .Q(DataOut[15]),
        .R(rst));
  FDRE \DataOut_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(plusOp[16]),
        .Q(DataOut[16]),
        .R(rst));
  CARRY4 \DataOut_reg[16]_i_1 
       (.CI(\DataOut_reg[12]_i_1_n_0 ),
        .CO({\DataOut_reg[16]_i_1_n_0 ,\DataOut_reg[16]_i_1_n_1 ,\DataOut_reg[16]_i_1_n_2 ,\DataOut_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[16:13]),
        .S(DataIn[16:13]));
  FDRE \DataOut_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(plusOp[17]),
        .Q(DataOut[17]),
        .R(rst));
  FDRE \DataOut_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(plusOp[18]),
        .Q(DataOut[18]),
        .R(rst));
  FDRE \DataOut_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(plusOp[19]),
        .Q(DataOut[19]),
        .R(rst));
  FDRE \DataOut_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(plusOp[1]),
        .Q(DataOut[1]),
        .R(rst));
  FDRE \DataOut_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(plusOp[20]),
        .Q(DataOut[20]),
        .R(rst));
  CARRY4 \DataOut_reg[20]_i_1 
       (.CI(\DataOut_reg[16]_i_1_n_0 ),
        .CO({\DataOut_reg[20]_i_1_n_0 ,\DataOut_reg[20]_i_1_n_1 ,\DataOut_reg[20]_i_1_n_2 ,\DataOut_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[20:17]),
        .S(DataIn[20:17]));
  FDRE \DataOut_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(plusOp[21]),
        .Q(DataOut[21]),
        .R(rst));
  FDRE \DataOut_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(plusOp[22]),
        .Q(DataOut[22]),
        .R(rst));
  FDRE \DataOut_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(plusOp[23]),
        .Q(DataOut[23]),
        .R(rst));
  FDRE \DataOut_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(plusOp[24]),
        .Q(DataOut[24]),
        .R(rst));
  CARRY4 \DataOut_reg[24]_i_1 
       (.CI(\DataOut_reg[20]_i_1_n_0 ),
        .CO({\DataOut_reg[24]_i_1_n_0 ,\DataOut_reg[24]_i_1_n_1 ,\DataOut_reg[24]_i_1_n_2 ,\DataOut_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[24:21]),
        .S(DataIn[24:21]));
  FDRE \DataOut_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(plusOp[25]),
        .Q(DataOut[25]),
        .R(rst));
  FDRE \DataOut_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(plusOp[26]),
        .Q(DataOut[26]),
        .R(rst));
  FDRE \DataOut_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(plusOp[27]),
        .Q(DataOut[27]),
        .R(rst));
  FDRE \DataOut_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(plusOp[28]),
        .Q(DataOut[28]),
        .R(rst));
  CARRY4 \DataOut_reg[28]_i_1 
       (.CI(\DataOut_reg[24]_i_1_n_0 ),
        .CO({\DataOut_reg[28]_i_1_n_0 ,\DataOut_reg[28]_i_1_n_1 ,\DataOut_reg[28]_i_1_n_2 ,\DataOut_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[28:25]),
        .S(DataIn[28:25]));
  FDRE \DataOut_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(plusOp[29]),
        .Q(DataOut[29]),
        .R(rst));
  CARRY4 \DataOut_reg[29]_i_1 
       (.CI(\DataOut_reg[28]_i_1_n_0 ),
        .CO(\NLW_DataOut_reg[29]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_DataOut_reg[29]_i_1_O_UNCONNECTED [3:1],plusOp[29]}),
        .S({1'b0,1'b0,1'b0,DataIn[29]}));
  FDRE \DataOut_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(plusOp[2]),
        .Q(DataOut[2]),
        .R(rst));
  FDRE \DataOut_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(plusOp[3]),
        .Q(DataOut[3]),
        .R(rst));
  FDRE \DataOut_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(plusOp[4]),
        .Q(DataOut[4]),
        .R(rst));
  CARRY4 \DataOut_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\DataOut_reg[4]_i_1_n_0 ,\DataOut_reg[4]_i_1_n_1 ,\DataOut_reg[4]_i_1_n_2 ,\DataOut_reg[4]_i_1_n_3 }),
        .CYINIT(DataIn[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[4:1]),
        .S(DataIn[4:1]));
  FDRE \DataOut_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(plusOp[5]),
        .Q(DataOut[5]),
        .R(rst));
  FDRE \DataOut_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(plusOp[6]),
        .Q(DataOut[6]),
        .R(rst));
  FDRE \DataOut_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(plusOp[7]),
        .Q(DataOut[7]),
        .R(rst));
  FDRE \DataOut_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(plusOp[8]),
        .Q(DataOut[8]),
        .R(rst));
  CARRY4 \DataOut_reg[8]_i_1 
       (.CI(\DataOut_reg[4]_i_1_n_0 ),
        .CO({\DataOut_reg[8]_i_1_n_0 ,\DataOut_reg[8]_i_1_n_1 ,\DataOut_reg[8]_i_1_n_2 ,\DataOut_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[8:5]),
        .S(DataIn[8:5]));
  FDRE \DataOut_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(plusOp[9]),
        .Q(DataOut[9]),
        .R(rst));
endmodule

(* ORIG_REF_NAME = "PC_Adder" *) 
module MIPS_Design_PC_Adder
   (PC_New_Data,
    PC_Data,
    Signextention_data);
  output [31:0]PC_New_Data;
  input [31:0]PC_Data;
  input [31:0]Signextention_data;

  wire [31:0]PC_Data;
  wire [31:0]PC_New_Data;
  wire \PC_New_Data[0]_INST_0_i_1_n_0 ;
  wire \PC_New_Data[0]_INST_0_i_2_n_0 ;
  wire \PC_New_Data[0]_INST_0_i_3_n_0 ;
  wire \PC_New_Data[0]_INST_0_i_4_n_0 ;
  wire \PC_New_Data[0]_INST_0_n_0 ;
  wire \PC_New_Data[0]_INST_0_n_1 ;
  wire \PC_New_Data[0]_INST_0_n_2 ;
  wire \PC_New_Data[0]_INST_0_n_3 ;
  wire \PC_New_Data[12]_INST_0_i_1_n_0 ;
  wire \PC_New_Data[12]_INST_0_i_2_n_0 ;
  wire \PC_New_Data[12]_INST_0_i_3_n_0 ;
  wire \PC_New_Data[12]_INST_0_i_4_n_0 ;
  wire \PC_New_Data[12]_INST_0_n_0 ;
  wire \PC_New_Data[12]_INST_0_n_1 ;
  wire \PC_New_Data[12]_INST_0_n_2 ;
  wire \PC_New_Data[12]_INST_0_n_3 ;
  wire \PC_New_Data[16]_INST_0_i_1_n_0 ;
  wire \PC_New_Data[16]_INST_0_i_2_n_0 ;
  wire \PC_New_Data[16]_INST_0_i_3_n_0 ;
  wire \PC_New_Data[16]_INST_0_i_4_n_0 ;
  wire \PC_New_Data[16]_INST_0_n_0 ;
  wire \PC_New_Data[16]_INST_0_n_1 ;
  wire \PC_New_Data[16]_INST_0_n_2 ;
  wire \PC_New_Data[16]_INST_0_n_3 ;
  wire \PC_New_Data[20]_INST_0_i_1_n_0 ;
  wire \PC_New_Data[20]_INST_0_i_2_n_0 ;
  wire \PC_New_Data[20]_INST_0_i_3_n_0 ;
  wire \PC_New_Data[20]_INST_0_i_4_n_0 ;
  wire \PC_New_Data[20]_INST_0_n_0 ;
  wire \PC_New_Data[20]_INST_0_n_1 ;
  wire \PC_New_Data[20]_INST_0_n_2 ;
  wire \PC_New_Data[20]_INST_0_n_3 ;
  wire \PC_New_Data[24]_INST_0_i_1_n_0 ;
  wire \PC_New_Data[24]_INST_0_i_2_n_0 ;
  wire \PC_New_Data[24]_INST_0_i_3_n_0 ;
  wire \PC_New_Data[24]_INST_0_i_4_n_0 ;
  wire \PC_New_Data[24]_INST_0_n_0 ;
  wire \PC_New_Data[24]_INST_0_n_1 ;
  wire \PC_New_Data[24]_INST_0_n_2 ;
  wire \PC_New_Data[24]_INST_0_n_3 ;
  wire \PC_New_Data[28]_INST_0_i_1_n_0 ;
  wire \PC_New_Data[28]_INST_0_i_2_n_0 ;
  wire \PC_New_Data[28]_INST_0_i_3_n_0 ;
  wire \PC_New_Data[28]_INST_0_i_4_n_0 ;
  wire \PC_New_Data[28]_INST_0_n_1 ;
  wire \PC_New_Data[28]_INST_0_n_2 ;
  wire \PC_New_Data[28]_INST_0_n_3 ;
  wire \PC_New_Data[4]_INST_0_i_1_n_0 ;
  wire \PC_New_Data[4]_INST_0_i_2_n_0 ;
  wire \PC_New_Data[4]_INST_0_i_3_n_0 ;
  wire \PC_New_Data[4]_INST_0_i_4_n_0 ;
  wire \PC_New_Data[4]_INST_0_n_0 ;
  wire \PC_New_Data[4]_INST_0_n_1 ;
  wire \PC_New_Data[4]_INST_0_n_2 ;
  wire \PC_New_Data[4]_INST_0_n_3 ;
  wire \PC_New_Data[8]_INST_0_i_1_n_0 ;
  wire \PC_New_Data[8]_INST_0_i_2_n_0 ;
  wire \PC_New_Data[8]_INST_0_i_3_n_0 ;
  wire \PC_New_Data[8]_INST_0_i_4_n_0 ;
  wire \PC_New_Data[8]_INST_0_n_0 ;
  wire \PC_New_Data[8]_INST_0_n_1 ;
  wire \PC_New_Data[8]_INST_0_n_2 ;
  wire \PC_New_Data[8]_INST_0_n_3 ;
  wire [31:0]Signextention_data;
  wire [3:3]\NLW_PC_New_Data[28]_INST_0_CO_UNCONNECTED ;

  CARRY4 \PC_New_Data[0]_INST_0 
       (.CI(1'b0),
        .CO({\PC_New_Data[0]_INST_0_n_0 ,\PC_New_Data[0]_INST_0_n_1 ,\PC_New_Data[0]_INST_0_n_2 ,\PC_New_Data[0]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(PC_Data[3:0]),
        .O(PC_New_Data[3:0]),
        .S({\PC_New_Data[0]_INST_0_i_1_n_0 ,\PC_New_Data[0]_INST_0_i_2_n_0 ,\PC_New_Data[0]_INST_0_i_3_n_0 ,\PC_New_Data[0]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \PC_New_Data[0]_INST_0_i_1 
       (.I0(PC_Data[3]),
        .I1(Signextention_data[3]),
        .O(\PC_New_Data[0]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \PC_New_Data[0]_INST_0_i_2 
       (.I0(PC_Data[2]),
        .I1(Signextention_data[2]),
        .O(\PC_New_Data[0]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \PC_New_Data[0]_INST_0_i_3 
       (.I0(PC_Data[1]),
        .I1(Signextention_data[1]),
        .O(\PC_New_Data[0]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \PC_New_Data[0]_INST_0_i_4 
       (.I0(PC_Data[0]),
        .I1(Signextention_data[0]),
        .O(\PC_New_Data[0]_INST_0_i_4_n_0 ));
  CARRY4 \PC_New_Data[12]_INST_0 
       (.CI(\PC_New_Data[8]_INST_0_n_0 ),
        .CO({\PC_New_Data[12]_INST_0_n_0 ,\PC_New_Data[12]_INST_0_n_1 ,\PC_New_Data[12]_INST_0_n_2 ,\PC_New_Data[12]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(PC_Data[15:12]),
        .O(PC_New_Data[15:12]),
        .S({\PC_New_Data[12]_INST_0_i_1_n_0 ,\PC_New_Data[12]_INST_0_i_2_n_0 ,\PC_New_Data[12]_INST_0_i_3_n_0 ,\PC_New_Data[12]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \PC_New_Data[12]_INST_0_i_1 
       (.I0(PC_Data[15]),
        .I1(Signextention_data[15]),
        .O(\PC_New_Data[12]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \PC_New_Data[12]_INST_0_i_2 
       (.I0(PC_Data[14]),
        .I1(Signextention_data[14]),
        .O(\PC_New_Data[12]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \PC_New_Data[12]_INST_0_i_3 
       (.I0(PC_Data[13]),
        .I1(Signextention_data[13]),
        .O(\PC_New_Data[12]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \PC_New_Data[12]_INST_0_i_4 
       (.I0(PC_Data[12]),
        .I1(Signextention_data[12]),
        .O(\PC_New_Data[12]_INST_0_i_4_n_0 ));
  CARRY4 \PC_New_Data[16]_INST_0 
       (.CI(\PC_New_Data[12]_INST_0_n_0 ),
        .CO({\PC_New_Data[16]_INST_0_n_0 ,\PC_New_Data[16]_INST_0_n_1 ,\PC_New_Data[16]_INST_0_n_2 ,\PC_New_Data[16]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(PC_Data[19:16]),
        .O(PC_New_Data[19:16]),
        .S({\PC_New_Data[16]_INST_0_i_1_n_0 ,\PC_New_Data[16]_INST_0_i_2_n_0 ,\PC_New_Data[16]_INST_0_i_3_n_0 ,\PC_New_Data[16]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \PC_New_Data[16]_INST_0_i_1 
       (.I0(PC_Data[19]),
        .I1(Signextention_data[19]),
        .O(\PC_New_Data[16]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \PC_New_Data[16]_INST_0_i_2 
       (.I0(PC_Data[18]),
        .I1(Signextention_data[18]),
        .O(\PC_New_Data[16]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \PC_New_Data[16]_INST_0_i_3 
       (.I0(PC_Data[17]),
        .I1(Signextention_data[17]),
        .O(\PC_New_Data[16]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \PC_New_Data[16]_INST_0_i_4 
       (.I0(PC_Data[16]),
        .I1(Signextention_data[16]),
        .O(\PC_New_Data[16]_INST_0_i_4_n_0 ));
  CARRY4 \PC_New_Data[20]_INST_0 
       (.CI(\PC_New_Data[16]_INST_0_n_0 ),
        .CO({\PC_New_Data[20]_INST_0_n_0 ,\PC_New_Data[20]_INST_0_n_1 ,\PC_New_Data[20]_INST_0_n_2 ,\PC_New_Data[20]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(PC_Data[23:20]),
        .O(PC_New_Data[23:20]),
        .S({\PC_New_Data[20]_INST_0_i_1_n_0 ,\PC_New_Data[20]_INST_0_i_2_n_0 ,\PC_New_Data[20]_INST_0_i_3_n_0 ,\PC_New_Data[20]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \PC_New_Data[20]_INST_0_i_1 
       (.I0(PC_Data[23]),
        .I1(Signextention_data[23]),
        .O(\PC_New_Data[20]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \PC_New_Data[20]_INST_0_i_2 
       (.I0(PC_Data[22]),
        .I1(Signextention_data[22]),
        .O(\PC_New_Data[20]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \PC_New_Data[20]_INST_0_i_3 
       (.I0(PC_Data[21]),
        .I1(Signextention_data[21]),
        .O(\PC_New_Data[20]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \PC_New_Data[20]_INST_0_i_4 
       (.I0(PC_Data[20]),
        .I1(Signextention_data[20]),
        .O(\PC_New_Data[20]_INST_0_i_4_n_0 ));
  CARRY4 \PC_New_Data[24]_INST_0 
       (.CI(\PC_New_Data[20]_INST_0_n_0 ),
        .CO({\PC_New_Data[24]_INST_0_n_0 ,\PC_New_Data[24]_INST_0_n_1 ,\PC_New_Data[24]_INST_0_n_2 ,\PC_New_Data[24]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(PC_Data[27:24]),
        .O(PC_New_Data[27:24]),
        .S({\PC_New_Data[24]_INST_0_i_1_n_0 ,\PC_New_Data[24]_INST_0_i_2_n_0 ,\PC_New_Data[24]_INST_0_i_3_n_0 ,\PC_New_Data[24]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \PC_New_Data[24]_INST_0_i_1 
       (.I0(PC_Data[27]),
        .I1(Signextention_data[27]),
        .O(\PC_New_Data[24]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \PC_New_Data[24]_INST_0_i_2 
       (.I0(PC_Data[26]),
        .I1(Signextention_data[26]),
        .O(\PC_New_Data[24]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \PC_New_Data[24]_INST_0_i_3 
       (.I0(PC_Data[25]),
        .I1(Signextention_data[25]),
        .O(\PC_New_Data[24]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \PC_New_Data[24]_INST_0_i_4 
       (.I0(PC_Data[24]),
        .I1(Signextention_data[24]),
        .O(\PC_New_Data[24]_INST_0_i_4_n_0 ));
  CARRY4 \PC_New_Data[28]_INST_0 
       (.CI(\PC_New_Data[24]_INST_0_n_0 ),
        .CO({\NLW_PC_New_Data[28]_INST_0_CO_UNCONNECTED [3],\PC_New_Data[28]_INST_0_n_1 ,\PC_New_Data[28]_INST_0_n_2 ,\PC_New_Data[28]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,PC_Data[30:28]}),
        .O(PC_New_Data[31:28]),
        .S({\PC_New_Data[28]_INST_0_i_1_n_0 ,\PC_New_Data[28]_INST_0_i_2_n_0 ,\PC_New_Data[28]_INST_0_i_3_n_0 ,\PC_New_Data[28]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \PC_New_Data[28]_INST_0_i_1 
       (.I0(PC_Data[31]),
        .I1(Signextention_data[31]),
        .O(\PC_New_Data[28]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \PC_New_Data[28]_INST_0_i_2 
       (.I0(PC_Data[30]),
        .I1(Signextention_data[30]),
        .O(\PC_New_Data[28]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \PC_New_Data[28]_INST_0_i_3 
       (.I0(PC_Data[29]),
        .I1(Signextention_data[29]),
        .O(\PC_New_Data[28]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \PC_New_Data[28]_INST_0_i_4 
       (.I0(PC_Data[28]),
        .I1(Signextention_data[28]),
        .O(\PC_New_Data[28]_INST_0_i_4_n_0 ));
  CARRY4 \PC_New_Data[4]_INST_0 
       (.CI(\PC_New_Data[0]_INST_0_n_0 ),
        .CO({\PC_New_Data[4]_INST_0_n_0 ,\PC_New_Data[4]_INST_0_n_1 ,\PC_New_Data[4]_INST_0_n_2 ,\PC_New_Data[4]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(PC_Data[7:4]),
        .O(PC_New_Data[7:4]),
        .S({\PC_New_Data[4]_INST_0_i_1_n_0 ,\PC_New_Data[4]_INST_0_i_2_n_0 ,\PC_New_Data[4]_INST_0_i_3_n_0 ,\PC_New_Data[4]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \PC_New_Data[4]_INST_0_i_1 
       (.I0(PC_Data[7]),
        .I1(Signextention_data[7]),
        .O(\PC_New_Data[4]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \PC_New_Data[4]_INST_0_i_2 
       (.I0(PC_Data[6]),
        .I1(Signextention_data[6]),
        .O(\PC_New_Data[4]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \PC_New_Data[4]_INST_0_i_3 
       (.I0(PC_Data[5]),
        .I1(Signextention_data[5]),
        .O(\PC_New_Data[4]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \PC_New_Data[4]_INST_0_i_4 
       (.I0(PC_Data[4]),
        .I1(Signextention_data[4]),
        .O(\PC_New_Data[4]_INST_0_i_4_n_0 ));
  CARRY4 \PC_New_Data[8]_INST_0 
       (.CI(\PC_New_Data[4]_INST_0_n_0 ),
        .CO({\PC_New_Data[8]_INST_0_n_0 ,\PC_New_Data[8]_INST_0_n_1 ,\PC_New_Data[8]_INST_0_n_2 ,\PC_New_Data[8]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(PC_Data[11:8]),
        .O(PC_New_Data[11:8]),
        .S({\PC_New_Data[8]_INST_0_i_1_n_0 ,\PC_New_Data[8]_INST_0_i_2_n_0 ,\PC_New_Data[8]_INST_0_i_3_n_0 ,\PC_New_Data[8]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \PC_New_Data[8]_INST_0_i_1 
       (.I0(PC_Data[11]),
        .I1(Signextention_data[11]),
        .O(\PC_New_Data[8]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \PC_New_Data[8]_INST_0_i_2 
       (.I0(PC_Data[10]),
        .I1(Signextention_data[10]),
        .O(\PC_New_Data[8]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \PC_New_Data[8]_INST_0_i_3 
       (.I0(PC_Data[9]),
        .I1(Signextention_data[9]),
        .O(\PC_New_Data[8]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \PC_New_Data[8]_INST_0_i_4 
       (.I0(PC_Data[8]),
        .I1(Signextention_data[8]),
        .O(\PC_New_Data[8]_INST_0_i_4_n_0 ));
endmodule

(* ORIG_REF_NAME = "mux_2x1" *) 
module MIPS_Design_mux_2x1
   (DataOut,
    Data2,
    Data1,
    Selector);
  output [31:0]DataOut;
  input [31:0]Data2;
  input [31:0]Data1;
  input Selector;

  wire [31:0]Data1;
  wire [31:0]Data2;
  wire [31:0]DataOut;
  wire Selector;

  LUT3 #(
    .INIT(8'hAC)) 
    \DataOut[0]_INST_0 
       (.I0(Data2[0]),
        .I1(Data1[0]),
        .I2(Selector),
        .O(DataOut[0]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DataOut[10]_INST_0 
       (.I0(Data2[10]),
        .I1(Data1[10]),
        .I2(Selector),
        .O(DataOut[10]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DataOut[11]_INST_0 
       (.I0(Data2[11]),
        .I1(Data1[11]),
        .I2(Selector),
        .O(DataOut[11]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DataOut[12]_INST_0 
       (.I0(Data2[12]),
        .I1(Data1[12]),
        .I2(Selector),
        .O(DataOut[12]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DataOut[13]_INST_0 
       (.I0(Data2[13]),
        .I1(Data1[13]),
        .I2(Selector),
        .O(DataOut[13]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DataOut[14]_INST_0 
       (.I0(Data2[14]),
        .I1(Data1[14]),
        .I2(Selector),
        .O(DataOut[14]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DataOut[15]_INST_0 
       (.I0(Data2[15]),
        .I1(Data1[15]),
        .I2(Selector),
        .O(DataOut[15]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DataOut[16]_INST_0 
       (.I0(Data2[16]),
        .I1(Data1[16]),
        .I2(Selector),
        .O(DataOut[16]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DataOut[17]_INST_0 
       (.I0(Data2[17]),
        .I1(Data1[17]),
        .I2(Selector),
        .O(DataOut[17]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DataOut[18]_INST_0 
       (.I0(Data2[18]),
        .I1(Data1[18]),
        .I2(Selector),
        .O(DataOut[18]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DataOut[19]_INST_0 
       (.I0(Data2[19]),
        .I1(Data1[19]),
        .I2(Selector),
        .O(DataOut[19]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DataOut[1]_INST_0 
       (.I0(Data2[1]),
        .I1(Data1[1]),
        .I2(Selector),
        .O(DataOut[1]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DataOut[20]_INST_0 
       (.I0(Data2[20]),
        .I1(Data1[20]),
        .I2(Selector),
        .O(DataOut[20]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DataOut[21]_INST_0 
       (.I0(Data2[21]),
        .I1(Data1[21]),
        .I2(Selector),
        .O(DataOut[21]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DataOut[22]_INST_0 
       (.I0(Data2[22]),
        .I1(Data1[22]),
        .I2(Selector),
        .O(DataOut[22]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DataOut[23]_INST_0 
       (.I0(Data2[23]),
        .I1(Data1[23]),
        .I2(Selector),
        .O(DataOut[23]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DataOut[24]_INST_0 
       (.I0(Data2[24]),
        .I1(Data1[24]),
        .I2(Selector),
        .O(DataOut[24]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DataOut[25]_INST_0 
       (.I0(Data2[25]),
        .I1(Data1[25]),
        .I2(Selector),
        .O(DataOut[25]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DataOut[26]_INST_0 
       (.I0(Data2[26]),
        .I1(Data1[26]),
        .I2(Selector),
        .O(DataOut[26]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DataOut[27]_INST_0 
       (.I0(Data2[27]),
        .I1(Data1[27]),
        .I2(Selector),
        .O(DataOut[27]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DataOut[28]_INST_0 
       (.I0(Data2[28]),
        .I1(Data1[28]),
        .I2(Selector),
        .O(DataOut[28]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DataOut[29]_INST_0 
       (.I0(Data2[29]),
        .I1(Data1[29]),
        .I2(Selector),
        .O(DataOut[29]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DataOut[2]_INST_0 
       (.I0(Data2[2]),
        .I1(Data1[2]),
        .I2(Selector),
        .O(DataOut[2]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DataOut[30]_INST_0 
       (.I0(Data2[30]),
        .I1(Data1[30]),
        .I2(Selector),
        .O(DataOut[30]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DataOut[31]_INST_0 
       (.I0(Data2[31]),
        .I1(Data1[31]),
        .I2(Selector),
        .O(DataOut[31]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DataOut[3]_INST_0 
       (.I0(Data2[3]),
        .I1(Data1[3]),
        .I2(Selector),
        .O(DataOut[3]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DataOut[4]_INST_0 
       (.I0(Data2[4]),
        .I1(Data1[4]),
        .I2(Selector),
        .O(DataOut[4]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DataOut[5]_INST_0 
       (.I0(Data2[5]),
        .I1(Data1[5]),
        .I2(Selector),
        .O(DataOut[5]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DataOut[6]_INST_0 
       (.I0(Data2[6]),
        .I1(Data1[6]),
        .I2(Selector),
        .O(DataOut[6]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DataOut[7]_INST_0 
       (.I0(Data2[7]),
        .I1(Data1[7]),
        .I2(Selector),
        .O(DataOut[7]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DataOut[8]_INST_0 
       (.I0(Data2[8]),
        .I1(Data1[8]),
        .I2(Selector),
        .O(DataOut[8]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DataOut[9]_INST_0 
       (.I0(Data2[9]),
        .I1(Data1[9]),
        .I2(Selector),
        .O(DataOut[9]));
endmodule

(* ORIG_REF_NAME = "mux_2x1" *) 
module MIPS_Design_mux_2x1_0
   (DataOut,
    Data2,
    Data1,
    Selector);
  output [31:0]DataOut;
  input [31:0]Data2;
  input [31:0]Data1;
  input Selector;

  wire [31:0]Data1;
  wire [31:0]Data2;
  wire [31:0]DataOut;
  wire Selector;

  LUT3 #(
    .INIT(8'hAC)) 
    \DataOut[0]_INST_0 
       (.I0(Data2[0]),
        .I1(Data1[0]),
        .I2(Selector),
        .O(DataOut[0]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DataOut[10]_INST_0 
       (.I0(Data2[10]),
        .I1(Data1[10]),
        .I2(Selector),
        .O(DataOut[10]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DataOut[11]_INST_0 
       (.I0(Data2[11]),
        .I1(Data1[11]),
        .I2(Selector),
        .O(DataOut[11]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DataOut[12]_INST_0 
       (.I0(Data2[12]),
        .I1(Data1[12]),
        .I2(Selector),
        .O(DataOut[12]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DataOut[13]_INST_0 
       (.I0(Data2[13]),
        .I1(Data1[13]),
        .I2(Selector),
        .O(DataOut[13]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DataOut[14]_INST_0 
       (.I0(Data2[14]),
        .I1(Data1[14]),
        .I2(Selector),
        .O(DataOut[14]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DataOut[15]_INST_0 
       (.I0(Data2[15]),
        .I1(Data1[15]),
        .I2(Selector),
        .O(DataOut[15]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DataOut[16]_INST_0 
       (.I0(Data2[16]),
        .I1(Data1[16]),
        .I2(Selector),
        .O(DataOut[16]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DataOut[17]_INST_0 
       (.I0(Data2[17]),
        .I1(Data1[17]),
        .I2(Selector),
        .O(DataOut[17]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DataOut[18]_INST_0 
       (.I0(Data2[18]),
        .I1(Data1[18]),
        .I2(Selector),
        .O(DataOut[18]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DataOut[19]_INST_0 
       (.I0(Data2[19]),
        .I1(Data1[19]),
        .I2(Selector),
        .O(DataOut[19]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DataOut[1]_INST_0 
       (.I0(Data2[1]),
        .I1(Data1[1]),
        .I2(Selector),
        .O(DataOut[1]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DataOut[20]_INST_0 
       (.I0(Data2[20]),
        .I1(Data1[20]),
        .I2(Selector),
        .O(DataOut[20]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DataOut[21]_INST_0 
       (.I0(Data2[21]),
        .I1(Data1[21]),
        .I2(Selector),
        .O(DataOut[21]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DataOut[22]_INST_0 
       (.I0(Data2[22]),
        .I1(Data1[22]),
        .I2(Selector),
        .O(DataOut[22]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DataOut[23]_INST_0 
       (.I0(Data2[23]),
        .I1(Data1[23]),
        .I2(Selector),
        .O(DataOut[23]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DataOut[24]_INST_0 
       (.I0(Data2[24]),
        .I1(Data1[24]),
        .I2(Selector),
        .O(DataOut[24]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DataOut[25]_INST_0 
       (.I0(Data2[25]),
        .I1(Data1[25]),
        .I2(Selector),
        .O(DataOut[25]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DataOut[26]_INST_0 
       (.I0(Data2[26]),
        .I1(Data1[26]),
        .I2(Selector),
        .O(DataOut[26]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DataOut[27]_INST_0 
       (.I0(Data2[27]),
        .I1(Data1[27]),
        .I2(Selector),
        .O(DataOut[27]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DataOut[28]_INST_0 
       (.I0(Data2[28]),
        .I1(Data1[28]),
        .I2(Selector),
        .O(DataOut[28]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DataOut[29]_INST_0 
       (.I0(Data2[29]),
        .I1(Data1[29]),
        .I2(Selector),
        .O(DataOut[29]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DataOut[2]_INST_0 
       (.I0(Data2[2]),
        .I1(Data1[2]),
        .I2(Selector),
        .O(DataOut[2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \DataOut[30]_INST_0 
       (.I0(Data2[30]),
        .I1(Data1[30]),
        .I2(Selector),
        .O(DataOut[30]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \DataOut[31]_INST_0 
       (.I0(Data2[31]),
        .I1(Data1[31]),
        .I2(Selector),
        .O(DataOut[31]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DataOut[3]_INST_0 
       (.I0(Data2[3]),
        .I1(Data1[3]),
        .I2(Selector),
        .O(DataOut[3]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DataOut[4]_INST_0 
       (.I0(Data2[4]),
        .I1(Data1[4]),
        .I2(Selector),
        .O(DataOut[4]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DataOut[5]_INST_0 
       (.I0(Data2[5]),
        .I1(Data1[5]),
        .I2(Selector),
        .O(DataOut[5]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DataOut[6]_INST_0 
       (.I0(Data2[6]),
        .I1(Data1[6]),
        .I2(Selector),
        .O(DataOut[6]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DataOut[7]_INST_0 
       (.I0(Data2[7]),
        .I1(Data1[7]),
        .I2(Selector),
        .O(DataOut[7]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DataOut[8]_INST_0 
       (.I0(Data2[8]),
        .I1(Data1[8]),
        .I2(Selector),
        .O(DataOut[8]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DataOut[9]_INST_0 
       (.I0(Data2[9]),
        .I1(Data1[9]),
        .I2(Selector),
        .O(DataOut[9]));
endmodule

(* ORIG_REF_NAME = "mux_2x1" *) 
module MIPS_Design_mux_2x1_1
   (DataOut,
    Data2,
    Data1,
    Selector);
  output [31:0]DataOut;
  input [31:0]Data2;
  input [31:0]Data1;
  input Selector;

  wire [31:0]Data1;
  wire [31:0]Data2;
  wire [31:0]DataOut;
  wire Selector;

  LUT3 #(
    .INIT(8'hAC)) 
    \DataOut[0]_INST_0 
       (.I0(Data2[0]),
        .I1(Data1[0]),
        .I2(Selector),
        .O(DataOut[0]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DataOut[10]_INST_0 
       (.I0(Data2[10]),
        .I1(Data1[10]),
        .I2(Selector),
        .O(DataOut[10]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DataOut[11]_INST_0 
       (.I0(Data2[11]),
        .I1(Data1[11]),
        .I2(Selector),
        .O(DataOut[11]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DataOut[12]_INST_0 
       (.I0(Data2[12]),
        .I1(Data1[12]),
        .I2(Selector),
        .O(DataOut[12]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DataOut[13]_INST_0 
       (.I0(Data2[13]),
        .I1(Data1[13]),
        .I2(Selector),
        .O(DataOut[13]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DataOut[14]_INST_0 
       (.I0(Data2[14]),
        .I1(Data1[14]),
        .I2(Selector),
        .O(DataOut[14]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DataOut[15]_INST_0 
       (.I0(Data2[15]),
        .I1(Data1[15]),
        .I2(Selector),
        .O(DataOut[15]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \DataOut[16]_INST_0 
       (.I0(Data2[16]),
        .I1(Data1[16]),
        .I2(Selector),
        .O(DataOut[16]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \DataOut[17]_INST_0 
       (.I0(Data2[17]),
        .I1(Data1[17]),
        .I2(Selector),
        .O(DataOut[17]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \DataOut[18]_INST_0 
       (.I0(Data2[18]),
        .I1(Data1[18]),
        .I2(Selector),
        .O(DataOut[18]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \DataOut[19]_INST_0 
       (.I0(Data2[19]),
        .I1(Data1[19]),
        .I2(Selector),
        .O(DataOut[19]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DataOut[1]_INST_0 
       (.I0(Data2[1]),
        .I1(Data1[1]),
        .I2(Selector),
        .O(DataOut[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \DataOut[20]_INST_0 
       (.I0(Data2[20]),
        .I1(Data1[20]),
        .I2(Selector),
        .O(DataOut[20]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \DataOut[21]_INST_0 
       (.I0(Data2[21]),
        .I1(Data1[21]),
        .I2(Selector),
        .O(DataOut[21]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \DataOut[22]_INST_0 
       (.I0(Data2[22]),
        .I1(Data1[22]),
        .I2(Selector),
        .O(DataOut[22]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \DataOut[23]_INST_0 
       (.I0(Data2[23]),
        .I1(Data1[23]),
        .I2(Selector),
        .O(DataOut[23]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \DataOut[24]_INST_0 
       (.I0(Data2[24]),
        .I1(Data1[24]),
        .I2(Selector),
        .O(DataOut[24]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \DataOut[25]_INST_0 
       (.I0(Data2[25]),
        .I1(Data1[25]),
        .I2(Selector),
        .O(DataOut[25]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \DataOut[26]_INST_0 
       (.I0(Data2[26]),
        .I1(Data1[26]),
        .I2(Selector),
        .O(DataOut[26]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \DataOut[27]_INST_0 
       (.I0(Data2[27]),
        .I1(Data1[27]),
        .I2(Selector),
        .O(DataOut[27]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \DataOut[28]_INST_0 
       (.I0(Data2[28]),
        .I1(Data1[28]),
        .I2(Selector),
        .O(DataOut[28]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \DataOut[29]_INST_0 
       (.I0(Data2[29]),
        .I1(Data1[29]),
        .I2(Selector),
        .O(DataOut[29]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DataOut[2]_INST_0 
       (.I0(Data2[2]),
        .I1(Data1[2]),
        .I2(Selector),
        .O(DataOut[2]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \DataOut[30]_INST_0 
       (.I0(Data2[30]),
        .I1(Data1[30]),
        .I2(Selector),
        .O(DataOut[30]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \DataOut[31]_INST_0 
       (.I0(Data2[31]),
        .I1(Data1[31]),
        .I2(Selector),
        .O(DataOut[31]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DataOut[3]_INST_0 
       (.I0(Data2[3]),
        .I1(Data1[3]),
        .I2(Selector),
        .O(DataOut[3]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DataOut[4]_INST_0 
       (.I0(Data2[4]),
        .I1(Data1[4]),
        .I2(Selector),
        .O(DataOut[4]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DataOut[5]_INST_0 
       (.I0(Data2[5]),
        .I1(Data1[5]),
        .I2(Selector),
        .O(DataOut[5]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DataOut[6]_INST_0 
       (.I0(Data2[6]),
        .I1(Data1[6]),
        .I2(Selector),
        .O(DataOut[6]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DataOut[7]_INST_0 
       (.I0(Data2[7]),
        .I1(Data1[7]),
        .I2(Selector),
        .O(DataOut[7]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DataOut[8]_INST_0 
       (.I0(Data2[8]),
        .I1(Data1[8]),
        .I2(Selector),
        .O(DataOut[8]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DataOut[9]_INST_0 
       (.I0(Data2[9]),
        .I1(Data1[9]),
        .I2(Selector),
        .O(DataOut[9]));
endmodule

(* ORIG_REF_NAME = "mux_addr" *) 
module MIPS_Design_mux_addr
   (DataOut,
    Data2,
    selector,
    Data1);
  output [4:0]DataOut;
  input [4:0]Data2;
  input selector;
  input [4:0]Data1;

  wire [4:0]Data1;
  wire [4:0]Data2;
  wire [4:0]DataOut;
  wire selector;

  LUT3 #(
    .INIT(8'hB8)) 
    \DataOut[0]_INST_0 
       (.I0(Data2[0]),
        .I1(selector),
        .I2(Data1[0]),
        .O(DataOut[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \DataOut[1]_INST_0 
       (.I0(Data2[1]),
        .I1(selector),
        .I2(Data1[1]),
        .O(DataOut[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \DataOut[2]_INST_0 
       (.I0(Data2[2]),
        .I1(selector),
        .I2(Data1[2]),
        .O(DataOut[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \DataOut[3]_INST_0 
       (.I0(Data2[3]),
        .I1(selector),
        .I2(Data1[3]),
        .O(DataOut[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \DataOut[4]_INST_0 
       (.I0(Data2[4]),
        .I1(selector),
        .I2(Data1[4]),
        .O(DataOut[4]));
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
