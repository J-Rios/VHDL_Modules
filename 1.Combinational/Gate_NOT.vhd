
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-------------------------------------------------------------------------

entity Gate_NOT is
    Port
    (
        A : in STD_LOGIC;
        B : in STD_LOGIC;
        Z : out STD_LOGIC
    );
end Gate_NOT;

-------------------------------------------------------------------------

architecture Behavioral of Gate_NOT is

begin

    Z <= A not B;
	  
end Behavioral;
