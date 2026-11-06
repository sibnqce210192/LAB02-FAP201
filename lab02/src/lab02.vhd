library ieee;
use ieee.std_logic_1164.all;

entity lab02 is
  port (
    i_sw1 : in  std_logic;
    i_sw2 : in  std_logic;
    o_led : out std_logic
  );
end entity lab02;

architecture rtl of lab02 is
begin
  -- Chi de DUNG MOT dong o dang active, comment tat ca dong con lai.
  -- Cot LED theo thu tu SW1 SW2 = 00, 01, 10, 11

  -- De goc: AND, nhan ca 2 thi sang                  -> 0 0 0 1
  o_led <= i_sw1 and i_sw2;

  -- M01 OR                                            -> 0 1 1 1
  -- o_led <= i_sw1 or i_sw2;

  -- M02 XOR (nhan 1 cai sang, ca 2 thi tat)           -> 0 1 1 0
  -- o_led <= i_sw1 xor i_sw2;

  -- M03 NAND (binh thuong sang, nhan ca 2 thi tat)    -> 1 1 1 0
  -- o_led <= not (i_sw1 and i_sw2);

  -- M04 NOR (binh thuong sang, nhan 1 trong 2 thi tat)-> 1 0 0 0
  -- o_led <= not (i_sw1 or i_sw2);

  -- M05 XNOR (giong nhau thi sang)                    -> 1 0 0 1
  -- o_led <= not (i_sw1 xor i_sw2);

  -- M06 SW1 nhan va SW2 khong nhan                    -> 0 0 1 0
  -- o_led <= i_sw1 and (not i_sw2);

  -- M07 SW2 nhan va SW1 khong nhan                    -> 0 1 0 0
  -- o_led <= i_sw2 and (not i_sw1);

  -- M08 Chi phu thuoc SW1                             -> 0 0 1 1
  -- o_led <= i_sw1;

  -- M09 Chi phu thuoc SW2                             -> 0 1 0 1
  -- o_led <= i_sw2;

  -- M10 Binh thuong sang, chi nhan SW1 thi tat        -> 1 1 0 1
  -- o_led <= (not i_sw1) or i_sw2;
end architecture rtl;