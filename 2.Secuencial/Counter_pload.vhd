
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-------------------------------------------------------------------------

entity COUNTER_PLoad is
	Generic
	(
		BITS : INTEGER := 4
	);
    Port
    (
		CLK	 : in  	 STD_LOGIC;
        LOAD : in	 STD_LOGIC;
		ENP  : in	 STD_LOGIC;
		RST  : in	 STD_LOGIC;
		P    : in 	 STD_LOGIC_VECTOR (BITS-1 downto 0);
		Q    : inout STD_LOGIC_VECTOR (BITS-1 downto 0)
    );
end COUNTER_PLoad;

-------------------------------------------------------------------------

architecture Behavioral of COUNTER_PLoad is
	signal Count : UNSIGNED (BITS-1 downto 0) := (others => '0');
begin
	
	process(CLK, RST, LOAD, ENP)
	begin
		if (RST = '1') then
			Count <= (others => '0');
	    elsif (CLK'event and CLK = '1') then
	        if (LOAD = '0' and ENP = '-') then
				Count <= unsigned(P);
			elsif (LOAD = '1' and ENP = '0') then
				Count <= Count;
			elsif (LOAD = '1' and ENP = '1') then
				Count <= Count + 1;
			end if;
        end if;
    end process;

	Q <= std_logic_vector(Count);

end Behavioral;
