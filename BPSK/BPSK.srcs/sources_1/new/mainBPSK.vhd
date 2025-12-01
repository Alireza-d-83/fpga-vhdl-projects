----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/17/2025 03:53:22 PM
-- Design Name: 
-- Module Name: mainBPSK - Behavioral
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

entity mainBPSK is
    Port ( CLK : in STD_LOGIC;
           RST : in STD_LOGIC;
           dataIn : in STD_LOGIC;
           validIn : in STD_LOGIC;
           validOut : out STD_LOGIC;
           symbolOut : out STD_LOGIC_VECTOR (1 downto 0));
end mainBPSK;

architecture Behavioral of mainBPSK is

begin

process (CLK)
begin
    if (rising_edge(CLK)) then
        if (RST = '1') then
            symbolOut <= (others => '0');
            validOut <= '0';
        elsif (validIn = '1') then
            case dataIn is
                when '0' =>
                    symbolOut <= "01";
                    validOut <= '1';
                when '1' =>
                    symbolOut <= "10";
                    validOut <= '1';
                when others =>
                    symbolOut <= "00";
                    validOut <= '0';
            end case ;
        end if;
    end if;
end process;

end Behavioral;
