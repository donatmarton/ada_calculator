with Ada.Strings.Fixed;

package body Parser is

   function Parse_For_Exit_Command (Line_To_Parse : String) return Boolean is
      Position : Natural;
      type Array_Of_Exit_Commands is array (1 .. 3) of access constant String;
      Exit_Commands : constant Array_Of_Exit_Commands
        := (new String'("exit"),
            new String'("q"),
            new String'("quit"));
   begin
      for I in Exit_Commands'Range loop
         Position := Ada.Strings.Fixed.Index (Source => Line_To_Parse,
                                              Pattern => Exit_Commands (I).all
                                             );
         if (Position /= 0) then return True; end if;
      end loop;
      return False;
   end Parse_For_Exit_Command;

end Parser;
