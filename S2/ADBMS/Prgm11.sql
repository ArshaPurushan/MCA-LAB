/*Write a PL/SQL program to find factorial of a number.*/

Set Serveroutput ON;
DECLARE
	v int := &value;
	fact float := 1;
	i int;
	
BEGIN
	if v>0 then
		for i in 1..v
		loop
			fact := fact*i;
		end loop;
	dbms_output.put_line('factorial is '|| fact);	
	else
		dbms_output.put_line('factorial not found');
	end if;	
END;
/

