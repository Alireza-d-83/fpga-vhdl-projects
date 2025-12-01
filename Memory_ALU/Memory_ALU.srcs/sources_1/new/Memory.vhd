----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/16/2025 06:50:14 AM
-- Design Name: 
-- Module Name: Memory - Behavioral
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

entity Memory is
    Port ( 
           CLK : in std_logic;
           
           RA1 : in std_logic_vector (9 downto 0);
           RD1 : out STD_LOGIC_VECTOR (7 downto 0);
           
           RA2 : in STD_LOGIC_VECTOR (9 downto 0); 
           RD2 : out STD_LOGIC_VECTOR (7 downto 0);
                     
           WE  : in STD_LOGIC;
           WA  : in STD_LOGIC_VECTOR (9 downto 0);
           D   : in STD_LOGIC_VECTOR (7 downto 0));
end Memory;

architecture Behavioral of Memory is

type RAM is array (0 to 1023) of std_logic_vector(7 downto 0);
signal my_ram : RAM := (
    0    => x"00",
    1    => x"01",
    2    => x"02",
    3    => x"03",
    others => (others => '0')); 

begin
    process (CLK)
    begin
        if rising_edge(clk) then
            if (WE = '1') then
                my_ram (To_integer(signed(WA))) <= D;
            end if;
        end if;
    end process;
    
    RD1 <= my_ram (To_integer(signed(RA1)));
    RD2 <= my_ram (To_integer(signed(RA2)));
            
end Behavioral;
