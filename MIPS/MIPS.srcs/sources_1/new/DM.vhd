----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/10/2025 10:24:08 AM
-- Design Name: 
-- Module Name: DM - Behavioral
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

entity DM is
    Port ( clk : in std_logic;
           En : in std_logic;
           Address : in STD_LOGIC_VECTOR (31 downto 0);
           WriteData : in STD_LOGIC_VECTOR (31 downto 0);
           ReadData : out STD_LOGIC_VECTOR (31 downto 0));
end DM;

architecture Behavioral of DM is

    type DM_type is array (0 to 256) of std_logic_vector (31 downto 0);
    signal DM : DM_type :=(
    x"00000001",
    others => (others => '0')
    );

begin

    ReadData <= DM(to_integer(Unsigned(Address(6 downto 0))));
    
    process(clk)
    begin
        if rising_edge(clk) then
            if EN = '1' then
                DM(to_integer(Unsigned(Address(6 downto 0)))) <= WriteData;
            end if;
        end if;
    end process;

end Behavioral;
