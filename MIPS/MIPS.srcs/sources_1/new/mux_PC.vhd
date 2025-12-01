----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/12/2025 04:15:17 PM
-- Design Name: 
-- Module Name: mux_PC - Behavioral
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

entity mux_addr is
    Port ( selector : in STD_LOGIC;
           Data1 : in STD_LOGIC_VECTOR (31 downto 0);
           Data2 : in STD_LOGIC_VECTOR (31 downto 0);
           DataOut : out STD_LOGIC_VECTOR (4 downto 0));
end mux_addr;

architecture Behavioral of mux_addr is

begin

        DataOut <= Data1(20 downto 16) when selector = '0' else Data2(15 downto 11);

end Behavioral;
