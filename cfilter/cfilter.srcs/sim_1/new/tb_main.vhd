library ieee;
use ieee.std_logic_1164.all;

entity tb_main is
end tb_main;

architecture tb of tb_main is

    component main
        port (CLK : in std_logic;
              RST : in std_logic;
              WE  : in std_logic;
              X   : in std_logic_vector (3 downto 0);
              Y   : out std_logic_vector (7 downto 0));
    end component;

    signal CLK : std_logic;
    signal RST : std_logic;
    signal WE  : std_logic;
    signal X   : std_logic_vector (3 downto 0);
    signal Y   : std_logic_vector (7 downto 0);

begin

    dut : main
    port map (CLK => CLK,
              RST => RST,
              WE  => WE,
              X   => X,
              Y   => Y);
    
    process
    begin
        CLK <= '0';
        wait for 40ns;
        CLK <= '1';
        wait for 40ns;
    end process;

    stimuli : process
    begin
        -- ***EDIT*** Adapt initialization as needed
        RST <= '1';
        WE <= '0';
        X <= (others => '0');
        wait for 60ns;
        
        RST <= '0';
        WE <= '1';
        X <= "0101";
        wait for 80ns;
        
        RST <= '0';
        WE <= '1';
        X <= "1101";
        wait for 80ns;
        
        RST <= '0';
        WE <= '1';
        X <= "1010";
        wait for 80ns;
        
        RST <= '0';
        WE <= '1';
        X <= (others => '0');
--        wait for 60ns;

        -- ***EDIT*** Add stimuli here

        wait;
    end process;

end tb;