library ieee;
use ieee.std_logic_1164.all;

entity tb_D_FF is
end tb_D_FF;

architecture tb of tb_D_FF is

    component D_FF
        port (Clk : in std_logic;
              Rst : in std_logic;
              D   : in std_logic;
              Q   : out std_logic);
    end component;

    signal Clk : std_logic;
    signal Rst : std_logic;
    signal D   : std_logic;
    signal Q   : std_logic;

begin

    dut : D_FF
    port map (Clk => Clk,
              Rst => Rst,
              D   => D,
              Q   => Q);

    process
    begin
        clk <= '1';
        wait for 10ns;
        clk <= '0';
        wait for 10 ns;
    end process;
    stimuli : process
    begin
        -- ***EDIT*** Adapt initialization as needed
        Rst <= '1';
        D <= '0';
        wait for 15ns;
        Rst <= '0';
        D <= '1';
        wait for 20ns;
        Rst <= '0';
        D <= '0';
        wait for 20ns;
        Rst <= '0';
        D <= '1';

        -- ***EDIT*** Add stimuli here

        wait;
    end process;

end tb;