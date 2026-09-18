pragma Ada_2022;

package body Convert_Demo is

   function Round_Trip (W : Word32) return Boolean is
   begin
      return To_Word (To_Bytes (W)) = W;
   end Round_Trip;

end Convert_Demo;
