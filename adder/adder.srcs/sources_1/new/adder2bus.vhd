----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/26/2025 04:01:39 AM
-- Design Name: 
-- Module Name: adder2bus - Behavioral
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

entity adder2bus is
    Port ( A1     : in STD_LOGIC_VECTOR (3 downto 0);
           A2     : in STD_LOGIC_VECTOR (3 downto 0);
           RESULT : out STD_LOGIC_VECTOR (4 downto 0));
end adder2bus;

architecture Behavioral of adder2bus is

signal C1 : signed(4 downto 0);
signal C2 : signed(4 downto 0);

begin
    
    C1 <= signed('0'& A1);
    C2 <= signed('0'& A2);
    
    RESULT <= std_logic_vector(C1 + C2);

end Behavioral;
