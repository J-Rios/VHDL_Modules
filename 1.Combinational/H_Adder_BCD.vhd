----------------------------------------------------------------------------------
--                           -------------------                                --
--                          |                   |                               --
--     A[BITS-1:0] ---------| A                 |                               --
--                          |                 Z |--------- Z[BITS-1:0]          --
--     B[BITS-1:0] ---------| B                 |                               --
--                          |                   |                               --
--                           -------------------                                --
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

----------------------------------------------------------------------------------

entity H_Adder_BCD is
    generic
    (
        BITS : INTEGER := 4
    );
    Port
    (
        A : in  STD_LOGIC_VECTOR (BITS-1 downto 0);
	B : in  STD_LOGIC_VECTOR (BITS-1 downto 0);
	Z : out STD_LOGIC_VECTOR (BITS-1 downto 0)
    );
end H_Adder_BCD;

----------------------------------------------------------------------------------

architecture Behavioral of H_Adder_BCD is
    signal Sum : UNSIGNED (3 downto 0);
begin

    Sum <= unsigned(A) + unsigned(B);
    Z <= std_logic_vector(Sum);

end Behavioral;
