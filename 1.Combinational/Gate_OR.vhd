
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-------------------------------------------------------------------------

entity Gate_OR is
    Port
    (
        A : in STD_LOGIC;
        B : in STD_LOGIC;
        Z : out STD_LOGIC
    );
end Gate_OR;

-------------------------------------------------------------------------

architecture Behavioral of Gate_OR is

begin

    Z <= A or B;
	  
end Behavioral;
