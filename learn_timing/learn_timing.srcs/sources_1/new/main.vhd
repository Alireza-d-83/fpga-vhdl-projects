library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity timing_example is
    Port (
        clk   : in  std_logic;
        rst   : in  std_logic;
        d_in  : in  std_logic;
        q_out : out std_logic
    );
end timing_example;

architecture Behavioral of timing_example is
    signal ff1, ff2 : std_logic;
    signal long_logic, short_logic : std_logic;
begin

    process(clk, rst)
    begin
        if rst = '1' then
            ff1 <= '0';
        elsif rising_edge(clk) then
            ff1 <= d_in;
        end if;
    end process;

    long_logic <= ff1 and ff1 and ff1 and ff1;
    short_logic <= ff1;

    process(clk, rst)
    begin
        if rst = '1' then
            ff2 <= '0';
        elsif rising_edge(clk) then
            ff2 <= long_logic;
        end if;
    end process;

    q_out <= ff2;

end Behavioral;
