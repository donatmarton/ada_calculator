package Parser is

   function Parse_For_Exit_Command (Line_To_Parse : String) return Boolean;
   subtype Operation_Count is Integer range 0 .. 4;
   type Sign is (Positive, Negative);
   type Subexpression is record
      Expression_String : access String;
      Leading_Sign : Sign;
   end record;

end Parser;
