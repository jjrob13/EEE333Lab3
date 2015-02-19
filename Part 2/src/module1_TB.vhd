LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY module1_TB IS
END module1_TB;
 
ARCHITECTURE behavior OF module1_TB IS 
    COMPONENT module1
    PORT(
         S : IN  std_logic_vector(4 downto 0);
         D : OUT  std_logic_vector(6 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal S : std_logic_vector(4 downto 0) := (others => '0');

 	--Outputs
   signal D : std_logic_vector(6 downto 0);
  
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: module1 PORT MAP (
          S => S,
          D => D
        );
 

   -- Stimulus process
   stim_proc: process
   begin		 
     S <= "00000";					--Sets values for S 
 	  wait for 15ns; 
 	  S <= "00001"; 
 	  wait for 15ns; 
 	  S <= "00010"; 
 	  wait for 15ns;
	  S <= "00011"; 
 	  wait for 15ns;	  
 	  S <= "00100"; 
 	  wait for 15ns; 
 	  S <= "00101"; 
 	  wait for 15ns; 
	  S <= "00110"; 
 	  wait for 15ns; 
 	  S <= "00111"; 
 	  wait for 15ns; 
 	  S <= "01000"; 
 	  wait for 15ns; 
 	  S <= "01001"; 
 	  wait for 15ns;
	  S <= "01010"; 
 	  wait for 15ns; 
 	  S <= "01011"; 
 	  wait for 15ns; 
	  S <= "01100"; 
 	  wait for 15ns; 
 	  S <= "01101"; 
 	  wait for 15ns; 
 	  S <= "01110"; 
 	  wait for 15ns; 
 	  S <= "01111"; 
 	  wait for 15ns;
 	  wait; 
    end process; 


END;
