
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-------------------------------------------------------------------------

entity Gate_XNOR is
    Port
    (
        A : in STD_LOGIC;
        B : in STD_LOGIC;
        Z : out STD_LOGIC
    );
end Gate_XNOR;

-------------------------------------------------------------------------

architecture Behavioral of Gate_XNOR is

begin

    Z <= A xnor B;
	  
end Behavioral;
