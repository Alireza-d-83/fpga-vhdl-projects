-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Wed Nov 12 16:47:44 2025
-- Host        : DESKTOP-VEE6H17 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               D:/general/University/VHDL/MIPS/MIPS.srcs/sources_1/bd/MIPS_Design/MIPS_Design_sim_netlist.vhdl
-- Design      : MIPS_Design
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7vx415tffg1158-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MIPS_Design_ALU is
  port (
    Result : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Data2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Data1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    func : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of MIPS_Design_ALU : entity is "ALU";
end MIPS_Design_ALU;

architecture STRUCTURE of MIPS_Design_ALU is
  signal \Result0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \Result0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \Result0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \Result0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \Result0_carry__0_n_0\ : STD_LOGIC;
  signal \Result0_carry__0_n_1\ : STD_LOGIC;
  signal \Result0_carry__0_n_2\ : STD_LOGIC;
  signal \Result0_carry__0_n_3\ : STD_LOGIC;
  signal \Result0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \Result0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \Result0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \Result0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \Result0_carry__1_n_0\ : STD_LOGIC;
  signal \Result0_carry__1_n_1\ : STD_LOGIC;
  signal \Result0_carry__1_n_2\ : STD_LOGIC;
  signal \Result0_carry__1_n_3\ : STD_LOGIC;
  signal \Result0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \Result0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \Result0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \Result0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \Result0_carry__2_n_0\ : STD_LOGIC;
  signal \Result0_carry__2_n_1\ : STD_LOGIC;
  signal \Result0_carry__2_n_2\ : STD_LOGIC;
  signal \Result0_carry__2_n_3\ : STD_LOGIC;
  signal \Result0_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \Result0_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \Result0_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \Result0_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \Result0_carry__3_n_0\ : STD_LOGIC;
  signal \Result0_carry__3_n_1\ : STD_LOGIC;
  signal \Result0_carry__3_n_2\ : STD_LOGIC;
  signal \Result0_carry__3_n_3\ : STD_LOGIC;
  signal \Result0_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \Result0_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \Result0_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \Result0_carry__4_i_4_n_0\ : STD_LOGIC;
  signal \Result0_carry__4_n_0\ : STD_LOGIC;
  signal \Result0_carry__4_n_1\ : STD_LOGIC;
  signal \Result0_carry__4_n_2\ : STD_LOGIC;
  signal \Result0_carry__4_n_3\ : STD_LOGIC;
  signal \Result0_carry__5_i_1_n_0\ : STD_LOGIC;
  signal \Result0_carry__5_i_2_n_0\ : STD_LOGIC;
  signal \Result0_carry__5_i_3_n_0\ : STD_LOGIC;
  signal \Result0_carry__5_i_4_n_0\ : STD_LOGIC;
  signal \Result0_carry__5_n_0\ : STD_LOGIC;
  signal \Result0_carry__5_n_1\ : STD_LOGIC;
  signal \Result0_carry__5_n_2\ : STD_LOGIC;
  signal \Result0_carry__5_n_3\ : STD_LOGIC;
  signal \Result0_carry__6_i_1_n_0\ : STD_LOGIC;
  signal \Result0_carry__6_i_2_n_0\ : STD_LOGIC;
  signal \Result0_carry__6_i_3_n_0\ : STD_LOGIC;
  signal \Result0_carry__6_i_4_n_0\ : STD_LOGIC;
  signal \Result0_carry__6_n_1\ : STD_LOGIC;
  signal \Result0_carry__6_n_2\ : STD_LOGIC;
  signal \Result0_carry__6_n_3\ : STD_LOGIC;
  signal Result0_carry_i_1_n_0 : STD_LOGIC;
  signal Result0_carry_i_2_n_0 : STD_LOGIC;
  signal Result0_carry_i_3_n_0 : STD_LOGIC;
  signal Result0_carry_i_4_n_0 : STD_LOGIC;
  signal Result0_carry_n_0 : STD_LOGIC;
  signal Result0_carry_n_1 : STD_LOGIC;
  signal Result0_carry_n_2 : STD_LOGIC;
  signal Result0_carry_n_3 : STD_LOGIC;
  signal \Result0_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \Result0_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \Result0_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \Result0_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \Result0_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \Result0_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \Result0_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \Result0_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \Result0_inferred__0/i__carry__2_n_0\ : STD_LOGIC;
  signal \Result0_inferred__0/i__carry__2_n_1\ : STD_LOGIC;
  signal \Result0_inferred__0/i__carry__2_n_2\ : STD_LOGIC;
  signal \Result0_inferred__0/i__carry__2_n_3\ : STD_LOGIC;
  signal \Result0_inferred__0/i__carry__3_n_0\ : STD_LOGIC;
  signal \Result0_inferred__0/i__carry__3_n_1\ : STD_LOGIC;
  signal \Result0_inferred__0/i__carry__3_n_2\ : STD_LOGIC;
  signal \Result0_inferred__0/i__carry__3_n_3\ : STD_LOGIC;
  signal \Result0_inferred__0/i__carry__4_n_0\ : STD_LOGIC;
  signal \Result0_inferred__0/i__carry__4_n_1\ : STD_LOGIC;
  signal \Result0_inferred__0/i__carry__4_n_2\ : STD_LOGIC;
  signal \Result0_inferred__0/i__carry__4_n_3\ : STD_LOGIC;
  signal \Result0_inferred__0/i__carry__5_n_0\ : STD_LOGIC;
  signal \Result0_inferred__0/i__carry__5_n_1\ : STD_LOGIC;
  signal \Result0_inferred__0/i__carry__5_n_2\ : STD_LOGIC;
  signal \Result0_inferred__0/i__carry__5_n_3\ : STD_LOGIC;
  signal \Result0_inferred__0/i__carry__6_n_1\ : STD_LOGIC;
  signal \Result0_inferred__0/i__carry__6_n_2\ : STD_LOGIC;
  signal \Result0_inferred__0/i__carry__6_n_3\ : STD_LOGIC;
  signal \Result0_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \Result0_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \Result0_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \Result0_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal Result0_n_100 : STD_LOGIC;
  signal Result0_n_101 : STD_LOGIC;
  signal Result0_n_102 : STD_LOGIC;
  signal Result0_n_103 : STD_LOGIC;
  signal Result0_n_104 : STD_LOGIC;
  signal Result0_n_105 : STD_LOGIC;
  signal Result0_n_74 : STD_LOGIC;
  signal Result0_n_75 : STD_LOGIC;
  signal Result0_n_76 : STD_LOGIC;
  signal Result0_n_77 : STD_LOGIC;
  signal Result0_n_78 : STD_LOGIC;
  signal Result0_n_79 : STD_LOGIC;
  signal Result0_n_80 : STD_LOGIC;
  signal Result0_n_81 : STD_LOGIC;
  signal Result0_n_82 : STD_LOGIC;
  signal Result0_n_83 : STD_LOGIC;
  signal Result0_n_84 : STD_LOGIC;
  signal Result0_n_85 : STD_LOGIC;
  signal Result0_n_86 : STD_LOGIC;
  signal Result0_n_87 : STD_LOGIC;
  signal Result0_n_88 : STD_LOGIC;
  signal Result0_n_89 : STD_LOGIC;
  signal Result0_n_90 : STD_LOGIC;
  signal Result0_n_91 : STD_LOGIC;
  signal Result0_n_92 : STD_LOGIC;
  signal Result0_n_93 : STD_LOGIC;
  signal Result0_n_94 : STD_LOGIC;
  signal Result0_n_95 : STD_LOGIC;
  signal Result0_n_96 : STD_LOGIC;
  signal Result0_n_97 : STD_LOGIC;
  signal Result0_n_98 : STD_LOGIC;
  signal Result0_n_99 : STD_LOGIC;
  signal \Result[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Result[10]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Result[11]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Result[12]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Result[13]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Result[14]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Result[15]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Result[16]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Result[17]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Result[18]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Result[19]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Result[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Result[20]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Result[21]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Result[22]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Result[23]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Result[24]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Result[25]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Result[26]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Result[27]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Result[28]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Result[29]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Result[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Result[30]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Result[31]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Result[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Result[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Result[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Result[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Result[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Result[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Result[9]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^data1\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__6_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__6_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__6_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__6_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal NLW_Result0_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_Result0_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_Result0_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_Result0_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_Result0_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_Result0_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_Result0_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_Result0_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_Result0_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Result0_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 32 );
  signal NLW_Result0_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \NLW_Result0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_Result0_inferred__0/i__carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of Result0 : label is "{SYNTH-13 {cell *THIS*}}";
begin
Result0: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 16) => B"00000000000000",
      A(15 downto 0) => Data1(15 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_Result0_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 16) => B"00",
      B(15 downto 0) => Data2(15 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_Result0_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_Result0_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_Result0_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => '0',
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_Result0_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_Result0_OVERFLOW_UNCONNECTED,
      P(47 downto 32) => NLW_Result0_P_UNCONNECTED(47 downto 32),
      P(31) => Result0_n_74,
      P(30) => Result0_n_75,
      P(29) => Result0_n_76,
      P(28) => Result0_n_77,
      P(27) => Result0_n_78,
      P(26) => Result0_n_79,
      P(25) => Result0_n_80,
      P(24) => Result0_n_81,
      P(23) => Result0_n_82,
      P(22) => Result0_n_83,
      P(21) => Result0_n_84,
      P(20) => Result0_n_85,
      P(19) => Result0_n_86,
      P(18) => Result0_n_87,
      P(17) => Result0_n_88,
      P(16) => Result0_n_89,
      P(15) => Result0_n_90,
      P(14) => Result0_n_91,
      P(13) => Result0_n_92,
      P(12) => Result0_n_93,
      P(11) => Result0_n_94,
      P(10) => Result0_n_95,
      P(9) => Result0_n_96,
      P(8) => Result0_n_97,
      P(7) => Result0_n_98,
      P(6) => Result0_n_99,
      P(5) => Result0_n_100,
      P(4) => Result0_n_101,
      P(3) => Result0_n_102,
      P(2) => Result0_n_103,
      P(1) => Result0_n_104,
      P(0) => Result0_n_105,
      PATTERNBDETECT => NLW_Result0_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_Result0_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_Result0_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_Result0_UNDERFLOW_UNCONNECTED
    );
Result0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => Result0_carry_n_0,
      CO(2) => Result0_carry_n_1,
      CO(1) => Result0_carry_n_2,
      CO(0) => Result0_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => Data1(3 downto 0),
      O(3 downto 0) => data0(3 downto 0),
      S(3) => Result0_carry_i_1_n_0,
      S(2) => Result0_carry_i_2_n_0,
      S(1) => Result0_carry_i_3_n_0,
      S(0) => Result0_carry_i_4_n_0
    );
\Result0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => Result0_carry_n_0,
      CO(3) => \Result0_carry__0_n_0\,
      CO(2) => \Result0_carry__0_n_1\,
      CO(1) => \Result0_carry__0_n_2\,
      CO(0) => \Result0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Data1(7 downto 4),
      O(3 downto 0) => data0(7 downto 4),
      S(3) => \Result0_carry__0_i_1_n_0\,
      S(2) => \Result0_carry__0_i_2_n_0\,
      S(1) => \Result0_carry__0_i_3_n_0\,
      S(0) => \Result0_carry__0_i_4_n_0\
    );
\Result0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Data1(7),
      I1 => Data2(7),
      O => \Result0_carry__0_i_1_n_0\
    );
\Result0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Data1(6),
      I1 => Data2(6),
      O => \Result0_carry__0_i_2_n_0\
    );
\Result0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Data1(5),
      I1 => Data2(5),
      O => \Result0_carry__0_i_3_n_0\
    );
\Result0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Data1(4),
      I1 => Data2(4),
      O => \Result0_carry__0_i_4_n_0\
    );
\Result0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Result0_carry__0_n_0\,
      CO(3) => \Result0_carry__1_n_0\,
      CO(2) => \Result0_carry__1_n_1\,
      CO(1) => \Result0_carry__1_n_2\,
      CO(0) => \Result0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Data1(11 downto 8),
      O(3 downto 0) => data0(11 downto 8),
      S(3) => \Result0_carry__1_i_1_n_0\,
      S(2) => \Result0_carry__1_i_2_n_0\,
      S(1) => \Result0_carry__1_i_3_n_0\,
      S(0) => \Result0_carry__1_i_4_n_0\
    );
\Result0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Data1(11),
      I1 => Data2(11),
      O => \Result0_carry__1_i_1_n_0\
    );
\Result0_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Data1(10),
      I1 => Data2(10),
      O => \Result0_carry__1_i_2_n_0\
    );
\Result0_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Data1(9),
      I1 => Data2(9),
      O => \Result0_carry__1_i_3_n_0\
    );
\Result0_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Data1(8),
      I1 => Data2(8),
      O => \Result0_carry__1_i_4_n_0\
    );
\Result0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \Result0_carry__1_n_0\,
      CO(3) => \Result0_carry__2_n_0\,
      CO(2) => \Result0_carry__2_n_1\,
      CO(1) => \Result0_carry__2_n_2\,
      CO(0) => \Result0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Data1(15 downto 12),
      O(3 downto 0) => data0(15 downto 12),
      S(3) => \Result0_carry__2_i_1_n_0\,
      S(2) => \Result0_carry__2_i_2_n_0\,
      S(1) => \Result0_carry__2_i_3_n_0\,
      S(0) => \Result0_carry__2_i_4_n_0\
    );
\Result0_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Data1(15),
      I1 => Data2(15),
      O => \Result0_carry__2_i_1_n_0\
    );
\Result0_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Data1(14),
      I1 => Data2(14),
      O => \Result0_carry__2_i_2_n_0\
    );
\Result0_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Data1(13),
      I1 => Data2(13),
      O => \Result0_carry__2_i_3_n_0\
    );
\Result0_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Data1(12),
      I1 => Data2(12),
      O => \Result0_carry__2_i_4_n_0\
    );
\Result0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \Result0_carry__2_n_0\,
      CO(3) => \Result0_carry__3_n_0\,
      CO(2) => \Result0_carry__3_n_1\,
      CO(1) => \Result0_carry__3_n_2\,
      CO(0) => \Result0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Data1(19 downto 16),
      O(3 downto 0) => data0(19 downto 16),
      S(3) => \Result0_carry__3_i_1_n_0\,
      S(2) => \Result0_carry__3_i_2_n_0\,
      S(1) => \Result0_carry__3_i_3_n_0\,
      S(0) => \Result0_carry__3_i_4_n_0\
    );
\Result0_carry__3_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Data1(19),
      I1 => Data2(19),
      O => \Result0_carry__3_i_1_n_0\
    );
\Result0_carry__3_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Data1(18),
      I1 => Data2(18),
      O => \Result0_carry__3_i_2_n_0\
    );
\Result0_carry__3_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Data1(17),
      I1 => Data2(17),
      O => \Result0_carry__3_i_3_n_0\
    );
\Result0_carry__3_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Data1(16),
      I1 => Data2(16),
      O => \Result0_carry__3_i_4_n_0\
    );
\Result0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \Result0_carry__3_n_0\,
      CO(3) => \Result0_carry__4_n_0\,
      CO(2) => \Result0_carry__4_n_1\,
      CO(1) => \Result0_carry__4_n_2\,
      CO(0) => \Result0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Data1(23 downto 20),
      O(3 downto 0) => data0(23 downto 20),
      S(3) => \Result0_carry__4_i_1_n_0\,
      S(2) => \Result0_carry__4_i_2_n_0\,
      S(1) => \Result0_carry__4_i_3_n_0\,
      S(0) => \Result0_carry__4_i_4_n_0\
    );
\Result0_carry__4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Data1(23),
      I1 => Data2(23),
      O => \Result0_carry__4_i_1_n_0\
    );
\Result0_carry__4_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Data1(22),
      I1 => Data2(22),
      O => \Result0_carry__4_i_2_n_0\
    );
\Result0_carry__4_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Data1(21),
      I1 => Data2(21),
      O => \Result0_carry__4_i_3_n_0\
    );
\Result0_carry__4_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Data1(20),
      I1 => Data2(20),
      O => \Result0_carry__4_i_4_n_0\
    );
\Result0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \Result0_carry__4_n_0\,
      CO(3) => \Result0_carry__5_n_0\,
      CO(2) => \Result0_carry__5_n_1\,
      CO(1) => \Result0_carry__5_n_2\,
      CO(0) => \Result0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Data1(27 downto 24),
      O(3 downto 0) => data0(27 downto 24),
      S(3) => \Result0_carry__5_i_1_n_0\,
      S(2) => \Result0_carry__5_i_2_n_0\,
      S(1) => \Result0_carry__5_i_3_n_0\,
      S(0) => \Result0_carry__5_i_4_n_0\
    );
\Result0_carry__5_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Data1(27),
      I1 => Data2(27),
      O => \Result0_carry__5_i_1_n_0\
    );
\Result0_carry__5_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Data1(26),
      I1 => Data2(26),
      O => \Result0_carry__5_i_2_n_0\
    );
\Result0_carry__5_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Data1(25),
      I1 => Data2(25),
      O => \Result0_carry__5_i_3_n_0\
    );
\Result0_carry__5_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Data1(24),
      I1 => Data2(24),
      O => \Result0_carry__5_i_4_n_0\
    );
\Result0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \Result0_carry__5_n_0\,
      CO(3) => \NLW_Result0_carry__6_CO_UNCONNECTED\(3),
      CO(2) => \Result0_carry__6_n_1\,
      CO(1) => \Result0_carry__6_n_2\,
      CO(0) => \Result0_carry__6_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => Data1(30 downto 28),
      O(3 downto 0) => data0(31 downto 28),
      S(3) => \Result0_carry__6_i_1_n_0\,
      S(2) => \Result0_carry__6_i_2_n_0\,
      S(1) => \Result0_carry__6_i_3_n_0\,
      S(0) => \Result0_carry__6_i_4_n_0\
    );
\Result0_carry__6_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Data1(31),
      I1 => Data2(31),
      O => \Result0_carry__6_i_1_n_0\
    );
\Result0_carry__6_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Data1(30),
      I1 => Data2(30),
      O => \Result0_carry__6_i_2_n_0\
    );
\Result0_carry__6_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Data1(29),
      I1 => Data2(29),
      O => \Result0_carry__6_i_3_n_0\
    );
\Result0_carry__6_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Data1(28),
      I1 => Data2(28),
      O => \Result0_carry__6_i_4_n_0\
    );
Result0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Data1(3),
      I1 => Data2(3),
      O => Result0_carry_i_1_n_0
    );
Result0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Data1(2),
      I1 => Data2(2),
      O => Result0_carry_i_2_n_0
    );
Result0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Data1(1),
      I1 => Data2(1),
      O => Result0_carry_i_3_n_0
    );
Result0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Data1(0),
      I1 => Data2(0),
      O => Result0_carry_i_4_n_0
    );
\Result0_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \Result0_inferred__0/i__carry_n_0\,
      CO(2) => \Result0_inferred__0/i__carry_n_1\,
      CO(1) => \Result0_inferred__0/i__carry_n_2\,
      CO(0) => \Result0_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => Data1(3 downto 0),
      O(3 downto 0) => \^data1\(3 downto 0),
      S(3) => \i__carry_i_1_n_0\,
      S(2) => \i__carry_i_2_n_0\,
      S(1) => \i__carry_i_3_n_0\,
      S(0) => \i__carry_i_4_n_0\
    );
\Result0_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \Result0_inferred__0/i__carry_n_0\,
      CO(3) => \Result0_inferred__0/i__carry__0_n_0\,
      CO(2) => \Result0_inferred__0/i__carry__0_n_1\,
      CO(1) => \Result0_inferred__0/i__carry__0_n_2\,
      CO(0) => \Result0_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Data1(7 downto 4),
      O(3 downto 0) => \^data1\(7 downto 4),
      S(3) => \i__carry__0_i_1_n_0\,
      S(2) => \i__carry__0_i_2_n_0\,
      S(1) => \i__carry__0_i_3_n_0\,
      S(0) => \i__carry__0_i_4_n_0\
    );
\Result0_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Result0_inferred__0/i__carry__0_n_0\,
      CO(3) => \Result0_inferred__0/i__carry__1_n_0\,
      CO(2) => \Result0_inferred__0/i__carry__1_n_1\,
      CO(1) => \Result0_inferred__0/i__carry__1_n_2\,
      CO(0) => \Result0_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Data1(11 downto 8),
      O(3 downto 0) => \^data1\(11 downto 8),
      S(3) => \i__carry__1_i_1_n_0\,
      S(2) => \i__carry__1_i_2_n_0\,
      S(1) => \i__carry__1_i_3_n_0\,
      S(0) => \i__carry__1_i_4_n_0\
    );
\Result0_inferred__0/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \Result0_inferred__0/i__carry__1_n_0\,
      CO(3) => \Result0_inferred__0/i__carry__2_n_0\,
      CO(2) => \Result0_inferred__0/i__carry__2_n_1\,
      CO(1) => \Result0_inferred__0/i__carry__2_n_2\,
      CO(0) => \Result0_inferred__0/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Data1(15 downto 12),
      O(3 downto 0) => \^data1\(15 downto 12),
      S(3) => \i__carry__2_i_1_n_0\,
      S(2) => \i__carry__2_i_2_n_0\,
      S(1) => \i__carry__2_i_3_n_0\,
      S(0) => \i__carry__2_i_4_n_0\
    );
\Result0_inferred__0/i__carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \Result0_inferred__0/i__carry__2_n_0\,
      CO(3) => \Result0_inferred__0/i__carry__3_n_0\,
      CO(2) => \Result0_inferred__0/i__carry__3_n_1\,
      CO(1) => \Result0_inferred__0/i__carry__3_n_2\,
      CO(0) => \Result0_inferred__0/i__carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Data1(19 downto 16),
      O(3 downto 0) => \^data1\(19 downto 16),
      S(3) => \i__carry__3_i_1_n_0\,
      S(2) => \i__carry__3_i_2_n_0\,
      S(1) => \i__carry__3_i_3_n_0\,
      S(0) => \i__carry__3_i_4_n_0\
    );
\Result0_inferred__0/i__carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \Result0_inferred__0/i__carry__3_n_0\,
      CO(3) => \Result0_inferred__0/i__carry__4_n_0\,
      CO(2) => \Result0_inferred__0/i__carry__4_n_1\,
      CO(1) => \Result0_inferred__0/i__carry__4_n_2\,
      CO(0) => \Result0_inferred__0/i__carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Data1(23 downto 20),
      O(3 downto 0) => \^data1\(23 downto 20),
      S(3) => \i__carry__4_i_1_n_0\,
      S(2) => \i__carry__4_i_2_n_0\,
      S(1) => \i__carry__4_i_3_n_0\,
      S(0) => \i__carry__4_i_4_n_0\
    );
\Result0_inferred__0/i__carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \Result0_inferred__0/i__carry__4_n_0\,
      CO(3) => \Result0_inferred__0/i__carry__5_n_0\,
      CO(2) => \Result0_inferred__0/i__carry__5_n_1\,
      CO(1) => \Result0_inferred__0/i__carry__5_n_2\,
      CO(0) => \Result0_inferred__0/i__carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Data1(27 downto 24),
      O(3 downto 0) => \^data1\(27 downto 24),
      S(3) => \i__carry__5_i_1_n_0\,
      S(2) => \i__carry__5_i_2_n_0\,
      S(1) => \i__carry__5_i_3_n_0\,
      S(0) => \i__carry__5_i_4_n_0\
    );
\Result0_inferred__0/i__carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \Result0_inferred__0/i__carry__5_n_0\,
      CO(3) => \NLW_Result0_inferred__0/i__carry__6_CO_UNCONNECTED\(3),
      CO(2) => \Result0_inferred__0/i__carry__6_n_1\,
      CO(1) => \Result0_inferred__0/i__carry__6_n_2\,
      CO(0) => \Result0_inferred__0/i__carry__6_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => Data1(30 downto 28),
      O(3 downto 0) => \^data1\(31 downto 28),
      S(3) => \i__carry__6_i_1_n_0\,
      S(2) => \i__carry__6_i_2_n_0\,
      S(1) => \i__carry__6_i_3_n_0\,
      S(0) => \i__carry__6_i_4_n_0\
    );
\Result[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3AFAFAFA0ACA0A0A"
    )
        port map (
      I0 => \Result[0]_INST_0_i_1_n_0\,
      I1 => func(1),
      I2 => func(2),
      I3 => Data1(0),
      I4 => func(0),
      I5 => Result0_n_105,
      O => Result(0)
    );
\Result[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE08F8FEFE08080"
    )
        port map (
      I0 => Data1(0),
      I1 => Data2(0),
      I2 => func(1),
      I3 => \^data1\(0),
      I4 => func(0),
      I5 => data0(0),
      O => \Result[0]_INST_0_i_1_n_0\
    );
\Result[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3AFAFAFA0ACA0A0A"
    )
        port map (
      I0 => \Result[10]_INST_0_i_1_n_0\,
      I1 => func(1),
      I2 => func(2),
      I3 => Data1(10),
      I4 => func(0),
      I5 => Result0_n_95,
      O => Result(10)
    );
\Result[10]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE08F8FEFE08080"
    )
        port map (
      I0 => Data1(10),
      I1 => Data2(10),
      I2 => func(1),
      I3 => \^data1\(10),
      I4 => func(0),
      I5 => data0(10),
      O => \Result[10]_INST_0_i_1_n_0\
    );
\Result[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3AFAFAFA0ACA0A0A"
    )
        port map (
      I0 => \Result[11]_INST_0_i_1_n_0\,
      I1 => func(1),
      I2 => func(2),
      I3 => Data1(11),
      I4 => func(0),
      I5 => Result0_n_94,
      O => Result(11)
    );
\Result[11]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE08F8FEFE08080"
    )
        port map (
      I0 => Data1(11),
      I1 => Data2(11),
      I2 => func(1),
      I3 => \^data1\(11),
      I4 => func(0),
      I5 => data0(11),
      O => \Result[11]_INST_0_i_1_n_0\
    );
\Result[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3AFAFAFA0ACA0A0A"
    )
        port map (
      I0 => \Result[12]_INST_0_i_1_n_0\,
      I1 => func(1),
      I2 => func(2),
      I3 => Data1(12),
      I4 => func(0),
      I5 => Result0_n_93,
      O => Result(12)
    );
\Result[12]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE08F8FEFE08080"
    )
        port map (
      I0 => Data1(12),
      I1 => Data2(12),
      I2 => func(1),
      I3 => \^data1\(12),
      I4 => func(0),
      I5 => data0(12),
      O => \Result[12]_INST_0_i_1_n_0\
    );
\Result[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3AFAFAFA0ACA0A0A"
    )
        port map (
      I0 => \Result[13]_INST_0_i_1_n_0\,
      I1 => func(1),
      I2 => func(2),
      I3 => Data1(13),
      I4 => func(0),
      I5 => Result0_n_92,
      O => Result(13)
    );
\Result[13]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE08F8FEFE08080"
    )
        port map (
      I0 => Data1(13),
      I1 => Data2(13),
      I2 => func(1),
      I3 => \^data1\(13),
      I4 => func(0),
      I5 => data0(13),
      O => \Result[13]_INST_0_i_1_n_0\
    );
\Result[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3AFAFAFA0ACA0A0A"
    )
        port map (
      I0 => \Result[14]_INST_0_i_1_n_0\,
      I1 => func(1),
      I2 => func(2),
      I3 => Data1(14),
      I4 => func(0),
      I5 => Result0_n_91,
      O => Result(14)
    );
\Result[14]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE08F8FEFE08080"
    )
        port map (
      I0 => Data1(14),
      I1 => Data2(14),
      I2 => func(1),
      I3 => \^data1\(14),
      I4 => func(0),
      I5 => data0(14),
      O => \Result[14]_INST_0_i_1_n_0\
    );
\Result[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3AFAFAFA0ACA0A0A"
    )
        port map (
      I0 => \Result[15]_INST_0_i_1_n_0\,
      I1 => func(1),
      I2 => func(2),
      I3 => Data1(15),
      I4 => func(0),
      I5 => Result0_n_90,
      O => Result(15)
    );
\Result[15]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE08F8FEFE08080"
    )
        port map (
      I0 => Data1(15),
      I1 => Data2(15),
      I2 => func(1),
      I3 => \^data1\(15),
      I4 => func(0),
      I5 => data0(15),
      O => \Result[15]_INST_0_i_1_n_0\
    );
\Result[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3AFAFAFA0ACA0A0A"
    )
        port map (
      I0 => \Result[16]_INST_0_i_1_n_0\,
      I1 => func(1),
      I2 => func(2),
      I3 => Data1(16),
      I4 => func(0),
      I5 => Result0_n_89,
      O => Result(16)
    );
\Result[16]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE08F8FEFE08080"
    )
        port map (
      I0 => Data1(16),
      I1 => Data2(16),
      I2 => func(1),
      I3 => \^data1\(16),
      I4 => func(0),
      I5 => data0(16),
      O => \Result[16]_INST_0_i_1_n_0\
    );
\Result[17]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3AFAFAFA0ACA0A0A"
    )
        port map (
      I0 => \Result[17]_INST_0_i_1_n_0\,
      I1 => func(1),
      I2 => func(2),
      I3 => Data1(17),
      I4 => func(0),
      I5 => Result0_n_88,
      O => Result(17)
    );
\Result[17]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE08F8FEFE08080"
    )
        port map (
      I0 => Data1(17),
      I1 => Data2(17),
      I2 => func(1),
      I3 => \^data1\(17),
      I4 => func(0),
      I5 => data0(17),
      O => \Result[17]_INST_0_i_1_n_0\
    );
\Result[18]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3AFAFAFA0ACA0A0A"
    )
        port map (
      I0 => \Result[18]_INST_0_i_1_n_0\,
      I1 => func(1),
      I2 => func(2),
      I3 => Data1(18),
      I4 => func(0),
      I5 => Result0_n_87,
      O => Result(18)
    );
\Result[18]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE08F8FEFE08080"
    )
        port map (
      I0 => Data1(18),
      I1 => Data2(18),
      I2 => func(1),
      I3 => \^data1\(18),
      I4 => func(0),
      I5 => data0(18),
      O => \Result[18]_INST_0_i_1_n_0\
    );
\Result[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3AFAFAFA0ACA0A0A"
    )
        port map (
      I0 => \Result[19]_INST_0_i_1_n_0\,
      I1 => func(1),
      I2 => func(2),
      I3 => Data1(19),
      I4 => func(0),
      I5 => Result0_n_86,
      O => Result(19)
    );
\Result[19]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE08F8FEFE08080"
    )
        port map (
      I0 => Data1(19),
      I1 => Data2(19),
      I2 => func(1),
      I3 => \^data1\(19),
      I4 => func(0),
      I5 => data0(19),
      O => \Result[19]_INST_0_i_1_n_0\
    );
\Result[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3AFAFAFA0ACA0A0A"
    )
        port map (
      I0 => \Result[1]_INST_0_i_1_n_0\,
      I1 => func(1),
      I2 => func(2),
      I3 => Data1(1),
      I4 => func(0),
      I5 => Result0_n_104,
      O => Result(1)
    );
\Result[1]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE08F8FEFE08080"
    )
        port map (
      I0 => Data1(1),
      I1 => Data2(1),
      I2 => func(1),
      I3 => \^data1\(1),
      I4 => func(0),
      I5 => data0(1),
      O => \Result[1]_INST_0_i_1_n_0\
    );
\Result[20]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3AFAFAFA0ACA0A0A"
    )
        port map (
      I0 => \Result[20]_INST_0_i_1_n_0\,
      I1 => func(1),
      I2 => func(2),
      I3 => Data1(20),
      I4 => func(0),
      I5 => Result0_n_85,
      O => Result(20)
    );
\Result[20]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE08F8FEFE08080"
    )
        port map (
      I0 => Data1(20),
      I1 => Data2(20),
      I2 => func(1),
      I3 => \^data1\(20),
      I4 => func(0),
      I5 => data0(20),
      O => \Result[20]_INST_0_i_1_n_0\
    );
\Result[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3AFAFAFA0ACA0A0A"
    )
        port map (
      I0 => \Result[21]_INST_0_i_1_n_0\,
      I1 => func(1),
      I2 => func(2),
      I3 => Data1(21),
      I4 => func(0),
      I5 => Result0_n_84,
      O => Result(21)
    );
\Result[21]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE08F8FEFE08080"
    )
        port map (
      I0 => Data1(21),
      I1 => Data2(21),
      I2 => func(1),
      I3 => \^data1\(21),
      I4 => func(0),
      I5 => data0(21),
      O => \Result[21]_INST_0_i_1_n_0\
    );
\Result[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3AFAFAFA0ACA0A0A"
    )
        port map (
      I0 => \Result[22]_INST_0_i_1_n_0\,
      I1 => func(1),
      I2 => func(2),
      I3 => Data1(22),
      I4 => func(0),
      I5 => Result0_n_83,
      O => Result(22)
    );
\Result[22]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE08F8FEFE08080"
    )
        port map (
      I0 => Data1(22),
      I1 => Data2(22),
      I2 => func(1),
      I3 => \^data1\(22),
      I4 => func(0),
      I5 => data0(22),
      O => \Result[22]_INST_0_i_1_n_0\
    );
\Result[23]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3AFAFAFA0ACA0A0A"
    )
        port map (
      I0 => \Result[23]_INST_0_i_1_n_0\,
      I1 => func(1),
      I2 => func(2),
      I3 => Data1(23),
      I4 => func(0),
      I5 => Result0_n_82,
      O => Result(23)
    );
\Result[23]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE08F8FEFE08080"
    )
        port map (
      I0 => Data1(23),
      I1 => Data2(23),
      I2 => func(1),
      I3 => \^data1\(23),
      I4 => func(0),
      I5 => data0(23),
      O => \Result[23]_INST_0_i_1_n_0\
    );
\Result[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3AFAFAFA0ACA0A0A"
    )
        port map (
      I0 => \Result[24]_INST_0_i_1_n_0\,
      I1 => func(1),
      I2 => func(2),
      I3 => Data1(24),
      I4 => func(0),
      I5 => Result0_n_81,
      O => Result(24)
    );
\Result[24]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE08F8FEFE08080"
    )
        port map (
      I0 => Data1(24),
      I1 => Data2(24),
      I2 => func(1),
      I3 => \^data1\(24),
      I4 => func(0),
      I5 => data0(24),
      O => \Result[24]_INST_0_i_1_n_0\
    );
\Result[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3AFAFAFA0ACA0A0A"
    )
        port map (
      I0 => \Result[25]_INST_0_i_1_n_0\,
      I1 => func(1),
      I2 => func(2),
      I3 => Data1(25),
      I4 => func(0),
      I5 => Result0_n_80,
      O => Result(25)
    );
\Result[25]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE08F8FEFE08080"
    )
        port map (
      I0 => Data1(25),
      I1 => Data2(25),
      I2 => func(1),
      I3 => \^data1\(25),
      I4 => func(0),
      I5 => data0(25),
      O => \Result[25]_INST_0_i_1_n_0\
    );
\Result[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3AFAFAFA0ACA0A0A"
    )
        port map (
      I0 => \Result[26]_INST_0_i_1_n_0\,
      I1 => func(1),
      I2 => func(2),
      I3 => Data1(26),
      I4 => func(0),
      I5 => Result0_n_79,
      O => Result(26)
    );
\Result[26]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE08F8FEFE08080"
    )
        port map (
      I0 => Data1(26),
      I1 => Data2(26),
      I2 => func(1),
      I3 => \^data1\(26),
      I4 => func(0),
      I5 => data0(26),
      O => \Result[26]_INST_0_i_1_n_0\
    );
\Result[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3AFAFAFA0ACA0A0A"
    )
        port map (
      I0 => \Result[27]_INST_0_i_1_n_0\,
      I1 => func(1),
      I2 => func(2),
      I3 => Data1(27),
      I4 => func(0),
      I5 => Result0_n_78,
      O => Result(27)
    );
\Result[27]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE08F8FEFE08080"
    )
        port map (
      I0 => Data1(27),
      I1 => Data2(27),
      I2 => func(1),
      I3 => \^data1\(27),
      I4 => func(0),
      I5 => data0(27),
      O => \Result[27]_INST_0_i_1_n_0\
    );
\Result[28]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3AFAFAFA0ACA0A0A"
    )
        port map (
      I0 => \Result[28]_INST_0_i_1_n_0\,
      I1 => func(1),
      I2 => func(2),
      I3 => Data1(28),
      I4 => func(0),
      I5 => Result0_n_77,
      O => Result(28)
    );
\Result[28]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE08F8FEFE08080"
    )
        port map (
      I0 => Data1(28),
      I1 => Data2(28),
      I2 => func(1),
      I3 => \^data1\(28),
      I4 => func(0),
      I5 => data0(28),
      O => \Result[28]_INST_0_i_1_n_0\
    );
\Result[29]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3AFAFAFA0ACA0A0A"
    )
        port map (
      I0 => \Result[29]_INST_0_i_1_n_0\,
      I1 => func(1),
      I2 => func(2),
      I3 => Data1(29),
      I4 => func(0),
      I5 => Result0_n_76,
      O => Result(29)
    );
\Result[29]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE08F8FEFE08080"
    )
        port map (
      I0 => Data1(29),
      I1 => Data2(29),
      I2 => func(1),
      I3 => \^data1\(29),
      I4 => func(0),
      I5 => data0(29),
      O => \Result[29]_INST_0_i_1_n_0\
    );
\Result[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3AFAFAFA0ACA0A0A"
    )
        port map (
      I0 => \Result[2]_INST_0_i_1_n_0\,
      I1 => func(1),
      I2 => func(2),
      I3 => Data1(2),
      I4 => func(0),
      I5 => Result0_n_103,
      O => Result(2)
    );
\Result[2]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE08F8FEFE08080"
    )
        port map (
      I0 => Data1(2),
      I1 => Data2(2),
      I2 => func(1),
      I3 => \^data1\(2),
      I4 => func(0),
      I5 => data0(2),
      O => \Result[2]_INST_0_i_1_n_0\
    );
\Result[30]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3AFAFAFA0ACA0A0A"
    )
        port map (
      I0 => \Result[30]_INST_0_i_1_n_0\,
      I1 => func(1),
      I2 => func(2),
      I3 => Data1(30),
      I4 => func(0),
      I5 => Result0_n_75,
      O => Result(30)
    );
\Result[30]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE08F8FEFE08080"
    )
        port map (
      I0 => Data1(30),
      I1 => Data2(30),
      I2 => func(1),
      I3 => \^data1\(30),
      I4 => func(0),
      I5 => data0(30),
      O => \Result[30]_INST_0_i_1_n_0\
    );
\Result[31]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3AFAFAFA0ACA0A0A"
    )
        port map (
      I0 => \Result[31]_INST_0_i_1_n_0\,
      I1 => func(1),
      I2 => func(2),
      I3 => Data1(31),
      I4 => func(0),
      I5 => Result0_n_74,
      O => Result(31)
    );
\Result[31]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE08F8FEFE08080"
    )
        port map (
      I0 => Data1(31),
      I1 => Data2(31),
      I2 => func(1),
      I3 => \^data1\(31),
      I4 => func(0),
      I5 => data0(31),
      O => \Result[31]_INST_0_i_1_n_0\
    );
\Result[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3AFAFAFA0ACA0A0A"
    )
        port map (
      I0 => \Result[3]_INST_0_i_1_n_0\,
      I1 => func(1),
      I2 => func(2),
      I3 => Data1(3),
      I4 => func(0),
      I5 => Result0_n_102,
      O => Result(3)
    );
\Result[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE08F8FEFE08080"
    )
        port map (
      I0 => Data1(3),
      I1 => Data2(3),
      I2 => func(1),
      I3 => \^data1\(3),
      I4 => func(0),
      I5 => data0(3),
      O => \Result[3]_INST_0_i_1_n_0\
    );
\Result[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3AFAFAFA0ACA0A0A"
    )
        port map (
      I0 => \Result[4]_INST_0_i_1_n_0\,
      I1 => func(1),
      I2 => func(2),
      I3 => Data1(4),
      I4 => func(0),
      I5 => Result0_n_101,
      O => Result(4)
    );
\Result[4]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE08F8FEFE08080"
    )
        port map (
      I0 => Data1(4),
      I1 => Data2(4),
      I2 => func(1),
      I3 => \^data1\(4),
      I4 => func(0),
      I5 => data0(4),
      O => \Result[4]_INST_0_i_1_n_0\
    );
\Result[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3AFAFAFA0ACA0A0A"
    )
        port map (
      I0 => \Result[5]_INST_0_i_1_n_0\,
      I1 => func(1),
      I2 => func(2),
      I3 => Data1(5),
      I4 => func(0),
      I5 => Result0_n_100,
      O => Result(5)
    );
\Result[5]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE08F8FEFE08080"
    )
        port map (
      I0 => Data1(5),
      I1 => Data2(5),
      I2 => func(1),
      I3 => \^data1\(5),
      I4 => func(0),
      I5 => data0(5),
      O => \Result[5]_INST_0_i_1_n_0\
    );
\Result[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3AFAFAFA0ACA0A0A"
    )
        port map (
      I0 => \Result[6]_INST_0_i_1_n_0\,
      I1 => func(1),
      I2 => func(2),
      I3 => Data1(6),
      I4 => func(0),
      I5 => Result0_n_99,
      O => Result(6)
    );
\Result[6]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE08F8FEFE08080"
    )
        port map (
      I0 => Data1(6),
      I1 => Data2(6),
      I2 => func(1),
      I3 => \^data1\(6),
      I4 => func(0),
      I5 => data0(6),
      O => \Result[6]_INST_0_i_1_n_0\
    );
\Result[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3AFAFAFA0ACA0A0A"
    )
        port map (
      I0 => \Result[7]_INST_0_i_1_n_0\,
      I1 => func(1),
      I2 => func(2),
      I3 => Data1(7),
      I4 => func(0),
      I5 => Result0_n_98,
      O => Result(7)
    );
\Result[7]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE08F8FEFE08080"
    )
        port map (
      I0 => Data1(7),
      I1 => Data2(7),
      I2 => func(1),
      I3 => \^data1\(7),
      I4 => func(0),
      I5 => data0(7),
      O => \Result[7]_INST_0_i_1_n_0\
    );
\Result[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3AFAFAFA0ACA0A0A"
    )
        port map (
      I0 => \Result[8]_INST_0_i_1_n_0\,
      I1 => func(1),
      I2 => func(2),
      I3 => Data1(8),
      I4 => func(0),
      I5 => Result0_n_97,
      O => Result(8)
    );
\Result[8]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE08F8FEFE08080"
    )
        port map (
      I0 => Data1(8),
      I1 => Data2(8),
      I2 => func(1),
      I3 => \^data1\(8),
      I4 => func(0),
      I5 => data0(8),
      O => \Result[8]_INST_0_i_1_n_0\
    );
\Result[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3AFAFAFA0ACA0A0A"
    )
        port map (
      I0 => \Result[9]_INST_0_i_1_n_0\,
      I1 => func(1),
      I2 => func(2),
      I3 => Data1(9),
      I4 => func(0),
      I5 => Result0_n_96,
      O => Result(9)
    );
\Result[9]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE08F8FEFE08080"
    )
        port map (
      I0 => Data1(9),
      I1 => Data2(9),
      I2 => func(1),
      I3 => \^data1\(9),
      I4 => func(0),
      I5 => data0(9),
      O => \Result[9]_INST_0_i_1_n_0\
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Data2(7),
      I1 => Data1(7),
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Data2(6),
      I1 => Data1(6),
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Data2(5),
      I1 => Data1(5),
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Data2(4),
      I1 => Data1(4),
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Data2(11),
      I1 => Data1(11),
      O => \i__carry__1_i_1_n_0\
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Data2(10),
      I1 => Data1(10),
      O => \i__carry__1_i_2_n_0\
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Data2(9),
      I1 => Data1(9),
      O => \i__carry__1_i_3_n_0\
    );
\i__carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Data2(8),
      I1 => Data1(8),
      O => \i__carry__1_i_4_n_0\
    );
\i__carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Data2(15),
      I1 => Data1(15),
      O => \i__carry__2_i_1_n_0\
    );
\i__carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Data2(14),
      I1 => Data1(14),
      O => \i__carry__2_i_2_n_0\
    );
\i__carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Data2(13),
      I1 => Data1(13),
      O => \i__carry__2_i_3_n_0\
    );
\i__carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Data2(12),
      I1 => Data1(12),
      O => \i__carry__2_i_4_n_0\
    );
\i__carry__3_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Data2(19),
      I1 => Data1(19),
      O => \i__carry__3_i_1_n_0\
    );
\i__carry__3_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Data2(18),
      I1 => Data1(18),
      O => \i__carry__3_i_2_n_0\
    );
\i__carry__3_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Data2(17),
      I1 => Data1(17),
      O => \i__carry__3_i_3_n_0\
    );
\i__carry__3_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Data2(16),
      I1 => Data1(16),
      O => \i__carry__3_i_4_n_0\
    );
\i__carry__4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Data2(23),
      I1 => Data1(23),
      O => \i__carry__4_i_1_n_0\
    );
\i__carry__4_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Data2(22),
      I1 => Data1(22),
      O => \i__carry__4_i_2_n_0\
    );
\i__carry__4_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Data2(21),
      I1 => Data1(21),
      O => \i__carry__4_i_3_n_0\
    );
\i__carry__4_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Data2(20),
      I1 => Data1(20),
      O => \i__carry__4_i_4_n_0\
    );
\i__carry__5_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Data2(27),
      I1 => Data1(27),
      O => \i__carry__5_i_1_n_0\
    );
\i__carry__5_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Data2(26),
      I1 => Data1(26),
      O => \i__carry__5_i_2_n_0\
    );
\i__carry__5_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Data2(25),
      I1 => Data1(25),
      O => \i__carry__5_i_3_n_0\
    );
\i__carry__5_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Data2(24),
      I1 => Data1(24),
      O => \i__carry__5_i_4_n_0\
    );
\i__carry__6_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Data2(31),
      I1 => Data1(31),
      O => \i__carry__6_i_1_n_0\
    );
\i__carry__6_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Data2(30),
      I1 => Data1(30),
      O => \i__carry__6_i_2_n_0\
    );
\i__carry__6_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Data2(29),
      I1 => Data1(29),
      O => \i__carry__6_i_3_n_0\
    );
\i__carry__6_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Data2(28),
      I1 => Data1(28),
      O => \i__carry__6_i_4_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Data2(3),
      I1 => Data1(3),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Data2(2),
      I1 => Data1(2),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Data2(1),
      I1 => Data1(1),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Data2(0),
      I1 => Data1(0),
      O => \i__carry_i_4_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MIPS_Design_ALU_Control is
  port (
    func : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ALUOP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Instruction : in STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of MIPS_Design_ALU_Control : entity is "ALU_Control";
end MIPS_Design_ALU_Control;

architecture STRUCTURE of MIPS_Design_ALU_Control is
  signal \func_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \func_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \func_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \func_reg[0]_i_4_n_0\ : STD_LOGIC;
  signal \func_reg[0]_i_5_n_0\ : STD_LOGIC;
  signal \func_reg[0]_i_6_n_0\ : STD_LOGIC;
  signal \func_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \func_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \func_reg[1]_i_3_n_0\ : STD_LOGIC;
  signal \func_reg[1]_i_4_n_0\ : STD_LOGIC;
  signal \func_reg[1]_i_5_n_0\ : STD_LOGIC;
  signal \func_reg[1]_i_6_n_0\ : STD_LOGIC;
  signal \func_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \func_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \func_reg[2]_i_3_n_0\ : STD_LOGIC;
  signal \func_reg[2]_i_4_n_0\ : STD_LOGIC;
  signal \func_reg[2]_i_5_n_0\ : STD_LOGIC;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \func_reg[0]\ : label is "LDC";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \func_reg[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \func_reg[0]_i_2\ : label is "soft_lutpair0";
  attribute XILINX_LEGACY_PRIM of \func_reg[1]\ : label is "LDC";
  attribute SOFT_HLUTNM of \func_reg[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \func_reg[1]_i_2\ : label is "soft_lutpair0";
  attribute XILINX_LEGACY_PRIM of \func_reg[2]\ : label is "LDC";
  attribute SOFT_HLUTNM of \func_reg[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \func_reg[2]_i_2\ : label is "soft_lutpair1";
begin
\func_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \func_reg[0]_i_3_n_0\,
      D => \func_reg[0]_i_1_n_0\,
      G => \func_reg[0]_i_2_n_0\,
      GE => '1',
      Q => func(0)
    );
\func_reg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => Instruction(0),
      I1 => \func_reg[0]_i_4_n_0\,
      I2 => ALUOP(1),
      O => \func_reg[0]_i_1_n_0\
    );
\func_reg[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"5D"
    )
        port map (
      I0 => ALUOP(1),
      I1 => \func_reg[0]_i_5_n_0\,
      I2 => ALUOP(0),
      O => \func_reg[0]_i_2_n_0\
    );
\func_reg[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \func_reg[0]_i_6_n_0\,
      I1 => Instruction(5),
      I2 => ALUOP(1),
      O => \func_reg[0]_i_3_n_0\
    );
\func_reg[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFDFFFFEFFF"
    )
        port map (
      I0 => Instruction(1),
      I1 => ALUOP(0),
      I2 => Instruction(4),
      I3 => Instruction(3),
      I4 => Instruction(5),
      I5 => Instruction(2),
      O => \func_reg[0]_i_4_n_0\
    );
\func_reg[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000011010001108"
    )
        port map (
      I0 => Instruction(4),
      I1 => Instruction(3),
      I2 => Instruction(5),
      I3 => Instruction(2),
      I4 => Instruction(0),
      I5 => Instruction(1),
      O => \func_reg[0]_i_5_n_0\
    );
\func_reg[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => Instruction(2),
      I1 => Instruction(0),
      I2 => Instruction(1),
      I3 => ALUOP(0),
      I4 => Instruction(3),
      I5 => Instruction(4),
      O => \func_reg[0]_i_6_n_0\
    );
\func_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \func_reg[1]_i_3_n_0\,
      D => \func_reg[1]_i_1_n_0\,
      G => \func_reg[1]_i_2_n_0\,
      GE => '1',
      Q => func(1)
    );
\func_reg[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \func_reg[1]_i_4_n_0\,
      I1 => ALUOP(1),
      I2 => Instruction(2),
      O => \func_reg[1]_i_1_n_0\
    );
\func_reg[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"5D"
    )
        port map (
      I0 => ALUOP(1),
      I1 => \func_reg[1]_i_5_n_0\,
      I2 => ALUOP(0),
      O => \func_reg[1]_i_2_n_0\
    );
\func_reg[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \func_reg[1]_i_6_n_0\,
      I1 => ALUOP(1),
      O => \func_reg[1]_i_3_n_0\
    );
\func_reg[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000009000C"
    )
        port map (
      I0 => Instruction(0),
      I1 => Instruction(5),
      I2 => ALUOP(0),
      I3 => Instruction(4),
      I4 => Instruction(1),
      I5 => Instruction(3),
      O => \func_reg[1]_i_4_n_0\
    );
\func_reg[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000B000500001000"
    )
        port map (
      I0 => Instruction(0),
      I1 => Instruction(1),
      I2 => Instruction(4),
      I3 => Instruction(3),
      I4 => Instruction(5),
      I5 => Instruction(2),
      O => \func_reg[1]_i_5_n_0\
    );
\func_reg[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => ALUOP(0),
      I1 => Instruction(5),
      I2 => Instruction(3),
      I3 => Instruction(4),
      I4 => Instruction(2),
      I5 => Instruction(0),
      O => \func_reg[1]_i_6_n_0\
    );
\func_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \func_reg[2]_i_3_n_0\,
      D => \func_reg[2]_i_1_n_0\,
      G => \func_reg[2]_i_2_n_0\,
      GE => '1',
      Q => func(2)
    );
\func_reg[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \func_reg[2]_i_4_n_0\,
      I1 => ALUOP(0),
      I2 => ALUOP(1),
      O => \func_reg[2]_i_1_n_0\
    );
\func_reg[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"5D"
    )
        port map (
      I0 => ALUOP(1),
      I1 => \func_reg[2]_i_4_n_0\,
      I2 => ALUOP(0),
      O => \func_reg[2]_i_2_n_0\
    );
\func_reg[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \func_reg[2]_i_5_n_0\,
      I1 => Instruction(5),
      I2 => ALUOP(1),
      O => \func_reg[2]_i_3_n_0\
    );
\func_reg[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000010000820002"
    )
        port map (
      I0 => Instruction(2),
      I1 => Instruction(0),
      I2 => Instruction(5),
      I3 => Instruction(4),
      I4 => Instruction(1),
      I5 => Instruction(3),
      O => \func_reg[2]_i_4_n_0\
    );
\func_reg[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000101000101"
    )
        port map (
      I0 => ALUOP(0),
      I1 => Instruction(3),
      I2 => Instruction(4),
      I3 => Instruction(2),
      I4 => Instruction(0),
      I5 => Instruction(1),
      O => \func_reg[2]_i_5_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MIPS_Design_Control_Unit is
  port (
    RegDst : out STD_LOGIC;
    Branch : out STD_LOGIC;
    MemWrite : out STD_LOGIC;
    MemtoReg : out STD_LOGIC;
    ALUOP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    OP : in STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of MIPS_Design_Control_Unit : entity is "Control_Unit";
end MIPS_Design_Control_Unit;

architecture STRUCTURE of MIPS_Design_Control_Unit is
begin
\ALUOP[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => OP(1),
      I1 => OP(0),
      I2 => OP(2),
      I3 => OP(4),
      I4 => OP(3),
      I5 => OP(5),
      O => ALUOP(0)
    );
\ALUOP[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => OP(2),
      I1 => OP(0),
      I2 => OP(1),
      I3 => OP(4),
      I4 => OP(3),
      I5 => OP(5),
      O => ALUOP(1)
    );
\Branch__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => OP(5),
      I1 => OP(4),
      I2 => OP(1),
      I3 => OP(2),
      I4 => OP(3),
      I5 => OP(0),
      O => Branch
    );
\MemWrite__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => OP(2),
      I1 => OP(4),
      I2 => OP(1),
      I3 => OP(0),
      I4 => OP(5),
      I5 => OP(3),
      O => MemWrite
    );
\MemtoReg__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
        port map (
      I0 => OP(2),
      I1 => OP(4),
      I2 => OP(1),
      I3 => OP(0),
      I4 => OP(3),
      I5 => OP(5),
      O => MemtoReg
    );
\RegDst__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => OP(5),
      I1 => OP(4),
      I2 => OP(1),
      I3 => OP(0),
      I4 => OP(3),
      I5 => OP(2),
      O => RegDst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MIPS_Design_DM is
  port (
    ReadData : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    WriteData : in STD_LOGIC_VECTOR ( 31 downto 0 );
    En : in STD_LOGIC;
    Address : in STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of MIPS_Design_DM : entity is "DM";
end MIPS_Design_DM;

architecture STRUCTURE of MIPS_Design_DM is
begin
DM_reg_0_127_0_0: unisim.vcomponents.RAM128X1S
    generic map(
      INIT => X"00000000000000000000000000000001"
    )
        port map (
      A0 => Address(0),
      A1 => Address(1),
      A2 => Address(2),
      A3 => Address(3),
      A4 => Address(4),
      A5 => Address(5),
      A6 => Address(6),
      D => WriteData(0),
      O => ReadData(0),
      WCLK => clk,
      WE => En
    );
DM_reg_0_127_10_10: unisim.vcomponents.RAM128X1S
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A0 => Address(0),
      A1 => Address(1),
      A2 => Address(2),
      A3 => Address(3),
      A4 => Address(4),
      A5 => Address(5),
      A6 => Address(6),
      D => WriteData(10),
      O => ReadData(10),
      WCLK => clk,
      WE => En
    );
DM_reg_0_127_11_11: unisim.vcomponents.RAM128X1S
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A0 => Address(0),
      A1 => Address(1),
      A2 => Address(2),
      A3 => Address(3),
      A4 => Address(4),
      A5 => Address(5),
      A6 => Address(6),
      D => WriteData(11),
      O => ReadData(11),
      WCLK => clk,
      WE => En
    );
DM_reg_0_127_12_12: unisim.vcomponents.RAM128X1S
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A0 => Address(0),
      A1 => Address(1),
      A2 => Address(2),
      A3 => Address(3),
      A4 => Address(4),
      A5 => Address(5),
      A6 => Address(6),
      D => WriteData(12),
      O => ReadData(12),
      WCLK => clk,
      WE => En
    );
DM_reg_0_127_13_13: unisim.vcomponents.RAM128X1S
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A0 => Address(0),
      A1 => Address(1),
      A2 => Address(2),
      A3 => Address(3),
      A4 => Address(4),
      A5 => Address(5),
      A6 => Address(6),
      D => WriteData(13),
      O => ReadData(13),
      WCLK => clk,
      WE => En
    );
DM_reg_0_127_14_14: unisim.vcomponents.RAM128X1S
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A0 => Address(0),
      A1 => Address(1),
      A2 => Address(2),
      A3 => Address(3),
      A4 => Address(4),
      A5 => Address(5),
      A6 => Address(6),
      D => WriteData(14),
      O => ReadData(14),
      WCLK => clk,
      WE => En
    );
DM_reg_0_127_15_15: unisim.vcomponents.RAM128X1S
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A0 => Address(0),
      A1 => Address(1),
      A2 => Address(2),
      A3 => Address(3),
      A4 => Address(4),
      A5 => Address(5),
      A6 => Address(6),
      D => WriteData(15),
      O => ReadData(15),
      WCLK => clk,
      WE => En
    );
DM_reg_0_127_16_16: unisim.vcomponents.RAM128X1S
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A0 => Address(0),
      A1 => Address(1),
      A2 => Address(2),
      A3 => Address(3),
      A4 => Address(4),
      A5 => Address(5),
      A6 => Address(6),
      D => WriteData(16),
      O => ReadData(16),
      WCLK => clk,
      WE => En
    );
DM_reg_0_127_17_17: unisim.vcomponents.RAM128X1S
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A0 => Address(0),
      A1 => Address(1),
      A2 => Address(2),
      A3 => Address(3),
      A4 => Address(4),
      A5 => Address(5),
      A6 => Address(6),
      D => WriteData(17),
      O => ReadData(17),
      WCLK => clk,
      WE => En
    );
DM_reg_0_127_18_18: unisim.vcomponents.RAM128X1S
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A0 => Address(0),
      A1 => Address(1),
      A2 => Address(2),
      A3 => Address(3),
      A4 => Address(4),
      A5 => Address(5),
      A6 => Address(6),
      D => WriteData(18),
      O => ReadData(18),
      WCLK => clk,
      WE => En
    );
DM_reg_0_127_19_19: unisim.vcomponents.RAM128X1S
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A0 => Address(0),
      A1 => Address(1),
      A2 => Address(2),
      A3 => Address(3),
      A4 => Address(4),
      A5 => Address(5),
      A6 => Address(6),
      D => WriteData(19),
      O => ReadData(19),
      WCLK => clk,
      WE => En
    );
DM_reg_0_127_1_1: unisim.vcomponents.RAM128X1S
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A0 => Address(0),
      A1 => Address(1),
      A2 => Address(2),
      A3 => Address(3),
      A4 => Address(4),
      A5 => Address(5),
      A6 => Address(6),
      D => WriteData(1),
      O => ReadData(1),
      WCLK => clk,
      WE => En
    );
DM_reg_0_127_20_20: unisim.vcomponents.RAM128X1S
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A0 => Address(0),
      A1 => Address(1),
      A2 => Address(2),
      A3 => Address(3),
      A4 => Address(4),
      A5 => Address(5),
      A6 => Address(6),
      D => WriteData(20),
      O => ReadData(20),
      WCLK => clk,
      WE => En
    );
DM_reg_0_127_21_21: unisim.vcomponents.RAM128X1S
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A0 => Address(0),
      A1 => Address(1),
      A2 => Address(2),
      A3 => Address(3),
      A4 => Address(4),
      A5 => Address(5),
      A6 => Address(6),
      D => WriteData(21),
      O => ReadData(21),
      WCLK => clk,
      WE => En
    );
DM_reg_0_127_22_22: unisim.vcomponents.RAM128X1S
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A0 => Address(0),
      A1 => Address(1),
      A2 => Address(2),
      A3 => Address(3),
      A4 => Address(4),
      A5 => Address(5),
      A6 => Address(6),
      D => WriteData(22),
      O => ReadData(22),
      WCLK => clk,
      WE => En
    );
DM_reg_0_127_23_23: unisim.vcomponents.RAM128X1S
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A0 => Address(0),
      A1 => Address(1),
      A2 => Address(2),
      A3 => Address(3),
      A4 => Address(4),
      A5 => Address(5),
      A6 => Address(6),
      D => WriteData(23),
      O => ReadData(23),
      WCLK => clk,
      WE => En
    );
DM_reg_0_127_24_24: unisim.vcomponents.RAM128X1S
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A0 => Address(0),
      A1 => Address(1),
      A2 => Address(2),
      A3 => Address(3),
      A4 => Address(4),
      A5 => Address(5),
      A6 => Address(6),
      D => WriteData(24),
      O => ReadData(24),
      WCLK => clk,
      WE => En
    );
DM_reg_0_127_25_25: unisim.vcomponents.RAM128X1S
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A0 => Address(0),
      A1 => Address(1),
      A2 => Address(2),
      A3 => Address(3),
      A4 => Address(4),
      A5 => Address(5),
      A6 => Address(6),
      D => WriteData(25),
      O => ReadData(25),
      WCLK => clk,
      WE => En
    );
DM_reg_0_127_26_26: unisim.vcomponents.RAM128X1S
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A0 => Address(0),
      A1 => Address(1),
      A2 => Address(2),
      A3 => Address(3),
      A4 => Address(4),
      A5 => Address(5),
      A6 => Address(6),
      D => WriteData(26),
      O => ReadData(26),
      WCLK => clk,
      WE => En
    );
DM_reg_0_127_27_27: unisim.vcomponents.RAM128X1S
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A0 => Address(0),
      A1 => Address(1),
      A2 => Address(2),
      A3 => Address(3),
      A4 => Address(4),
      A5 => Address(5),
      A6 => Address(6),
      D => WriteData(27),
      O => ReadData(27),
      WCLK => clk,
      WE => En
    );
DM_reg_0_127_28_28: unisim.vcomponents.RAM128X1S
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A0 => Address(0),
      A1 => Address(1),
      A2 => Address(2),
      A3 => Address(3),
      A4 => Address(4),
      A5 => Address(5),
      A6 => Address(6),
      D => WriteData(28),
      O => ReadData(28),
      WCLK => clk,
      WE => En
    );
DM_reg_0_127_29_29: unisim.vcomponents.RAM128X1S
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A0 => Address(0),
      A1 => Address(1),
      A2 => Address(2),
      A3 => Address(3),
      A4 => Address(4),
      A5 => Address(5),
      A6 => Address(6),
      D => WriteData(29),
      O => ReadData(29),
      WCLK => clk,
      WE => En
    );
DM_reg_0_127_2_2: unisim.vcomponents.RAM128X1S
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A0 => Address(0),
      A1 => Address(1),
      A2 => Address(2),
      A3 => Address(3),
      A4 => Address(4),
      A5 => Address(5),
      A6 => Address(6),
      D => WriteData(2),
      O => ReadData(2),
      WCLK => clk,
      WE => En
    );
DM_reg_0_127_30_30: unisim.vcomponents.RAM128X1S
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A0 => Address(0),
      A1 => Address(1),
      A2 => Address(2),
      A3 => Address(3),
      A4 => Address(4),
      A5 => Address(5),
      A6 => Address(6),
      D => WriteData(30),
      O => ReadData(30),
      WCLK => clk,
      WE => En
    );
DM_reg_0_127_31_31: unisim.vcomponents.RAM128X1S
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A0 => Address(0),
      A1 => Address(1),
      A2 => Address(2),
      A3 => Address(3),
      A4 => Address(4),
      A5 => Address(5),
      A6 => Address(6),
      D => WriteData(31),
      O => ReadData(31),
      WCLK => clk,
      WE => En
    );
DM_reg_0_127_3_3: unisim.vcomponents.RAM128X1S
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A0 => Address(0),
      A1 => Address(1),
      A2 => Address(2),
      A3 => Address(3),
      A4 => Address(4),
      A5 => Address(5),
      A6 => Address(6),
      D => WriteData(3),
      O => ReadData(3),
      WCLK => clk,
      WE => En
    );
DM_reg_0_127_4_4: unisim.vcomponents.RAM128X1S
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A0 => Address(0),
      A1 => Address(1),
      A2 => Address(2),
      A3 => Address(3),
      A4 => Address(4),
      A5 => Address(5),
      A6 => Address(6),
      D => WriteData(4),
      O => ReadData(4),
      WCLK => clk,
      WE => En
    );
DM_reg_0_127_5_5: unisim.vcomponents.RAM128X1S
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A0 => Address(0),
      A1 => Address(1),
      A2 => Address(2),
      A3 => Address(3),
      A4 => Address(4),
      A5 => Address(5),
      A6 => Address(6),
      D => WriteData(5),
      O => ReadData(5),
      WCLK => clk,
      WE => En
    );
DM_reg_0_127_6_6: unisim.vcomponents.RAM128X1S
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A0 => Address(0),
      A1 => Address(1),
      A2 => Address(2),
      A3 => Address(3),
      A4 => Address(4),
      A5 => Address(5),
      A6 => Address(6),
      D => WriteData(6),
      O => ReadData(6),
      WCLK => clk,
      WE => En
    );
DM_reg_0_127_7_7: unisim.vcomponents.RAM128X1S
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A0 => Address(0),
      A1 => Address(1),
      A2 => Address(2),
      A3 => Address(3),
      A4 => Address(4),
      A5 => Address(5),
      A6 => Address(6),
      D => WriteData(7),
      O => ReadData(7),
      WCLK => clk,
      WE => En
    );
DM_reg_0_127_8_8: unisim.vcomponents.RAM128X1S
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A0 => Address(0),
      A1 => Address(1),
      A2 => Address(2),
      A3 => Address(3),
      A4 => Address(4),
      A5 => Address(5),
      A6 => Address(6),
      D => WriteData(8),
      O => ReadData(8),
      WCLK => clk,
      WE => En
    );
DM_reg_0_127_9_9: unisim.vcomponents.RAM128X1S
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A0 => Address(0),
      A1 => Address(1),
      A2 => Address(2),
      A3 => Address(3),
      A4 => Address(4),
      A5 => Address(5),
      A6 => Address(6),
      D => WriteData(9),
      O => ReadData(9),
      WCLK => clk,
      WE => En
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MIPS_Design_File_Register is
  port (
    ReadData1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ReadData2 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    EN : in STD_LOGIC;
    WriteData : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ReadRegister1 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    WriteRegister : in STD_LOGIC_VECTOR ( 4 downto 0 );
    ReadRegister2 : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of MIPS_Design_File_Register : entity is "File_Register";
end MIPS_Design_File_Register;

architecture STRUCTURE of MIPS_Design_File_Register is
  signal NLW_file_register_reg_r1_0_31_0_5_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_file_register_reg_r1_0_31_12_17_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_file_register_reg_r1_0_31_18_23_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_file_register_reg_r1_0_31_24_29_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_file_register_reg_r1_0_31_30_31_DOB_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_file_register_reg_r1_0_31_30_31_DOC_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_file_register_reg_r1_0_31_30_31_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_file_register_reg_r1_0_31_6_11_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_file_register_reg_r2_0_31_0_5_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_file_register_reg_r2_0_31_12_17_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_file_register_reg_r2_0_31_18_23_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_file_register_reg_r2_0_31_24_29_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_file_register_reg_r2_0_31_30_31_DOB_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_file_register_reg_r2_0_31_30_31_DOC_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_file_register_reg_r2_0_31_30_31_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_file_register_reg_r2_0_31_6_11_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of file_register_reg_r1_0_31_0_5 : label is "";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of file_register_reg_r1_0_31_0_5 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of file_register_reg_r1_0_31_0_5 : label is 31;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of file_register_reg_r1_0_31_0_5 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of file_register_reg_r1_0_31_0_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of file_register_reg_r1_0_31_12_17 : label is "";
  attribute ram_addr_begin of file_register_reg_r1_0_31_12_17 : label is 0;
  attribute ram_addr_end of file_register_reg_r1_0_31_12_17 : label is 31;
  attribute ram_slice_begin of file_register_reg_r1_0_31_12_17 : label is 12;
  attribute ram_slice_end of file_register_reg_r1_0_31_12_17 : label is 17;
  attribute METHODOLOGY_DRC_VIOS of file_register_reg_r1_0_31_18_23 : label is "";
  attribute ram_addr_begin of file_register_reg_r1_0_31_18_23 : label is 0;
  attribute ram_addr_end of file_register_reg_r1_0_31_18_23 : label is 31;
  attribute ram_slice_begin of file_register_reg_r1_0_31_18_23 : label is 18;
  attribute ram_slice_end of file_register_reg_r1_0_31_18_23 : label is 23;
  attribute METHODOLOGY_DRC_VIOS of file_register_reg_r1_0_31_24_29 : label is "";
  attribute ram_addr_begin of file_register_reg_r1_0_31_24_29 : label is 0;
  attribute ram_addr_end of file_register_reg_r1_0_31_24_29 : label is 31;
  attribute ram_slice_begin of file_register_reg_r1_0_31_24_29 : label is 24;
  attribute ram_slice_end of file_register_reg_r1_0_31_24_29 : label is 29;
  attribute METHODOLOGY_DRC_VIOS of file_register_reg_r1_0_31_30_31 : label is "";
  attribute ram_addr_begin of file_register_reg_r1_0_31_30_31 : label is 0;
  attribute ram_addr_end of file_register_reg_r1_0_31_30_31 : label is 31;
  attribute ram_slice_begin of file_register_reg_r1_0_31_30_31 : label is 30;
  attribute ram_slice_end of file_register_reg_r1_0_31_30_31 : label is 31;
  attribute METHODOLOGY_DRC_VIOS of file_register_reg_r1_0_31_6_11 : label is "";
  attribute ram_addr_begin of file_register_reg_r1_0_31_6_11 : label is 0;
  attribute ram_addr_end of file_register_reg_r1_0_31_6_11 : label is 31;
  attribute ram_slice_begin of file_register_reg_r1_0_31_6_11 : label is 6;
  attribute ram_slice_end of file_register_reg_r1_0_31_6_11 : label is 11;
  attribute METHODOLOGY_DRC_VIOS of file_register_reg_r2_0_31_0_5 : label is "";
  attribute ram_addr_begin of file_register_reg_r2_0_31_0_5 : label is 0;
  attribute ram_addr_end of file_register_reg_r2_0_31_0_5 : label is 31;
  attribute ram_slice_begin of file_register_reg_r2_0_31_0_5 : label is 0;
  attribute ram_slice_end of file_register_reg_r2_0_31_0_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of file_register_reg_r2_0_31_12_17 : label is "";
  attribute ram_addr_begin of file_register_reg_r2_0_31_12_17 : label is 0;
  attribute ram_addr_end of file_register_reg_r2_0_31_12_17 : label is 31;
  attribute ram_slice_begin of file_register_reg_r2_0_31_12_17 : label is 12;
  attribute ram_slice_end of file_register_reg_r2_0_31_12_17 : label is 17;
  attribute METHODOLOGY_DRC_VIOS of file_register_reg_r2_0_31_18_23 : label is "";
  attribute ram_addr_begin of file_register_reg_r2_0_31_18_23 : label is 0;
  attribute ram_addr_end of file_register_reg_r2_0_31_18_23 : label is 31;
  attribute ram_slice_begin of file_register_reg_r2_0_31_18_23 : label is 18;
  attribute ram_slice_end of file_register_reg_r2_0_31_18_23 : label is 23;
  attribute METHODOLOGY_DRC_VIOS of file_register_reg_r2_0_31_24_29 : label is "";
  attribute ram_addr_begin of file_register_reg_r2_0_31_24_29 : label is 0;
  attribute ram_addr_end of file_register_reg_r2_0_31_24_29 : label is 31;
  attribute ram_slice_begin of file_register_reg_r2_0_31_24_29 : label is 24;
  attribute ram_slice_end of file_register_reg_r2_0_31_24_29 : label is 29;
  attribute METHODOLOGY_DRC_VIOS of file_register_reg_r2_0_31_30_31 : label is "";
  attribute ram_addr_begin of file_register_reg_r2_0_31_30_31 : label is 0;
  attribute ram_addr_end of file_register_reg_r2_0_31_30_31 : label is 31;
  attribute ram_slice_begin of file_register_reg_r2_0_31_30_31 : label is 30;
  attribute ram_slice_end of file_register_reg_r2_0_31_30_31 : label is 31;
  attribute METHODOLOGY_DRC_VIOS of file_register_reg_r2_0_31_6_11 : label is "";
  attribute ram_addr_begin of file_register_reg_r2_0_31_6_11 : label is 0;
  attribute ram_addr_end of file_register_reg_r2_0_31_6_11 : label is 31;
  attribute ram_slice_begin of file_register_reg_r2_0_31_6_11 : label is 6;
  attribute ram_slice_end of file_register_reg_r2_0_31_6_11 : label is 11;
begin
file_register_reg_r1_0_31_0_5: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4 downto 0) => ReadRegister1(4 downto 0),
      ADDRB(4 downto 0) => ReadRegister1(4 downto 0),
      ADDRC(4 downto 0) => ReadRegister1(4 downto 0),
      ADDRD(4 downto 0) => WriteRegister(4 downto 0),
      DIA(1 downto 0) => WriteData(1 downto 0),
      DIB(1 downto 0) => WriteData(3 downto 2),
      DIC(1 downto 0) => WriteData(5 downto 4),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => ReadData1(1 downto 0),
      DOB(1 downto 0) => ReadData1(3 downto 2),
      DOC(1 downto 0) => ReadData1(5 downto 4),
      DOD(1 downto 0) => NLW_file_register_reg_r1_0_31_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => EN
    );
file_register_reg_r1_0_31_12_17: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4 downto 0) => ReadRegister1(4 downto 0),
      ADDRB(4 downto 0) => ReadRegister1(4 downto 0),
      ADDRC(4 downto 0) => ReadRegister1(4 downto 0),
      ADDRD(4 downto 0) => WriteRegister(4 downto 0),
      DIA(1 downto 0) => WriteData(13 downto 12),
      DIB(1 downto 0) => WriteData(15 downto 14),
      DIC(1 downto 0) => WriteData(17 downto 16),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => ReadData1(13 downto 12),
      DOB(1 downto 0) => ReadData1(15 downto 14),
      DOC(1 downto 0) => ReadData1(17 downto 16),
      DOD(1 downto 0) => NLW_file_register_reg_r1_0_31_12_17_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => EN
    );
file_register_reg_r1_0_31_18_23: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4 downto 0) => ReadRegister1(4 downto 0),
      ADDRB(4 downto 0) => ReadRegister1(4 downto 0),
      ADDRC(4 downto 0) => ReadRegister1(4 downto 0),
      ADDRD(4 downto 0) => WriteRegister(4 downto 0),
      DIA(1 downto 0) => WriteData(19 downto 18),
      DIB(1 downto 0) => WriteData(21 downto 20),
      DIC(1 downto 0) => WriteData(23 downto 22),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => ReadData1(19 downto 18),
      DOB(1 downto 0) => ReadData1(21 downto 20),
      DOC(1 downto 0) => ReadData1(23 downto 22),
      DOD(1 downto 0) => NLW_file_register_reg_r1_0_31_18_23_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => EN
    );
file_register_reg_r1_0_31_24_29: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4 downto 0) => ReadRegister1(4 downto 0),
      ADDRB(4 downto 0) => ReadRegister1(4 downto 0),
      ADDRC(4 downto 0) => ReadRegister1(4 downto 0),
      ADDRD(4 downto 0) => WriteRegister(4 downto 0),
      DIA(1 downto 0) => WriteData(25 downto 24),
      DIB(1 downto 0) => WriteData(27 downto 26),
      DIC(1 downto 0) => WriteData(29 downto 28),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => ReadData1(25 downto 24),
      DOB(1 downto 0) => ReadData1(27 downto 26),
      DOC(1 downto 0) => ReadData1(29 downto 28),
      DOD(1 downto 0) => NLW_file_register_reg_r1_0_31_24_29_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => EN
    );
file_register_reg_r1_0_31_30_31: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4 downto 0) => ReadRegister1(4 downto 0),
      ADDRB(4 downto 0) => ReadRegister1(4 downto 0),
      ADDRC(4 downto 0) => ReadRegister1(4 downto 0),
      ADDRD(4 downto 0) => WriteRegister(4 downto 0),
      DIA(1 downto 0) => WriteData(31 downto 30),
      DIB(1 downto 0) => B"00",
      DIC(1 downto 0) => B"00",
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => ReadData1(31 downto 30),
      DOB(1 downto 0) => NLW_file_register_reg_r1_0_31_30_31_DOB_UNCONNECTED(1 downto 0),
      DOC(1 downto 0) => NLW_file_register_reg_r1_0_31_30_31_DOC_UNCONNECTED(1 downto 0),
      DOD(1 downto 0) => NLW_file_register_reg_r1_0_31_30_31_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => EN
    );
file_register_reg_r1_0_31_6_11: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4 downto 0) => ReadRegister1(4 downto 0),
      ADDRB(4 downto 0) => ReadRegister1(4 downto 0),
      ADDRC(4 downto 0) => ReadRegister1(4 downto 0),
      ADDRD(4 downto 0) => WriteRegister(4 downto 0),
      DIA(1 downto 0) => WriteData(7 downto 6),
      DIB(1 downto 0) => WriteData(9 downto 8),
      DIC(1 downto 0) => WriteData(11 downto 10),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => ReadData1(7 downto 6),
      DOB(1 downto 0) => ReadData1(9 downto 8),
      DOC(1 downto 0) => ReadData1(11 downto 10),
      DOD(1 downto 0) => NLW_file_register_reg_r1_0_31_6_11_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => EN
    );
file_register_reg_r2_0_31_0_5: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4 downto 0) => ReadRegister2(4 downto 0),
      ADDRB(4 downto 0) => ReadRegister2(4 downto 0),
      ADDRC(4 downto 0) => ReadRegister2(4 downto 0),
      ADDRD(4 downto 0) => WriteRegister(4 downto 0),
      DIA(1 downto 0) => WriteData(1 downto 0),
      DIB(1 downto 0) => WriteData(3 downto 2),
      DIC(1 downto 0) => WriteData(5 downto 4),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => ReadData2(1 downto 0),
      DOB(1 downto 0) => ReadData2(3 downto 2),
      DOC(1 downto 0) => ReadData2(5 downto 4),
      DOD(1 downto 0) => NLW_file_register_reg_r2_0_31_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => EN
    );
file_register_reg_r2_0_31_12_17: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4 downto 0) => ReadRegister2(4 downto 0),
      ADDRB(4 downto 0) => ReadRegister2(4 downto 0),
      ADDRC(4 downto 0) => ReadRegister2(4 downto 0),
      ADDRD(4 downto 0) => WriteRegister(4 downto 0),
      DIA(1 downto 0) => WriteData(13 downto 12),
      DIB(1 downto 0) => WriteData(15 downto 14),
      DIC(1 downto 0) => WriteData(17 downto 16),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => ReadData2(13 downto 12),
      DOB(1 downto 0) => ReadData2(15 downto 14),
      DOC(1 downto 0) => ReadData2(17 downto 16),
      DOD(1 downto 0) => NLW_file_register_reg_r2_0_31_12_17_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => EN
    );
file_register_reg_r2_0_31_18_23: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4 downto 0) => ReadRegister2(4 downto 0),
      ADDRB(4 downto 0) => ReadRegister2(4 downto 0),
      ADDRC(4 downto 0) => ReadRegister2(4 downto 0),
      ADDRD(4 downto 0) => WriteRegister(4 downto 0),
      DIA(1 downto 0) => WriteData(19 downto 18),
      DIB(1 downto 0) => WriteData(21 downto 20),
      DIC(1 downto 0) => WriteData(23 downto 22),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => ReadData2(19 downto 18),
      DOB(1 downto 0) => ReadData2(21 downto 20),
      DOC(1 downto 0) => ReadData2(23 downto 22),
      DOD(1 downto 0) => NLW_file_register_reg_r2_0_31_18_23_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => EN
    );
file_register_reg_r2_0_31_24_29: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4 downto 0) => ReadRegister2(4 downto 0),
      ADDRB(4 downto 0) => ReadRegister2(4 downto 0),
      ADDRC(4 downto 0) => ReadRegister2(4 downto 0),
      ADDRD(4 downto 0) => WriteRegister(4 downto 0),
      DIA(1 downto 0) => WriteData(25 downto 24),
      DIB(1 downto 0) => WriteData(27 downto 26),
      DIC(1 downto 0) => WriteData(29 downto 28),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => ReadData2(25 downto 24),
      DOB(1 downto 0) => ReadData2(27 downto 26),
      DOC(1 downto 0) => ReadData2(29 downto 28),
      DOD(1 downto 0) => NLW_file_register_reg_r2_0_31_24_29_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => EN
    );
file_register_reg_r2_0_31_30_31: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4 downto 0) => ReadRegister2(4 downto 0),
      ADDRB(4 downto 0) => ReadRegister2(4 downto 0),
      ADDRC(4 downto 0) => ReadRegister2(4 downto 0),
      ADDRD(4 downto 0) => WriteRegister(4 downto 0),
      DIA(1 downto 0) => WriteData(31 downto 30),
      DIB(1 downto 0) => B"00",
      DIC(1 downto 0) => B"00",
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => ReadData2(31 downto 30),
      DOB(1 downto 0) => NLW_file_register_reg_r2_0_31_30_31_DOB_UNCONNECTED(1 downto 0),
      DOC(1 downto 0) => NLW_file_register_reg_r2_0_31_30_31_DOC_UNCONNECTED(1 downto 0),
      DOD(1 downto 0) => NLW_file_register_reg_r2_0_31_30_31_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => EN
    );
file_register_reg_r2_0_31_6_11: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4 downto 0) => ReadRegister2(4 downto 0),
      ADDRB(4 downto 0) => ReadRegister2(4 downto 0),
      ADDRC(4 downto 0) => ReadRegister2(4 downto 0),
      ADDRD(4 downto 0) => WriteRegister(4 downto 0),
      DIA(1 downto 0) => WriteData(7 downto 6),
      DIB(1 downto 0) => WriteData(9 downto 8),
      DIC(1 downto 0) => WriteData(11 downto 10),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => ReadData2(7 downto 6),
      DOB(1 downto 0) => ReadData2(9 downto 8),
      DOC(1 downto 0) => ReadData2(11 downto 10),
      DOD(1 downto 0) => NLW_file_register_reg_r2_0_31_6_11_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => EN
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MIPS_Design_MIPS_Design_IM_0_0 is
  port (
    clk : in STD_LOGIC;
    ReadAddress : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ReadData : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of MIPS_Design_MIPS_Design_IM_0_0 : entity is "MIPS_Design_IM_0_0,IM,{}";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of MIPS_Design_MIPS_Design_IM_0_0 : entity is "MIPS_Design_IM_0_0";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of MIPS_Design_MIPS_Design_IM_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of MIPS_Design_MIPS_Design_IM_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of MIPS_Design_MIPS_Design_IM_0_0 : entity is "IM,Vivado 2018.3";
end MIPS_Design_MIPS_Design_IM_0_0;

architecture STRUCTURE of MIPS_Design_MIPS_Design_IM_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^readdata\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \ReadData[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN MIPS_Design_clk, INSERT_VIP 0";
begin
  ReadData(31) <= \<const0>\;
  ReadData(30) <= \<const0>\;
  ReadData(29) <= \<const0>\;
  ReadData(28) <= \<const0>\;
  ReadData(27) <= \<const0>\;
  ReadData(26) <= \<const0>\;
  ReadData(25) <= \<const0>\;
  ReadData(24) <= \<const0>\;
  ReadData(23) <= \<const0>\;
  ReadData(22) <= \<const0>\;
  ReadData(21) <= \<const0>\;
  ReadData(20) <= \<const0>\;
  ReadData(19) <= \<const0>\;
  ReadData(18) <= \<const0>\;
  ReadData(17) <= \<const0>\;
  ReadData(16) <= \<const0>\;
  ReadData(15) <= \<const0>\;
  ReadData(14) <= \<const0>\;
  ReadData(13) <= \<const0>\;
  ReadData(12) <= \<const0>\;
  ReadData(11) <= \<const0>\;
  ReadData(10) <= \<const0>\;
  ReadData(9) <= \<const0>\;
  ReadData(8) <= \<const0>\;
  ReadData(7) <= \<const0>\;
  ReadData(6) <= \<const0>\;
  ReadData(5) <= \<const0>\;
  ReadData(4) <= \<const0>\;
  ReadData(3) <= \<const0>\;
  ReadData(2) <= \<const0>\;
  ReadData(1) <= \<const0>\;
  ReadData(0) <= \^readdata\(0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\ReadData[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \ReadData[0]_INST_0_i_1_n_0\,
      I1 => ReadAddress(5),
      O => \^readdata\(0)
    );
\ReadData[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => ReadAddress(4),
      I1 => ReadAddress(2),
      I2 => ReadAddress(0),
      I3 => ReadAddress(1),
      I4 => ReadAddress(3),
      I5 => ReadAddress(6),
      O => \ReadData[0]_INST_0_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MIPS_Design_MIPS_Design_Sign_Extention_0_0 is
  port (
    DataIn : in STD_LOGIC_VECTOR ( 15 downto 0 );
    DataOut : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of MIPS_Design_MIPS_Design_Sign_Extention_0_0 : entity is "MIPS_Design_Sign_Extention_0_0,Sign_Extention,{}";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of MIPS_Design_MIPS_Design_Sign_Extention_0_0 : entity is "MIPS_Design_Sign_Extention_0_0";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of MIPS_Design_MIPS_Design_Sign_Extention_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of MIPS_Design_MIPS_Design_Sign_Extention_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of MIPS_Design_MIPS_Design_Sign_Extention_0_0 : entity is "Sign_Extention,Vivado 2018.3";
end MIPS_Design_MIPS_Design_Sign_Extention_0_0;

architecture STRUCTURE of MIPS_Design_MIPS_Design_Sign_Extention_0_0 is
  signal \^datain\ : STD_LOGIC_VECTOR ( 15 downto 0 );
begin
  DataOut(31) <= \^datain\(15);
  DataOut(30) <= \^datain\(15);
  DataOut(29) <= \^datain\(15);
  DataOut(28) <= \^datain\(15);
  DataOut(27) <= \^datain\(15);
  DataOut(26) <= \^datain\(15);
  DataOut(25) <= \^datain\(15);
  DataOut(24) <= \^datain\(15);
  DataOut(23) <= \^datain\(15);
  DataOut(22) <= \^datain\(15);
  DataOut(21) <= \^datain\(15);
  DataOut(20) <= \^datain\(15);
  DataOut(19) <= \^datain\(15);
  DataOut(18) <= \^datain\(15);
  DataOut(17) <= \^datain\(15);
  DataOut(16) <= \^datain\(15);
  DataOut(15 downto 0) <= \^datain\(15 downto 0);
  \^datain\(15 downto 0) <= DataIn(15 downto 0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MIPS_Design_MIPS_Design_util_vector_logic_0_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Op2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of MIPS_Design_MIPS_Design_util_vector_logic_0_0 : entity is "MIPS_Design_util_vector_logic_0_0,util_vector_logic_v2_0_1_util_vector_logic,{}";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of MIPS_Design_MIPS_Design_util_vector_logic_0_0 : entity is "MIPS_Design_util_vector_logic_0_0";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of MIPS_Design_MIPS_Design_util_vector_logic_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of MIPS_Design_MIPS_Design_util_vector_logic_0_0 : entity is "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2018.3";
end MIPS_Design_MIPS_Design_util_vector_logic_0_0;

architecture STRUCTURE of MIPS_Design_MIPS_Design_util_vector_logic_0_0 is
begin
\Res[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Op1(0),
      I1 => Op2(0),
      O => Res(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MIPS_Design_PC is
  port (
    DataOut : out STD_LOGIC_VECTOR ( 29 downto 0 );
    DataIn : in STD_LOGIC_VECTOR ( 29 downto 0 );
    rst : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of MIPS_Design_PC : entity is "PC";
end MIPS_Design_PC;

architecture STRUCTURE of MIPS_Design_PC is
  signal \DataOut_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \DataOut_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \DataOut_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \DataOut_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \DataOut_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \DataOut_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \DataOut_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \DataOut_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \DataOut_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \DataOut_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \DataOut_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \DataOut_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \DataOut_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \DataOut_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \DataOut_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \DataOut_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \DataOut_reg[28]_i_1_n_0\ : STD_LOGIC;
  signal \DataOut_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \DataOut_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \DataOut_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \DataOut_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \DataOut_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \DataOut_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \DataOut_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \DataOut_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \DataOut_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \DataOut_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \DataOut_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \NLW_DataOut_reg[29]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DataOut_reg[29]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
begin
\DataOut[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DataIn(0),
      O => plusOp(0)
    );
\DataOut_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => plusOp(0),
      Q => DataOut(0),
      R => rst
    );
\DataOut_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => plusOp(10),
      Q => DataOut(10),
      R => rst
    );
\DataOut_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => plusOp(11),
      Q => DataOut(11),
      R => rst
    );
\DataOut_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => plusOp(12),
      Q => DataOut(12),
      R => rst
    );
\DataOut_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \DataOut_reg[8]_i_1_n_0\,
      CO(3) => \DataOut_reg[12]_i_1_n_0\,
      CO(2) => \DataOut_reg[12]_i_1_n_1\,
      CO(1) => \DataOut_reg[12]_i_1_n_2\,
      CO(0) => \DataOut_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(12 downto 9),
      S(3 downto 0) => DataIn(12 downto 9)
    );
\DataOut_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => plusOp(13),
      Q => DataOut(13),
      R => rst
    );
\DataOut_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => plusOp(14),
      Q => DataOut(14),
      R => rst
    );
\DataOut_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => plusOp(15),
      Q => DataOut(15),
      R => rst
    );
\DataOut_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => plusOp(16),
      Q => DataOut(16),
      R => rst
    );
\DataOut_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \DataOut_reg[12]_i_1_n_0\,
      CO(3) => \DataOut_reg[16]_i_1_n_0\,
      CO(2) => \DataOut_reg[16]_i_1_n_1\,
      CO(1) => \DataOut_reg[16]_i_1_n_2\,
      CO(0) => \DataOut_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(16 downto 13),
      S(3 downto 0) => DataIn(16 downto 13)
    );
\DataOut_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => plusOp(17),
      Q => DataOut(17),
      R => rst
    );
\DataOut_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => plusOp(18),
      Q => DataOut(18),
      R => rst
    );
\DataOut_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => plusOp(19),
      Q => DataOut(19),
      R => rst
    );
\DataOut_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => plusOp(1),
      Q => DataOut(1),
      R => rst
    );
\DataOut_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => plusOp(20),
      Q => DataOut(20),
      R => rst
    );
\DataOut_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \DataOut_reg[16]_i_1_n_0\,
      CO(3) => \DataOut_reg[20]_i_1_n_0\,
      CO(2) => \DataOut_reg[20]_i_1_n_1\,
      CO(1) => \DataOut_reg[20]_i_1_n_2\,
      CO(0) => \DataOut_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(20 downto 17),
      S(3 downto 0) => DataIn(20 downto 17)
    );
\DataOut_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => plusOp(21),
      Q => DataOut(21),
      R => rst
    );
\DataOut_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => plusOp(22),
      Q => DataOut(22),
      R => rst
    );
\DataOut_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => plusOp(23),
      Q => DataOut(23),
      R => rst
    );
\DataOut_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => plusOp(24),
      Q => DataOut(24),
      R => rst
    );
\DataOut_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \DataOut_reg[20]_i_1_n_0\,
      CO(3) => \DataOut_reg[24]_i_1_n_0\,
      CO(2) => \DataOut_reg[24]_i_1_n_1\,
      CO(1) => \DataOut_reg[24]_i_1_n_2\,
      CO(0) => \DataOut_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(24 downto 21),
      S(3 downto 0) => DataIn(24 downto 21)
    );
\DataOut_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => plusOp(25),
      Q => DataOut(25),
      R => rst
    );
\DataOut_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => plusOp(26),
      Q => DataOut(26),
      R => rst
    );
\DataOut_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => plusOp(27),
      Q => DataOut(27),
      R => rst
    );
\DataOut_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => plusOp(28),
      Q => DataOut(28),
      R => rst
    );
\DataOut_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \DataOut_reg[24]_i_1_n_0\,
      CO(3) => \DataOut_reg[28]_i_1_n_0\,
      CO(2) => \DataOut_reg[28]_i_1_n_1\,
      CO(1) => \DataOut_reg[28]_i_1_n_2\,
      CO(0) => \DataOut_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(28 downto 25),
      S(3 downto 0) => DataIn(28 downto 25)
    );
\DataOut_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => plusOp(29),
      Q => DataOut(29),
      R => rst
    );
\DataOut_reg[29]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \DataOut_reg[28]_i_1_n_0\,
      CO(3 downto 0) => \NLW_DataOut_reg[29]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_DataOut_reg[29]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => plusOp(29),
      S(3 downto 1) => B"000",
      S(0) => DataIn(29)
    );
\DataOut_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => plusOp(2),
      Q => DataOut(2),
      R => rst
    );
\DataOut_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => plusOp(3),
      Q => DataOut(3),
      R => rst
    );
\DataOut_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => plusOp(4),
      Q => DataOut(4),
      R => rst
    );
\DataOut_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \DataOut_reg[4]_i_1_n_0\,
      CO(2) => \DataOut_reg[4]_i_1_n_1\,
      CO(1) => \DataOut_reg[4]_i_1_n_2\,
      CO(0) => \DataOut_reg[4]_i_1_n_3\,
      CYINIT => DataIn(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(4 downto 1),
      S(3 downto 0) => DataIn(4 downto 1)
    );
\DataOut_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => plusOp(5),
      Q => DataOut(5),
      R => rst
    );
\DataOut_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => plusOp(6),
      Q => DataOut(6),
      R => rst
    );
\DataOut_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => plusOp(7),
      Q => DataOut(7),
      R => rst
    );
\DataOut_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => plusOp(8),
      Q => DataOut(8),
      R => rst
    );
\DataOut_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \DataOut_reg[4]_i_1_n_0\,
      CO(3) => \DataOut_reg[8]_i_1_n_0\,
      CO(2) => \DataOut_reg[8]_i_1_n_1\,
      CO(1) => \DataOut_reg[8]_i_1_n_2\,
      CO(0) => \DataOut_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(8 downto 5),
      S(3 downto 0) => DataIn(8 downto 5)
    );
\DataOut_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => plusOp(9),
      Q => DataOut(9),
      R => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MIPS_Design_PC_Adder is
  port (
    PC_New_Data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    PC_Data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Signextention_data : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of MIPS_Design_PC_Adder : entity is "PC_Adder";
end MIPS_Design_PC_Adder;

architecture STRUCTURE of MIPS_Design_PC_Adder is
  signal \PC_New_Data[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \PC_New_Data[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \PC_New_Data[0]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \PC_New_Data[0]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \PC_New_Data[0]_INST_0_n_0\ : STD_LOGIC;
  signal \PC_New_Data[0]_INST_0_n_1\ : STD_LOGIC;
  signal \PC_New_Data[0]_INST_0_n_2\ : STD_LOGIC;
  signal \PC_New_Data[0]_INST_0_n_3\ : STD_LOGIC;
  signal \PC_New_Data[12]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \PC_New_Data[12]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \PC_New_Data[12]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \PC_New_Data[12]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \PC_New_Data[12]_INST_0_n_0\ : STD_LOGIC;
  signal \PC_New_Data[12]_INST_0_n_1\ : STD_LOGIC;
  signal \PC_New_Data[12]_INST_0_n_2\ : STD_LOGIC;
  signal \PC_New_Data[12]_INST_0_n_3\ : STD_LOGIC;
  signal \PC_New_Data[16]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \PC_New_Data[16]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \PC_New_Data[16]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \PC_New_Data[16]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \PC_New_Data[16]_INST_0_n_0\ : STD_LOGIC;
  signal \PC_New_Data[16]_INST_0_n_1\ : STD_LOGIC;
  signal \PC_New_Data[16]_INST_0_n_2\ : STD_LOGIC;
  signal \PC_New_Data[16]_INST_0_n_3\ : STD_LOGIC;
  signal \PC_New_Data[20]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \PC_New_Data[20]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \PC_New_Data[20]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \PC_New_Data[20]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \PC_New_Data[20]_INST_0_n_0\ : STD_LOGIC;
  signal \PC_New_Data[20]_INST_0_n_1\ : STD_LOGIC;
  signal \PC_New_Data[20]_INST_0_n_2\ : STD_LOGIC;
  signal \PC_New_Data[20]_INST_0_n_3\ : STD_LOGIC;
  signal \PC_New_Data[24]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \PC_New_Data[24]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \PC_New_Data[24]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \PC_New_Data[24]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \PC_New_Data[24]_INST_0_n_0\ : STD_LOGIC;
  signal \PC_New_Data[24]_INST_0_n_1\ : STD_LOGIC;
  signal \PC_New_Data[24]_INST_0_n_2\ : STD_LOGIC;
  signal \PC_New_Data[24]_INST_0_n_3\ : STD_LOGIC;
  signal \PC_New_Data[28]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \PC_New_Data[28]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \PC_New_Data[28]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \PC_New_Data[28]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \PC_New_Data[28]_INST_0_n_1\ : STD_LOGIC;
  signal \PC_New_Data[28]_INST_0_n_2\ : STD_LOGIC;
  signal \PC_New_Data[28]_INST_0_n_3\ : STD_LOGIC;
  signal \PC_New_Data[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \PC_New_Data[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \PC_New_Data[4]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \PC_New_Data[4]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \PC_New_Data[4]_INST_0_n_0\ : STD_LOGIC;
  signal \PC_New_Data[4]_INST_0_n_1\ : STD_LOGIC;
  signal \PC_New_Data[4]_INST_0_n_2\ : STD_LOGIC;
  signal \PC_New_Data[4]_INST_0_n_3\ : STD_LOGIC;
  signal \PC_New_Data[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \PC_New_Data[8]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \PC_New_Data[8]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \PC_New_Data[8]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \PC_New_Data[8]_INST_0_n_0\ : STD_LOGIC;
  signal \PC_New_Data[8]_INST_0_n_1\ : STD_LOGIC;
  signal \PC_New_Data[8]_INST_0_n_2\ : STD_LOGIC;
  signal \PC_New_Data[8]_INST_0_n_3\ : STD_LOGIC;
  signal \NLW_PC_New_Data[28]_INST_0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
\PC_New_Data[0]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \PC_New_Data[0]_INST_0_n_0\,
      CO(2) => \PC_New_Data[0]_INST_0_n_1\,
      CO(1) => \PC_New_Data[0]_INST_0_n_2\,
      CO(0) => \PC_New_Data[0]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => PC_Data(3 downto 0),
      O(3 downto 0) => PC_New_Data(3 downto 0),
      S(3) => \PC_New_Data[0]_INST_0_i_1_n_0\,
      S(2) => \PC_New_Data[0]_INST_0_i_2_n_0\,
      S(1) => \PC_New_Data[0]_INST_0_i_3_n_0\,
      S(0) => \PC_New_Data[0]_INST_0_i_4_n_0\
    );
\PC_New_Data[0]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => PC_Data(3),
      I1 => Signextention_data(3),
      O => \PC_New_Data[0]_INST_0_i_1_n_0\
    );
\PC_New_Data[0]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => PC_Data(2),
      I1 => Signextention_data(2),
      O => \PC_New_Data[0]_INST_0_i_2_n_0\
    );
\PC_New_Data[0]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => PC_Data(1),
      I1 => Signextention_data(1),
      O => \PC_New_Data[0]_INST_0_i_3_n_0\
    );
\PC_New_Data[0]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => PC_Data(0),
      I1 => Signextention_data(0),
      O => \PC_New_Data[0]_INST_0_i_4_n_0\
    );
\PC_New_Data[12]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \PC_New_Data[8]_INST_0_n_0\,
      CO(3) => \PC_New_Data[12]_INST_0_n_0\,
      CO(2) => \PC_New_Data[12]_INST_0_n_1\,
      CO(1) => \PC_New_Data[12]_INST_0_n_2\,
      CO(0) => \PC_New_Data[12]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => PC_Data(15 downto 12),
      O(3 downto 0) => PC_New_Data(15 downto 12),
      S(3) => \PC_New_Data[12]_INST_0_i_1_n_0\,
      S(2) => \PC_New_Data[12]_INST_0_i_2_n_0\,
      S(1) => \PC_New_Data[12]_INST_0_i_3_n_0\,
      S(0) => \PC_New_Data[12]_INST_0_i_4_n_0\
    );
\PC_New_Data[12]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => PC_Data(15),
      I1 => Signextention_data(15),
      O => \PC_New_Data[12]_INST_0_i_1_n_0\
    );
\PC_New_Data[12]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => PC_Data(14),
      I1 => Signextention_data(14),
      O => \PC_New_Data[12]_INST_0_i_2_n_0\
    );
\PC_New_Data[12]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => PC_Data(13),
      I1 => Signextention_data(13),
      O => \PC_New_Data[12]_INST_0_i_3_n_0\
    );
\PC_New_Data[12]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => PC_Data(12),
      I1 => Signextention_data(12),
      O => \PC_New_Data[12]_INST_0_i_4_n_0\
    );
\PC_New_Data[16]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \PC_New_Data[12]_INST_0_n_0\,
      CO(3) => \PC_New_Data[16]_INST_0_n_0\,
      CO(2) => \PC_New_Data[16]_INST_0_n_1\,
      CO(1) => \PC_New_Data[16]_INST_0_n_2\,
      CO(0) => \PC_New_Data[16]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => PC_Data(19 downto 16),
      O(3 downto 0) => PC_New_Data(19 downto 16),
      S(3) => \PC_New_Data[16]_INST_0_i_1_n_0\,
      S(2) => \PC_New_Data[16]_INST_0_i_2_n_0\,
      S(1) => \PC_New_Data[16]_INST_0_i_3_n_0\,
      S(0) => \PC_New_Data[16]_INST_0_i_4_n_0\
    );
\PC_New_Data[16]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => PC_Data(19),
      I1 => Signextention_data(19),
      O => \PC_New_Data[16]_INST_0_i_1_n_0\
    );
\PC_New_Data[16]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => PC_Data(18),
      I1 => Signextention_data(18),
      O => \PC_New_Data[16]_INST_0_i_2_n_0\
    );
\PC_New_Data[16]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => PC_Data(17),
      I1 => Signextention_data(17),
      O => \PC_New_Data[16]_INST_0_i_3_n_0\
    );
\PC_New_Data[16]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => PC_Data(16),
      I1 => Signextention_data(16),
      O => \PC_New_Data[16]_INST_0_i_4_n_0\
    );
\PC_New_Data[20]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \PC_New_Data[16]_INST_0_n_0\,
      CO(3) => \PC_New_Data[20]_INST_0_n_0\,
      CO(2) => \PC_New_Data[20]_INST_0_n_1\,
      CO(1) => \PC_New_Data[20]_INST_0_n_2\,
      CO(0) => \PC_New_Data[20]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => PC_Data(23 downto 20),
      O(3 downto 0) => PC_New_Data(23 downto 20),
      S(3) => \PC_New_Data[20]_INST_0_i_1_n_0\,
      S(2) => \PC_New_Data[20]_INST_0_i_2_n_0\,
      S(1) => \PC_New_Data[20]_INST_0_i_3_n_0\,
      S(0) => \PC_New_Data[20]_INST_0_i_4_n_0\
    );
\PC_New_Data[20]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => PC_Data(23),
      I1 => Signextention_data(23),
      O => \PC_New_Data[20]_INST_0_i_1_n_0\
    );
\PC_New_Data[20]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => PC_Data(22),
      I1 => Signextention_data(22),
      O => \PC_New_Data[20]_INST_0_i_2_n_0\
    );
\PC_New_Data[20]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => PC_Data(21),
      I1 => Signextention_data(21),
      O => \PC_New_Data[20]_INST_0_i_3_n_0\
    );
\PC_New_Data[20]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => PC_Data(20),
      I1 => Signextention_data(20),
      O => \PC_New_Data[20]_INST_0_i_4_n_0\
    );
\PC_New_Data[24]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \PC_New_Data[20]_INST_0_n_0\,
      CO(3) => \PC_New_Data[24]_INST_0_n_0\,
      CO(2) => \PC_New_Data[24]_INST_0_n_1\,
      CO(1) => \PC_New_Data[24]_INST_0_n_2\,
      CO(0) => \PC_New_Data[24]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => PC_Data(27 downto 24),
      O(3 downto 0) => PC_New_Data(27 downto 24),
      S(3) => \PC_New_Data[24]_INST_0_i_1_n_0\,
      S(2) => \PC_New_Data[24]_INST_0_i_2_n_0\,
      S(1) => \PC_New_Data[24]_INST_0_i_3_n_0\,
      S(0) => \PC_New_Data[24]_INST_0_i_4_n_0\
    );
\PC_New_Data[24]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => PC_Data(27),
      I1 => Signextention_data(27),
      O => \PC_New_Data[24]_INST_0_i_1_n_0\
    );
\PC_New_Data[24]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => PC_Data(26),
      I1 => Signextention_data(26),
      O => \PC_New_Data[24]_INST_0_i_2_n_0\
    );
\PC_New_Data[24]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => PC_Data(25),
      I1 => Signextention_data(25),
      O => \PC_New_Data[24]_INST_0_i_3_n_0\
    );
\PC_New_Data[24]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => PC_Data(24),
      I1 => Signextention_data(24),
      O => \PC_New_Data[24]_INST_0_i_4_n_0\
    );
\PC_New_Data[28]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \PC_New_Data[24]_INST_0_n_0\,
      CO(3) => \NLW_PC_New_Data[28]_INST_0_CO_UNCONNECTED\(3),
      CO(2) => \PC_New_Data[28]_INST_0_n_1\,
      CO(1) => \PC_New_Data[28]_INST_0_n_2\,
      CO(0) => \PC_New_Data[28]_INST_0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => PC_Data(30 downto 28),
      O(3 downto 0) => PC_New_Data(31 downto 28),
      S(3) => \PC_New_Data[28]_INST_0_i_1_n_0\,
      S(2) => \PC_New_Data[28]_INST_0_i_2_n_0\,
      S(1) => \PC_New_Data[28]_INST_0_i_3_n_0\,
      S(0) => \PC_New_Data[28]_INST_0_i_4_n_0\
    );
\PC_New_Data[28]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => PC_Data(31),
      I1 => Signextention_data(31),
      O => \PC_New_Data[28]_INST_0_i_1_n_0\
    );
\PC_New_Data[28]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => PC_Data(30),
      I1 => Signextention_data(30),
      O => \PC_New_Data[28]_INST_0_i_2_n_0\
    );
\PC_New_Data[28]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => PC_Data(29),
      I1 => Signextention_data(29),
      O => \PC_New_Data[28]_INST_0_i_3_n_0\
    );
\PC_New_Data[28]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => PC_Data(28),
      I1 => Signextention_data(28),
      O => \PC_New_Data[28]_INST_0_i_4_n_0\
    );
\PC_New_Data[4]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \PC_New_Data[0]_INST_0_n_0\,
      CO(3) => \PC_New_Data[4]_INST_0_n_0\,
      CO(2) => \PC_New_Data[4]_INST_0_n_1\,
      CO(1) => \PC_New_Data[4]_INST_0_n_2\,
      CO(0) => \PC_New_Data[4]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => PC_Data(7 downto 4),
      O(3 downto 0) => PC_New_Data(7 downto 4),
      S(3) => \PC_New_Data[4]_INST_0_i_1_n_0\,
      S(2) => \PC_New_Data[4]_INST_0_i_2_n_0\,
      S(1) => \PC_New_Data[4]_INST_0_i_3_n_0\,
      S(0) => \PC_New_Data[4]_INST_0_i_4_n_0\
    );
\PC_New_Data[4]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => PC_Data(7),
      I1 => Signextention_data(7),
      O => \PC_New_Data[4]_INST_0_i_1_n_0\
    );
\PC_New_Data[4]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => PC_Data(6),
      I1 => Signextention_data(6),
      O => \PC_New_Data[4]_INST_0_i_2_n_0\
    );
\PC_New_Data[4]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => PC_Data(5),
      I1 => Signextention_data(5),
      O => \PC_New_Data[4]_INST_0_i_3_n_0\
    );
\PC_New_Data[4]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => PC_Data(4),
      I1 => Signextention_data(4),
      O => \PC_New_Data[4]_INST_0_i_4_n_0\
    );
\PC_New_Data[8]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \PC_New_Data[4]_INST_0_n_0\,
      CO(3) => \PC_New_Data[8]_INST_0_n_0\,
      CO(2) => \PC_New_Data[8]_INST_0_n_1\,
      CO(1) => \PC_New_Data[8]_INST_0_n_2\,
      CO(0) => \PC_New_Data[8]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => PC_Data(11 downto 8),
      O(3 downto 0) => PC_New_Data(11 downto 8),
      S(3) => \PC_New_Data[8]_INST_0_i_1_n_0\,
      S(2) => \PC_New_Data[8]_INST_0_i_2_n_0\,
      S(1) => \PC_New_Data[8]_INST_0_i_3_n_0\,
      S(0) => \PC_New_Data[8]_INST_0_i_4_n_0\
    );
\PC_New_Data[8]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => PC_Data(11),
      I1 => Signextention_data(11),
      O => \PC_New_Data[8]_INST_0_i_1_n_0\
    );
\PC_New_Data[8]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => PC_Data(10),
      I1 => Signextention_data(10),
      O => \PC_New_Data[8]_INST_0_i_2_n_0\
    );
\PC_New_Data[8]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => PC_Data(9),
      I1 => Signextention_data(9),
      O => \PC_New_Data[8]_INST_0_i_3_n_0\
    );
\PC_New_Data[8]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => PC_Data(8),
      I1 => Signextention_data(8),
      O => \PC_New_Data[8]_INST_0_i_4_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MIPS_Design_mux_2x1 is
  port (
    DataOut : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Data2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Data1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Selector : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of MIPS_Design_mux_2x1 : entity is "mux_2x1";
end MIPS_Design_mux_2x1;

architecture STRUCTURE of MIPS_Design_mux_2x1 is
begin
\DataOut[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Data2(0),
      I1 => Data1(0),
      I2 => Selector,
      O => DataOut(0)
    );
\DataOut[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Data2(10),
      I1 => Data1(10),
      I2 => Selector,
      O => DataOut(10)
    );
\DataOut[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Data2(11),
      I1 => Data1(11),
      I2 => Selector,
      O => DataOut(11)
    );
\DataOut[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Data2(12),
      I1 => Data1(12),
      I2 => Selector,
      O => DataOut(12)
    );
\DataOut[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Data2(13),
      I1 => Data1(13),
      I2 => Selector,
      O => DataOut(13)
    );
\DataOut[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Data2(14),
      I1 => Data1(14),
      I2 => Selector,
      O => DataOut(14)
    );
\DataOut[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Data2(15),
      I1 => Data1(15),
      I2 => Selector,
      O => DataOut(15)
    );
\DataOut[16]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Data2(16),
      I1 => Data1(16),
      I2 => Selector,
      O => DataOut(16)
    );
\DataOut[17]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Data2(17),
      I1 => Data1(17),
      I2 => Selector,
      O => DataOut(17)
    );
\DataOut[18]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Data2(18),
      I1 => Data1(18),
      I2 => Selector,
      O => DataOut(18)
    );
\DataOut[19]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Data2(19),
      I1 => Data1(19),
      I2 => Selector,
      O => DataOut(19)
    );
\DataOut[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Data2(1),
      I1 => Data1(1),
      I2 => Selector,
      O => DataOut(1)
    );
\DataOut[20]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Data2(20),
      I1 => Data1(20),
      I2 => Selector,
      O => DataOut(20)
    );
\DataOut[21]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Data2(21),
      I1 => Data1(21),
      I2 => Selector,
      O => DataOut(21)
    );
\DataOut[22]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Data2(22),
      I1 => Data1(22),
      I2 => Selector,
      O => DataOut(22)
    );
\DataOut[23]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Data2(23),
      I1 => Data1(23),
      I2 => Selector,
      O => DataOut(23)
    );
\DataOut[24]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Data2(24),
      I1 => Data1(24),
      I2 => Selector,
      O => DataOut(24)
    );
\DataOut[25]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Data2(25),
      I1 => Data1(25),
      I2 => Selector,
      O => DataOut(25)
    );
\DataOut[26]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Data2(26),
      I1 => Data1(26),
      I2 => Selector,
      O => DataOut(26)
    );
\DataOut[27]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Data2(27),
      I1 => Data1(27),
      I2 => Selector,
      O => DataOut(27)
    );
\DataOut[28]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Data2(28),
      I1 => Data1(28),
      I2 => Selector,
      O => DataOut(28)
    );
\DataOut[29]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Data2(29),
      I1 => Data1(29),
      I2 => Selector,
      O => DataOut(29)
    );
\DataOut[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Data2(2),
      I1 => Data1(2),
      I2 => Selector,
      O => DataOut(2)
    );
\DataOut[30]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Data2(30),
      I1 => Data1(30),
      I2 => Selector,
      O => DataOut(30)
    );
\DataOut[31]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Data2(31),
      I1 => Data1(31),
      I2 => Selector,
      O => DataOut(31)
    );
\DataOut[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Data2(3),
      I1 => Data1(3),
      I2 => Selector,
      O => DataOut(3)
    );
\DataOut[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Data2(4),
      I1 => Data1(4),
      I2 => Selector,
      O => DataOut(4)
    );
\DataOut[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Data2(5),
      I1 => Data1(5),
      I2 => Selector,
      O => DataOut(5)
    );
\DataOut[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Data2(6),
      I1 => Data1(6),
      I2 => Selector,
      O => DataOut(6)
    );
\DataOut[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Data2(7),
      I1 => Data1(7),
      I2 => Selector,
      O => DataOut(7)
    );
\DataOut[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Data2(8),
      I1 => Data1(8),
      I2 => Selector,
      O => DataOut(8)
    );
\DataOut[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Data2(9),
      I1 => Data1(9),
      I2 => Selector,
      O => DataOut(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MIPS_Design_mux_2x1_0 is
  port (
    DataOut : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Data2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Data1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Selector : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of MIPS_Design_mux_2x1_0 : entity is "mux_2x1";
end MIPS_Design_mux_2x1_0;

architecture STRUCTURE of MIPS_Design_mux_2x1_0 is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \DataOut[30]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \DataOut[31]_INST_0\ : label is "soft_lutpair11";
begin
\DataOut[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Data2(0),
      I1 => Data1(0),
      I2 => Selector,
      O => DataOut(0)
    );
\DataOut[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Data2(10),
      I1 => Data1(10),
      I2 => Selector,
      O => DataOut(10)
    );
\DataOut[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Data2(11),
      I1 => Data1(11),
      I2 => Selector,
      O => DataOut(11)
    );
\DataOut[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Data2(12),
      I1 => Data1(12),
      I2 => Selector,
      O => DataOut(12)
    );
\DataOut[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Data2(13),
      I1 => Data1(13),
      I2 => Selector,
      O => DataOut(13)
    );
\DataOut[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Data2(14),
      I1 => Data1(14),
      I2 => Selector,
      O => DataOut(14)
    );
\DataOut[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Data2(15),
      I1 => Data1(15),
      I2 => Selector,
      O => DataOut(15)
    );
\DataOut[16]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Data2(16),
      I1 => Data1(16),
      I2 => Selector,
      O => DataOut(16)
    );
\DataOut[17]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Data2(17),
      I1 => Data1(17),
      I2 => Selector,
      O => DataOut(17)
    );
\DataOut[18]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Data2(18),
      I1 => Data1(18),
      I2 => Selector,
      O => DataOut(18)
    );
\DataOut[19]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Data2(19),
      I1 => Data1(19),
      I2 => Selector,
      O => DataOut(19)
    );
\DataOut[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Data2(1),
      I1 => Data1(1),
      I2 => Selector,
      O => DataOut(1)
    );
\DataOut[20]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Data2(20),
      I1 => Data1(20),
      I2 => Selector,
      O => DataOut(20)
    );
\DataOut[21]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Data2(21),
      I1 => Data1(21),
      I2 => Selector,
      O => DataOut(21)
    );
\DataOut[22]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Data2(22),
      I1 => Data1(22),
      I2 => Selector,
      O => DataOut(22)
    );
\DataOut[23]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Data2(23),
      I1 => Data1(23),
      I2 => Selector,
      O => DataOut(23)
    );
\DataOut[24]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Data2(24),
      I1 => Data1(24),
      I2 => Selector,
      O => DataOut(24)
    );
\DataOut[25]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Data2(25),
      I1 => Data1(25),
      I2 => Selector,
      O => DataOut(25)
    );
\DataOut[26]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Data2(26),
      I1 => Data1(26),
      I2 => Selector,
      O => DataOut(26)
    );
\DataOut[27]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Data2(27),
      I1 => Data1(27),
      I2 => Selector,
      O => DataOut(27)
    );
\DataOut[28]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Data2(28),
      I1 => Data1(28),
      I2 => Selector,
      O => DataOut(28)
    );
\DataOut[29]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Data2(29),
      I1 => Data1(29),
      I2 => Selector,
      O => DataOut(29)
    );
\DataOut[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Data2(2),
      I1 => Data1(2),
      I2 => Selector,
      O => DataOut(2)
    );
\DataOut[30]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Data2(30),
      I1 => Data1(30),
      I2 => Selector,
      O => DataOut(30)
    );
\DataOut[31]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Data2(31),
      I1 => Data1(31),
      I2 => Selector,
      O => DataOut(31)
    );
\DataOut[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Data2(3),
      I1 => Data1(3),
      I2 => Selector,
      O => DataOut(3)
    );
\DataOut[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Data2(4),
      I1 => Data1(4),
      I2 => Selector,
      O => DataOut(4)
    );
\DataOut[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Data2(5),
      I1 => Data1(5),
      I2 => Selector,
      O => DataOut(5)
    );
\DataOut[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Data2(6),
      I1 => Data1(6),
      I2 => Selector,
      O => DataOut(6)
    );
\DataOut[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Data2(7),
      I1 => Data1(7),
      I2 => Selector,
      O => DataOut(7)
    );
\DataOut[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Data2(8),
      I1 => Data1(8),
      I2 => Selector,
      O => DataOut(8)
    );
\DataOut[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Data2(9),
      I1 => Data1(9),
      I2 => Selector,
      O => DataOut(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MIPS_Design_mux_2x1_1 is
  port (
    DataOut : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Data2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Data1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Selector : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of MIPS_Design_mux_2x1_1 : entity is "mux_2x1";
end MIPS_Design_mux_2x1_1;

architecture STRUCTURE of MIPS_Design_mux_2x1_1 is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \DataOut[16]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \DataOut[17]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \DataOut[18]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \DataOut[19]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \DataOut[20]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \DataOut[21]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \DataOut[22]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \DataOut[23]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \DataOut[24]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \DataOut[25]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \DataOut[26]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \DataOut[27]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \DataOut[28]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \DataOut[29]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \DataOut[30]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \DataOut[31]_INST_0\ : label is "soft_lutpair10";
begin
\DataOut[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Data2(0),
      I1 => Data1(0),
      I2 => Selector,
      O => DataOut(0)
    );
\DataOut[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Data2(10),
      I1 => Data1(10),
      I2 => Selector,
      O => DataOut(10)
    );
\DataOut[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Data2(11),
      I1 => Data1(11),
      I2 => Selector,
      O => DataOut(11)
    );
\DataOut[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Data2(12),
      I1 => Data1(12),
      I2 => Selector,
      O => DataOut(12)
    );
\DataOut[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Data2(13),
      I1 => Data1(13),
      I2 => Selector,
      O => DataOut(13)
    );
\DataOut[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Data2(14),
      I1 => Data1(14),
      I2 => Selector,
      O => DataOut(14)
    );
\DataOut[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Data2(15),
      I1 => Data1(15),
      I2 => Selector,
      O => DataOut(15)
    );
\DataOut[16]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Data2(16),
      I1 => Data1(16),
      I2 => Selector,
      O => DataOut(16)
    );
\DataOut[17]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Data2(17),
      I1 => Data1(17),
      I2 => Selector,
      O => DataOut(17)
    );
\DataOut[18]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Data2(18),
      I1 => Data1(18),
      I2 => Selector,
      O => DataOut(18)
    );
\DataOut[19]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Data2(19),
      I1 => Data1(19),
      I2 => Selector,
      O => DataOut(19)
    );
\DataOut[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Data2(1),
      I1 => Data1(1),
      I2 => Selector,
      O => DataOut(1)
    );
\DataOut[20]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Data2(20),
      I1 => Data1(20),
      I2 => Selector,
      O => DataOut(20)
    );
\DataOut[21]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Data2(21),
      I1 => Data1(21),
      I2 => Selector,
      O => DataOut(21)
    );
\DataOut[22]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Data2(22),
      I1 => Data1(22),
      I2 => Selector,
      O => DataOut(22)
    );
\DataOut[23]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Data2(23),
      I1 => Data1(23),
      I2 => Selector,
      O => DataOut(23)
    );
\DataOut[24]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Data2(24),
      I1 => Data1(24),
      I2 => Selector,
      O => DataOut(24)
    );
\DataOut[25]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Data2(25),
      I1 => Data1(25),
      I2 => Selector,
      O => DataOut(25)
    );
\DataOut[26]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Data2(26),
      I1 => Data1(26),
      I2 => Selector,
      O => DataOut(26)
    );
\DataOut[27]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Data2(27),
      I1 => Data1(27),
      I2 => Selector,
      O => DataOut(27)
    );
\DataOut[28]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Data2(28),
      I1 => Data1(28),
      I2 => Selector,
      O => DataOut(28)
    );
\DataOut[29]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Data2(29),
      I1 => Data1(29),
      I2 => Selector,
      O => DataOut(29)
    );
\DataOut[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Data2(2),
      I1 => Data1(2),
      I2 => Selector,
      O => DataOut(2)
    );
\DataOut[30]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Data2(30),
      I1 => Data1(30),
      I2 => Selector,
      O => DataOut(30)
    );
\DataOut[31]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Data2(31),
      I1 => Data1(31),
      I2 => Selector,
      O => DataOut(31)
    );
\DataOut[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Data2(3),
      I1 => Data1(3),
      I2 => Selector,
      O => DataOut(3)
    );
\DataOut[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Data2(4),
      I1 => Data1(4),
      I2 => Selector,
      O => DataOut(4)
    );
\DataOut[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Data2(5),
      I1 => Data1(5),
      I2 => Selector,
      O => DataOut(5)
    );
\DataOut[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Data2(6),
      I1 => Data1(6),
      I2 => Selector,
      O => DataOut(6)
    );
\DataOut[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Data2(7),
      I1 => Data1(7),
      I2 => Selector,
      O => DataOut(7)
    );
\DataOut[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Data2(8),
      I1 => Data1(8),
      I2 => Selector,
      O => DataOut(8)
    );
\DataOut[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Data2(9),
      I1 => Data1(9),
      I2 => Selector,
      O => DataOut(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MIPS_Design_mux_addr is
  port (
    DataOut : out STD_LOGIC_VECTOR ( 4 downto 0 );
    Data2 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    selector : in STD_LOGIC;
    Data1 : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of MIPS_Design_mux_addr : entity is "mux_addr";
end MIPS_Design_mux_addr;

architecture STRUCTURE of MIPS_Design_mux_addr is
begin
\DataOut[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Data2(0),
      I1 => selector,
      I2 => Data1(0),
      O => DataOut(0)
    );
\DataOut[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Data2(1),
      I1 => selector,
      I2 => Data1(1),
      O => DataOut(1)
    );
\DataOut[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Data2(2),
      I1 => selector,
      I2 => Data1(2),
      O => DataOut(2)
    );
\DataOut[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Data2(3),
      I1 => selector,
      I2 => Data1(3),
      O => DataOut(3)
    );
\DataOut[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Data2(4),
      I1 => selector,
      I2 => Data1(4),
      O => DataOut(4)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MIPS_Design_MIPS_Design_ALU_0_0 is
  port (
    Data1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Data2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    func : in STD_LOGIC_VECTOR ( 2 downto 0 );
    Result : out STD_LOGIC_VECTOR ( 31 downto 0 );
    zeros : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of MIPS_Design_MIPS_Design_ALU_0_0 : entity is "MIPS_Design_ALU_0_0,ALU,{}";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of MIPS_Design_MIPS_Design_ALU_0_0 : entity is "MIPS_Design_ALU_0_0";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of MIPS_Design_MIPS_Design_ALU_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of MIPS_Design_MIPS_Design_ALU_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of MIPS_Design_MIPS_Design_ALU_0_0 : entity is "ALU,Vivado 2018.3";
end MIPS_Design_MIPS_Design_ALU_0_0;

architecture STRUCTURE of MIPS_Design_MIPS_Design_ALU_0_0 is
  signal \<const0>\ : STD_LOGIC;
begin
  zeros <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.MIPS_Design_ALU
     port map (
      Data1(31 downto 0) => Data1(31 downto 0),
      Data2(31 downto 0) => Data2(31 downto 0),
      Result(31 downto 0) => Result(31 downto 0),
      func(2 downto 0) => func(2 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MIPS_Design_MIPS_Design_ALU_Control_0_0 is
  port (
    Instruction : in STD_LOGIC_VECTOR ( 5 downto 0 );
    ALUOP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    func : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of MIPS_Design_MIPS_Design_ALU_Control_0_0 : entity is "MIPS_Design_ALU_Control_0_0,ALU_Control,{}";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of MIPS_Design_MIPS_Design_ALU_Control_0_0 : entity is "MIPS_Design_ALU_Control_0_0";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of MIPS_Design_MIPS_Design_ALU_Control_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of MIPS_Design_MIPS_Design_ALU_Control_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of MIPS_Design_MIPS_Design_ALU_Control_0_0 : entity is "ALU_Control,Vivado 2018.3";
end MIPS_Design_MIPS_Design_ALU_Control_0_0;

architecture STRUCTURE of MIPS_Design_MIPS_Design_ALU_Control_0_0 is
begin
U0: entity work.MIPS_Design_ALU_Control
     port map (
      ALUOP(1 downto 0) => ALUOP(1 downto 0),
      Instruction(5 downto 0) => Instruction(5 downto 0),
      func(2 downto 0) => func(2 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MIPS_Design_MIPS_Design_Control_Unit_0_0 is
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
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of MIPS_Design_MIPS_Design_Control_Unit_0_0 : entity is "MIPS_Design_Control_Unit_0_0,Control_Unit,{}";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of MIPS_Design_MIPS_Design_Control_Unit_0_0 : entity is "MIPS_Design_Control_Unit_0_0";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of MIPS_Design_MIPS_Design_Control_Unit_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of MIPS_Design_MIPS_Design_Control_Unit_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of MIPS_Design_MIPS_Design_Control_Unit_0_0 : entity is "Control_Unit,Vivado 2018.3";
end MIPS_Design_MIPS_Design_Control_Unit_0_0;

architecture STRUCTURE of MIPS_Design_MIPS_Design_Control_Unit_0_0 is
begin
ALUScr_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => OP(5),
      I1 => OP(0),
      I2 => OP(2),
      I3 => OP(4),
      I4 => OP(1),
      O => ALUScr
    );
RegWrite_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008000000000001"
    )
        port map (
      I0 => OP(5),
      I1 => OP(0),
      I2 => OP(2),
      I3 => OP(4),
      I4 => OP(1),
      I5 => OP(3),
      O => RegWrite
    );
U0: entity work.MIPS_Design_Control_Unit
     port map (
      ALUOP(1 downto 0) => ALUOP(1 downto 0),
      Branch => Branch,
      MemWrite => MemWrite,
      MemtoReg => MemtoReg,
      OP(5 downto 0) => OP(5 downto 0),
      RegDst => RegDst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MIPS_Design_MIPS_Design_DM_0_0 is
  port (
    clk : in STD_LOGIC;
    En : in STD_LOGIC;
    Address : in STD_LOGIC_VECTOR ( 31 downto 0 );
    WriteData : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ReadData : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of MIPS_Design_MIPS_Design_DM_0_0 : entity is "MIPS_Design_DM_0_0,DM,{}";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of MIPS_Design_MIPS_Design_DM_0_0 : entity is "MIPS_Design_DM_0_0";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of MIPS_Design_MIPS_Design_DM_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of MIPS_Design_MIPS_Design_DM_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of MIPS_Design_MIPS_Design_DM_0_0 : entity is "DM,Vivado 2018.3";
end MIPS_Design_MIPS_Design_DM_0_0;

architecture STRUCTURE of MIPS_Design_MIPS_Design_DM_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN MIPS_Design_clk, INSERT_VIP 0";
begin
U0: entity work.MIPS_Design_DM
     port map (
      Address(6 downto 0) => Address(6 downto 0),
      En => En,
      ReadData(31 downto 0) => ReadData(31 downto 0),
      WriteData(31 downto 0) => WriteData(31 downto 0),
      clk => clk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MIPS_Design_MIPS_Design_File_Register_0_0 is
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
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of MIPS_Design_MIPS_Design_File_Register_0_0 : entity is "MIPS_Design_File_Register_0_0,File_Register,{}";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of MIPS_Design_MIPS_Design_File_Register_0_0 : entity is "MIPS_Design_File_Register_0_0";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of MIPS_Design_MIPS_Design_File_Register_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of MIPS_Design_MIPS_Design_File_Register_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of MIPS_Design_MIPS_Design_File_Register_0_0 : entity is "File_Register,Vivado 2018.3";
end MIPS_Design_MIPS_Design_File_Register_0_0;

architecture STRUCTURE of MIPS_Design_MIPS_Design_File_Register_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN MIPS_Design_clk, INSERT_VIP 0";
begin
U0: entity work.MIPS_Design_File_Register
     port map (
      EN => EN,
      ReadData1(31 downto 0) => ReadData1(31 downto 0),
      ReadData2(31 downto 0) => ReadData2(31 downto 0),
      ReadRegister1(4 downto 0) => ReadRegister1(25 downto 21),
      ReadRegister2(4 downto 0) => ReadRegister2(20 downto 16),
      WriteData(31 downto 0) => WriteData(31 downto 0),
      WriteRegister(4 downto 0) => WriteRegister(4 downto 0),
      clk => clk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MIPS_Design_MIPS_Design_PC_0_0 is
  port (
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    DataIn : in STD_LOGIC_VECTOR ( 29 downto 0 );
    DataOut : out STD_LOGIC_VECTOR ( 29 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of MIPS_Design_MIPS_Design_PC_0_0 : entity is "MIPS_Design_PC_0_0,PC,{}";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of MIPS_Design_MIPS_Design_PC_0_0 : entity is "MIPS_Design_PC_0_0";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of MIPS_Design_MIPS_Design_PC_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of MIPS_Design_MIPS_Design_PC_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of MIPS_Design_MIPS_Design_PC_0_0 : entity is "PC,Vivado 2018.3";
end MIPS_Design_MIPS_Design_PC_0_0;

architecture STRUCTURE of MIPS_Design_MIPS_Design_PC_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN MIPS_Design_clk, INSERT_VIP 0";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
begin
U0: entity work.MIPS_Design_PC
     port map (
      DataIn(29 downto 0) => DataIn(29 downto 0),
      DataOut(29 downto 0) => DataOut(29 downto 0),
      clk => clk,
      rst => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MIPS_Design_MIPS_Design_PC_Adder_0_0 is
  port (
    PC_Data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Signextention_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    PC_New_Data : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of MIPS_Design_MIPS_Design_PC_Adder_0_0 : entity is "MIPS_Design_PC_Adder_0_0,PC_Adder,{}";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of MIPS_Design_MIPS_Design_PC_Adder_0_0 : entity is "MIPS_Design_PC_Adder_0_0";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of MIPS_Design_MIPS_Design_PC_Adder_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of MIPS_Design_MIPS_Design_PC_Adder_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of MIPS_Design_MIPS_Design_PC_Adder_0_0 : entity is "PC_Adder,Vivado 2018.3";
end MIPS_Design_MIPS_Design_PC_Adder_0_0;

architecture STRUCTURE of MIPS_Design_MIPS_Design_PC_Adder_0_0 is
begin
U0: entity work.MIPS_Design_PC_Adder
     port map (
      PC_Data(31 downto 0) => PC_Data(31 downto 0),
      PC_New_Data(31 downto 0) => PC_New_Data(31 downto 0),
      Signextention_data(31 downto 0) => Signextention_data(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MIPS_Design_MIPS_Design_mux_2x1_1_0 is
  port (
    Data1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Data2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Selector : in STD_LOGIC;
    DataOut : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of MIPS_Design_MIPS_Design_mux_2x1_1_0 : entity is "MIPS_Design_mux_2x1_1_0,mux_2x1,{}";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of MIPS_Design_MIPS_Design_mux_2x1_1_0 : entity is "MIPS_Design_mux_2x1_1_0";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of MIPS_Design_MIPS_Design_mux_2x1_1_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of MIPS_Design_MIPS_Design_mux_2x1_1_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of MIPS_Design_MIPS_Design_mux_2x1_1_0 : entity is "mux_2x1,Vivado 2018.3";
end MIPS_Design_MIPS_Design_mux_2x1_1_0;

architecture STRUCTURE of MIPS_Design_MIPS_Design_mux_2x1_1_0 is
begin
U0: entity work.MIPS_Design_mux_2x1_1
     port map (
      Data1(31 downto 0) => Data1(31 downto 0),
      Data2(31 downto 0) => Data2(31 downto 0),
      DataOut(31 downto 0) => DataOut(31 downto 0),
      Selector => Selector
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MIPS_Design_MIPS_Design_mux_2x1_2_1 is
  port (
    Data1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Data2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Selector : in STD_LOGIC;
    DataOut : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of MIPS_Design_MIPS_Design_mux_2x1_2_1 : entity is "MIPS_Design_mux_2x1_2_1,mux_2x1,{}";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of MIPS_Design_MIPS_Design_mux_2x1_2_1 : entity is "MIPS_Design_mux_2x1_2_1";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of MIPS_Design_MIPS_Design_mux_2x1_2_1 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of MIPS_Design_MIPS_Design_mux_2x1_2_1 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of MIPS_Design_MIPS_Design_mux_2x1_2_1 : entity is "mux_2x1,Vivado 2018.3";
end MIPS_Design_MIPS_Design_mux_2x1_2_1;

architecture STRUCTURE of MIPS_Design_MIPS_Design_mux_2x1_2_1 is
begin
U0: entity work.MIPS_Design_mux_2x1_0
     port map (
      Data1(31 downto 0) => Data1(31 downto 0),
      Data2(31 downto 0) => Data2(31 downto 0),
      DataOut(31 downto 0) => DataOut(31 downto 0),
      Selector => Selector
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MIPS_Design_MIPS_Design_mux_2x1_4_0 is
  port (
    Data1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Data2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Selector : in STD_LOGIC;
    DataOut : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of MIPS_Design_MIPS_Design_mux_2x1_4_0 : entity is "MIPS_Design_mux_2x1_4_0,mux_2x1,{}";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of MIPS_Design_MIPS_Design_mux_2x1_4_0 : entity is "MIPS_Design_mux_2x1_4_0";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of MIPS_Design_MIPS_Design_mux_2x1_4_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of MIPS_Design_MIPS_Design_mux_2x1_4_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of MIPS_Design_MIPS_Design_mux_2x1_4_0 : entity is "mux_2x1,Vivado 2018.3";
end MIPS_Design_MIPS_Design_mux_2x1_4_0;

architecture STRUCTURE of MIPS_Design_MIPS_Design_mux_2x1_4_0 is
begin
U0: entity work.MIPS_Design_mux_2x1
     port map (
      Data1(31 downto 0) => Data1(31 downto 0),
      Data2(31 downto 0) => Data2(31 downto 0),
      DataOut(31 downto 0) => DataOut(31 downto 0),
      Selector => Selector
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MIPS_Design_MIPS_Design_mux_addr_0_0 is
  port (
    selector : in STD_LOGIC;
    Data1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Data2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    DataOut : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of MIPS_Design_MIPS_Design_mux_addr_0_0 : entity is "MIPS_Design_mux_addr_0_0,mux_addr,{}";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of MIPS_Design_MIPS_Design_mux_addr_0_0 : entity is "MIPS_Design_mux_addr_0_0";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of MIPS_Design_MIPS_Design_mux_addr_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of MIPS_Design_MIPS_Design_mux_addr_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of MIPS_Design_MIPS_Design_mux_addr_0_0 : entity is "mux_addr,Vivado 2018.3";
end MIPS_Design_MIPS_Design_mux_addr_0_0;

architecture STRUCTURE of MIPS_Design_MIPS_Design_mux_addr_0_0 is
begin
U0: entity work.MIPS_Design_mux_addr
     port map (
      Data1(4 downto 0) => Data1(20 downto 16),
      Data2(4 downto 0) => Data2(15 downto 11),
      DataOut(4 downto 0) => DataOut(4 downto 0),
      selector => selector
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MIPS_Design is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of MIPS_Design : entity is true;
  attribute hw_handoff : string;
  attribute hw_handoff of MIPS_Design : entity is "MIPS_Design.hwdef";
end MIPS_Design;

architecture STRUCTURE of MIPS_Design is
  signal ALU_0_Result_0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ALU_0_zeros : STD_LOGIC;
  signal ALU_Control_0_func : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Control_Unit_0_ALUOP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Control_Unit_0_ALUScr : STD_LOGIC;
  signal Control_Unit_0_Branch : STD_LOGIC;
  signal Control_Unit_0_MemRead : STD_LOGIC;
  signal Control_Unit_0_MemtoReg : STD_LOGIC;
  signal Control_Unit_0_RegDst : STD_LOGIC;
  signal Control_Unit_0_RegWrite : STD_LOGIC;
  signal Data1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Data2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal File_Register_0_ReadData1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal File_Register_0_ReadData2_0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal IM_0_ReadData_0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal PC_0_DataOut_0 : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal Sign_Extention_0_DataOut_0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mux_2x1_1_DataOut : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mux_2x1_2_DataOut : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal mux_2x1_4_DataOut : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mux_addr_0_DataOut : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal util_vector_logic_0_Res : STD_LOGIC;
  signal NLW_mux_2x1_2_DataOut_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 30 );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ALU_0 : label is "MIPS_Design_ALU_0_0,ALU,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of ALU_0 : label is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of ALU_0 : label is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of ALU_0 : label is "ALU,Vivado 2018.3";
  attribute CHECK_LICENSE_TYPE of ALU_Control_0 : label is "MIPS_Design_ALU_Control_0_0,ALU_Control,{}";
  attribute downgradeipidentifiedwarnings of ALU_Control_0 : label is "yes";
  attribute ip_definition_source of ALU_Control_0 : label is "module_ref";
  attribute x_core_info of ALU_Control_0 : label is "ALU_Control,Vivado 2018.3";
  attribute CHECK_LICENSE_TYPE of Control_Unit : label is "MIPS_Design_Control_Unit_0_0,Control_Unit,{}";
  attribute downgradeipidentifiedwarnings of Control_Unit : label is "yes";
  attribute ip_definition_source of Control_Unit : label is "module_ref";
  attribute x_core_info of Control_Unit : label is "Control_Unit,Vivado 2018.3";
  attribute CHECK_LICENSE_TYPE of DM_0 : label is "MIPS_Design_DM_0_0,DM,{}";
  attribute downgradeipidentifiedwarnings of DM_0 : label is "yes";
  attribute ip_definition_source of DM_0 : label is "module_ref";
  attribute x_core_info of DM_0 : label is "DM,Vivado 2018.3";
  attribute CHECK_LICENSE_TYPE of File_Register_0 : label is "MIPS_Design_File_Register_0_0,File_Register,{}";
  attribute downgradeipidentifiedwarnings of File_Register_0 : label is "yes";
  attribute ip_definition_source of File_Register_0 : label is "module_ref";
  attribute x_core_info of File_Register_0 : label is "File_Register,Vivado 2018.3";
  attribute CHECK_LICENSE_TYPE of IM_0 : label is "MIPS_Design_IM_0_0,IM,{}";
  attribute downgradeipidentifiedwarnings of IM_0 : label is "yes";
  attribute ip_definition_source of IM_0 : label is "module_ref";
  attribute x_core_info of IM_0 : label is "IM,Vivado 2018.3";
  attribute CHECK_LICENSE_TYPE of PC_0 : label is "MIPS_Design_PC_0_0,PC,{}";
  attribute downgradeipidentifiedwarnings of PC_0 : label is "yes";
  attribute ip_definition_source of PC_0 : label is "module_ref";
  attribute x_core_info of PC_0 : label is "PC,Vivado 2018.3";
  attribute CHECK_LICENSE_TYPE of PC_Adder_0 : label is "MIPS_Design_PC_Adder_0_0,PC_Adder,{}";
  attribute downgradeipidentifiedwarnings of PC_Adder_0 : label is "yes";
  attribute ip_definition_source of PC_Adder_0 : label is "module_ref";
  attribute x_core_info of PC_Adder_0 : label is "PC_Adder,Vivado 2018.3";
  attribute CHECK_LICENSE_TYPE of Sign_Extention_0 : label is "MIPS_Design_Sign_Extention_0_0,Sign_Extention,{}";
  attribute downgradeipidentifiedwarnings of Sign_Extention_0 : label is "yes";
  attribute ip_definition_source of Sign_Extention_0 : label is "module_ref";
  attribute x_core_info of Sign_Extention_0 : label is "Sign_Extention,Vivado 2018.3";
  attribute CHECK_LICENSE_TYPE of mux_2x1_1 : label is "MIPS_Design_mux_2x1_1_0,mux_2x1,{}";
  attribute downgradeipidentifiedwarnings of mux_2x1_1 : label is "yes";
  attribute ip_definition_source of mux_2x1_1 : label is "module_ref";
  attribute x_core_info of mux_2x1_1 : label is "mux_2x1,Vivado 2018.3";
  attribute CHECK_LICENSE_TYPE of mux_2x1_2 : label is "MIPS_Design_mux_2x1_2_1,mux_2x1,{}";
  attribute downgradeipidentifiedwarnings of mux_2x1_2 : label is "yes";
  attribute ip_definition_source of mux_2x1_2 : label is "module_ref";
  attribute x_core_info of mux_2x1_2 : label is "mux_2x1,Vivado 2018.3";
  attribute CHECK_LICENSE_TYPE of mux_2x1_4 : label is "MIPS_Design_mux_2x1_4_0,mux_2x1,{}";
  attribute downgradeipidentifiedwarnings of mux_2x1_4 : label is "yes";
  attribute ip_definition_source of mux_2x1_4 : label is "module_ref";
  attribute x_core_info of mux_2x1_4 : label is "mux_2x1,Vivado 2018.3";
  attribute CHECK_LICENSE_TYPE of mux_addr_0 : label is "MIPS_Design_mux_addr_0_0,mux_addr,{}";
  attribute downgradeipidentifiedwarnings of mux_addr_0 : label is "yes";
  attribute ip_definition_source of mux_addr_0 : label is "module_ref";
  attribute x_core_info of mux_addr_0 : label is "mux_addr,Vivado 2018.3";
  attribute CHECK_LICENSE_TYPE of util_vector_logic_0 : label is "MIPS_Design_util_vector_logic_0_0,util_vector_logic_v2_0_1_util_vector_logic,{}";
  attribute downgradeipidentifiedwarnings of util_vector_logic_0 : label is "yes";
  attribute x_core_info of util_vector_logic_0 : label is "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2018.3";
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_RESET rst, CLK_DOMAIN MIPS_Design_clk, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 RST.RST RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME RST.RST, INSERT_VIP 0, POLARITY ACTIVE_HIGH";
begin
ALU_0: entity work.MIPS_Design_MIPS_Design_ALU_0_0
     port map (
      Data1(31 downto 0) => File_Register_0_ReadData1(31 downto 0),
      Data2(31 downto 0) => mux_2x1_1_DataOut(31 downto 0),
      Result(31 downto 0) => ALU_0_Result_0(31 downto 0),
      func(2 downto 0) => ALU_Control_0_func(2 downto 0),
      zeros => ALU_0_zeros
    );
ALU_Control_0: entity work.MIPS_Design_MIPS_Design_ALU_Control_0_0
     port map (
      ALUOP(1 downto 0) => Control_Unit_0_ALUOP(1 downto 0),
      Instruction(5 downto 0) => IM_0_ReadData_0(5 downto 0),
      func(2 downto 0) => ALU_Control_0_func(2 downto 0)
    );
Control_Unit: entity work.MIPS_Design_MIPS_Design_Control_Unit_0_0
     port map (
      ALUOP(1 downto 0) => Control_Unit_0_ALUOP(1 downto 0),
      ALUScr => Control_Unit_0_ALUScr,
      Branch => Control_Unit_0_Branch,
      MemWrite => Control_Unit_0_MemRead,
      MemtoReg => Control_Unit_0_MemtoReg,
      OP(5 downto 0) => IM_0_ReadData_0(5 downto 0),
      RegDst => Control_Unit_0_RegDst,
      RegWrite => Control_Unit_0_RegWrite
    );
DM_0: entity work.MIPS_Design_MIPS_Design_DM_0_0
     port map (
      Address(31 downto 0) => ALU_0_Result_0(31 downto 0),
      En => Control_Unit_0_MemRead,
      ReadData(31 downto 0) => Data1(31 downto 0),
      WriteData(31 downto 0) => File_Register_0_ReadData2_0(31 downto 0),
      clk => clk
    );
File_Register_0: entity work.MIPS_Design_MIPS_Design_File_Register_0_0
     port map (
      EN => Control_Unit_0_RegWrite,
      ReadData1(31 downto 0) => File_Register_0_ReadData1(31 downto 0),
      ReadData2(31 downto 0) => File_Register_0_ReadData2_0(31 downto 0),
      ReadRegister1(31 downto 0) => IM_0_ReadData_0(31 downto 0),
      ReadRegister2(31 downto 0) => IM_0_ReadData_0(31 downto 0),
      WriteData(31 downto 0) => mux_2x1_4_DataOut(31 downto 0),
      WriteRegister(31 downto 5) => B"000000000000000000000000000",
      WriteRegister(4 downto 0) => mux_addr_0_DataOut(4 downto 0),
      clk => clk
    );
IM_0: entity work.MIPS_Design_MIPS_Design_IM_0_0
     port map (
      ReadAddress(31 downto 30) => B"00",
      ReadAddress(29 downto 0) => PC_0_DataOut_0(29 downto 0),
      ReadData(31 downto 0) => IM_0_ReadData_0(31 downto 0),
      clk => clk
    );
PC_0: entity work.MIPS_Design_MIPS_Design_PC_0_0
     port map (
      DataIn(29 downto 0) => mux_2x1_2_DataOut(29 downto 0),
      DataOut(29 downto 0) => PC_0_DataOut_0(29 downto 0),
      clk => clk,
      rst => rst
    );
PC_Adder_0: entity work.MIPS_Design_MIPS_Design_PC_Adder_0_0
     port map (
      PC_Data(31 downto 30) => B"00",
      PC_Data(29 downto 0) => PC_0_DataOut_0(29 downto 0),
      PC_New_Data(31 downto 0) => Data2(31 downto 0),
      Signextention_data(31 downto 0) => Sign_Extention_0_DataOut_0(31 downto 0)
    );
Sign_Extention_0: entity work.MIPS_Design_MIPS_Design_Sign_Extention_0_0
     port map (
      DataIn(15 downto 0) => IM_0_ReadData_0(15 downto 0),
      DataOut(31 downto 0) => Sign_Extention_0_DataOut_0(31 downto 0)
    );
mux_2x1_1: entity work.MIPS_Design_MIPS_Design_mux_2x1_1_0
     port map (
      Data1(31 downto 0) => File_Register_0_ReadData2_0(31 downto 0),
      Data2(31 downto 0) => Sign_Extention_0_DataOut_0(31 downto 0),
      DataOut(31 downto 0) => mux_2x1_1_DataOut(31 downto 0),
      Selector => Control_Unit_0_ALUScr
    );
mux_2x1_2: entity work.MIPS_Design_MIPS_Design_mux_2x1_2_1
     port map (
      Data1(31 downto 30) => B"00",
      Data1(29 downto 0) => PC_0_DataOut_0(29 downto 0),
      Data2(31 downto 0) => Data2(31 downto 0),
      DataOut(31 downto 30) => NLW_mux_2x1_2_DataOut_UNCONNECTED(31 downto 30),
      DataOut(29 downto 0) => mux_2x1_2_DataOut(29 downto 0),
      Selector => util_vector_logic_0_Res
    );
mux_2x1_4: entity work.MIPS_Design_MIPS_Design_mux_2x1_4_0
     port map (
      Data1(31 downto 0) => Data1(31 downto 0),
      Data2(31 downto 0) => ALU_0_Result_0(31 downto 0),
      DataOut(31 downto 0) => mux_2x1_4_DataOut(31 downto 0),
      Selector => Control_Unit_0_MemtoReg
    );
mux_addr_0: entity work.MIPS_Design_MIPS_Design_mux_addr_0_0
     port map (
      Data1(31 downto 0) => IM_0_ReadData_0(31 downto 0),
      Data2(31 downto 0) => IM_0_ReadData_0(31 downto 0),
      DataOut(4 downto 0) => mux_addr_0_DataOut(4 downto 0),
      selector => Control_Unit_0_RegDst
    );
util_vector_logic_0: entity work.MIPS_Design_MIPS_Design_util_vector_logic_0_0
     port map (
      Op1(0) => Control_Unit_0_Branch,
      Op2(0) => ALU_0_zeros,
      Res(0) => util_vector_logic_0_Res
    );
end STRUCTURE;
