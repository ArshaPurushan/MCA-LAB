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
	dbms_output.put_line('Maximum value of (23,45): '||c);
END;
/

/*
SET SERVEROUTPUT ON;
CREATE OR REPLACE FUNCTION findMax(x IN NUMBER, y IN NUMBER)
RETURN NUMBER IS
	z NUMBER;
BEGIN
	IF x > y THEN
		z := x;
	ELSE
		z := y;
	END IF;
	RETURN z;
END findMax;
/

DECLARE
	a NUMBER := 23;
	b NUMBER := 45;
	c NUMBER;
BEGIN
	c := findMax(a, b);
	DBMS_OUTPUT.PUT_LINE('Maximum value is ' || c);
END;
/
*/
