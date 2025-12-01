
library ieee;
use ieee.std_logic_1164.all;

entity tb_main is
end tb_main;

architecture tb of tb_main is

    component main
        port (CLK      : in std_logic;
              Data_in  : in std_logic_vector (7 downto 0);
              En_in    : in std_logic;
              Data_out : out std_logic_vector (7 downto 0);
              Busy_TX  : out std_logic;
              En_out   : out std_logic);
    end component;

    signal CLK      : std_logic;
    signal Data_in  : std_logic_vector (7 downto 0);
    signal En_in    : std_logic;
    signal Data_out : std_logic_vector (7 downto 0);
    signal Busy_TX  : std_logic;
    signal En_out   : std_logic;

begin

    dut : main
    port map (CLK      => CLK,
              Data_in  => Data_in,
              En_in    => En_in,
              Data_out => Data_out,
              Busy_TX  => Busy_TX,
              En_out   => En_out);
    
    
    process begin
        clk <= '0';
        wait for 62ns;
        clk <= '1';
        wait for 62ns;
    end process;
    
    stimuli : process
    begin
        -- ***EDIT*** Adapt initialization as needed
        Data_in <= x"99";
        En_in <= '1';
        wait for 200ns;
        En_in<='0';

        -- ***EDIT*** Add stimuli here

        wait;
    end process;

end tb;