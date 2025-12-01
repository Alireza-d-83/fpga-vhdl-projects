----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/21/2025 06:39:24 PM
-- Design Name: 
-- Module Name: Controller - Behavioral
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

entity Controller is
    Port ( Clk : in  STD_LOGIC;
           Rst : in  STD_LOGIC;
           D   : in  STD_LOGIC_VECTOR (1 downto 0);
           T   : out STD_LOGIC_VECTOR (3 downto 0));
end Controller;

architecture Behavioral of Controller is

    component Decoder2x4
        port (D : in std_logic_vector (1 downto 0);
              T : out std_logic_vector (3 downto 0));
    end component;

    component D_FF
        port (Clk : in std_logic;
              Rst : in std_logic;
              D   : in std_logic;
              Q   : out std_logic);
    end component;

signal Q : std_logic_vector (1 downto 0);

begin

    D_FF_0 : D_FF
        port map (Clk => Clk,
                  Rst => Rst,
                  D   => D(0),
                  Q   => Q(0));

    D_FF_1 : D_FF
        port map (Clk => Clk,
                  Rst => Rst,
                  D   => D(1),
                  Q   => Q(1));

    decoder : Decoder2x4
    port map (D => Q,
              T => T);

end Behavioral;
