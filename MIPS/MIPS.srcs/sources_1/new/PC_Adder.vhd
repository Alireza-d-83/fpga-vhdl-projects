----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/10/2025 04:54:33 PM
-- Design Name: 
-- Module Name: PC_Adder - Behavioral
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

entity PC_Adder is
    Port ( PC_Data : in STD_LOGIC_VECTOR (31 downto 0);
           Signextention_data : in STD_LOGIC_VECTOR (31 downto 0);
           PC_New_Data : out STD_LOGIC_VECTOR (31 downto 0));
end PC_Adder;

architecture Behavioral of PC_Adder is

begin

    PC_New_Data <= std_logic_vector(unsigned(PC_Data) + unsigned(Signextention_data));

end Behavioral;
