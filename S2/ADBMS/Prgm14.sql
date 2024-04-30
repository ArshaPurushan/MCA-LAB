/*PL/SQL Function that computes and returns the maximum of two values.*/

SET SERVEROUTPUT ON;
create or replace function findMax(x IN number,y IN number)
RETURN number IS
	z number;
BEGIN
	if x>y then
		z:=x;
	else
		z:=y;
	end if;
	RETURN z;
END findMax;
/

DECLARE
	a number := 23;
	b number := 45;
	c number;
BEGIN
	
	c := findMax(a,b);
	dbms_output.put_line('Maximum value is '||c);
END;
/


