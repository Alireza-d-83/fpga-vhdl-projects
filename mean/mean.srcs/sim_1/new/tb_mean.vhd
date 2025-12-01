library ieee;
use ieee.std_logic_1164.all;

entity tb_mean is
end tb_mean;

architecture tb of tb_mean is

    component mean
        port (Rst     : in std_logic;
              Clk     : in std_logic;
              EnIn    : in std_logic;
              DataIn  : in std_logic_vector (3 downto 0);
              DataOut : out std_logic_vector (3 downto 0);
              EnOut   : out std_logic);
    end component;

    signal Rst     : std_logic;
    signal Clk     : std_logic;
    signal EnIn    : std_logic;
    signal DataIn  : std_logic_vector (3 downto 0);
    signal DataOut : std_logic_vector (3 downto 0);
    signal EnOut   : std_logic;

begin

    dut : mean
    port map (Rst     => Rst,
              Clk     => Clk,
              EnIn    => EnIn,
              DataIn  => DataIn,
              DataOut => DataOut,
              EnOut   => EnOut);

    process
    begin
        Clk <= '0';
        wait for 10ns;
        Clk <= '1';
        wait for 10ns;
    end process;
    
    stimuli : process
    begin
        -- ***EDIT*** Adapt initialization as needed
        Rst <= '1';
        EnIn <= '0';
        DataIn <= (others => '0');
        wait for 15ns;
        Rst <= '0';
        EnIn <= '1';
        DataIn <= x"1";
        wait for 20ns;
        DataIn <= x"2";
        wait for 20ns;
        DataIn <= x"3";
        wait for 20ns;
        DataIn <= x"4";
        wait for 20ns;
        DataIn <= x"5";
        wait for 20ns;
        DataIn <= x"6";
        wait for 20ns;
        DataIn <= x"7";
        wait for 20ns;
        DataIn <= x"8";
--        wait for 20ns;

        -- ***EDIT*** Add stimuli here

        wait;
    end process;

end tb;