----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/21/2025 04:30:40 PM
-- Design Name: 
-- Module Name: UpCounter - Behavioral
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

entity UpCounter is
    Port ( Clk : in  STD_LOGIC; 
           En  : in  STD_LOGIC;
           R   : in  STD_LOGIC;
           N   : out STD_LOGIC_VECTOR (2 downto 0));
end UpCounter;

architecture Behavioral of UpCounter is
signal temp : std_logic_vector (2 downto 0);
begin

    process (Clk)
    begin
        if (rising_edge(clk)) then
            if (R='1') then
                temp <= "000";
            elsif (En='1') then
                temp <= STD_LOGIC_VECTOR(unsigned(temp) + 1);
            end if;
        end if;
    end process;

    N <= temp;

end Behavioral;
