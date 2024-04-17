/*Area of circle using loop and branch*/

Set Serveroutput ON
DECLARE
	radius number:=&radius;
	area float;
	pi constant float:=3.14;
	i int;
BEGIN
	if(radius>0) then
		area:=pi;
		for i in 1..2
			loop
				area:=area*radius;
			end loop;
		dbms_output.put_line('area is '|| area);
	else 
		dbms_output.put_line('area cannot be found');
	end if;
END;
/
	
