
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-------------------------------------------------------------------------

entity a1sComplement is
	Generic
	(
		BITS : INTEGER := 4
	);
    Port
    (
		A  : in  STD_LOGIC_VECTOR (BITS-1 downto 0);
        Z  : out STD_LOGIC_VECTOR (BITS-1 downto 0)
    );
end a1sComplement;

-------------------------------------------------------------------------

architecture Behavioral of a1sComplement is
begin

    Z <= not(A);

end Behavioral;
