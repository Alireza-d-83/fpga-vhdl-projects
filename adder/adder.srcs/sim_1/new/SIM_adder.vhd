
-- Testbench automatically generated online
-- at https://vhdl.lapinoo.net
-- Generation date : 26.2.2025 01:47:59 UTC

library ieee;
use ieee.std_logic_1164.all;

entity tb_adder is
end tb_adder;

architecture tb of tb_adder is

    component adder
        port (A1     : in std_logic_vector (3 downto 0);
              A2     : in std_logic_vector (3 downto 0);
              A3     : in std_logic_vector (3 downto 0);
              A4     : in std_logic_vector (3 downto 0);
              A5     : in std_logic_vector (3 downto 0);
              A6     : in std_logic_vector (3 downto 0);
              A7     : in std_logic_vector (3 downto 0);
              A8     : in std_logic_vector (3 downto 0);
              A9     : in std_logic_vector (3 downto 0);
              A10    : in std_logic_vector (3 downto 0);
              RESULT : out std_logic_vector (7 downto 0));
    end component;

    signal A1     : std_logic_vector (3 downto 0);
    signal A2     : std_logic_vector (3 downto 0);
    signal A3     : std_logic_vector (3 downto 0);
    signal A4     : std_logic_vector (3 downto 0);
    signal A5     : std_logic_vector (3 downto 0);
    signal A6     : std_logic_vector (3 downto 0);
    signal A7     : std_logic_vector (3 downto 0);
    signal A8     : std_logic_vector (3 downto 0);
    signal A9     : std_logic_vector (3 downto 0);
    signal A10    : std_logic_vector (3 downto 0);
    signal RESULT : std_logic_vector (7 downto 0);

begin

    dut : adder
    port map (A1     => A1,
              A2     => A2,
              A3     => A3,
              A4     => A4,
              A5     => A5,
              A6     => A6,
              A7     => A7,
              A8     => A8,
              A9     => A9,
              A10    => A10,
              RESULT => RESULT);

    stimuli : process
    begin
        -- EDIT Adapt initialization as needed
        A1  <= X"1";
        A2  <= X"2";
        A3  <= X"3";
        A4  <= X"4";
        A5  <= X"5";
        A6  <= X"6";
        A7  <= X"7";
        A8  <= X"8";
        A9  <= X"9";
        A10 <= X"a";

        -- EDIT Add stimuli here

        wait;
    end process;

end tb;