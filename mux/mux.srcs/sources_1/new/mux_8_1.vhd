----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/21/2025 04:30:36 AM
-- Design Name: 
-- Module Name: mux_8_1 - Behavioral
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

entity mux_8_1 is
    Port ( A : in STD_LOGIC_VECTOR (7 downto 0);
           S : in STD_LOGIC_VECTOR (2 downto 0);
           C : out STD_LOGIC);
end mux_8_1;

architecture Behavioral of mux_8_1 is

begin

process (A)
begin

    if S = "000" then
        C <= A(0);
        
    elsif S = "001" then
        C <= A(1);
        
    elsif S = "010" then
        C <= A(2);
        
    elsif S = "011" then
        C <= A(3);
        
    elsif S = "100" then
        C <= A(4);
        
    elsif S = "101" then
        C <= A(5);
        
    elsif S = "110" then
        C <= A(6);
        
    elsif S = "111" then
        C <= A(7);
   end if;

end process;
     
end Behavioral;
