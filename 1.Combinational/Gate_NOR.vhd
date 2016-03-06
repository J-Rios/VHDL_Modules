
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-------------------------------------------------------------------------

entity Gate_NOR is
    Port
    (
        A : in STD_LOGIC;
        B : in STD_LOGIC;
        Z : out STD_LOGIC
    );
end Gate_NOR;

-------------------------------------------------------------------------

architecture Behavioral of Gate_NOR is

begin

    Z <= A nor B;
	  
end Behavioral;
