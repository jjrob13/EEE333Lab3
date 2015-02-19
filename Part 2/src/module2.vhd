----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:12:03 02/17/2015 
-- Design Name: 
-- Module Name:    Array_MUXs - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Array_MUXs is
    Port ( SEL : in  STD_LOGIC;
           AX : out  STD_LOGIC_VECTOR (3 downto 0));
end Array_MUXs;

architecture Behavioral of Array_MUXs is

begin
Process (SEL)
	Begin
	CASE SEL IS
			WHEN '0' =>
				AX <= "1110";
			WHEN OTHERS =>
				AX <= "0111";
	END CASE;
END PROCESS;
end Behavioral;

