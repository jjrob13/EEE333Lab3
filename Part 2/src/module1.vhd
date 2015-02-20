library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity module1 is
    Port ( S : in  STD_LOGIC_VECTOR (4 downto 0);
           D : out  STD_LOGIC_VECTOR (6 downto 0));
end module1;

architecture Behavioral of module1 is

begin

PROCESS (S) 
 	BEGIN 
 		case S is 
 			when "00000" => D <= "1000000";      
 			when "00001" => D <= "1111001"; 
 			when "00010" => D <= "0100100"; 
 			when "00011" => D <= "0110000"; 
 			when "00100" => D <= "0011001";
			when "00101" => D <= "0010010";      
 			when "00110" => D <= "0000010"; 
 			when "00111" => D <= "1111000"; 
 			when "01000" => D <= "0000000"; 
 			when "01001" => D <= "0010000";			
 			when "01010" => D <= "1111111"; 
			when "01011" => D <= "1111111"; 
 			when "01100" => D <= "1111111"; 
 			when "01101" => D <= "1111111"; 
 			when "01110" => D <= "1111111"; 
 			when "01111" => D <= "1111111";
			when others  => D <= "0000000";
 		End case; 
 	End Process; 

end Behavioral;

