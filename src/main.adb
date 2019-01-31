with Ada.Text_IO; use Ada.Text_IO;
with CommandLineOutput;
with Parser;

procedure Main is
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
            CommandLineOutput.Print_Custom_Message (User_Input);
         end if;
      end;
   end loop;
end Main;
