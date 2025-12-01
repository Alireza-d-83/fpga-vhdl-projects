----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/16/2025 08:37:22 AM
-- Design Name: 
-- Module Name: MAIN - Behavioral
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

entity MAIN is
  Port (
           CLK : in std_logic;
           
           RA1 : in std_logic_vector (9 downto 0);
           RD1 : out STD_LOGIC_VECTOR (7 downto 0);
           
           RA2 : in STD_LOGIC_VECTOR (9 downto 0); 
           RD2 : out STD_LOGIC_VECTOR (7 downto 0);
                     
           WE  : in STD_LOGIC;
           WA  : in STD_LOGIC_VECTOR (9 downto 0);
           
           OP  : in std_logic_vector (1 downto 0));
end MAIN;

architecture Behavioral of MAIN is

component Memory
    port (CLK : in std_logic;
          RA1 : in std_logic_vector (9 downto 0);
          RD1 : out std_logic_vector (7 downto 0);
          RA2 : in std_logic_vector (9 downto 0);
          RD2 : out std_logic_vector (7 downto 0);
          WE  : in std_logic;
          WA  : in std_logic_vector (9 downto 0);
          D   : in std_logic_vector (7 downto 0));
end component;

component ALU
        port (RD1 : in std_logic_vector (7 downto 0);
              RD2 : in std_logic_vector (7 downto 0);
              OP  : in std_logic_vector (1 downto 0);
              D   : out std_logic_vector (7 downto 0));
    end component;

signal TRD1 : std_logic_vector (7 downto 0);
signal TRD2 : std_logic_vector (7 downto 0);
signal D : std_logic_vector (7 downto 0);

begin

dut2 : ALU
    port map (RD1 => TRD1,
              RD2 => TRD2,
              OP  => OP,
              D   => D);
              
dut1 : Memory
    port map (CLK => CLK,
              RA1 => RA1,
              RD1 => TRD1,
              RA2 => RA2,
              RD2 => TRD2,
              WE  => WE,
              WA  => WA,
              D   => D);

RD1 <= TRD1;
RD2 <= TRD2;

end Behavioral;
