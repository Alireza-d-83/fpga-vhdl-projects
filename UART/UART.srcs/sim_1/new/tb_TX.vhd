
library ieee;
use ieee.std_logic_1164.all;

entity tb_TX is
end tb_TX;

architecture tb of tb_TX is

    component TX
        port (CLK    : in std_logic;
              En_in  : in std_logic;
              TX_out : out std_logic;
              Data_in   : in std_logic_vector (7 downto 0);
              Busy   : out std_logic);
    end component;

    signal CLK    : std_logic;
    signal En_in  : std_logic;
    signal TX_out : std_logic;
    signal Data_in   : std_logic_vector (7 downto 0);
    signal Busy   : std_logic;

begin

    dut : TX
    port map (CLK    => CLK,
              En_in  => En_in,
              TX_out => TX_out,
              Data_in   => Data_in,
              Busy   => Busy);
    
    process 
    begin
        CLK <= '0';
        wait for 62ns;
        CLK <= '1';
        wait for 62ns;
    end process;
    
    stimuli : process
    begin
        -- ***EDIT*** Adapt initialization as needed
        En_in <= '0';
        Data_in <= (others => '0');
        wait for 100ns;
        En_in <= '1';
        Data_in <= x"99";
        wait for 100ns;
        En_in <= '0';
        Data_in <= (others => '0');
--        wait for 40ns;
        -- ***EDIT*** Add stimuli here

        wait;
    end process;

end tb;