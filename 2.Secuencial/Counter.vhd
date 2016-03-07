
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-------------------------------------------------------------------------

entity COUNTER is
	Generic
	(
		BITS : INTEGER := 4
	);
    Port
    (
		CLK	: in  STD_LOGIC;
        RST : in STD_LOGIC;
		CE  : in STD_LOGIC;
		Q   : out STD_LOGIC_VECTOR (BITS-1 downto 0);
		TC  : out STD_LOGIC
    );
end COUNTER;

-------------------------------------------------------------------------

architecture Behavioral of COUNTER is
	signal Qr : UNSIGNED (BITS-1 downto 0);
	signal Qn : UNSIGNED (BITS-1 downto 0);
begin
	
	process(RST, CLK, CE)
	begin
	    if (CLK'event and CLK = '1') then -- Rising clock
	        if (CE = '1') then -- Chip enable active
                if (RST = '1') then -- Reset active
                    Qr <= (others => '0'); -- Reset the count to zero
                else
                    Qr <= Qn; -- Set the count
                end if;
            end if;
        end if;
    end process;
	
	-- Next state logic
	Qn <= Qr + 1; -- Increase the count
	
	-- Output logic
	Q <= std_logic_vector(Qr); -- Output vector
	TC <= '1' when Qr = (2**BITS-1) else '0'; -- Tick-Count bit (End-count)

end Behavioral;
