----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/10/2025 10:24:08 AM
-- Design Name: 
-- Module Name: PC - Behavioral
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

entity PC is
    Port ( rst : in std_logic;
           clk : in std_logic;
           DataIn : in STD_LOGIC_VECTOR (29 downto 0);
           DataOut : out STD_LOGIC_VECTOR (29 downto 0));
end PC;

architecture Behavioral of PC is

begin

    process (clk)
    begin
        if rising_edge(clk) then
            if rst = '1' then
                DataOut <= (others => '0');
            else
                DataOut <= std_logic_vector(unsigned(DataIn) + 1);
            end if;
        end if;
    end process;

end Behavioral;
