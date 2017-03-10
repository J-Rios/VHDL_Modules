----------------------------------------------------------------------------------
--                           -------------------                                --
--                          |                   |                               --
--     A[BITS-1:0] ---------| A                 |                               --
--                          |                 Z |--------- Z[BITS-1:0]          --
--     B[BITS-1:0] ---------| B                 |                               --
--                          |                   |                               --
--              CI ---------| CI             CO |--------- CO                   --
--                          |                   |                               --
--                           -------------------                                --
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

----------------------------------------------------------------------------------

entity F_Adder_BCD is
    generic
    (
        BITS : INTEGER := 4
    );
    Port
    (
	CI : in  STD_LOGIC;
        A  : in  STD_LOGIC_VECTOR (BITS-1 downto 0);
	B  : in  STD_LOGIC_VECTOR (BITS-1 downto 0);
	Z  : out STD_LOGIC_VECTOR (BITS-1 downto 0);
	CO : out STD_LOGIC
    );
end F_Adder_BCD;

----------------------------------------------------------------------------------

architecture Behavioral of F_Adder_BCD is 
    signal A_unsig , B_unsig : UNSIGNED (BITS downto 0);
    signal Sum : UNSIGNED (BITS downto 0);
begin
    
    A_unsig <= unsigned('0' & A);
    B_unsig <= unsigned('0' & B);
    
    Sum <= A_unsig + B_unsig + ('0' & CI);
    Z <= std_logic_vector(Sum(BITS-1 downto 0));
    CO <= Sum(BITS);

end Behavioral;
