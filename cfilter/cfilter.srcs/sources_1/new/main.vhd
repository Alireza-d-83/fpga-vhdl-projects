----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/10/2025 09:47:22 PM
-- Design Name: 
-- Module Name: main - Behavioral
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

entity main is
    Port ( CLK : in STD_LOGIC;
           RST : in STD_LOGIC;
           WE  : in std_logic;
           X   : in STD_LOGIC_VECTOR (3 downto 0);
           Y   : out STD_LOGIC_VECTOR (7 downto 0));
end main;

architecture Behavioral of main is

--FF
type FF_type is array (0 to 15) of std_logic_vector(3 downto 0);
signal FF : FF_type := (others => (others => '0'));

--S
type S_type is array (0 to 16) of std_logic_vector(7 downto 0);
signal S : S_type := (others => (others => '0'));

--A
type rom is array (0 to 15) of std_logic_vector(3 downto 0);
constant A : rom := (
    "0001", "0010", "0011", "0100",
    "0001", "0010", "0011", "0100",
    "0001", "0010", "0011", "0100",
    "0001", "0010", "0011", "0100");

begin

process (CLK)
begin
    if(rising_edge(CLK)) then
        if(RST = '1') then
            for i in 0 to 15 loop
                FF(i) <= "0000";
            end loop;
        elsif(WE = '1') then
            FF(0) <= X;
            for i in 0 to 14 loop
                FF(i+1) <= FF(i);
            end loop;
        end if;
    end if;
end process;

S_cal : for i in 0 to 15 generate
      begin
         S(i+1) <= std_logic_vector(unsigned(S(i)) + ((unsigned(FF(i)) * unsigned(A(i)))));
   end generate;

Y <= S(16);

end Behavioral;
