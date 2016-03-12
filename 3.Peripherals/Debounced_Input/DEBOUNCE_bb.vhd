
--------------------------------------------------------
-- INSTANCE TEMPLATE
--------------------------------------------------------

--  deb_inst : entity work.DEBOUNCE
--   port map (
--    c  => ,
--    r  => ,
--    sw => ,  --input
--    db =>    --debounced output
--   );


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity DEBOUNCE is
  port(
    c  : in  std_logic;
    r  : in  std_logic;
    sw : in  std_logic;
    db : out std_logic
  );
end DEBOUNCE;


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

architecture BlackBox of DEBOUNCE is
  signal Mcount_q_reg_cy_10_rt_2 : STD_LOGIC; 
  signal Mcount_q_reg_cy_11_rt_4 : STD_LOGIC; 
  signal Mcount_q_reg_cy_12_rt_6 : STD_LOGIC; 
  signal Mcount_q_reg_cy_13_rt_8 : STD_LOGIC; 
  signal Mcount_q_reg_cy_14_rt_10 : STD_LOGIC; 
  signal Mcount_q_reg_cy_15_rt_12 : STD_LOGIC; 
  signal Mcount_q_reg_cy_16_rt_14 : STD_LOGIC; 
  signal Mcount_q_reg_cy_17_rt_16 : STD_LOGIC; 
  signal Mcount_q_reg_cy_1_rt_18 : STD_LOGIC; 
  signal Mcount_q_reg_cy_2_rt_20 : STD_LOGIC; 
  signal Mcount_q_reg_cy_3_rt_22 : STD_LOGIC; 
  signal Mcount_q_reg_cy_4_rt_24 : STD_LOGIC; 
  signal Mcount_q_reg_cy_5_rt_26 : STD_LOGIC; 
  signal Mcount_q_reg_cy_6_rt_28 : STD_LOGIC; 
  signal Mcount_q_reg_cy_7_rt_30 : STD_LOGIC; 
  signal Mcount_q_reg_cy_8_rt_32 : STD_LOGIC; 
  signal Mcount_q_reg_cy_9_rt_34 : STD_LOGIC; 
  signal Mcount_q_reg_xor_18_rt_36 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal N12 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal N3 : STD_LOGIC; 
  signal N5 : STD_LOGIC; 
  signal N9 : STD_LOGIC; 
  signal NlwRenamedSig_OI_db : STD_LOGIC; 
  signal m_tick : STD_LOGIC; 
  signal state_reg_FSM_FFd1_In_93 : STD_LOGIC; 
  signal state_reg_FSM_FFd2_94 : STD_LOGIC; 
  signal state_reg_FSM_FFd2_In_95 : STD_LOGIC; 
  signal state_reg_FSM_FFd3_96 : STD_LOGIC; 
  signal state_reg_FSM_FFd3_In_97 : STD_LOGIC; 
  signal Mcount_q_reg_cy : STD_LOGIC_VECTOR ( 17 downto 0 ); 
  signal Mcount_q_reg_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 18 downto 1 ); 
  signal m_tick_cmp_eq0000_wg_cy : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal m_tick_cmp_eq0000_wg_lut : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal q_reg : STD_LOGIC_VECTOR ( 18 downto 0 ); 
begin
  db <= NlwRenamedSig_OI_db;
  XST_GND : GND
    port map (
      G => N2
    );
  XST_VCC : VCC
    port map (
      P => N3
    );
  q_reg_0 : FD
    port map (
      C => c,
      D => Mcount_q_reg_lut(0),
      Q => q_reg(0)
    );
  q_reg_1 : FD
    port map (
      C => c,
      D => Result(1),
      Q => q_reg(1)
    );
  q_reg_2 : FD
    port map (
      C => c,
      D => Result(2),
      Q => q_reg(2)
    );
  q_reg_3 : FD
    port map (
      C => c,
      D => Result(3),
      Q => q_reg(3)
    );
  q_reg_4 : FD
    port map (
      C => c,
      D => Result(4),
      Q => q_reg(4)
    );
  q_reg_5 : FD
    port map (
      C => c,
      D => Result(5),
      Q => q_reg(5)
    );
  q_reg_6 : FD
    port map (
      C => c,
      D => Result(6),
      Q => q_reg(6)
    );
  q_reg_7 : FD
    port map (
      C => c,
      D => Result(7),
      Q => q_reg(7)
    );
  q_reg_8 : FD
    port map (
      C => c,
      D => Result(8),
      Q => q_reg(8)
    );
  q_reg_9 : FD
    port map (
      C => c,
      D => Result(9),
      Q => q_reg(9)
    );
  q_reg_10 : FD
    port map (
      C => c,
      D => Result(10),
      Q => q_reg(10)
    );
  q_reg_11 : FD
    port map (
      C => c,
      D => Result(11),
      Q => q_reg(11)
    );
  q_reg_12 : FD
    port map (
      C => c,
      D => Result(12),
      Q => q_reg(12)
    );
  q_reg_13 : FD
    port map (
      C => c,
      D => Result(13),
      Q => q_reg(13)
    );
  q_reg_14 : FD
    port map (
      C => c,
      D => Result(14),
      Q => q_reg(14)
    );
  q_reg_15 : FD
    port map (
      C => c,
      D => Result(15),
      Q => q_reg(15)
    );
  q_reg_16 : FD
    port map (
      C => c,
      D => Result(16),
      Q => q_reg(16)
    );
  q_reg_17 : FD
    port map (
      C => c,
      D => Result(17),
      Q => q_reg(17)
    );
  q_reg_18 : FD
    port map (
      C => c,
      D => Result(18),
      Q => q_reg(18)
    );
  Mcount_q_reg_cy_0_Q : MUXCY
    port map (
      CI => N2,
      DI => N3,
      S => Mcount_q_reg_lut(0),
      O => Mcount_q_reg_cy(0)
    );
  Mcount_q_reg_cy_1_Q : MUXCY
    port map (
      CI => Mcount_q_reg_cy(0),
      DI => N2,
      S => Mcount_q_reg_cy_1_rt_18,
      O => Mcount_q_reg_cy(1)
    );
  Mcount_q_reg_xor_1_Q : XORCY
    port map (
      CI => Mcount_q_reg_cy(0),
      LI => Mcount_q_reg_cy_1_rt_18,
      O => Result(1)
    );
  Mcount_q_reg_cy_2_Q : MUXCY
    port map (
      CI => Mcount_q_reg_cy(1),
      DI => N2,
      S => Mcount_q_reg_cy_2_rt_20,
      O => Mcount_q_reg_cy(2)
    );
  Mcount_q_reg_xor_2_Q : XORCY
    port map (
      CI => Mcount_q_reg_cy(1),
      LI => Mcount_q_reg_cy_2_rt_20,
      O => Result(2)
    );
  Mcount_q_reg_cy_3_Q : MUXCY
    port map (
      CI => Mcount_q_reg_cy(2),
      DI => N2,
      S => Mcount_q_reg_cy_3_rt_22,
      O => Mcount_q_reg_cy(3)
    );
  Mcount_q_reg_xor_3_Q : XORCY
    port map (
      CI => Mcount_q_reg_cy(2),
      LI => Mcount_q_reg_cy_3_rt_22,
      O => Result(3)
    );
  Mcount_q_reg_cy_4_Q : MUXCY
    port map (
      CI => Mcount_q_reg_cy(3),
      DI => N2,
      S => Mcount_q_reg_cy_4_rt_24,
      O => Mcount_q_reg_cy(4)
    );
  Mcount_q_reg_xor_4_Q : XORCY
    port map (
      CI => Mcount_q_reg_cy(3),
      LI => Mcount_q_reg_cy_4_rt_24,
      O => Result(4)
    );
  Mcount_q_reg_cy_5_Q : MUXCY
    port map (
      CI => Mcount_q_reg_cy(4),
      DI => N2,
      S => Mcount_q_reg_cy_5_rt_26,
      O => Mcount_q_reg_cy(5)
    );
  Mcount_q_reg_xor_5_Q : XORCY
    port map (
      CI => Mcount_q_reg_cy(4),
      LI => Mcount_q_reg_cy_5_rt_26,
      O => Result(5)
    );
  Mcount_q_reg_cy_6_Q : MUXCY
    port map (
      CI => Mcount_q_reg_cy(5),
      DI => N2,
      S => Mcount_q_reg_cy_6_rt_28,
      O => Mcount_q_reg_cy(6)
    );
  Mcount_q_reg_xor_6_Q : XORCY
    port map (
      CI => Mcount_q_reg_cy(5),
      LI => Mcount_q_reg_cy_6_rt_28,
      O => Result(6)
    );
  Mcount_q_reg_cy_7_Q : MUXCY
    port map (
      CI => Mcount_q_reg_cy(6),
      DI => N2,
      S => Mcount_q_reg_cy_7_rt_30,
      O => Mcount_q_reg_cy(7)
    );
  Mcount_q_reg_xor_7_Q : XORCY
    port map (
      CI => Mcount_q_reg_cy(6),
      LI => Mcount_q_reg_cy_7_rt_30,
      O => Result(7)
    );
  Mcount_q_reg_cy_8_Q : MUXCY
    port map (
      CI => Mcount_q_reg_cy(7),
      DI => N2,
      S => Mcount_q_reg_cy_8_rt_32,
      O => Mcount_q_reg_cy(8)
    );
  Mcount_q_reg_xor_8_Q : XORCY
    port map (
      CI => Mcount_q_reg_cy(7),
      LI => Mcount_q_reg_cy_8_rt_32,
      O => Result(8)
    );
  Mcount_q_reg_cy_9_Q : MUXCY
    port map (
      CI => Mcount_q_reg_cy(8),
      DI => N2,
      S => Mcount_q_reg_cy_9_rt_34,
      O => Mcount_q_reg_cy(9)
    );
  Mcount_q_reg_xor_9_Q : XORCY
    port map (
      CI => Mcount_q_reg_cy(8),
      LI => Mcount_q_reg_cy_9_rt_34,
      O => Result(9)
    );
  Mcount_q_reg_cy_10_Q : MUXCY
    port map (
      CI => Mcount_q_reg_cy(9),
      DI => N2,
      S => Mcount_q_reg_cy_10_rt_2,
      O => Mcount_q_reg_cy(10)
    );
  Mcount_q_reg_xor_10_Q : XORCY
    port map (
      CI => Mcount_q_reg_cy(9),
      LI => Mcount_q_reg_cy_10_rt_2,
      O => Result(10)
    );
  Mcount_q_reg_cy_11_Q : MUXCY
    port map (
      CI => Mcount_q_reg_cy(10),
      DI => N2,
      S => Mcount_q_reg_cy_11_rt_4,
      O => Mcount_q_reg_cy(11)
    );
  Mcount_q_reg_xor_11_Q : XORCY
    port map (
      CI => Mcount_q_reg_cy(10),
      LI => Mcount_q_reg_cy_11_rt_4,
      O => Result(11)
    );
  Mcount_q_reg_cy_12_Q : MUXCY
    port map (
      CI => Mcount_q_reg_cy(11),
      DI => N2,
      S => Mcount_q_reg_cy_12_rt_6,
      O => Mcount_q_reg_cy(12)
    );
  Mcount_q_reg_xor_12_Q : XORCY
    port map (
      CI => Mcount_q_reg_cy(11),
      LI => Mcount_q_reg_cy_12_rt_6,
      O => Result(12)
    );
  Mcount_q_reg_cy_13_Q : MUXCY
    port map (
      CI => Mcount_q_reg_cy(12),
      DI => N2,
      S => Mcount_q_reg_cy_13_rt_8,
      O => Mcount_q_reg_cy(13)
    );
  Mcount_q_reg_xor_13_Q : XORCY
    port map (
      CI => Mcount_q_reg_cy(12),
      LI => Mcount_q_reg_cy_13_rt_8,
      O => Result(13)
    );
  Mcount_q_reg_cy_14_Q : MUXCY
    port map (
      CI => Mcount_q_reg_cy(13),
      DI => N2,
      S => Mcount_q_reg_cy_14_rt_10,
      O => Mcount_q_reg_cy(14)
    );
  Mcount_q_reg_xor_14_Q : XORCY
    port map (
      CI => Mcount_q_reg_cy(13),
      LI => Mcount_q_reg_cy_14_rt_10,
      O => Result(14)
    );
  Mcount_q_reg_cy_15_Q : MUXCY
    port map (
      CI => Mcount_q_reg_cy(14),
      DI => N2,
      S => Mcount_q_reg_cy_15_rt_12,
      O => Mcount_q_reg_cy(15)
    );
  Mcount_q_reg_xor_15_Q : XORCY
    port map (
      CI => Mcount_q_reg_cy(14),
      LI => Mcount_q_reg_cy_15_rt_12,
      O => Result(15)
    );
  Mcount_q_reg_cy_16_Q : MUXCY
    port map (
      CI => Mcount_q_reg_cy(15),
      DI => N2,
      S => Mcount_q_reg_cy_16_rt_14,
      O => Mcount_q_reg_cy(16)
    );
  Mcount_q_reg_xor_16_Q : XORCY
    port map (
      CI => Mcount_q_reg_cy(15),
      LI => Mcount_q_reg_cy_16_rt_14,
      O => Result(16)
    );
  Mcount_q_reg_cy_17_Q : MUXCY
    port map (
      CI => Mcount_q_reg_cy(16),
      DI => N2,
      S => Mcount_q_reg_cy_17_rt_16,
      O => Mcount_q_reg_cy(17)
    );
  Mcount_q_reg_xor_17_Q : XORCY
    port map (
      CI => Mcount_q_reg_cy(16),
      LI => Mcount_q_reg_cy_17_rt_16,
      O => Result(17)
    );
  Mcount_q_reg_xor_18_Q : XORCY
    port map (
      CI => Mcount_q_reg_cy(17),
      LI => Mcount_q_reg_xor_18_rt_36,
      O => Result(18)
    );
  state_reg_FSM_FFd3 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => c,
      D => state_reg_FSM_FFd3_In_97,
      R => r,
      Q => state_reg_FSM_FFd3_96
    );
  state_reg_FSM_FFd1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => c,
      D => state_reg_FSM_FFd1_In_93,
      R => r,
      Q => NlwRenamedSig_OI_db
    );
  state_reg_FSM_FFd2 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => c,
      D => state_reg_FSM_FFd2_In_95,
      R => r,
      Q => state_reg_FSM_FFd2_94
    );
  m_tick_cmp_eq0000_wg_lut_0_Q : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => q_reg(7),
      I1 => q_reg(4),
      I2 => q_reg(5),
      O => m_tick_cmp_eq0000_wg_lut(0)
    );
  m_tick_cmp_eq0000_wg_cy_0_Q : MUXCY
    port map (
      CI => N3,
      DI => N2,
      S => m_tick_cmp_eq0000_wg_lut(0),
      O => m_tick_cmp_eq0000_wg_cy(0)
    );
  m_tick_cmp_eq0000_wg_lut_1_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => q_reg(6),
      I1 => q_reg(8),
      I2 => q_reg(3),
      I3 => q_reg(9),
      O => m_tick_cmp_eq0000_wg_lut(1)
    );
  m_tick_cmp_eq0000_wg_cy_1_Q : MUXCY
    port map (
      CI => m_tick_cmp_eq0000_wg_cy(0),
      DI => N2,
      S => m_tick_cmp_eq0000_wg_lut(1),
      O => m_tick_cmp_eq0000_wg_cy(1)
    );
  m_tick_cmp_eq0000_wg_lut_2_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => q_reg(12),
      I1 => q_reg(10),
      I2 => q_reg(1),
      I3 => q_reg(11),
      O => m_tick_cmp_eq0000_wg_lut(2)
    );
  m_tick_cmp_eq0000_wg_cy_2_Q : MUXCY
    port map (
      CI => m_tick_cmp_eq0000_wg_cy(1),
      DI => N2,
      S => m_tick_cmp_eq0000_wg_lut(2),
      O => m_tick_cmp_eq0000_wg_cy(2)
    );
  m_tick_cmp_eq0000_wg_lut_3_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => q_reg(13),
      I1 => q_reg(14),
      I2 => q_reg(0),
      I3 => q_reg(15),
      O => m_tick_cmp_eq0000_wg_lut(3)
    );
  m_tick_cmp_eq0000_wg_cy_3_Q : MUXCY
    port map (
      CI => m_tick_cmp_eq0000_wg_cy(2),
      DI => N2,
      S => m_tick_cmp_eq0000_wg_lut(3),
      O => m_tick_cmp_eq0000_wg_cy(3)
    );
  m_tick_cmp_eq0000_wg_lut_4_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => q_reg(16),
      I1 => q_reg(17),
      I2 => q_reg(2),
      I3 => q_reg(18),
      O => m_tick_cmp_eq0000_wg_lut(4)
    );
  m_tick_cmp_eq0000_wg_cy_4_Q : MUXCY
    port map (
      CI => m_tick_cmp_eq0000_wg_cy(3),
      DI => N2,
      S => m_tick_cmp_eq0000_wg_lut(4),
      O => m_tick
    );
  state_reg_FSM_FFd1_In : LUT4
    generic map(
      INIT => X"D8CC"
    )
    port map (
      I0 => state_reg_FSM_FFd3_96,
      I1 => NlwRenamedSig_OI_db,
      I2 => N12,
      I3 => m_tick,
      O => state_reg_FSM_FFd1_In_93
    );
  state_reg_FSM_FFd2_In : LUT4
    generic map(
      INIT => X"B8F0"
    )
    port map (
      I0 => sw,
      I1 => state_reg_FSM_FFd3_96,
      I2 => N5,
      I3 => m_tick,
      O => state_reg_FSM_FFd2_In_95
    );
  state_reg_FSM_FFd3_In_SW0 : LUT3
    generic map(
      INIT => X"E7"
    )
    port map (
      I0 => state_reg_FSM_FFd2_94,
      I1 => NlwRenamedSig_OI_db,
      I2 => sw,
      O => N9
    );
  state_reg_FSM_FFd3_In : LUT4
    generic map(
      INIT => X"331B"
    )
    port map (
      I0 => state_reg_FSM_FFd3_96,
      I1 => N9,
      I2 => N10,
      I3 => m_tick,
      O => state_reg_FSM_FFd3_In_97
    );
  Mcount_q_reg_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => q_reg(1),
      O => Mcount_q_reg_cy_1_rt_18
    );
  Mcount_q_reg_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => q_reg(2),
      O => Mcount_q_reg_cy_2_rt_20
    );
  Mcount_q_reg_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => q_reg(3),
      O => Mcount_q_reg_cy_3_rt_22
    );
  Mcount_q_reg_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => q_reg(4),
      O => Mcount_q_reg_cy_4_rt_24
    );
  Mcount_q_reg_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => q_reg(5),
      O => Mcount_q_reg_cy_5_rt_26
    );
  Mcount_q_reg_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => q_reg(6),
      O => Mcount_q_reg_cy_6_rt_28
    );
  Mcount_q_reg_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => q_reg(7),
      O => Mcount_q_reg_cy_7_rt_30
    );
  Mcount_q_reg_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => q_reg(8),
      O => Mcount_q_reg_cy_8_rt_32
    );
  Mcount_q_reg_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => q_reg(9),
      O => Mcount_q_reg_cy_9_rt_34
    );
  Mcount_q_reg_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => q_reg(10),
      O => Mcount_q_reg_cy_10_rt_2
    );
  Mcount_q_reg_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => q_reg(11),
      O => Mcount_q_reg_cy_11_rt_4
    );
  Mcount_q_reg_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => q_reg(12),
      O => Mcount_q_reg_cy_12_rt_6
    );
  Mcount_q_reg_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => q_reg(13),
      O => Mcount_q_reg_cy_13_rt_8
    );
  Mcount_q_reg_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => q_reg(14),
      O => Mcount_q_reg_cy_14_rt_10
    );
  Mcount_q_reg_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => q_reg(15),
      O => Mcount_q_reg_cy_15_rt_12
    );
  Mcount_q_reg_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => q_reg(16),
      O => Mcount_q_reg_cy_16_rt_14
    );
  Mcount_q_reg_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => q_reg(17),
      O => Mcount_q_reg_cy_17_rt_16
    );
  Mcount_q_reg_xor_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => q_reg(18),
      O => Mcount_q_reg_xor_18_rt_36
    );
  Mcount_q_reg_lut_0_INV_0 : INV
    port map (
      I => q_reg(0),
      O => Mcount_q_reg_lut(0)
    );
  state_reg_FSM_FFd1_In_SW0 : LUT3_D
    generic map(
      INIT => X"E8"
    )
    port map (
      I0 => state_reg_FSM_FFd2_94,
      I1 => NlwRenamedSig_OI_db,
      I2 => sw,
      LO => N12,
      O => N5
    );
  state_reg_FSM_FFd3_In_SW1 : LUT2_L
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => NlwRenamedSig_OI_db,
      I1 => sw,
      LO => N10
    );

end BlackBox;


