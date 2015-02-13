library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity main is
    Port ( B : in  STD_LOGIC_VECTOR (3 downto 0);
           S : out  STD_LOGIC_VECTOR (7 downto 0);
			  AX : OUT std_logic_vector(3 downto 0)
);
end main;

architecture Behavioral of main is
    COMPONENT Keypad_Encoder
    PORT(
         B : IN  std_logic_vector(3 downto 0);
         E : OUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;

	component Decimal_Display_Decoder is
		 Port ( E : in  STD_LOGIC_VECTOR (2 downto 0);
				  S : out  STD_LOGIC_VECTOR (7 downto 0));
	end component;
	
	--signal to hold encoded value
	signal encoded_output : std_logic_vector(2 downto 0);
	signal decoded_output : std_logic_vector(7 downto 0);
begin

--module 1
encode: Keypad_Encoder port map(B, encoded_output);

--module 2
decode: Decimal_Display_Decoder port map(encoded_output, decoded_output);

--module 3
S <= not decoded_output;

--module 4
AX <= "0111";

end Behavioral;

