library ieee;
use ieee.std_logic_1164.all;

entity tb_mux16to1 is
end tb_mux16to1;

architecture tb of tb_mux16to1 is

    component mux16to1
        port (I : in std_logic_vector (15 downto 0);
              S : in std_logic_vector (3 downto 0);
              O : out std_logic);
    end component;

    signal I : std_logic_vector (15 downto 0);
    signal S : std_logic_vector (3 downto 0);
    signal O : std_logic;

begin

    dut : mux16to1
    port map (I => I,
              S => S,
              O => O);

    stimuli : process
    begin
        -- EDIT Adapt initialization as needed
        I <= (others => '0');
        S <= (others => '0');
        wait for 100 ns;
        
        I <= x"0002";
        S <= x"1";
        wait for 100 ns;
        
        I <= x"0080";
        S <= x"a";
        wait for 100 ns;
        
        I <= x"f000";
        S <= x"f";
        wait for 100 ns;
        -- EDIT Add stimuli here

        wait;
    end process;

end tb;