----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/26/2025 03:48:34 AM
-- Design Name: 
-- Module Name: adder - Behavioral
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

entity adder is
    Port ( A1     : in STD_LOGIC_VECTOR (3 downto 0);
           A2     : in STD_LOGIC_VECTOR (3 downto 0);
           A3     : in STD_LOGIC_VECTOR (3 downto 0);
           A4     : in STD_LOGIC_VECTOR (3 downto 0);
           A5     : in STD_LOGIC_VECTOR (3 downto 0);
           A6     : in STD_LOGIC_VECTOR (3 downto 0);
           A7     : in STD_LOGIC_VECTOR (3 downto 0);
           A8     : in STD_LOGIC_VECTOR (3 downto 0);
           A9     : in STD_LOGIC_VECTOR (3 downto 0);
           A10    : in STD_LOGIC_VECTOR (3 downto 0);
           RESULT : out STD_LOGIC_VECTOR (7 downto 0));
end adder;

architecture Behavioral of adder is

component adder5bus
    port (A1     : in std_logic_vector (3 downto 0);
          A2     : in std_logic_vector (3 downto 0);
          A3     : in std_logic_vector (3 downto 0);
          A4     : in std_logic_vector (3 downto 0);
          A5     : in std_logic_vector (3 downto 0);
          RESULT : out std_logic_vector (6 downto 0));
end component;

signal W1:std_logic_vector(6 downto 0);
signal W2:std_logic_vector(6 downto 0);

signal C1 : signed(7 downto 0);
signal C2 : signed(7 downto 0);

begin
    
    C1 <= signed('0' & W1);
    C2 <= signed('0' & W2);
    
    first5busadder : adder5bus
    port map (A1     => A1,
              A2     => A2,
              A3     => A3,
              A4     => A4,
              A5     => A5,
              RESULT => W1);
              
    second5busadder : adder5bus
    port map (A1     => A6,
              A2     => A7,
              A3     => A8,
              A4     => A9,
              A5     => A10,
              RESULT => W2);
              
    RESULT <= std_logic_vector(C1 + C2);

end Behavioral;
