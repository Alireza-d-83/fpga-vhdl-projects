library ieee;
use ieee.std_logic_1164.all;

entity tb_mux8to1 is
end tb_mux8to1;

architecture tb of tb_mux8to1 is

    component mux8to1
        port (I : in std_logic_vector (7 downto 0);
              S : in std_logic_vector (2 downto 0);
              O : out std_logic);
    end component;

    signal I : std_logic_vector (7 downto 0);
    signal S : std_logic_vector (2 downto 0);
    signal O : std_logic;

begin

    dut : mux8to1
    port map (I => I,
              S => S,
              O => O);

    stimuli : process
    begin
        -- EDIT Adapt initialization as needed
        I <= (others => '0');
        S <= (others => '0');
        wait for 10 ns;
        
        I <= x"ac";
        S <= "101";
        wait for 10 ns;
        -- EDIT Add stimuli here

        wait;
    end process;

end tb;