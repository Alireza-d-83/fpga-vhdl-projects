library ieee;
use ieee.std_logic_1164.all;

entity tb_Decoder2x4 is
end tb_Decoder2x4;

architecture tb of tb_Decoder2x4 is

    component Decoder2x4
        port (D : in std_logic_vector (1 downto 0);
              T : out std_logic_vector (3 downto 0));
    end component;

    signal D : std_logic_vector (1 downto 0);
    signal T : std_logic_vector (3 downto 0);

begin

    dut : Decoder2x4
    port map (D => D,
              T => T);

    stimuli : process
    begin
        -- ***EDIT*** Adapt initialization as needed
        D <= "01";
        wait for 10ns;
        D <= "00";
        wait for 10ns;
        D <= "01";
        wait for 10ns;
        D <= "10";
        wait for 10ns;
        D <= "11";
        wait for 10ns;

        -- ***EDIT*** Add stimuli here

        wait;
    end process;

end tb;