-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Thu Feb 20 20:01:59 2025
-- Host        : Alirezad_laptop running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               D:/University/VHDL/decoder/decoder.sim/sim_1/synth/func/xsim/tb_decoder_4_16_func_synth.vhd
-- Design      : decoder_4_16
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu2eg-sfva625-1L-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decoder_4_16 is
  port (
    C : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decoder_4_16 : entity is true;
end decoder_4_16;

architecture STRUCTURE of decoder_4_16 is
begin
\C_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => C(0)
    );
\C_OBUF[10]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => C(10),
      T => '1'
    );
\C_OBUF[11]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => C(11),
      T => '1'
    );
\C_OBUF[12]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => C(12),
      T => '1'
    );
\C_OBUF[13]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => C(13),
      T => '1'
    );
\C_OBUF[14]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => C(14),
      T => '1'
    );
\C_OBUF[15]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => C(15),
      T => '1'
    );
\C_OBUF[1]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => C(1),
      T => '1'
    );
\C_OBUF[2]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => C(2),
      T => '1'
    );
\C_OBUF[3]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => C(3),
      T => '1'
    );
\C_OBUF[4]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => C(4),
      T => '1'
    );
\C_OBUF[5]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => C(5),
      T => '1'
    );
\C_OBUF[6]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => C(6),
      T => '1'
    );
\C_OBUF[7]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => C(7),
      T => '1'
    );
\C_OBUF[8]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => C(8),
      T => '1'
    );
\C_OBUF[9]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => C(9),
      T => '1'
    );
end STRUCTURE;
