
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

----------------------------------------------------------------------------------

entity Gate_NAND is
    Port
    (
        A : in STD_LOGIC;
        B : in STD_LOGIC;
        Z : out STD_LOGIC
    );
end Gate_NAND;

----------------------------------------------------------------------------------

architecture Behavioral of Gate_NAND is
begin

    Z <= A nand B;
	  
end Behavioral;
