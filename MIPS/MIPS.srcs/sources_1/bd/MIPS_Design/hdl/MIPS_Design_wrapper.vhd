--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
--Date        : Wed Nov 12 16:46:51 2025
--Host        : DESKTOP-VEE6H17 running 64-bit major release  (build 9200)
--Command     : generate_target MIPS_Design_wrapper.bd
--Design      : MIPS_Design_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MIPS_Design_wrapper is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
end MIPS_Design_wrapper;

architecture STRUCTURE of MIPS_Design_wrapper is
  component MIPS_Design is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  end component MIPS_Design;
begin
MIPS_Design_i: component MIPS_Design
     port map (
      clk => clk,
      rst => rst
    );
end STRUCTURE;
