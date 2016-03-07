
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-------------------------------------------------------------------------

entity REG is
    Generic
    (
        BITS : INTEGER := 4
    );
    Port
    (
        D   : in  STD_LOGIC_VECTOR (BITS-1 downto 0);
	CLR : in  STD_LOGIC;
        CLK : in  STD_LOGIC;
        Q   : inout STD_LOGIC_VECTOR (BITS-1 downto 0);
	Qn  : inout STD_LOGIC_VECTOR (BITS-1 downto 0)
    );
end REG;

-------------------------------------------------------------------------

architecture Behavioral of REG is

begin
	
    -- One option
    process(CLK, CLR)
    begin
        if (CLK'event and CLK = '1') then
	    if (CLR = '1') then
		Q  <= D;
		Qn <= not(D);
	    else
		Q  <= (others => '0');
		Qn <= (others => '1');
	    end if;
	end if;
    end process;
	
    -- Other option
--    process
--    begin
--    wait until rising_edge(CLK);
--        if (CLR = '1') then
--	      Q  <= D;
--	      Qn <= not(D);
--	  else
--	      Q  <= (others => '0');
--	     Qn <= (others => '1');
--	  end if;
--    end process;

end Behavioral;
