library ieee;
use ieee.std_logic_1164.all;

entity tb_LIFO is
end tb_LIFO;

architecture tb of tb_LIFO is

    component LIFO
        port (Clk     : in std_logic;
              Reset   : in std_logic;
              DataIn  : in std_logic_vector (7 downto 0);
              DataOut : out std_logic_vector (7 downto 0);
              Push    : in std_logic;
              Pop     : in std_logic;
              Full    : out std_logic;
              Empty   : out std_logic);
    end component;

    signal Clk     : std_logic;
    signal Reset   : std_logic;
    signal DataIn  : std_logic_vector (7 downto 0);
    signal DataOut : std_logic_vector (7 downto 0);
    signal Push    : std_logic;
    signal Pop     : std_logic;
    signal Full    : std_logic;
    signal Empty   : std_logic;

begin
    
    dut : LIFO
    port map (Clk     => Clk,
              Reset   => Reset,
              DataIn  => DataIn,
              DataOut => DataOut,
              Push    => Push,
              Pop     => Pop,
              Full    => Full,
              Empty   => Empty);

    process
    begin
        Clk <= '0';
        wait for 100ns;
        Clk <= '1';
        wait for 100ns;
    end process;
    stimuli : process
    
    begin
        -- ***EDIT*** Adapt initialization as needed
        Reset <= '1';
        DataIn <= (others => '0');
        Push <= '0';
        Pop <= '0';
        wait for 150ns;
        Reset <= '0';
        DataIn <= x"13";
        Push <= '1';
        Pop <= '0';
        wait for 400ns;
        DataIn <= x"15";
        Push <= '1';
        Pop <= '0';
        wait for 400ns;
        DataIn <= x"23";
        Push <= '1';
        Pop <= '0';
        wait for 400ns;
        Reset <= '0';
        DataIn <= (others => '0');
        Push <= '0';
        Pop <= '0';
        wait for 400ns;
        Reset <= '0';
        DataIn <= (others => '0');
        Push <= '0';
        Pop <= '1';
--        wait for 40ns;

        -- ***EDIT*** Add stimuli here

        wait;
    end process;

end tb;