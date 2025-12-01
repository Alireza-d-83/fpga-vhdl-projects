----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/16/2025 06:08:15 PM
-- Design Name: 
-- Module Name: TX - Behavioral
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

entity TX is
    Port ( CLK : in STD_LOGIC;
           En_in : in STD_LOGIC;
           TX_out : out STD_LOGIC;
           Data_in : in STD_LOGIC_VECTOR (7 downto 0);
           Busy : out STD_LOGIC);
end TX;

architecture Behavioral of TX is
    
    type state_type is (Initialstate, Startstate, Datastate, Stopstate);
    signal state : state_type;
    
    signal RD : std_logic_vector (7 downto 0);
    
    signal Busy_temp : std_logic;
    signal TX_temp : std_logic;
    signal CNT : std_logic_vector (12 downto 0);
    signal i : std_logic_vector (2 downto 0);
    
begin
    
    Busy <= Busy_temp;
    TX_out <= TX_temp;
    
    process (CLK)
    begin
        if(rising_edge(CLK)) then
            case state is
                when Initialstate =>
                    i <= (others => '0');
                    TX_temp <= '1';
                    CNT <= (others => '0');
                    if(En_in = '1') then
                        RD <= Data_in;
                        Busy_temp <= '1';
                        state <= Startstate;
                    end if;
                when Startstate =>
                    TX_temp <= '0';
                    if(to_integer(unsigned(CNT)) = 4165) then
                        CNT <= (others => '0');
                        state <= Datastate;
                    else
                        CNT <= std_logic_vector(unsigned(CNT) + 1);
                    end if;
                when Datastate =>
                    TX_temp <= RD(0);
                    if(to_integer(unsigned(CNT)) = 4165) then
                        CNT <= (others => '0');
                        if(i = "111") then
                            state <= Stopstate;
                        else
                            i <= std_logic_vector(unsigned(i) + 1);
                            RD <= '1' & RD(7 downto 1);
                        end if;
                    else
                        CNT <= std_logic_vector(unsigned(CNT) + 1);
                    end if;
                when Stopstate =>
                    TX_temp <= '1';
                    if(to_integer(unsigned(CNT)) = 4165) then
                        Busy_temp <= '0';
                        state <= Initialstate;
                    else
                        CNT <= std_logic_vector(unsigned(CNT) + 1);
                    end if;
            end case;
        end if;
    end process;
    
end Behavioral;
