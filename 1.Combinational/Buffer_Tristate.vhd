----------------------------------------------------------------------------------
--                            -----------------                                 --
--                           |                 |                                --
--                A ---------| A             Z |--------- Z                     --
--                           |        E        |                                --
--                            -----------------                                 --
--                                    |                                         --
--                E -------------------                                         --
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

----------------------------------------------------------------------------------

entity BUFF_TRI is 
    port
    (
        A : in  STD_LOGIC;
	E : in  STD_LOGIC;
	Z : out STD_LOGIC
    );
end BUFF_TRI;

architecture BEHAVIORAL of BUFF_TRI is
begin

    with E select
        Z <= A  when '1',
            'Z' when '0',
            'Z' when others; -- Dummy (Needed for simulation)
	
end BEHAVIORAL;

----------------------------------------------------------------------------------
