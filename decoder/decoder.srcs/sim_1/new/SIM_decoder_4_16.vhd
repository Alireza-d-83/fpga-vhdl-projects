library ieee;
use ieee.std_logic_1164.all;

entity tb_decoder_4_16 is
end tb_decoder_4_16;

architecture tb of tb_decoder_4_16 is

    component decoder_4_16
        port (A : in std_logic_vector (3 downto 0);
              C : out std_logic_vector (15 downto 0));
    end component;

    signal A : std_logic_vector (3 downto 0);
    signal C : std_logic_vector (15 downto 0);

begin

    dut : decoder_4_16
    port map (A => A,
              C => C);

    stimuli : process
    begin
        -- EDIT Adapt initialization as needed
        A <= (others => '0');
        wait for 20ns;
        A <= ("0001");
        wait for 20ns;
        A <= ("0010");
        wait for 20ns;
        A <= ("0011");
        wait for 20ns;
        A <= ("0100");
        wait for 20ns;
        A <= ("0101");
        wait for 20ns;
        A <= ("0110");
        wait for 20ns;
        A <= ("0111");
        wait for 20ns;
        A <= ("1000");
        wait for 20ns;
        A <= ("1001");
        wait for 20ns;
        A <= ("1010");
        wait for 20ns;
        A <= ("1011");
        wait for 20ns;
        A <= ("1100");
        wait for 20ns;
        A <= ("1101");
        wait for 20ns;
        A <= ("1110");
        wait for 20ns;
        A <= (others => '1');
        wait for 20ns;
    end process;

end tb;