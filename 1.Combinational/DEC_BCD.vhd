
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-------------------------------------------------------------------------

entity DEC_BCD is
    Port
    (
		A0, A1, A2, A3, A4, A5, A6, A7, A8, A9 : in STD_LOGIC;
        Z : out  STD_LOGIC_VECTOR (3 downto 0)
    );
end DEC_BCD;

-------------------------------------------------------------------------

architecture Behavioral of DEC_BCD is
	signal A_vect : STD_LOGIC_VECTOR (9 downto 0);
begin

	A_vect <= A9 & A8 & A7 & A6 & A5 & A4 & A3 & A2 & A1 & A0;

	with A_vect select
		Z <= "0001" when "0000000010",
			 "0010" when "0000000100",
			 "0011" when "0000001000",
			 "0100" when "0000010000",
			 "0101" when "0000100000",
			 "0110" when "0001000000",
			 "0111" when "0010000000",
			 "1000" when "0100000000",
			 "1001" when "1000000000",
             "0000" when others;
			 
end Behavioral;