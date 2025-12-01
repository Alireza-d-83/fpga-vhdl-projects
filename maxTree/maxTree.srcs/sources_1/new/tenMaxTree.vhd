----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/28/2025 10:04:42 PM
-- Design Name: 
-- Module Name: tenMaxTree - Behavioral
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

entity tenMaxTree is
    Port ( I0 : in STD_LOGIC_VECTOR (7 downto 0);
            I1 : in STD_LOGIC_VECTOR (7 downto 0);
            I2 : in STD_LOGIC_VECTOR (7 downto 0);
            I3 : in STD_LOGIC_VECTOR (7 downto 0);
            I4 : in STD_LOGIC_VECTOR (7 downto 0);
            I5 : in STD_LOGIC_VECTOR (7 downto 0);
            I6 : in STD_LOGIC_VECTOR (7 downto 0);
            I7 : in STD_LOGIC_VECTOR (7 downto 0);
            I8 : in STD_LOGIC_VECTOR (7 downto 0);
            I9 : in STD_LOGIC_VECTOR (7 downto 0);  
           maxO : out STD_LOGIC_VECTOR (7 downto 0));
end tenMaxTree;

architecture Behavioral of tenMaxTree is
component compareBlock
        port (A : in std_logic_vector (7 downto 0);
              B : in std_logic_vector (7 downto 0);
              O : out std_logic_vector (7 downto 0));
    end component;
    signal o0: STD_LOGIC_VECTOR (7 downto 0);
    signal o1: STD_LOGIC_VECTOR (7 downto 0);
    signal o2: STD_LOGIC_VECTOR (7 downto 0);
    signal o3: STD_LOGIC_VECTOR (7 downto 0);
    signal o4: STD_LOGIC_VECTOR (7 downto 0);
    signal o5: STD_LOGIC_VECTOR (7 downto 0);
    signal o6: STD_LOGIC_VECTOR (7 downto 0);
    signal o7: STD_LOGIC_VECTOR (7 downto 0);
    signal o8: STD_LOGIC_VECTOR (7 downto 0);
begin

    c0 : compareBlock
        port map (A => I0,
                  B => I1,
                  O => O0);
    
    c1 : compareBlock
        port map (A => I2,
                  B => I3,
                  O => O1);
                  
    c2 : compareBlock
        port map (A => I4,
                  B => I5,
                  O => O2);
                  
    c3 : compareBlock
        port map (A => I6,
                  B => I7,
                  O => O3);
    
    c4 : compareBlock
        port map (A => I8,
                  B => I9,
                  O => O4);
                  
    c5 : compareBlock
        port map (A => o0,
                  B => o1,
                  O => o5);
                  
    c6 : compareBlock
        port map (A => o2,
                  B => o3,
                  O => O6);
                  
    c7 : compareBlock
        port map (A => o4,
                  B => o5,
                  O => o7);
    
    c8 : compareBlock
        port map (A => o6,
                  B => o7,
                  O => O8);
                  
    maxO <= o8;
                  



end Behavioral;
