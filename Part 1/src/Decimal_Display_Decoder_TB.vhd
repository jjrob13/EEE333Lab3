LIBRARY ieee;
use ieee.std_logic_arith.all;
USE ieee.std_logic_1164.ALL;
ENTITY Decimal_Display_Decoder_TB IS
END Decimal_Display_Decoder_TB;
 
ARCHITECTURE behavior OF Decimal_Display_Decoder_TB IS 
    COMPONENT Decimal_Display_Decoder
    PORT(
         E : IN  std_logic_vector(2 downto 0);
         S : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
   --Inputs
   signal E : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal S : std_logic_vector(7 downto 0);
BEGIN
   uut: Decimal_Display_Decoder PORT MAP (
          E => E,
          S => S
        );
   stim_proc: process
   begin
		for i in 0 to 7 loop
			E <= conv_std_logic_vector(i, 3);
			wait for 20 ns;
		end loop;
      wait;
   end process;

END;
