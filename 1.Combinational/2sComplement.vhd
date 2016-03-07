
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-------------------------------------------------------------------------

entity a2sComplement is
    Generic
    (
	BITS : INTEGER := 4
    );
    Port
    (
	CI : in  STD_LOGIC;
	A  : in  STD_LOGIC_VECTOR (BITS-1 downto 0);
        Z  : out STD_LOGIC_VECTOR (BITS-1 downto 0);
	CO : out STD_LOGIC
    );
end a2sComplement;

-------------------------------------------------------------------------

architecture Behavioral of a2sComplement is
    signal Sum : UNSIGNED (BITS downto 0) := (others => '0');
    signal A_unsig, B_unsig  : UNSIGNED (BITS downto 0);
    signal a1sCompl : STD_LOGIC_VECTOR (BITS-1 downto 0);
    signal B : STD_LOGIC_VECTOR (BITS-1 downto 0) := (others => '0');
begin

    a1sCompl <= not(A);
    B(0) <= '1';
    
    A_unsig <= unsigned('0' & a1sCompl);
    B_unsig <= unsigned('0' & B);
    Sum <= A_unsig + B_unsig + ('0' & CI);
    
    Z <= std_logic_vector(Sum(BITS-1 downto 0));
    CO <= Sum(BITS);

end Behavioral;
