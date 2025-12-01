----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/10/2025 10:24:08 AM
-- Design Name: 
-- Module Name: Control_Unit - Behavioral
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

entity Control_Unit is
    Port ( OP : in STD_LOGIC_VECTOR (5 downto 0);
           RegDst : out STD_LOGIC;
           Branch : out STD_LOGIC;
           MemWrite : out STD_LOGIC;
           MemtoReg : out STD_LOGIC;
           ALUScr : out STD_LOGIC;
           RegWrite : out STD_LOGIC;
           ALUOP : out STD_LOGIC_VECTOR (1 downto 0));
end Control_Unit;

architecture Behavioral of Control_Unit is

begin

    RegDst   <= '1'  when OP = "000000" else '0';
    Branch   <= '1'  when OP = "000100" else '0';
    MemWrite <= '1'  when OP = "101011" else '0';
    MemtoReg <= '1'  when OP = "100011" else '0';
    ALUScr   <= '1'  when OP = "100011" or OP = "101011" else '0';
    RegWrite <= '1'  when OP = "000000" or OP = "101011" else '0';
    ALUOP    <= "01" when OP = "000100" else
                "10" when OP = "000000" else "00";

end Behavioral;
