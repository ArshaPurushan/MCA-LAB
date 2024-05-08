/*Create a table squares to store a set of values and their corresponding square values*/

Set Serveroutput ON;

Create table squares (
    num number,
    sq number
);


Create or replace function findsquare (num in number)
return number is
	sq number(10);
Begin
	Sq:= num*num;
	Return sq;
End findsquare;
/

Declare
	i number(3);
	sq number(10);
Begin
	for i in 1..10
	loop
		sq := findsquare(i);
		Insert into squares values(i,sq);
	End loop;
End;
/

Select * from squares;
