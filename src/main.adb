
with Ada.Text_IO; use Ada.Text_IO;
with CommandLineOutput;

procedure Main is
begin
   CommandLineOutput.Print_Welcome_Message;
   loop
      declare
         User_Input : constant String := Get_Line;
      begin
         CommandLineOutput.Print_Custom_Message (User_Input);
      end;
   end loop;
end Main;
