----------------------------------------------------------------------------------
--                           -------------------                                --
--                          |                   |                               --
--             RST ---------| RST               |                               --
--                          |                 Q |--------- Q[BITS-1:0]          --
--              CE ---------| CE                |                               --
--                          |                   |                               --
--                          |                   |                               --
--             CLK ---------| CLK            TC |--------- TC                   --
--                          |                   |                               --
--                           -------------------                                --
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

----------------------------------------------------------------------------------

entity COUNTER is
    Generic
    (
        BITS : INTEGER := 4
    );
    Port
    (
	CLK : in  STD_LOGIC;
	RST : in STD_LOGIC;
	CE  : in STD_LOGIC;
	TC  : out STD_LOGIC;
	Q   : out STD_LOGIC_VECTOR (BITS-1 downto 0)
    );
end COUNTER;

----------------------------------------------------------------------------------

architecture Behavioral of COUNTER is
    signal Qr : UNSIGNED (BITS-1 downto 0);
    signal Qn : UNSIGNED (BITS-1 downto 0);
	signal TCsignal : STD_LOGIC;
begin
	
    process(RST, CLK, CE)
    begin
        if (CLK'event and CLK = '1') then -- Rising clock
            if (CE = '1') then -- Clock enable active
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
	TCsignal <= TC;
	CEO <= '1' when (TCsignal = '1' and CE = '1') else '0'; -- Clock Enable Out

end Behavioral;
