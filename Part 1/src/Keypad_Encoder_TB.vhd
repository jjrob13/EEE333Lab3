--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:32:24 02/12/2015
-- Design Name:   
-- Module Name:   Z:/Documents/EEE333/Lab 3/Keypad_Encoder/Keypad_Encoder_TB.vhd
-- Project Name:  Keypad_Encoder
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY Keypad_Encoder_TB IS
END Keypad_Encoder_TB;
 
ARCHITECTURE behavior OF Keypad_Encoder_TB IS 
    COMPONENT Keypad_Encoder
    PORT(
         B : IN  std_logic_vector(3 downto 0);
         E : OUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
   --Inputs
   signal B : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal E : std_logic_vector(2 downto 0);
 
BEGIN
   uut: Keypad_Encoder PORT MAP (
          B => B,
          E => E
        );
   stim_proc: process
   begin		
     B <= "0001";					--Sets values for B
	  wait for 15ns;
	  B <= "0010";
	  wait for 15ns;
	  B <= "0100";
	  wait for 15ns;
	  B <= "1000";
	  wait for 15ns;
	  B <= "0000";
	  wait for 15ns;
	  wait;
   end process;
END;
