----------------------------------------------------------------------------------
--                           -------------------                                --
--                          |                   |                               --
--              UP ---------| UP                |                               --
--                          |                 Q |--------- Q[BITS-1:0]          --
--             CLK ---------| CLK               |                               --
--                          |                   |                               --
--                           -------------------                                --
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

----------------------------------------------------------------------------------

entity COUNTER_UpDw is
    Generic
    (
	BITS : INTEGER := 4
    );
    Port
    (
	CLK : in    STD_LOGIC;
        UP  : in    STD_LOGIC;
	Q   : inout STD_LOGIC_VECTOR (BITS-1 downto 0)
    );
end COUNTER_UpDw;

----------------------------------------------------------------------------------

architecture Behavioral of COUNTER_UpDw is
    signal Count : UNSIGNED (BITS-1 downto 0) := (others => '0');
begin
	
    process(UP, CLK)
    begin
        if (CLK'event and CLK = '1') then
            if (UP = '1') then
    	        Count <= Count + 1;
	    else
		Count <= Count - 1;
	    end if;
        end if;
    end process;

    Q <= std_logic_vector(Count);

end Behavioral;
