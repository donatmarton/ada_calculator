with Ada.Text_IO; use Ada.Text_IO;

package body CommandLineOutput is

   procedure Print_Welcome_Message is
   begin
      Put_Line ("Welcome to basic expression calculator!");
   end Print_Welcome_Message;

   procedure Print_Farewell_Message is
   begin
      Put_Line ("Goodbye.");
   end Print_Farewell_Message;

   procedure Print_Custom_Message (Message : String) is
   begin
      Put_Line (Message);
   end Print_Custom_Message;

   procedure Print_Illegal_Input_Error is
   begin
      Put_Line ("Error, illegal characters in input. " &
        "Only numbers and the four elementary operations are permitted.");
   end Print_Illegal_Input_Error;

end CommandLineOutput;
