
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-------------------------------------------------------------------------

entity UART_TX is
    Generic
    (
        DBIT    : integer := 8; -- # Data BITS
		SB_TICK : integer := 16 -- # Stop BITS Tick (1 -> 16, 1.5 -> 24, 2 -> 32)
    );
    Port
    ( 
        CLK          : in  STD_LOGIC;
		RESET		 : in  STD_LOGIC;
		TX_START	 : in  STD_LOGIC;
		S_TICK 		 : in  STD_LOGIC;
		DIN			 : in STD_LOGIC_VECTOR (7 downto 0);
		TX_DONE_TICK : out STD_LOGIC;
		TX	 		 : out STD_LOGIC
    );
end UART_TX;

-------------------------------------------------------------------------

architecture Behavioral of UART_TX is
	type state_type is (idle, start, data, stop);
	signal state_reg, state_next: state_type;
	signal s_reg, s_next: unsigned(3 downto 0);
	signal n_reg, n_next: unsigned(2 downto 0);
	signal b_reg, b_next: std_logic_vector(7 downto 0);
	signal TX_reg, TX_next: std_logic;
begin

	-- FSMD state & data registers
	process(CLK,RESET)
	begin
		if RESET='1' then
			state_reg <= idle;
			s_reg <= (others=>'0');
			n_reg <= (others=>'0');
			b_reg <= (others=>'0');
			TX_reg <= '1';
		elsif (CLK'event and CLK='1') then
			state_reg <= state_next;
			s_reg <= s_next;
			n_reg <= n_next;
			b_reg <= b_next;
			TX_reg <= TX_next;
		end if;
	end process;

	-- Next-state logic & data path functional units/routing
	process(state_reg,s_reg,n_reg,b_reg,S_TICK, TX_reg,TX_START,DIN)
	begin
		state_next <= state_reg;
		s_next <= s_reg;
		n_next <= n_reg;
		b_next <= b_reg;
		TX_next <= TX_reg;
		TX_DONE_TICK <= '0';
		
		case state_reg is
			when idle =>
				TX_next <= '1';
				if TX_START='1' then
					state_next <= start;
					s_next <= (others=>'0');
					b_next <= DIN;
				end if;

			when start =>
			TX_next <= '0';
			if (S_TICK = '1') then
				if s_reg=15 then
					state_next <= data;
					s_next <= (others=>'0');
					n_next <= (others=>'0');
				else
					s_next <= s_reg + 1;
				end if;
			end if;
			
			when data =>
				TX_next <= b_reg(0);
				if (S_TICK = '1') then
					if s_reg=15 then
						s_next <= (others=>'0');
						b_next <= '0' & b_reg(7 downto 1);
						if n_reg=(DBIT-1) then
							state_next <= stop;
						else
							n_next <= n_reg + 1;
						end if;
					else
						s_next <= s_reg + 1;
					end if;
				end if;
			
			when stop =>
				TX_next <= '1';
				if (S_TICK = '1') then
					if s_reg=(SB_TICK-1) then
						state_next <= idle;
						TX_DONE_TICK <= '1';
					else
						s_next <= s_reg + 1;
					end if;
				end if;
		end case;
	end process;
	
	TX <= TX_reg;

end Behavioral;
