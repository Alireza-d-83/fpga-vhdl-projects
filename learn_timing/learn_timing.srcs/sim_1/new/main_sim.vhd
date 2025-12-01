library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_timing_example is
end tb_timing_example;

architecture Behavioral of tb_timing_example is
    signal clk   : std_logic := '0';
    signal rst   : std_logic := '0';
    signal d_in  : std_logic := '0';
    signal q_out : std_logic;

begin

    uut: entity work.timing_example
        port map (
            clk   => clk,
            rst   => rst,
            d_in  => d_in,
            q_out => q_out
        );

    clk_process: process
    begin
        clk <= '0';
        wait for 10 ns;
        clk <= '1';
        wait for 10 ns;
    end process;

    stim_proc: process
    begin
        rst <= '1';
        wait for 25 ns;
        rst <= '0';
        wait for 20 ns;

        d_in <= '1';
        wait for 40 ns;
        d_in <= '0';
        wait for 40 ns;

        d_in <= '1';
        wait for 100 ns;

        wait;
    end process;

end Behavioral;
