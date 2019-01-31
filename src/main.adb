with Ada.Text_IO; use Ada.Text_IO;
with Ada.Strings.Maps; use Ada.Strings.Maps;
with Ada.Strings.Fixed;
with CommandLineOutput;
with Parser;

procedure Main is
   Legal_Characters : constant Character_Set := To_Set ("0123456789+-*/");
begin
   CommandLineOutput.Print_Welcome_Message;
   loop
      declare
         User_Input : constant String := Get_Line;
      begin
         if (Parser.Parse_For_Exit_Command (User_Input)) then
            CommandLineOutput.Print_Farewell_Message;
            exit;
         else
            --  check for sanity of user input
            if (Ada.Strings.Fixed.Count
                (User_Input, Legal_Characters) = User_Input'Length)
            then
               CommandLineOutput.Print_Custom_Message (User_Input);
            else
               CommandLineOutput.Print_Illegal_Input_Error;
            end if;
         end if;
      end;
   end loop;
end Main;
