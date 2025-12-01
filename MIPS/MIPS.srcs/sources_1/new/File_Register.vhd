----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/10/2025 10:24:08 AM
-- Design Name: 
-- Module Name: File_Register - Behavioral
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

entity File_Register is
    Port ( clk : in std_logic;
           EN : in std_logic;
           ReadRegister1 : in STD_LOGIC_VECTOR (31 downto 0);
           ReadRegister2 : in STD_LOGIC_VECTOR (31 downto 0);
           WriteRegister : in STD_LOGIC_VECTOR (31 downto 0);
           WriteData : in STD_LOGIC_VECTOR (31 downto 0);
           ReadData1 : out STD_LOGIC_VECTOR (31 downto 0);
           ReadData2 : out STD_LOGIC_VECTOR (31 downto 0));
end File_Register;

architecture Behavioral of File_Register is
    
    type file_register_t is array(0 to 31) of std_logic_vector(31 downto 0);
    signal file_register : file_register_t := (others => (others => '0'));

begin

    ReadData1 <= file_register(to_integer(unsigned(ReadRegister1(25 downto 21))));
    ReadData2 <= file_register(to_integer(unsigned(ReadRegister2(20 downto 16))));
    
    process (clk)
    begin
        if rising_edge(clk) then
            if EN = '1' then
                file_register(to_integer(unsigned(WriteRegister))) <= WriteData;
            end if;
        end if;
    end process;
end Behavioral;
