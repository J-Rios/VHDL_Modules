
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-------------------------------------------------------------------------

entity DISP7S_4 is
    Generic
    (
        N : NATURAL := 20 -- 100MHz -> (2^N)/f = T*(2^N) = 10ns * (2^20) = 10ms | (1ms - 16ms)
    );
    Port
    ( 
        C   : in  STD_LOGIC; -- Clock source
        DD  : in  STD_LOGIC_VECTOR (15 downto 0); -- Digit value
        CAT : out STD_LOGIC_VECTOR (7 downto 0); -- Digit catode
        AN  : out STD_LOGIC_VECTOR (3 downto 0) -- Set digit (AN(3) Left ... AN(0) Right)
    );
end DISP7S_4;

-------------------------------------------------------------------------

architecture Behavioral of DISP7S_4 is
    signal Hin0, Hin1, Hin2, Hin3 : STD_LOGIC_VECTOR (3 downto 0);
    signal q_reg, q_next : UNSIGNED (N-1 downto 0);
    signal Count  : STD_LOGIC_VECTOR (N-1 downto 0);
    signal Sel  : STD_LOGIC_VECTOR (1 downto 0);
    signal Hex  : STD_LOGIC_VECTOR (3 downto 0);
    signal Sseg : STD_LOGIC_VECTOR (6 downto 0);
    signal Dot : STD_LOGIC;
begin

    ------------------------------------------------------------------------------

    Hin0 <= DD(3 downto 0);
    Hin1 <= DD(7 downto 4);
    Hin2 <= DD(11 downto 8);
    Hin3 <= DD(15 downto 12);
    
    ------------------------------------------------------------------------------
    -- Free-running Counter
    process
    begin
        wait until rising_edge(C);
        q_reg <= q_next; -- Establece la cuenta
    end process;
    
    -- Next state logic
    q_next <= q_reg + 1;
    
    -- Output logic
    Count <= std_logic_vector(q_reg);
    Sel <= Count(N-1 downto N-2);
    
    ------------------------------------------------------------------------------

    -- 2 to 4 Decoder
    AN <= "1110" when Sel = "00" else
          "1101" when Sel = "01" else
          "1011" when Sel = "10" else
          "0111" when Sel = "11";
    
    ------------------------------------------------------------------------------

    -- 4 to 1 Multiplexor
    with Sel select Hex <= 
        Hin0 when "00", -- Boton T18
        Hin1 when "01", -- Boton T17
        Hin2 when "10", -- Boton U17
        Hin3 when "11", -- Boton W19
        Hin0 when others;

    ------------------------------------------------------------------------------

    -- BCD to 7-SEG Converter
    process(Hex)
    begin
        case Hex is
            when "0000" => SSEG <= "1000000"; -- 0
            when "0001" => SSEG <= "1111001"; -- 1
            when "0010" => SSEG <= "0100100"; -- 2 
            when "0011" => SSEG <= "0110000"; -- 3
            when "0100" => SSEG <= "0011001"; -- 4
            when "0101" => SSEG <= "0010010"; -- 5
            when "0110" => SSEG <= "0000010"; -- 6
            when "0111" => SSEG <= "1111000"; -- 7
            when "1000" => SSEG <= "0000000"; -- 8
            when "1001" => SSEG <= "0010000"; -- 9
            when "1010" => SSEG <= "0001000"; -- A
            when "1011" => SSEG <= "0000011"; -- b
            when "1100" => SSEG <= "1000110"; -- C
            when "1101" => SSEG <= "0100001"; -- d
            when "1110" => SSEG <= "0000110"; -- E
            when "1111" => SSEG <= "0001110"; -- F
            when others => SSEG <= "1111111"; -- Need for simulation
        end case;
    end process;
    
    Dot <= '1';
    CAT(7 downto 0) <= Dot & Sseg(6 downto 0);

    ------------------------------------------------------------------------------

end Behavioral;
