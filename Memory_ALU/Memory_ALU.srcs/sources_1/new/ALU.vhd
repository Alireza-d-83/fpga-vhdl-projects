----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/16/2025 06:50:14 AM
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
    Port ( RD1, RD2 : in STD_LOGIC_VECTOR  (7 downto 0);
           OP       : in STD_LOGIC_VECTOR  (1 downto 0);
           D        : out STD_LOGIC_VECTOR (7 downto 0));
end ALU;

architecture Behavioral of ALU is

signal A : signed (7 downto 0);
signal B : signed (7 downto 0);
signal C : signed (7 downto 0);

begin
    
    A <= signed(RD1);
    B <= signed(RD2);

    with OP select
        C <= A + B   when "00",
             A - B   when "01",
             A and B when "10",
             not A     when "11",
             (others => '0') when others;
    
    D <= std_logic_vector(C);

end Behavioral;
