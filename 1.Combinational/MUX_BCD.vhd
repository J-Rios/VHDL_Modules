----------------------------------------------------------------------------------
--                           -------------------                                --
--                          |                   |                               --
--     A[BITS-1:0] ---------| A                 |                               --
--     B[BITS-1:0] ---------| B                 |                               --
--     C[BITS-1:0] ---------| C               Z |--------- Z[BITS-1:0]          --
--     D[BITS-1:0] ---------| D                 |                               --
--                          |                   |                               --
--          S[1:0] ---------| S                 |                               --
--                          |                   |                               --
--                           -------------------                                --
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

----------------------------------------------------------------------------------

entity MUX_BCD is
    generic
    (
        BITS : INTEGER := 4
    );
    Port
    (
        A : in  STD_LOGIC_VECTOR (BITS-1 downto 0);
        B : in  STD_LOGIC_VECTOR (BITS-1 downto 0);
	C : in  STD_LOGIC_VECTOR (BITS-1 downto 0);
        D : in  STD_LOGIC_VECTOR (BITS-1 downto 0);
	S : in  STD_LOGIC_VECTOR (1 downto 0);
        Z : out STD_LOGIC_VECTOR (BITS-1 downto 0)
    );
end MUX_BCD;

----------------------------------------------------------------------------------

architecture Behavioral of MUX_BCD is
begin

    -- One option
    Z <= A when S = "00" else
         B when S = "01" else
 	 C when S = "10" else
	 D when S = "11";
	
    -- Other option
    -- with S select Z <= 
          -- A when "00",
          -- B when "01",
	  -- C when "10",
	  -- D when "11",
          -- D when others; -- Dummy (Needed for simulation)

end Behavioral;
