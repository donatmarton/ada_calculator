with Ada.Text_IO; use Ada.Text_IO;

package body CommandLineOutput is

   procedure Print_Welcome_Message is
   begin
      Put_Line ("Welcome to basic expression calculator!");
   end Print_Welcome_Message;

   procedure Print_Custom_Message (message : String) is
   begin
      Put_Line (message);
   end Print_Custom_Message;

end CommandLineOutput;
