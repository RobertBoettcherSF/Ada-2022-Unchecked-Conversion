pragma Ada_2022;

with Ada.Assertions; use Ada.Assertions;
with Ada.Text_IO; use Ada.Text_IO;
with Convert_Demo; use Convert_Demo;

procedure Tests is
   W : constant Word32 := 16#41424344#;  -- 'A','B','C','D' in some orders
   B : Byte4;
begin
   Assert (Word32'Size = 32);
   Assert (Byte4'Size = 32);
   Put_Line ("PASS equal sizes for Unchecked_Conversion");

   Assert (Round_Trip (0));
   Assert (Round_Trip (W));
   Assert (Round_Trip (Word32'Last));
   Put_Line ("PASS Word32 <-> Byte4 round trip");

   B := To_Bytes (W);
   Assert (To_Word (B) = W);
   Put_Line ("PASS explicit To_Bytes / To_Word");

   Put_Line ("All Unchecked_Conversion topic tests passed.");
end Tests;
