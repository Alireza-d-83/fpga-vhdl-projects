----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/25/2025 05:18:44 PM
-- Design Name: 
-- Module Name: FIFO - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity LIFO is
    Port ( Clk : in STD_LOGIC;
           Reset : in STD_LOGIC;
           DataIn : in STD_LOGIC_VECTOR (7 downto 0);
           DataOut : out STD_LOGIC_VECTOR (7 downto 0);
           Push : in STD_LOGIC;
           Pop : in STD_LOGIC;
           Full : out STD_LOGIC;
           Empty : out STD_LOGIC);
end LIFO;

architecture Behavioral of LIFO is
    
    type ram_type is array (0 to 31) of std_logic_vector (7 downto 0);
    signal ram : ram_type := (others => (others => '0'));

    type state_type is (T0, T1, T2);
    signal state : state_type;
    
    signal sp : std_logic_vector (4 downto 0);
    
    signal initial_Full : STD_LOGIC;
    signal initial_Empty : STD_LOGIC;
begin
    
    process (Clk)
    begin
        if (rising_edge(Clk)) then
            if (Reset='1') then
                ram <= (others => (others => '0'));
                sp <= (others => '0');
                state<=T0;
                initial_Full<='0';
                initial_Empty<='1';
            else
                case state is
                    when T0 =>
                        --DataOut <= (others => '0');
                        if (Push='1') then
                            if (initial_Full='0') then
                                sp<=std_logic_vector(unsigned(sp) - 1);
                                state<=T1;
                            end if;
                        elsif (Pop='1') then
                            if (initial_empty='0') then
                                DataOut <= ram(To_integer(Unsigned(sp)));
                                initial_full <= '0';
                                sp<=std_logic_vector(unsigned(sp) + 1);
                                state <= T2;
                            end if;
                        end if;
                    when T1 =>
                        ram(To_integer(Unsigned(sp)))<=DataIn;
                        initial_empty<='0';
                        if (sp="00000") then
                            initial_full<='1';
                        end if;
                        state<=t0;
                    when T2 =>
                        if (sp = "00000") then
                            initial_empty <= '1';
                        end if;
                        state <= T0;
                    when others =>
                        state<=T0;
                end case;
            end if;
        end if;
    end process;
    full<=initial_full;
    empty<=initial_empty;

end Behavioral;
