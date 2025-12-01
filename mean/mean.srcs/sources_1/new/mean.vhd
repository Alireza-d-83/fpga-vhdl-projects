----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/21/2025 04:30:40 PM
-- Design Name: 
-- Module Name: mean - Behavioral
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

entity mean is
    Port ( Rst : in STD_LOGIC;
           Clk : in STD_LOGIC;
           EnIn : in STD_LOGIC;
           DataIn : in STD_LOGIC_VECTOR (3 downto 0);
           DataOut : out STD_LOGIC_VECTOR (3 downto 0);
           EnOut : out STD_LOGIC);
end mean;

architecture Behavioral of mean is
    
    --Controller:
    component Controller
        port (Clk : in std_logic;
              Rst : in std_logic;
              D   : in std_logic_vector (1 downto 0);
              T   : out std_logic_vector (3 downto 0));
    end component;
    
    --RS_FF:
    component SR_FF
        port (Clk   : in std_logic;
              R     : in std_logic;
              S     : in std_logic;
              EnOut : out std_logic);
    end component;
    
    --AcRegister:
    component AcRegistor
        port (Clk  : in  std_logic;
              Load : in  std_logic;
              Rst  : in  std_logic;
              D    : in  std_logic_vector (6 downto 0);
              Q    : out std_logic_vector (6 downto 0));
    end component;
    
    --UpCounter:
    component UpCounter
        port (Clk : in std_logic;
              En  : in std_logic;
              R   : in std_logic;
              N   : out std_logic_vector (2 downto 0));
    end component;
    
    --bit4Register:
    component bit4Register
        port (Clk  : in std_logic;
              Rst  : in std_logic;
              Load : in std_logic;
              D    : in std_logic_vector (3 downto 0);
              Q    : out std_logic_vector (3 downto 0));
    end component;
    
    --Adder4bit:
    component Adder4bit
        port (A : in std_logic_vector (3 downto 0);
              B : in std_logic_vector (6 downto 0);
              C : out std_logic_vector (6 downto 0));
    end component;
    
    --Equal:
    component Equal
        port (A : in std_logic_vector (2 downto 0);
              B : in std_logic_vector (2 downto 0);
              O : out std_logic);
    end component;

signal D     : std_logic_vector (1 downto 0);
signal T     : std_logic_vector (3 downto 0);
signal N     : std_logic_vector (2 downto 0);
signal Q     : std_logic_vector (3 downto 0);
signal RegD  : std_logic_vector (3 downto 0);
signal RDOut : std_logic_vector (3 downto 0);
signal ACOut : std_logic_vector (6 downto 0);
signal ACIn  : std_logic_vector (6 downto 0);
signal RDL   : std_logic;
signal UpCounterEn   : std_logic;
signal Eq    : std_logic;

begin
    D(0) <= (T(0) and EnIn) or (T(1) and not(Eq));
    D(1) <= T(1) and Eq;
    ControlUnit : Controller
    port map (Clk => Clk,
              Rst => Rst,
              D   => D,
              T   => T);
    
    EnOutControlUnit : SR_FF
        port map (Clk   => Clk,
                  R     => T(0),
                  S     => T(2),
                  EnOut => EnOut);
    
    ACR : AcRegistor
    port map (Clk  => Clk,
              Load => T(1),
              Rst  => T(0),
              D    => ACIn,
              Q    => ACOut);
    
    Adder : Adder4bit
    port map (A => RDOut,
              B => ACOut,
              C => ACIn);
    
    RDL <= EnIn or T(1);
    RD : bit4Register
    port map (Clk  => Clk,
              Rst  => Rst,
              Load => RDL,
              D    => DataIn,
              Q    => RDOut);
    
    UpCounterEn <= T(1) and (not(Eq));
    UpCounterUnit : UpCounter
    port map (Clk => Clk,
              En  => UpCounterEn,
              R   => T(0),
              N   => N);
    
    EqualUnit : Equal
    port map (A => "111",
              B => N,
              O => Eq);
    
    OutPutRegister : bit4Register
    port map (Clk  => Clk,
              Rst  => Rst,
              Load => T(2),
              D    => ACOut(6 downto 3),
              Q    => DataOut);

end Behavioral;
