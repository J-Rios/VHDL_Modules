
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-------------------------------------------------------------------------

entity BCD_DEC is
    Port
    (
        A   : in  STD_LOGIC_VECTOR (3 downto 0);
		Z0, Z1, Z2, Z3, Z4, Z5, Z6, Z7, Z8, Z9	: out STD_LOGIC
    );
end BCD_DEC;

-------------------------------------------------------------------------

architecture Behavioral of BCD_DEC is   
begin

	Z0 <= '1' when A = "0000" else '0';
	Z1 <= '1' when A = "0001" else '0';
	Z2 <= '1' when A = "0010" else '0';
	Z3 <= '1' when A = "0011" else '0';
	Z4 <= '1' when A = "0100" else '0';
	Z5 <= '1' when A = "0101" else '0';
	Z6 <= '1' when A = "0110" else '0';
	Z7 <= '1' when A = "0111" else '0';
	Z8 <= '1' when A = "1000" else '0';
	Z9 <= '1' when A = "1001" else '0';

end Behavioral;