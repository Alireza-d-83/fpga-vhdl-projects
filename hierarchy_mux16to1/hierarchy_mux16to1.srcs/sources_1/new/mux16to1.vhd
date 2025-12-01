----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/28/2025 09:21:23 PM
-- Design Name: 
-- Module Name: mux16to1 - Behavioral
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

entity mux16to1 is
    Port ( I : in STD_LOGIC_VECTOR (15 downto 0);
           S : in STD_LOGIC_VECTOR (3 downto 0);
           O : out STD_LOGIC);
end mux16to1;

architecture Behavioral of mux16to1 is

component mux8to1
        port (I : in std_logic_vector (7 downto 0);
              S : in std_logic_vector (2 downto 0);
              O : out std_logic);
    end component;
    
signal mux_out0, mux_out1 : std_logic;
    
begin

mux0 : mux8to1
    port map (I => I(7 downto 0),
              S => S(2 downto 0),
              O => mux_out0);

mux1 : mux8to1
    port map (I => I(15 downto 8),
              S => S(2 downto 0),
              O => mux_out1);

with S(3) select
    O <= mux_out0 when '0',
         mux_out1 when others;               

end Behavioral;
