
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

	-- One option
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
	
	-- Other option
    --  process(MUXOUT)
    --  begin
    --      case MUXOUT is
    --          when "0000" => SSEG <= "1000000"; -- 0
    --          when "0001" => SSEG <= "1111001"; -- 1
    --          when "0010" => SSEG <= "0100100"; -- 2 
    --          when "0011" => SSEG <= "0110000"; -- 3
    --          when "0100" => SSEG <= "0011001"; -- 4
    --          when "0101" => SSEG <= "0010010"; -- 5
    --          when "0110" => SSEG <= "0000010"; -- 6
    --          when "0111" => SSEG <= "1111000"; -- 7
    --          when "1000" => SSEG <= "0000000"; -- 8
    --          when "1001" => SSEG <= "0010000"; -- 9
    --          when "1010" => SSEG <= "0001000"; -- A
    --          when "1011" => SSEG <= "0000011"; -- b
    --          when "1100" => SSEG <= "1000110"; -- C
    --          when "1101" => SSEG <= "0100001"; -- d
    --          when "1110" => SSEG <= "0000110"; -- E
    --          when "1111" => SSEG <= "0001110"; -- F
    --      end case;
    --  end process;
    --  point <= DP;
    --  
    --  Z <= point & digit;
    
end Behavioral;
