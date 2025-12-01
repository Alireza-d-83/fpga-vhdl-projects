----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/16/2025 06:08:15 PM
-- Design Name: 
-- Module Name: RX - Behavioral
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

entity RX is
    Port ( CLK : in STD_LOGIC;
           En_out : out STD_LOGIC;
           RX_in : in STD_LOGIC;
           Data_out : out STD_LOGIC_VECTOR (7 downto 0));
end RX;

architecture Behavioral of RX is

    type state_type is (Initialstate, Startstate, Datastate, Stopstate);
    signal state : state_type;
    
    signal RD : std_logic_vector (7 downto 0) := (others => '0');
    
    signal En_out_temp : std_logic;
    signal RX_temp : std_logic;
    signal CNT : std_logic_vector (12 downto 0);
    signal i : std_logic_vector (2 downto 0);
    
begin
    
    En_out <= En_out_temp;
    RX_temp <= RX_in;
    
    process (CLK)
    begin
        if(rising_edge(CLK)) then
            case state is
                when Initialstate =>
                    i <= (others => '0');
                    CNT <= (others => '0');
                    En_out_temp <= '0';
                    if(RX_temp = '0') then
                        state <= Startstate;
                    end if;
                when Startstate =>
                    if(to_integer(unsigned(CNT)) = 4165) then
                        CNT <= (others => '0');
                        state <= Datastate;
                    else
                        CNT <= std_logic_vector(unsigned(CNT) + 1);
                    end if;
                when Datastate =>
                    if(to_integer(unsigned(CNT)) = 4165) then
                        CNT <= (others => '0');
                        if(i = "111") then
                            state <= stopstate;
                        else
                            RD <= '0' & RD(7 downto 1);
                            i <= std_logic_vector(unsigned(i) + 1);
                        end if;
                    elsif(to_integer(unsigned(CNT)) = 2000) then
                        RD(7) <= RX_temp;
                        CNT <= std_logic_vector(unsigned(CNT) + 1);
                    else
                        CNT <= std_logic_vector(unsigned(CNT) + 1);
                    end if;                                      
                when Stopstate =>
                    En_out_temp <= '1';
                    Data_out <= RD;
                    if(to_integer(unsigned(CNT)) = 4165) then
                        state <= Initialstate;
                    else
                        CNT <= std_logic_vector(unsigned(CNT) + 1);
                    end if;
            end case;
        end if;
    end process;

end Behavioral;
