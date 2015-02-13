library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity Decimal_Display_Decoder is
    Port ( E : in  STD_LOGIC_VECTOR (2 downto 0);
           S : out  STD_LOGIC_VECTOR (7 downto 0));
end Decimal_Display_Decoder;

architecture Behavioral of Decimal_Display_Decoder is

begin
	S <= x"3f" when E = "000" else
			x"06" when E = "001" else
			x"5B" when E = "010" else
			x"4f" when E = "011" else
			x"00";

end Behavioral;

