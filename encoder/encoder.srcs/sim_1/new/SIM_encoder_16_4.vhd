
library ieee;
use ieee.std_logic_1164.all;

entity tb_encoder_16_4 is
end tb_encoder_16_4;

architecture tb of tb_encoder_16_4 is

    component encoder_16_4
        port (A : in std_logic_vector (15 downto 0);
              C : out std_logic_vector (3 downto 0));
    end component;

    signal A : std_logic_vector (15 downto 0);
    signal C : std_logic_vector (3 downto 0);

begin

    dut : encoder_16_4
    port map (A => A,
              C => C);

    stimuli : process
    begin
        -- EDIT Adapt initialization as needed
        A <= (X"0001");
        wait for 20ns;
        A <= (X"0002");
        wait for 20ns;
        A <= (X"0004");
        wait for 20ns;
        A <= (X"0008");
        wait for 20ns;
        A <= (X"0010");
        wait for 20ns;
        A <= (X"0020");
        wait for 20ns;
        A <= (X"0040");
        wait for 20ns;
        A <= (X"0080");
        wait for 20ns;
        A <= (X"0100");
        wait for 20ns;
        A <= (X"0200");
        wait for 20ns;
        A <= (X"0400");
        wait for 20ns;
        A <= (X"0800");
        wait for 20ns;
        A <= (X"1000");
        wait for 20ns;
        A <= (X"2000");
        wait for 20ns;
        A <= (X"4000");
        wait for 20ns;
        A <= (X"8000");
        wait;
    end process;

end tb;