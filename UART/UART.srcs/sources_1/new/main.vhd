----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/16/2025 09:29:40 PM
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity main is
    Port ( CLK : in STD_LOGIC;
           Data_in : in std_logic_vector (7 downto 0);
           En_in : in STD_LOGIC;
           Data_out : out std_logic_vector (7 downto 0);
           Busy_TX : out STD_LOGIC;
           En_out : out STD_LOGIC);
end main;

architecture Behavioral of main is
    
    component TX
        port (CLK       : in std_logic;
              En_in     : in std_logic;
              TX_out    : out std_logic;
              Data_in   : in std_logic_vector (7 downto 0);
              Busy      : out std_logic);
    end component;

    component RX
        port (CLK        : in std_logic;
              En_out     : out std_logic;
              RX_in      : in std_logic;
              Data_out   : out std_logic_vector (7 downto 0));
    end component;
    
    signal TX_RX : std_logic;

begin

    TXcomp : TX
    port map (CLK    => CLK,
              En_in  => En_in,
              TX_out => TX_RX,
              Data_in => Data_in,
              Busy   => Busy_TX);
              
              
    RXcomp : RX
    port map (CLK    => CLK,
              En_out => En_out,
              RX_in  => TX_RX,
              Data_out => Data_out);

end Behavioral;
