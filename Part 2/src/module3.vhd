library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity module3 is
    Port ( S : in  STD_LOGIC;
           D : out  STD_LOGIC);
end module3;

architecture Behavioral of module3 is

begin

D <= not S;

end Behavioral;

