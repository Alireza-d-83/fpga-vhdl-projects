library ieee;
use ieee.std_logic_1164.all;

entity tb_MAIN is
end tb_MAIN;

architecture tb of tb_MAIN is

    component MAIN
        port (CLK : in std_logic;
              RA1 : in std_logic_vector (9 downto 0);
              RD1 : out std_logic_vector (7 downto 0);
              RA2 : in std_logic_vector (9 downto 0);
              RD2 : out std_logic_vector (7 downto 0);
              WE  : in std_logic;
              WA  : in std_logic_vector (9 downto 0);
              OP  : in std_logic_vector (1 downto 0));
    end component;

    signal CLK : std_logic;
    signal RA1 : std_logic_vector (9 downto 0);
    signal RD1 : std_logic_vector (7 downto 0);
    signal RA2 : std_logic_vector (9 downto 0);
    signal RD2 : std_logic_vector (7 downto 0);
    signal WE  : std_logic;
    signal WA  : std_logic_vector (9 downto 0);
    signal OP  : std_logic_vector (1 downto 0);

begin
    
    process begin
            CLK <= '0';
            wait for 20ns;
            CLK <= '1';
            wait for 20ns;
        end process;
    
    dut : MAIN
    port map (CLK => CLK,
              RA1 => RA1,
              RD1 => RD1,
              RA2 => RA2,
              RD2 => RD2,
              WE  => WE,
              WA  => WA,
              OP  => OP);

    stimuli : process
        begin
        -- EDIT Adapt initialization as needed
        
        RA1 <= "0000000000";
        RA2 <= "0000000001";
        WE <= '0';
        WA <= "0000000000";
        OP <= "00";
        wait for 50ns;
        
        RA1 <= "0000000000";
        RA2 <= "0000000001";
        WE <= '1';
        WA <= "0000000000";
        OP <= "00";
        wait for 50ns;
        
        RA1 <= "0000000000";
        RA2 <= "0000000001";
        WE <= '1';
        WA <= "0000000000";
        OP <= "00";
        wait for 50ns;
        
        RA1 <= "0000000000";
        RA2 <= "0000000001";
        WE <= '1';
        WA <= "0000000000";
        OP <= "00";
        wait for 50ns;
        
        RA1 <= "0000000000";
        RA2 <= "0000000001";
        WE <= '1';
        WA <= "0000000000";
        OP <= "00";
        wait for 50ns;

        -- EDIT Add stimuli here

        wait;
    end process;

end tb;