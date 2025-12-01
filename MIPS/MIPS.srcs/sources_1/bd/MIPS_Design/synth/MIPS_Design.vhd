--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
--Date        : Wed Nov 12 16:46:51 2025
--Host        : DESKTOP-VEE6H17 running 64-bit major release  (build 9200)
--Command     : generate_target MIPS_Design.bd
--Design      : MIPS_Design
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MIPS_Design is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of MIPS_Design : entity is "MIPS_Design,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=MIPS_Design,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=14,numReposBlks=14,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=13,numPkgbdBlks=0,bdsource=USER,da_clkrst_cnt=3,synth_mode=OOC_per_BD}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of MIPS_Design : entity is "MIPS_Design.hwdef";
end MIPS_Design;

architecture STRUCTURE of MIPS_Design is
  component MIPS_Design_IM_0_0 is
  port (
    clk : in STD_LOGIC;
    ReadAddress : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ReadData : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component MIPS_Design_IM_0_0;
  component MIPS_Design_Sign_Extention_0_0 is
  port (
    DataIn : in STD_LOGIC_VECTOR ( 15 downto 0 );
    DataOut : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component MIPS_Design_Sign_Extention_0_0;
  component MIPS_Design_PC_Adder_0_0 is
  port (
    PC_Data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Signextention_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    PC_New_Data : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component MIPS_Design_PC_Adder_0_0;
  component MIPS_Design_util_vector_logic_0_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Op2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component MIPS_Design_util_vector_logic_0_0;
  component MIPS_Design_ALU_Control_0_0 is
  port (
    Instruction : in STD_LOGIC_VECTOR ( 5 downto 0 );
    ALUOP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    func : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component MIPS_Design_ALU_Control_0_0;
  component MIPS_Design_Control_Unit_0_0 is
  port (
    OP : in STD_LOGIC_VECTOR ( 5 downto 0 );
    RegDst : out STD_LOGIC;
    Branch : out STD_LOGIC;
    MemWrite : out STD_LOGIC;
    MemtoReg : out STD_LOGIC;
    ALUScr : out STD_LOGIC;
    RegWrite : out STD_LOGIC;
    ALUOP : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component MIPS_Design_Control_Unit_0_0;
  component MIPS_Design_ALU_0_0 is
  port (
    Data1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Data2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    func : in STD_LOGIC_VECTOR ( 2 downto 0 );
    Result : out STD_LOGIC_VECTOR ( 31 downto 0 );
    zeros : out STD_LOGIC
  );
  end component MIPS_Design_ALU_0_0;
  component MIPS_Design_mux_2x1_1_0 is
  port (
    Data1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Data2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Selector : in STD_LOGIC;
    DataOut : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component MIPS_Design_mux_2x1_1_0;
  component MIPS_Design_mux_2x1_4_0 is
  port (
    Data1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Data2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Selector : in STD_LOGIC;
    DataOut : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component MIPS_Design_mux_2x1_4_0;
  component MIPS_Design_mux_2x1_2_1 is
  port (
    Data1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Data2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Selector : in STD_LOGIC;
    DataOut : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component MIPS_Design_mux_2x1_2_1;
  component MIPS_Design_File_Register_0_0 is
  port (
    clk : in STD_LOGIC;
    EN : in STD_LOGIC;
    ReadRegister1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ReadRegister2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    WriteRegister : in STD_LOGIC_VECTOR ( 31 downto 0 );
    WriteData : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ReadData1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ReadData2 : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component MIPS_Design_File_Register_0_0;
  component MIPS_Design_mux_addr_0_0 is
  port (
    selector : in STD_LOGIC;
    Data1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Data2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    DataOut : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  end component MIPS_Design_mux_addr_0_0;
  component MIPS_Design_PC_0_0 is
  port (
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    DataIn : in STD_LOGIC_VECTOR ( 29 downto 0 );
    DataOut : out STD_LOGIC_VECTOR ( 29 downto 0 )
  );
  end component MIPS_Design_PC_0_0;
  component MIPS_Design_DM_0_0 is
  port (
    clk : in STD_LOGIC;
    En : in STD_LOGIC;
    Address : in STD_LOGIC_VECTOR ( 31 downto 0 );
    WriteData : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ReadData : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component MIPS_Design_DM_0_0;
  signal ALU_0_Result : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ALU_0_zeros : STD_LOGIC;
  signal ALU_Control_0_func : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Control_Unit_0_ALUOP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Control_Unit_0_ALUScr : STD_LOGIC;
  signal Control_Unit_0_Branch : STD_LOGIC;
  signal Control_Unit_0_MemRead : STD_LOGIC;
  signal Control_Unit_0_MemtoReg : STD_LOGIC;
  signal Control_Unit_0_RegDst : STD_LOGIC;
  signal Control_Unit_0_RegWrite : STD_LOGIC;
  signal DM_0_ReadData : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal File_Register_0_ReadData1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal File_Register_0_ReadData2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal IM_0_ReadData : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal PC_0_DataOut : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal PC_Adder_0_PC_New_Data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Sign_Extention_0_DataOut : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal clk_1 : STD_LOGIC;
  signal mux_2x1_1_DataOut : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mux_2x1_2_DataOut : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mux_2x1_4_DataOut : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mux_addr_0_DataOut : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal rst_1 : STD_LOGIC;
  signal util_vector_logic_0_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_File_Register_0_WriteRegister_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 5 );
  signal NLW_IM_0_ReadAddress_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 30 );
  signal NLW_PC_Adder_0_PC_Data_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 30 );
  signal NLW_mux_2x1_2_Data1_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 30 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_RESET rst, CLK_DOMAIN MIPS_Design_clk, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 RST.RST RST";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME RST.RST, INSERT_VIP 0, POLARITY ACTIVE_HIGH";
begin
  clk_1 <= clk;
  rst_1 <= rst;
ALU_0: component MIPS_Design_ALU_0_0
     port map (
      Data1(31 downto 0) => File_Register_0_ReadData1(31 downto 0),
      Data2(31 downto 0) => mux_2x1_1_DataOut(31 downto 0),
      Result(31 downto 0) => ALU_0_Result(31 downto 0),
      func(2 downto 0) => ALU_Control_0_func(2 downto 0),
      zeros => ALU_0_zeros
    );
ALU_Control_0: component MIPS_Design_ALU_Control_0_0
     port map (
      ALUOP(1 downto 0) => Control_Unit_0_ALUOP(1 downto 0),
      Instruction(5 downto 0) => IM_0_ReadData(5 downto 0),
      func(2 downto 0) => ALU_Control_0_func(2 downto 0)
    );
Control_Unit: component MIPS_Design_Control_Unit_0_0
     port map (
      ALUOP(1 downto 0) => Control_Unit_0_ALUOP(1 downto 0),
      ALUScr => Control_Unit_0_ALUScr,
      Branch => Control_Unit_0_Branch,
      MemWrite => Control_Unit_0_MemRead,
      MemtoReg => Control_Unit_0_MemtoReg,
      OP(5 downto 0) => IM_0_ReadData(5 downto 0),
      RegDst => Control_Unit_0_RegDst,
      RegWrite => Control_Unit_0_RegWrite
    );
DM_0: component MIPS_Design_DM_0_0
     port map (
      Address(31 downto 0) => ALU_0_Result(31 downto 0),
      En => Control_Unit_0_MemRead,
      ReadData(31 downto 0) => DM_0_ReadData(31 downto 0),
      WriteData(31 downto 0) => File_Register_0_ReadData2(31 downto 0),
      clk => clk_1
    );
File_Register_0: component MIPS_Design_File_Register_0_0
     port map (
      EN => Control_Unit_0_RegWrite,
      ReadData1(31 downto 0) => File_Register_0_ReadData1(31 downto 0),
      ReadData2(31 downto 0) => File_Register_0_ReadData2(31 downto 0),
      ReadRegister1(31 downto 0) => IM_0_ReadData(31 downto 0),
      ReadRegister2(31 downto 0) => IM_0_ReadData(31 downto 0),
      WriteData(31 downto 0) => mux_2x1_4_DataOut(31 downto 0),
      WriteRegister(31 downto 5) => NLW_File_Register_0_WriteRegister_UNCONNECTED(31 downto 5),
      WriteRegister(4 downto 0) => mux_addr_0_DataOut(4 downto 0),
      clk => clk_1
    );
IM_0: component MIPS_Design_IM_0_0
     port map (
      ReadAddress(31 downto 30) => NLW_IM_0_ReadAddress_UNCONNECTED(31 downto 30),
      ReadAddress(29 downto 0) => PC_0_DataOut(29 downto 0),
      ReadData(31 downto 0) => IM_0_ReadData(31 downto 0),
      clk => clk_1
    );
PC_0: component MIPS_Design_PC_0_0
     port map (
      DataIn(29 downto 0) => mux_2x1_2_DataOut(29 downto 0),
      DataOut(29 downto 0) => PC_0_DataOut(29 downto 0),
      clk => clk_1,
      rst => rst_1
    );
PC_Adder_0: component MIPS_Design_PC_Adder_0_0
     port map (
      PC_Data(31 downto 30) => NLW_PC_Adder_0_PC_Data_UNCONNECTED(31 downto 30),
      PC_Data(29 downto 0) => PC_0_DataOut(29 downto 0),
      PC_New_Data(31 downto 0) => PC_Adder_0_PC_New_Data(31 downto 0),
      Signextention_data(31 downto 0) => Sign_Extention_0_DataOut(31 downto 0)
    );
Sign_Extention_0: component MIPS_Design_Sign_Extention_0_0
     port map (
      DataIn(15 downto 0) => IM_0_ReadData(15 downto 0),
      DataOut(31 downto 0) => Sign_Extention_0_DataOut(31 downto 0)
    );
mux_2x1_1: component MIPS_Design_mux_2x1_1_0
     port map (
      Data1(31 downto 0) => File_Register_0_ReadData2(31 downto 0),
      Data2(31 downto 0) => Sign_Extention_0_DataOut(31 downto 0),
      DataOut(31 downto 0) => mux_2x1_1_DataOut(31 downto 0),
      Selector => Control_Unit_0_ALUScr
    );
mux_2x1_2: component MIPS_Design_mux_2x1_2_1
     port map (
      Data1(31 downto 30) => NLW_mux_2x1_2_Data1_UNCONNECTED(31 downto 30),
      Data1(29 downto 0) => PC_0_DataOut(29 downto 0),
      Data2(31 downto 0) => PC_Adder_0_PC_New_Data(31 downto 0),
      DataOut(31 downto 0) => mux_2x1_2_DataOut(31 downto 0),
      Selector => util_vector_logic_0_Res(0)
    );
mux_2x1_4: component MIPS_Design_mux_2x1_4_0
     port map (
      Data1(31 downto 0) => DM_0_ReadData(31 downto 0),
      Data2(31 downto 0) => ALU_0_Result(31 downto 0),
      DataOut(31 downto 0) => mux_2x1_4_DataOut(31 downto 0),
      Selector => Control_Unit_0_MemtoReg
    );
mux_addr_0: component MIPS_Design_mux_addr_0_0
     port map (
      Data1(31 downto 0) => IM_0_ReadData(31 downto 0),
      Data2(31 downto 0) => IM_0_ReadData(31 downto 0),
      DataOut(4 downto 0) => mux_addr_0_DataOut(4 downto 0),
      selector => Control_Unit_0_RegDst
    );
util_vector_logic_0: component MIPS_Design_util_vector_logic_0_0
     port map (
      Op1(0) => Control_Unit_0_Branch,
      Op2(0) => ALU_0_zeros,
      Res(0) => util_vector_logic_0_Res(0)
    );
end STRUCTURE;
