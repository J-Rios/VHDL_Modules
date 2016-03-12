
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-------------------------------------------------------------------------

entity TOP is 
    port
    (
        CLK : in  STD_LOGIC;
        SW  : in  STD_LOGIC_VECTOR (15 downto 0);
        BTN : in  STD_LOGIC_VECTOR (4 downto 0);
    );
end TOP;

-------------------------------------------------------------------------

architecture BEHAVIORAL of TOP is
    signal db : STD_LOGIC;
    signal tick_sw : STD_LOGIC;
begin
    
    -- Debounce module
    miDEB : entity WORK.DEBOUNCE port map
    (
        c  => CLK,
        r  => BTN(0),
        sw => SW(0), -- Switch input (it can be buttons or switches)
        db => db
    );
    
    -- Edge detection module
    myED : entity WORK.edge_detect port map
    (
        c     => MCLK,
        level => db,
        tick  => tick_sw -- Switch output debounced
    );

end BEHAVIORAL;
