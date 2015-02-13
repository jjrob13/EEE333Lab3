library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity Keypad_Encoder is
    Port ( B : in  STD_LOGIC_VECTOR (3 DOWNTO 0);
           E : out  STD_LOGIC_VECTOR (2 DOWNTO 0));
end Keypad_Encoder;

architecture Behavioral of Keypad_Encoder is
begin
	PROCESS (B)
	BEGIN
		case B is
			when "0001" => E <= "000";     
			when "0010" => E <= "001";
			when "0100" => E <= "010";
			when "1000" => E <= "011";
			when "0000" => E <= "111";
			when others => E <= "000";
		End case;
	End Process;

end Behavioral;

