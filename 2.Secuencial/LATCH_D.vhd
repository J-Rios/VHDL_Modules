----------------------------------------------------------------------------------
--                           -------------------                                --
--                          |                   |                               --
--               D ---------| D               Q |--------- Q                    --
--                          |                   |                               --
--             CLK ---------| CLK            QN |--------- QN                   --
--                          |                   |                               --
--                           -------------------                                --
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

----------------------------------------------------------------------------------

entity LATCH_D is
    Port
    (
        CLK : in  STD_LOGIC;
        D   : in  STD_LOGIC;
        Q   : out STD_LOGIC;
	Qn  : out STD_LOGIC
    );
end LATCH_D;

----------------------------------------------------------------------------------

architecture Behavioral of LATCH_D is
begin
	
	-- One option
	process(CLK)
	begin
	    if (CLK'event and CLK = '1') then
	        Q  <= D;
		Qn <= not(D);
	    end if;
	end process;

end Behavioral;
