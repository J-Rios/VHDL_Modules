
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-------------------------------------------------------------------------

entity USHIFTREG is
    Generic
    (
        BITS : INTEGER := 4
    );
    Port
    (
        CLK  : in  STD_LOGIC;
        RST  : in  STD_LOGIC;
	CTRL : in  STD_LOGIC_VECTOR (1 downto 0);
	D    : in  STD_LOGIC_VECTOR (BITS-1 downto 0);
	Q    : out STD_LOGIC_VECTOR (BITS-1 downto 0)
    );
end USHIFTREG;

-------------------------------------------------------------------------

architecture Behavioral of USHIFTREG is
    signal r_reg  : std_logic_vector (BITS-1 downto 0);
    signal r_next : std_logic_vector (BITS-1 downto 0);
begin
	
    -- State register
    process(RST, CLK)
    begin
        if (RST = '1') then
	    r_reg <= (others => '0');
	elsif (CLK'event and CLK = '1') then
	    r_reg <= r_next;
        end if;
    end process;
	
    -- Next state logic
    with CTRL select r_next <= 
        r_reg 				   when "00",   -- Do nothing
	r_reg(BITS-2 downto 0) & D(0)      when "01",   -- Shift-Left 
	D(BITS-1) & r_reg(BITS-1 downto 1) when "10",   -- Shift-Right
	D 				   when others; -- Load
	
    -- Output logic
    Q <= r_reg;

end Behavioral;
