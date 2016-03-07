----------------------------------------------------------------------------------
--                                                                              --
--                           -------------------                                --
--                          |                   |                               --
--                          |             A < B |--------- AminusB              --
--          A[3:0] ---------| A                 |                               --
--                          |             A = B |--------- AequalB              --
--          B[3:0] ---------| B                 |                               --
--                          |             A > B |--------- AmajorB              --
--                          |                   |                               --
--                           -------------------                                --
--                                                                              --
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

----------------------------------------------------------------------------------

entity COMP_BCD is 
    port
    (
        A     	: in  STD_LOGIC_VECTOR (3 downto 0);
	B       : in  STD_LOGIC_VECTOR (3 downto 0);
	AminusB : out STD_LOGIC;
        AequalB : out STD_LOGIC;
	AmajorB : out STD_LOGIC
    );
end COMP_BCD;

architecture BEHAVIORAL of COMP_BCD is
begin

    AminusB <= '1' when (A < B) else '0';
    AequalB <= '1' when (A = B) else '0';
    AmajorB <= '1' when (A > B) else '0';
	
end BEHAVIORAL;

----------------------------------------------------------------------------------
