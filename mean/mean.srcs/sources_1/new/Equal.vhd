----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/24/2025 12:46:33 AM
-- Design Name: 
-- Module Name: Equal - Behavioral
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

entity Equal is
    Port ( A : in  STD_LOGIC_VECTOR (2 downto 0);
           B : in  STD_LOGIC_VECTOR (2 downto 0);
           O : out STD_LOGIC);
end Equal;

architecture Behavioral of Equal is

begin

    O <= (A(2) xnor B(2)) and (A(1) xnor B(1)) and (A(0) xnor B(0));

end Behavioral;
