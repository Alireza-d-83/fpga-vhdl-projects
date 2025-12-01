library ieee;
use ieee.std_logic_1164.all;

entity tb_Controller is
end tb_Controller;

architecture tb of tb_Controller is

    component Controller
        port (Clk : in std_logic;
              Rst : in std_logic;
              D   : in std_logic_vector (1 downto 0);
              T   : out std_logic_vector (3 downto 0));
    end component;

    signal Clk : std_logic;
    signal Rst : std_logic;
    signal D   : std_logic_vector (1 downto 0);
    signal T   : std_logic_vector (3 downto 0);

begin

    dut : Controller
    port map (Clk => Clk,
              Rst => Rst,
              D   => D,
              T   => T);
    
    process
    begin
        Clk <= '0';
        wait for 10ns;
        Clk <= '1';
        wait for 10ns;
    end process;
    
    stimuli : process
    begin
        -- ***EDIT*** Adapt initialization as needed\
        Rst <= '1';
        D <= (others => '0');
        wait for 15ns;
        Rst <= '0';
        D <= "10";
        wait for 20ns;
        Rst <= '0';
        D <= "01";
        wait for 20ns;
        Rst <= '0';
        D <= "00";
        wait for 20ns;
        Rst <= '0';
        D <= "11";
--        wait for 20ns;

        -- ***EDIT*** Add stimuli here

        wait;
    end process;

end tb;