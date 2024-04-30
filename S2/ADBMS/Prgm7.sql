//EXECUTE TCL STATMENT

SQL> CREATE TABLE STD(ID INT,NAME VARCHAR(20),COURSE VARCHAR(20));

Table created.

SQL> INSERT INTO STD VALUES(&ID,'&NAME','&COURSE');
Enter value for id: 12
Enter value for name: DITA
Enter value for course: BBA
old   1: INSERT INTO STD VALUES(&ID,'&NAME','&COURSE')
new   1: INSERT INTO STD VALUES(12,'DITA','BBA')

1 row created.

SQL> /
Enter value for id: 10
Enter value for name: GINA
Enter value for course: BCA
old   1: INSERT INTO STD VALUES(&ID,'&NAME','&COURSE')
new   1: INSERT INTO STD VALUES(10,'GINA','BCA')

1 row created.

SQL> /
Enter value for id: 14
Enter value for name: TINA
Enter value for course: MBA
old   1: INSERT INTO STD VALUES(&ID,'&NAME','&COURSE')
new   1: INSERT INTO STD VALUES(14,'TINA','MBA')

1 row created.

SQL> /
Enter value for id: 22
Enter value for name: JINA
Enter value for course: MCA
old   1: INSERT INTO STD VALUES(&ID,'&NAME','&COURSE')
new   1: INSERT INTO STD VALUES(22,'JINA','MCA')

1 row created.

SQL> /
Enter value for id: 26
Enter value for name: HINA
Enter value for course: BCA
old   1: INSERT INTO STD VALUES(&ID,'&NAME','&COURSE')
new   1: INSERT INTO STD VALUES(26,'HINA','BCA')

1 row created.

SQL> COMMIT;

Commit complete.

SQL> SELECT * FROM STD;

	ID NAME 		COURSE
---------- -------------------- --------------------
	12 DITA 		BBA
	10 GINA 		BCA
	14 TINA 		MBA
	22 JINA 		MCA
	26 HINA 		BCA

SQL> INSERT INTO STD VALUES(30,'ARUN','MCA');

1 row created.

SQL> INSERT INTO STD VALUES(27,'JOSEPH','MBA');

1 row created.

SQL> SAVEPOINT A;

Savepoint created.

SQL> INSERT INTO STD VALUES(33,'SHIVA','BBA');

1 row created.

SQL> INSERT INTO STD VALUES(15,'PRIYA','BCA');

1 row created.

SQL> SELECT * FROM STD;

	ID NAME 		COURSE
---------- -------------------- --------------------
	12 DITA 		BBA
	10 GINA 		BCA
	14 TINA 		MBA
	22 JINA 		MCA
	26 HINA 		BCA
	30 ARUN 		MCA
	27 JOSEPH		MBA
	33 SHIVA		BBA
	15 PRIYA		BCA

9 rows selected.

SQL> ROLLBACK TO A;

Rollback complete.

SQL> SELECT * FROM STD;

	ID NAME 		COURSE
---------- -------------------- --------------------
	12 DITA 		BBA
	10 GINA 		BCA
	14 TINA 		MBA
	22 JINA 		MCA
	26 HINA 		BCA
	30 ARUN 		MCA
	27 JOSEPH		MBA

7 rows selected.

SQL> ROLLBACK;

Rollback complete.

SQL> SELECT * FROM STD;

	ID NAME 		COURSE
---------- -------------------- --------------------
	12 DITA 		BBA
	10 GINA 		BCA
	14 TINA 		MBA
	22 JINA 		MCA
	26 HINA 		BCA


