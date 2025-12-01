----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/10/2025 10:24:08 AM
-- Design Name: 
-- Module Name: IM - Behavioral
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

entity IM is
    Port ( clk : in std_logic;
           ReadAddress : in STD_LOGIC_VECTOR (31 downto 0);
           ReadData : out STD_LOGIC_VECTOR (31 downto 0));
end IM;



architecture Behavioral of IM is

    type IM_type is array (0 to 256) of std_logic_vector (31 downto 0);
    signal IM : IM_type :=(
    x"00000001",
    others => (others => '0')
    );

begin

    ReadData <= IM(to_integer(Unsigned(ReadAddress(6 downto 0))));

end Behavioral;
