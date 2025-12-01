library ieee;
use ieee.std_logic_1164.all;

entity tb_mux_8_1 is
end tb_mux_8_1;

architecture tb of tb_mux_8_1 is

    component mux_8_1
        port (A : in std_logic_vector (7 downto 0);
              S : in std_logic_vector (2 downto 0);
              C : out std_logic);
    end component;

    signal A : std_logic_vector (7 downto 0);
    signal S : std_logic_vector (2 downto 0);
    signal C : std_logic;

begin

    dut : mux_8_1
    port map (A => A,
              S => S,
              C => C);

    stimuli : process
    begin
        -- EDIT Adapt initialization as needed
        A <= (others => '0');
        S <= (others => '0');

        -- EDIT Add stimuli here

        wait;
    end process;

end tb;
