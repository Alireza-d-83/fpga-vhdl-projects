-- Testbench automatically generated online
-- at https://vhdl.lapinoo.net
-- Generation date : 28.2.2025 18:49:37 UTC

library ieee;
use ieee.std_logic_1164.all;

entity tb_tenMaxTree is
end tb_tenMaxTree;

architecture tb of tb_tenMaxTree is

    component tenMaxTree
        port (I0   : in std_logic_vector (7 downto 0);
              I1   : in std_logic_vector (7 downto 0);
              I2   : in std_logic_vector (7 downto 0);
              I3   : in std_logic_vector (7 downto 0);
              I4   : in std_logic_vector (7 downto 0);
              I5   : in std_logic_vector (7 downto 0);
              I6   : in std_logic_vector (7 downto 0);
              I7   : in std_logic_vector (7 downto 0);
              I8   : in std_logic_vector (7 downto 0);
              I9   : in std_logic_vector (7 downto 0);
              maxO : out std_logic_vector (7 downto 0));
    end component;

    signal I0   : std_logic_vector (7 downto 0);
    signal I1   : std_logic_vector (7 downto 0);
    signal I2   : std_logic_vector (7 downto 0);
    signal I3   : std_logic_vector (7 downto 0);
    signal I4   : std_logic_vector (7 downto 0);
    signal I5   : std_logic_vector (7 downto 0);
    signal I6   : std_logic_vector (7 downto 0);
    signal I7   : std_logic_vector (7 downto 0);
    signal I8   : std_logic_vector (7 downto 0);
    signal I9   : std_logic_vector (7 downto 0);
    signal maxO : std_logic_vector (7 downto 0);

begin

    dut : tenMaxTree
    port map (I0   => I0,
              I1   => I1,
              I2   => I2,
              I3   => I3,
              I4   => I4,
              I5   => I5,
              I6   => I6,
              I7   => I7,
              I8   => I8,
              I9   => I9,
              maxO => maxO);

    stimuli : process
    begin
        I0 <= X"F1";
        I1 <= X"FA";
        I2 <= X"FB";
        I3 <= X"FC";
        I4 <= X"FC";
        I5 <= X"F0";
        I6 <= X"F1";
        I7 <= X"F2";
        I8 <= X"F3";
        I9 <= X"F4";
        

        wait;
    end process;

end tb;

-- Configuration block below is required by some simulators. Usually no need to edit.

configuration cfg_tb_tenMaxTree of tb_tenMaxTree is
    for tb
    end for;
end cfg_tb_tenMaxTree;
