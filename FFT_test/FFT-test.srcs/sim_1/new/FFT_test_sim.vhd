library ieee;
use ieee.std_logic_1164.all;

entity tb_FFT_core is
end tb_FFT_core;

architecture tb of tb_FFT_core is

    component FFT_core
        port (clk : in std_logic;
              rst : in std_logic);
    end component;

    signal clk : std_logic;
    signal rst : std_logic;

begin

    dut : FFT_core
    port map (clk => clk,
              rst => rst);
    
    process begin
     clk <= '1';
     wait for(20ns);
     clk <= '0';
     wait for(20ns);
    end process;
    
    stimuli : process
    begin
        -- ***EDIT*** Adapt initialization as needed
        rst <= '0';

        -- ***EDIT*** Add stimuli here

        wait;
    end process;

end tb;