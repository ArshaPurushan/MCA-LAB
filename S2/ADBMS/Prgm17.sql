/*This program finds the minimum of two values. Here, the procedure takes two numbers using the IN mode and returns their minimum using the OUT parameters.*/

Set Serveroutput ON;
Create or Replace PROCEDURE findMin(x IN number, y IN number, z OUT number) IS 
BEGIN 
   IF x < y THEN 
      z:= x; 
   ELSE 
      z:= y; 
   END IF; 
END;   
/

DECLARE 
   a number; 
   b number; 
   c number;
BEGIN 
   a:= &a; 
   b:= &b; 
findMin(a, b, c); 
   dbms_output.put_line(' Minimum value is: ' || c); 
END; 
/
