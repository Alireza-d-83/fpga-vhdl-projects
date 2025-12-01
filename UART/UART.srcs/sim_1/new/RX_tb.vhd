library ieee;
use ieee.std_logic_1164.all;

entity tb_RX is
end tb_RX;

architecture tb of tb_RX is

    component RX
        port (CLK    : in std_logic;
              En_out : out std_logic;
              RX_in  : in std_logic;
              Data_out   : out std_logic_vector (7 downto 0));
    end component;

    signal CLK    : std_logic;
    signal En_out : std_logic;
    signal RX_in  : std_logic;
    signal Data_out   : std_logic_vector (7 downto 0);

begin

    dut : RX
    port map (CLK    => CLK,
              En_out => En_out,
              RX_in  => RX_in,
              Data_out   => Data_out);
    
    process
    begin
        CLK <= '0';
        wait for 62ns;
        CLK <= '1';
        wait for 62ns;
    end process;
    
    stimuli : process
    begin
        -- ***EDIT*** Adapt initialization as needed
        RX_in <= '0';
        wait for 516us;
        RX_in <= '1';
        wait for 516us;
        RX_in <= '1';
        wait for 516us;
        RX_in <= '0';
        wait for 516us;
        RX_in <= '0';
        wait for 516us;
        RX_in <= '1';
        wait for 516us;
        RX_in <= '0';
        wait for 516us;
        RX_in <= '0';
        wait for 516us;
        RX_in <= '1';
--        wait for 1us;

        -- ***EDIT*** Add stimuli here

        wait;
    end process;

end tb;