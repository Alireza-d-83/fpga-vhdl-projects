----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/10/2025 05:00:18 PM
-- Design Name: 
-- Module Name: ALU_Control - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU_Control is
    Port ( Instruction : in STD_LOGIC_VECTOR (5 downto 0);
           ALUOP : in STD_LOGIC_VECTOR (1 downto 0);
           func : out std_logic_vector(2 downto 0));
end ALU_Control;

architecture Behavioral of ALU_Control is

begin

    func <= "000" when ALUOP = "10" and Instruction = "100000" else --R_type add
            "001" when ALUOP = "10" and Instruction = "100010" else --R_type sub
            "010" when ALUOP = "10" and Instruction = "100100" else --R_type and
            "011" when ALUOP = "10" and Instruction = "100101" else --R_type or
            "100" when ALUOP = "10" and Instruction = "011000" else --R_type mult
            "101" when ALUOP = "10" and Instruction = "000100" else --R_type sll
            "110" when ALUOP = "10" and Instruction = "000110" else --R_type srl
            "111" when ALUOP = "10" and Instruction = "100111" else --R_type not
            "000" when ALUOP = "00" or ALUOP = "01" else            --I_type store lowd   
            "001" when ALUOP = "01" ;                               --I_type beq
end Behavioral;
