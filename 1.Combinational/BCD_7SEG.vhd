----------------------------------------------------------------------------------
--                                                                              --
--                           -------------------                                --
--                          |                   |                               --
--          A[3:0] ---------| A                 |                               --
--                          |                   |                               --
--                          |                 Z |--------- Z[7:0]               --
--                          |                   |                               --
--              DP ---------| DP                |                               --
--                          |                   |                               --
--                           -------------------                                --
--                                                                              --
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-------------------------------------------------------------------------

entity BCD_7SEG is
    Port
    (
	A  : in  STD_LOGIC_VECTOR (3 downto 0);
	DP : in  STD_LOGIC;
        Z  : out STD_LOGIC_VECTOR (7 downto 0)
    );
end BCD_7SEG;

-------------------------------------------------------------------------

architecture Behavioral of BCD_7SEG is
    signal digit : STD_LOGIC_VECTOR (6 downto 0);
    signal point : STD_LOGIC;
begin

    with A select
    digit <= "1000000" when "0000", -- 0
             "1111001" when "0001", -- 1
             "0100100" when "0010", -- 2
             "0110000" when "0011", -- 3
             "0011001" when "0100", -- 4
             "0010010" when "0101", -- 5
             "0000010" when "0110", -- 6
             "1111000" when "0111", -- 7
             "0000000" when "1000", -- 8
             "0010000" when "1001", -- 9
             "0001000" when "1010", -- A
             "0000011" when "1011", -- b
             "1000110" when "1100", -- C
             "0100001" when "1101", -- d
             "0000110" when "1110", -- E
             "0001110" when "1111", -- F
             "1111111" when others;
    point <= DP;

    Z <= point & digit;
    
end Behavioral;
