----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/21/2025 04:30:40 PM
-- Design Name: 
-- Module Name: SR_FF - Behavioral
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

entity SR_FF is
    Port ( Clk   : in  std_logic;
           R     : in  STD_LOGIC;
           S     : in  STD_LOGIC;
           EnOut : out STD_LOGIC);
end SR_FF;

architecture Behavioral of SR_FF is

begin

    process (Clk)
    begin
        if (rising_edge(Clk)) then
            if (R='1') then
                EnOut <= '0';
            elsif (S='1') then
                EnOut <= '1';
            end if;
        end if;
    end process;

end Behavioral;
