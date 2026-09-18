--  Ada 2022 topic: Ada.Unchecked_Conversion (same-size reinterpretation).
pragma Ada_2022;

with Ada.Unchecked_Conversion;

package Convert_Demo is

   type Word32 is mod 2 ** 32
     with Size => 32;

   type Byte4 is array (1 .. 4) of Character
     with Size => 32, Component_Size => 8;

   function To_Bytes is new Ada.Unchecked_Conversion (Word32, Byte4);
   function To_Word  is new Ada.Unchecked_Conversion (Byte4, Word32);

   function Round_Trip (W : Word32) return Boolean;
   --  True when To_Word (To_Bytes (W)) = W.

end Convert_Demo;
