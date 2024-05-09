--row level trigger

SQL> grant resource,connect to ARSHA;

--Grant succeeded.

SQL> connect ARSHA/arsha123;
--Connected.
SQL> @Prgm21

SQL> create table customers(id int,name varchar(30),age int,address varchar(50),salary float);

--Table created.

SQL> insert into customers values(1,'Ramesh',32,'Ahemdabad',2000);
SQL> insert into customers values(2,'khilan',25,'Delhi',1500);

SQL> select * from customers;


	ID NAME 				 AGE ADDRESS						    SALARY
---------- ------------------------------ ---------- -------------------------------------------------- ----------
	 1 Ramesh				  32 Ahemdabad						      2000
	 2 khilan				  25 Delhi						      1500


set serveroutput on;
CREATE OR REPLACE TRIGGER display_salary_changes 
BEFORE DELETE OR INSERT OR UPDATE ON customers 
FOR EACH ROW 
       WHEN (NEW.ID > 0)
DECLARE 
   sal_diff number; 
BEGIN 
   sal_diff := :NEW.salary  - :OLD.salary; 
   dbms_output.put_line('Old salary: ' || :OLD.salary); 
   dbms_output.put_line('New salary: ' || :NEW.salary); 
   dbms_output.put_line('Salary difference: ' || sal_diff); 
END; 
/ 

--Trigger created.

SQL> insert into customers values(3,'Kaushik',23,'Kota',2000);
Old salary:
New salary: 2000
Salary difference:

1 row created.

SQL> select * from customers;

	ID NAME 				 AGE ADDRESS						    SALARY
---------- ------------------------------ ---------- -------------------------------------------------- ----------
	 1 Ramesh				  32 Ahemdabad						      2000
	 2 khilan				  25 Delhi						      1500
	 3 Kaushik				  23 Kota						      2000

SQL> update customers set salary=2500 where id=1;
Old salary: 2000
New salary: 2500
Salary difference: 500

1 row updated.

SQL>  select * from customers;

	ID NAME 				 AGE ADDRESS						    SALARY
---------- ------------------------------ ---------- -------------------------------------------------- ----------
	 1 Ramesh				  32 Ahemdabad						      2500
	 2 khilan				  25 Delhi						      1500
	 3 Kaushik				  23 Kota						      2000


