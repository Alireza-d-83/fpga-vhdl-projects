----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/28/2025 08:57:37 PM
-- Design Name: 
-- Module Name: mux8to1 - Behavioral
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

entity mux8to1 is
    Port ( I : in STD_LOGIC_VECTOR (7 downto 0);
           S : in STD_LOGIC_VECTOR (2 downto 0);
           O : out STD_LOGIC);
end mux8to1;

architecture Behavioral of mux8to1 is

component mux4to1
        port (I : in std_logic_vector (3 downto 0);
              S : in std_logic_vector (1 downto 0);
              O : out std_logic);
    end component;
    
    signal mux_out0, mux_out1: std_logic;
    
begin

comp0 : mux4to1
    port map (I => I(3 downto 0),
              S => S(1 downto 0),
              O => mux_out0);

comp1 : mux4to1
    port map (I => I(7 downto 4),
              S => S(1 downto 0),
              O => mux_out1);

with S(2) select
    O <= mux_out0 when '0',
         mux_out1 when others;              

end Behavioral;
