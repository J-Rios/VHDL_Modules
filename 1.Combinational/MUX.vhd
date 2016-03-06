
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-------------------------------------------------------------------------

entity MUX is
    Port
    (
        A : in  STD_LOGIC;
        B : in  STD_LOGIC;
        S : in  STD_LOGIC;
        Z : out STD_LOGIC
    );
end MUX;

-------------------------------------------------------------------------

architecture Behavioral of MUX is

begin

	-- One option
    Z <= A when S = '0' else B;
	
    -- Other option
    --with S select
        --Z <= A when '0',
             --B when '1',
             --B when others; -- Dummy (Needed for simulation)

end Behavioral;
