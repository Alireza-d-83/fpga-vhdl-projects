library ieee;
use ieee.std_logic_1164.all;

entity T is
end entity;

architecture sim of T is
    signal Slv6 : integer:=0;
begin

    process is
    begin
        wait for 100ns;
        for i in 0 to 6 loop
            slv6 <= slv6+1;
        end loop;
        wait for 100ns;
        report "slv6=" & integer'image(slv6);
        
    end process;

end architecture;
