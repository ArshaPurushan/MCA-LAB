/*Write a PL SQL code for reverse a string.*/

SET SERVEROUTPUT ON;
DECLARE
	str VARCHAR2(10) := '&str';
	len INT;
	rev VARCHAR2(10) := '';
	i INT;
BEGIN
	len := LENGTH(str);
	FOR i IN REVERSE 1..len LOOP
		rev := rev || SUBSTR(str, i, 1);
	END LOOP;
	DBMS_OUTPUT.PUT_LINE('Reversed string: ' || rev);
END;
/

