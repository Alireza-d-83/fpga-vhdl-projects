-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Fri Nov 28 10:02:18 2025
-- Host        : DESKTOP-VEE6H17 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               D:/general/University/VHDL/learn_timing/learn_timing.sim/sim_1/synth/func/xsim/tb_timing_example_func_synth.vhd
-- Design      : timing_example
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7vx485tffg1157-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity timing_example is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    d_in : in STD_LOGIC;
    q_out : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of timing_example : entity is true;
end timing_example;

architecture STRUCTURE of timing_example is
  signal clk_IBUF : STD_LOGIC;
  signal clk_IBUF_BUFG : STD_LOGIC;
  signal d_in_IBUF : STD_LOGIC;
  signal ff1 : STD_LOGIC;
  signal q_out_OBUF : STD_LOGIC;
  signal rst_IBUF : STD_LOGIC;
begin
clk_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => clk_IBUF,
      O => clk_IBUF_BUFG
    );
clk_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => clk,
      O => clk_IBUF
    );
d_in_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => d_in,
      O => d_in_IBUF
    );
ff1_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => d_in_IBUF,
      Q => ff1
    );
ff2_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => ff1,
      Q => q_out_OBUF
    );
q_out_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => q_out_OBUF,
      O => q_out
    );
rst_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => rst,
      O => rst_IBUF
    );
end STRUCTURE;
