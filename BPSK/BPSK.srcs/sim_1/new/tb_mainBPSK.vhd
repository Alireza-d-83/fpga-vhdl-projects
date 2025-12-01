library ieee;
use ieee.std_logic_1164.all;

entity tb_mainBPSK is
end tb_mainBPSK;

architecture tb of tb_mainBPSK is

    component mainBPSK
        port (CLK       : in std_logic;
              RST       : in std_logic;
              dataIn    : in std_logic;
              validIn   : in std_logic;
              validOut  : out std_logic;
              symbolOut : out std_logic_vector (1 downto 0));
    end component;

    signal CLK       : std_logic := '0';  -- ???????? ?????
    signal RST       : std_logic := '0';
    signal dataIn    : std_logic := '0';
    signal validIn   : std_logic := '0';
    signal validOut  : std_logic;
    signal symbolOut : std_logic_vector (1 downto 0);

begin

    -- Component instantiation
    dut : mainBPSK
    port map (CLK       => CLK,
              RST       => RST,
              dataIn    => dataIn,
              validIn   => validIn,
              validOut  => validOut,
              symbolOut => symbolOut);
    
    -- Clock generation
    CLK_sim : process
    begin
        CLK <= '0';
        wait for 10 ns;
        CLK <= '1';
        wait for 10 ns;
    end process;
    
    -- Stimuli process
    stimuli : process
    begin
        -- Apply reset
        RST <= '1';
        wait for 20 ns;
        RST <= '0';
        wait for 20 ns;

        -- Test Case 1: dataIn = '0', validIn = '1'
        dataIn <= '0';
        validIn <= '1';
        wait for 20 ns;

        -- Test Case 2: dataIn = '1', validIn = '1'
        dataIn <= '1';
        validIn <= '1';
        wait for 20 ns;

        -- Test Case 3: Invalid dataIn = 'X', validIn = '1'
        dataIn <= 'X';  -- ???? ??? ????? ???????
        validIn <= '1';
        wait for 20 ns;

        -- Test Case 4: dataIn = '0', validIn = '0' (????? ?? ????? ????? ????)
        dataIn <= '0';
        validIn <= '0';
        wait for 20 ns;

        -- Test Case 5: Final reset
        RST <= '1';
        wait for 20 ns;
        RST <= '0';
        wait;

    end process;

end tb;
