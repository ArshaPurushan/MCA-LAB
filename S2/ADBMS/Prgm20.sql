--statement level trigger


SQL> grant resource,connect to ARSHA;

--Grant succeeded.

SQL> connect ARSHA/arsha123;
--Connected.
SQL> @Prgm20

SQL> CREATE TABLE xy (  id INT,  name VARCHAR(50), age INT);

--Table created.

SQL> INSERT INTO xy (id, name, age) VALUES (1, 'Alice', 30);
SQL> INSERT INTO xy (id, name, age) VALUES (3, 'Arya', 20);
SQL> INSERT INTO xy (id, name, age) VALUES (6, 'Roy', 40);

SQL> SELECT * FROM xy;

	ID NAME 						     AGE
---------- -------------------------------------------------- ----------
	 1 Alice						      30
	 3 Arya 						      20
	 6 Roy							      40



SQL> CREATE TABLE testtable (
  action VARCHAR(50),
  day TIMESTAMP
);

--Table created.


set serveroutput on;
create trigger t4 after insert or update on xy
begin
if inserting then
	 insert into testtable values('insert done', sysdate);
  else
           insert into testtable values('update done', sysdate);
end if;
end;
/

--Trigger created.

SQL> select * from testtable;

--no rows selected

SQL> insert into xy values(5,'Hina',25);
SQL> insert into xy values(10,'Dia',31);

SQL> select * from testtable;

ACTION						   DAY
-------------------------------------------------- ---------------------------------------------------------------------------
insert done					   09-05-24 10:28:55.000000 AM
insert done					   09-05-24 10:29:26.000000 AM

SQL> select * from xy;

	ID NAME 						     AGE
---------- -------------------------------------------------- ----------
	 1 Alice						      30
	 3 Arya 						      20
	 6 Roy							      40
	 5 Hina 						      25
	10 Dia							      31


SQL> update xy set name='tia' where id='10';

SQL> select * from testtable;

ACTION						   DAY
-------------------------------------------------- ---------------------------------------------------------------------------
insert done					   09-05-24 10:28:55.000000 AM
insert done					   09-05-24 10:29:26.000000 AM
update done					   09-05-24 10:41:56.000000 AM

SQL> select * from xy;

	ID NAME 						     AGE
---------- -------------------------------------------------- ----------
	 1 Alice						      30
	 3 Arya 						      20
	 6 Roy							      40
	 5 Hina 						      25
	10 tia							      31


