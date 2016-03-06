
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

----------------------------------------------------------------------------------

entity COMP is 
    port
    (
        A     : in  STD_LOGIC;
		B     : in  STD_LOGIC;
        Z     : out STD_LOGIC
    );
end COMP;

architecture BEHAVIORAL of COMP is
begin

    Z <= '1' when (A = B) else '0';
	
end BEHAVIORAL;

----------------------------------------------------------------------------------
