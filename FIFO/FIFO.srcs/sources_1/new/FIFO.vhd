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

entity FIFO is
    Port ( Clk : in STD_LOGIC;
           Reset : in STD_LOGIC;
           Write : in STD_LOGIC;
           Read : in STD_LOGIC;
           DataIn : in STD_LOGIC_VECTOR (7 downto 0);
           DataOut : out STD_LOGIC_VECTOR (7 downto 0);
           Full : out STD_LOGIC;
           Empty : out STD_LOGIC);
end FIFO;

architecture Behavioral of FIFO is
    
    type ram_type is array (0 to 31) of std_logic_vector (7 downto 0);
    signal ram : ram_type := (others => (others => '0'));

    type state_type is (T0, T1, T2);
    signal current_state : state_type := T0;
    
    signal WA : unsigned (4 downto 0) := (others => '0');
    signal RA : unsigned (4 downto 0) := (others => '0');
    
    signal full_reg : std_logic;
    signal empty_reg : std_logic;
    
begin

    full <= Full_reg;
    empty <= empty_reg;

    process (clk)
    begin    
        if reset = '1' then
            Full_reg <= '0';
            empty_reg <= '1';
            ram <= (others => (others => '0'));
            current_state <= T0;
        else
            case current_state is
                when T0 => 
                    if write = '1' then
                        if full_reg = '0' then
                            ram(to_integer(WA)) <= DataIn;
                            empty_reg <= '0';
                            WA <= WA + 1;
                            current_state <= T1;
                        end if;
                    elsif read = '1' then
                        if empty_reg = '0' then
                            DataOut <= ram(to_integer(RA));
                            full <= '0';
                            RA <= RA + 1;
                            current_state <= T2;
                        end if;
                    end if;
                when T1 => 
                    if WA = RA then
                        full <= '1';
                    else
                        full <= '0';
                    end if;
                    current_state <= T0;
                when T2 => 
                    if RA = WA then
                        empty_reg <= '1';
                    else
                        empty_reg <= '0';
                    end if;
                    current_state <= T0;
            end case;
        end if;
    end process;

end Behavioral;
