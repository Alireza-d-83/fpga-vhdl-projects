----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/26/2025 04:01:39 AM
-- Design Name: 
-- Module Name: adder5bus - Behavioral
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

entity adder5bus is
    Port ( A1 : in STD_LOGIC_VECTOR (3 downto 0);
           A2 : in STD_LOGIC_VECTOR (3 downto 0);
           A3 : in STD_LOGIC_VECTOR (3 downto 0);
           A4 : in STD_LOGIC_VECTOR (3 downto 0);
           A5 : in STD_LOGIC_VECTOR (3 downto 0);
           RESULT : out STD_LOGIC_VECTOR (6 downto 0));
end adder5bus;

architecture Behavioral of adder5bus is

component adder2bus
    port (A1     : in std_logic_vector (3 downto 0);
          A2     : in std_logic_vector (3 downto 0);
          RESULT : out std_logic_vector (4 downto 0));
end component;

signal W1 : std_logic_vector(4 downto 0);
signal W2 : std_logic_vector(4 downto 0);

signal C1 : signed(6 downto 0);
signal C2 : signed(6 downto 0);
signal C3 : signed(6 downto 0);

begin
    
    C1 <= signed('0' & '0' & W1);
    C2 <= signed('0' & '0' & W2);
    C3 <= signed('0' & '0' & '0' & A5);
    
    
    first2busadder : adder2bus
    port map (A1     => A1,
              A2     => A2,
              RESULT => W1);

    second2busadder : adder2bus
    port map (A1     => A3,
              A2     => A4,
              RESULT => W2);
    
    RESULT <= std_logic_vector(C1 + C2 + C3); 

end Behavioral;
