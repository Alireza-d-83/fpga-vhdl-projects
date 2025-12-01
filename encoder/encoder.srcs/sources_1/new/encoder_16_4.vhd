----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/21/2025 03:25:42 AM
-- Design Name: 
-- Module Name: encoder_16_4 - Behavioral
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

entity encoder_16_4 is
    Port ( A : in STD_LOGIC_VECTOR (15 downto 0);
           E : in std_logic;
           C : out STD_LOGIC_VECTOR (3 downto 0));
end encoder_16_4;

architecture Behavioral of encoder_16_4 is
begin

process (A)
begin
  if A = X"0001" then
    C <= "0000";
  elsif A = X"0002" then
    C <= "0001";
  elsif A = X"0004" then
    C <= "0010";
  elsif A = X"0008" then
    C <= "0011";
  elsif A = X"0010" then
    C <= "0100";
  elsif A = X"0020" then
    C <= "0101";
  elsif A = X"0040" then
    C <= "0110";
  elsif A = X"0080" then
    C <= "0111";
  elsif A = X"0100" then
    C <= "1000";
  elsif A = X"0200" then
    C <= "1001";
  elsif A = X"0400" then
    C <= "1010";
  elsif A = X"0800" then
    C <= "1011";
  elsif A = X"1000" then
    C <= "1100";
  elsif A = X"2000" then
    C <= "1101";
  elsif A = X"4000" then
    C <= "1110";
  else
    C <= "1111";
  end if;
  
end process ;

end Behavioral;
