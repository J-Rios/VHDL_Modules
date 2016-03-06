
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-------------------------------------------------------------------------

entity Gate_AND is
    Port
    (
        A : in STD_LOGIC;
        B : in STD_LOGIC;
        Z : out STD_LOGIC
    );
end Gate_AND;

-------------------------------------------------------------------------

architecture Behavioral of Gate_AND is

begin

    Z <= A and B;
	  
end Behavioral;
