----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/20/2025 07:04:55 PM
-- Design Name: 
-- Module Name: decoder_4_16 - Behavioral
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

entity decoder_4_16 is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           C : out STD_LOGIC_VECTOR (15 downto 0));
end decoder_4_16;

architecture Behavioral of decoder_4_16 is

signal O : std_logic_vector (31 downto 0);

begin

--not inputs

o(0) <= not A(0);
o(1) <= not A(1);
o(2) <= not A(2);
o(3) <= not A(3);

--C0 input is 0000 C0 shuld be 1;
C(0) <= O(0) and O(1) and O(2) and O(3);

--C1 input is 0001 C1 shuld be 1;
C(1) <= O(3) and O(2) and O(1) and A(0);

--C2 input is 0010 C2 shuld be 1;
C(2) <= O(3) and O(2) and A(1) and O(0);

--C3 input is 0011 C3 shuld be 1;
C(3) <= O(3) and O(2) and A(1) and A(0);

--C4 input is 0100 C4 shuld be 1;
C(4) <= O(3) and A(2) and O(1) and O(0);

--C5 input is 0101 C5 shuld be 1;
C(5) <= O(3) and A(2) and O(1) and A(0);

--C6 input is 0110 C6 shuld be 1;
C(6) <= O(3) and A(2) and A(1) and O(0);

--C7 input is 0111 C7 shuld be 1;
C(7) <= O(3) and A(2) and A(1) and A(0);

--C8 input is 1000 C8 shuld be 1;
C(8) <= A(3) and O(2) and O(1) and O(0);

--C9 input is 1001 C9 shuld be 1;
C(9) <= A(3) and O(2) and O(1) and A(0);

--C10 input is 1010 C10 shuld be 1;
C(10) <= A(3) and O(2) and A(1) and O(0);

--C11 input is 1011 C11 shuld be 1;
C(11) <= A(3) and O(2) and A(1) and A(0);

--C12 input is 1100 C12 shuld be 1;
C(12) <= A(3) and A(2) and O(1) and O(0);

--C13 input is 1101 C13 shuld be 1;
C(13) <= A(3) and A(2) and O(1) and A(0);

--C14 input is 1110 C14 shuld be 1;
C(14) <= A(3) and A(2) and A(1) and O(0);

--C15 input is 1111 C15 shuld be 1;
C(15) <= A(3) and A(2) and A(1) and A(0);

end Behavioral;