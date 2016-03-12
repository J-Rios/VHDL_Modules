
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-------------------------------------------------------------------------

entity BLOCKRAM is 
	generic
	(
		B : NATURAL := 8; -- Address Bus width
		W : NATURAL := 2  -- Data Bus width
	);
	port
	(
		clk    : in  STD_LOGIC;
		reset  : in  STD_LOGIC;
		wr_en  : in  STD_LOGIC;
		w_addr : in  STD_LOGIC_VECTOR(W-1 downto 0);
		r_addr : in  STD_LOGIC_VECTOR(W-1 downto 0);
		w_data : in  STD_LOGIC_VECTOR(B-1 downto 0);
		r_data : out STD_LOGIC_VECTOR(B-1 downto 0)
	);
end BLOCKRAM;

-------------------------------------------------------------------------

architecture Behavioral of BLOCKRAM is
	type REG_FILE_TYPE is array (2**W-1 downto 0) of STD_LOGIC_VECTOR (B-1 downto 0);
	signal array_reg : REG_FILE_TYPE;
begin

	-- Read-First Mode
	process(clk)
	begin
		if (rising_edge(clk)) then
			if (wr_en = '1') then
				array_reg(to_integer(unsigned(w_addr))) <= w_data;
			end if;
		end if;
	end process;

	r_data <= array_reg(to_integer(unsigned(r_addr)));
	
	-- Write-First Mode
	--process(clk)
	--begin
		--if (rising_edge(clk)) then
			--if (wr_en = '1') then
				--array_reg(to_integer(unsigned(w_addr))) <= w_data;
				--r_data <= w_data;
			--else
				--r_data <= array_reg(to_integer(unsigned(r_addr)));
			--end if;
		--end if;
	--end process;

end Behavioral;
