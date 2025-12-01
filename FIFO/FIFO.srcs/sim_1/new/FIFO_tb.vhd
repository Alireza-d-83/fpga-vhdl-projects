library ieee;
use ieee.std_logic_1164.all;

entity tb_FIFO is
end tb_FIFO;

architecture tb of tb_FIFO is

    component FIFO
        port (Clk     : in std_logic;
              Reset   : in std_logic;
              Write   : in std_logic;
              Read    : in std_logic;
              DataIn  : in std_logic_vector (7 downto 0);
              DataOut : out std_logic_vector (7 downto 0);
              Full    : out std_logic;
              Empty   : out std_logic);
    end component;

    signal Clk     : std_logic;
    signal Reset   : std_logic;
    signal Write   : std_logic;
    signal Read    : std_logic;
    signal DataIn  : std_logic_vector (7 downto 0);
    signal DataOut : std_logic_vector (7 downto 0);
    signal Full    : std_logic;
    signal Empty   : std_logic;

begin

    dut : FIFO
    port map (Clk     => Clk,
              Reset   => Reset,
              Write   => Write,
              Read    => Read,
              DataIn  => DataIn,
              DataOut => DataOut,
              Full    => Full,
              Empty   => Empty);
    
    process begin
    clk <= '1';
    wait for 5ns;
    clk <= '0';
    wait for 5ns;
    end process;
    
    stimuli : process
    begin
        -- ***EDIT*** Adapt initialization as needed

        Reset <= '1';
        wait for 10ns;
        reset <= '0';
        Write <= '1';
        Read <= '0';
        DataIn <= (others => '1');
        wait for 100ns;
        write <= '0';
        read <= '1';
        -- ***EDIT*** Add stimuli here

        wait;
    end process;

end tb;