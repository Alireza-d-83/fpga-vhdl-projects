----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/10/2025 10:54:08 AM
-- Design Name: 
-- Module Name: mux_2x1 - Behavioral
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

entity mux_2x1 is
    Port ( Data1 : in STD_LOGIC_VECTOR (31 downto 0);
           Data2 : in STD_LOGIC_VECTOR (31 downto 0);
           Selector : in STD_LOGIC;
           DataOut : out STD_LOGIC_VECTOR (31 downto 0));
end mux_2x1;

architecture Behavioral of mux_2x1 is

begin

    DataOut <= Data1 when selector = '0' else Data2;

end Behavioral;
