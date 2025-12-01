----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/10/2025 10:24:08 AM
-- Design Name: 
-- Module Name: ALU - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU is
    Port ( Data1  : in  STD_LOGIC_VECTOR (31 downto 0);
           Data2  : in  STD_LOGIC_VECTOR (31 downto 0);
           func   : in  std_logic_vector (2  downto 0);
           Result : out STD_LOGIC_VECTOR (31 downto 0);
           zeros  : out std_logic  );
end ALU;

architecture Behavioral of ALU is

begin

        result <= std_logic_vector(unsigned(Data1)               +  unsigned(Data2))              when func = "000" else --R_type add
                  std_logic_vector(unsigned(Data1)               -  unsigned(Data2))              when func = "001" else --R_type sub
                  std_logic_vector(unsigned(Data1)              and unsigned(Data2))              when func = "010" else --R_type and
                  std_logic_vector(unsigned(Data1)              or  unsigned(Data2))              when func = "011" else --R_type or
                  std_logic_vector(unsigned(Data1(15 downto 0))  *  unsigned(Data2(15 downto 0))) when func = "100" else --R_type mult
                  std_logic_vector(unsigned(Data1(15 downto 0))               *  unsigned(Data2(15 downto 0)))              when func = "101" else --R_type sll
                  std_logic_vector(unsigned(Data1(15 downto 0))               *  unsigned(Data2(15 downto 0)))              when func = "110" else --R_type srl
                  not(std_logic_vector(unsigned(Data1)))                                          when func = "111";     --R_type not

end Behavioral;
