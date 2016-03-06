
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-------------------------------------------------------------------------

entity Gate_XOR is
    Port
    (
        A : in STD_LOGIC;
        B : in STD_LOGIC;
        Z : out STD_LOGIC
    );
end Gate_XOR;

-------------------------------------------------------------------------

architecture Behavioral of Gate_XOR is

begin

    Z <= A xor B;
	  
end Behavioral;
