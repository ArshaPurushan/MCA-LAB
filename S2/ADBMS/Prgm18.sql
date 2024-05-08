/*This procedure computes the square of value of a passed value. This example shows how we can use the same parameter to accept a value and then return the result.*/

Set Serveroutput ON;
Create or Replace PROCEDURE squareNum(x IN OUT number) IS 
BEGIN 
  x := x * x; 
END;  
/

DECLARE 
   a number; 
BEGIN 
   a:= &a; 
   squareNum(a); 
   dbms_output.put_line(' Square is: ' || a); 
END; 
/
