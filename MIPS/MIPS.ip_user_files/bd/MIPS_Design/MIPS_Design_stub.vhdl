-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Wed Nov 12 16:47:44 2025
-- Host        : DESKTOP-VEE6H17 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               D:/general/University/VHDL/MIPS/MIPS.srcs/sources_1/bd/MIPS_Design/MIPS_Design_stub.vhdl
-- Design      : MIPS_Design
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7vx415tffg1158-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MIPS_Design is
  Port ( 
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );

end MIPS_Design;

architecture stub of MIPS_Design is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst";
begin
end;
