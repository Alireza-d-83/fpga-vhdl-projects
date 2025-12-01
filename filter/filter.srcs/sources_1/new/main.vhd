----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/10/2025 07:24:42 PM
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
-- Revision 0.02 - Bug Fixes and Enhancements
-- Additional Comments:
-- 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity main is
    Port ( CLK : in std_logic;
           RST : in std_logic;
           WE  : in std_logic;
           X   : in STD_LOGIC_VECTOR (3 downto 0);
           Y   : out STD_LOGIC_VECTOR (7 downto 0));
end main;

architecture Behavioral of main is

    type rom_type is array (0 to 15) of std_logic_vector(7 downto 0);
    
    -- Initialize ROM with constant values
    constant A : rom_type := (
        0  => x"01", 1  => x"01", 2  => x"01", 3  => x"01",
        4  => x"01", 5  => x"01", 6  => x"01", 7  => x"01",
        8  => x"01", 9  => x"01", 10 => x"01", 11 => x"01",
        12 => x"01", 13 => x"01", 14 => x"01", 15 => x"01"
    );

    type arr is array (0 to 15) of std_logic_vector(3 downto 0);
    signal FF : arr := (others => (others => '0'));
    signal S  : rom_type := (0 => x"00", others => (others => '0'));

begin

    FF(0) <= X;

    process (CLK)
    begin
        if rising_edge(CLK) then
            if RST = '1' then
                FF <= (others => (others => '0'));
                S <= (others => (others => '0'));
            elsif WE = '1' then
                for i in 0 to 14 loop
                    FF(i+1) <= FF(i);
                end loop;
            end if;
        end if;
    end process;

    FFG: for i in 1 to 15 generate
    begin
        S(i) <= std_logic_vector(signed(S(i-1)) + signed(FF(i)) * signed(A(i)));    
    end generate;

    Y <= S(15);

end Behavioral;
