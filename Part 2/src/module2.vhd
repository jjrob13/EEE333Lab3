library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity Array_MUXs is
    Port ( SEL : in  STD_LOGIC;
           AX : out  STD_LOGIC_VECTOR (3 downto 0));
end Array_MUXs;

architecture Behavioral of Array_MUXs is

begin
Process (SEL)
	Begin
	CASE SEL IS
			WHEN '0' => AX <= "1110";

			WHEN OTHERS => AX <= "0111";
	END CASE;
END PROCESS;
end Behavioral;

