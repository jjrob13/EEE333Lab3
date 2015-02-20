library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity main is
    Port ( S : in  STD_LOGIC_VECTOR (4 downto 0);
           SEL : in  STD_LOGIC;
           AX : out  STD_LOGIC_VECTOR (3 downto 0);
           D : out  STD_LOGIC_VECTOR (7 downto 0);
			  SINGLE_LED : out std_logic);
end main;

architecture Behavioral of main is
component Array_MUXs is
    Port ( SEL : in  STD_LOGIC;
           AX : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

--Decimal Display Decoder
component module1 is
    Port ( S : in  STD_LOGIC_VECTOR (4 downto 0);
           D : out  STD_LOGIC_VECTOR (6 downto 0));
end component;

--Not Gate
component module3 is
    Port ( S : in  STD_LOGIC;
           D : out  STD_LOGIC);
end component;

--Intermediate signal from decimal decoder
begin
	MOD_1 : module1 port map(S, D(6 downto 0));
	MOD_2 : Array_MUXs port map(SEL, AX);
	MOD_3 : module3 port map(S(4), D(7));
	--MOD_4
	SINGLE_LED <= S(4);
end Behavioral;

