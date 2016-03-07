
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-------------------------------------------------------------------------

entity LATCH_SR is
    Port
    (
		S   : in  STD_LOGIC;
		R	: in  STD_LOGIC;
        CLK : in  STD_LOGIC;
        Q   : inout STD_LOGIC;
		Qn	: inout STD_LOGIC
    );
end LATCH_SR;

-------------------------------------------------------------------------

architecture Behavioral of LATCH_SR is

begin
	
	-- One option
	process(CLK, S, R)
	begin
		if (CLK'event and CLK = '1') then
			if (S = '0' and R = '1') then
				Q  <= '0';
				Qn <= '1';
			elsif (S = '1' and R = '0') then
				Q  <= '1';
				Qn <= '0';
			elsif (S = '0' and R = '0') then
				Q  <= Q;
				Qn <= Qn;
			else
				Q  <= 'Z';
				Qn <= 'Z';
			end if;
		end if;
	end process;
	
	-- Other option
--	process
--	begin
--		wait until rising_edge(CLK);
--		if (S = '0' and R = '1') then
--			Q  <= '0';
--			Qn <= '1';
--		elsif (S = '1' and R = '0') then
--			Q  <= '1';
--			Qn <= '0';
--		elsif (S = '0' and R = '0') then
--			Q  <= Q;
--			Qn <= Qn;
--		else
--			Q  <= 'Z';
--			Qn <= 'Z';
--		end if;
--	end process;

end Behavioral;
