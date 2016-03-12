-- Listado del detector de flancos

--------------------------------------------------------
-- INSTANCE TEMPLATE
--------------------------------------------------------
--Edge_inst :entity work.edge_detect
--  port map (
--   c	   => MCLK,
--   level => , --in
--   tick  =>   --out
--  );

library ieee;
use ieee.std_logic_1164.all;

entity edge_detect is
  generic (N: NATURAL := 3 );
  port(
    c     : in  std_logic;
    level : in  std_logic;
    tick  : out std_logic
  );
end edge_detect;





-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
-- NO MODIFICAR ---------------------------------------------------------------
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------

library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

architecture BlackBox of edge_detect is
  signal Mshreg_sync_1_0 : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal sync : STD_LOGIC_VECTOR ( 1 downto 0 ); 
begin
  sync_0 : FD
    port map (
      C => c,
      D => sync(1),
      Q => sync(0)
    );
  tick1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sync(1),
      I1 => sync(0),
      O => tick
    );
  XST_GND : GND
    port map (
      G => N0
    );
  Mshreg_sync_1 : SRL16
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => N0,
      A1 => N0,
      A2 => N0,
      A3 => N0,
      CLK => c,
      D => level,
      Q => Mshreg_sync_1_0
    );
  sync_1 : FD
    port map (
      C => c,
      D => Mshreg_sync_1_0,
      Q => sync(1)
    );

end BlackBox;


