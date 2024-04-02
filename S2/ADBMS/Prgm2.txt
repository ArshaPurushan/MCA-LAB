//EXECUTE DML STATEMENT

CREATE TABLE CUSTOMER(ID INT PRIMARY KEY,NAME VARCHAR(20),ADDRESS VARCHAR(50),CITY VARCHAR(20),COUNTRY VARCHAR(20),AGE INT,SALARY INT);

Table created.

SQL> DESC CUSTOMER
 Name					   Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID					   NOT NULL NUMBER(38)
 NAME						    VARCHAR2(20)
 ADDRESS					    VARCHAR2(50)
 CITY						    VARCHAR2(20)
 COUNTRY					    VARCHAR2(20)
 AGE						    NUMBER(38)
 SALARY 					    NUMBER(38)

INSERT INTO CUSTOMER VALUES(1,'PRIYA','VARKALA','THIRUVANTHAPURAM','INDIA',20,25000);

1 row created.

SQL> INSERT INTO CUSTOMER VALUES(2,'ADITHYAN','CHERAI','ERNAKULAM','INDIA',25,30000);    

1 row created.

INSERT INTO CUSTOMER VALUES(3,'RISHI','DREAM','DELHI','INDIA',30,45000);

1 row created.

SELECT * FROM CUSTOMER;

	ID NAME
---------- --------------------
ADDRESS 					   CITY
-------------------------------------------------- --------------------
COUNTRY 		    AGE     SALARY
-------------------- ---------- ----------
	 1 PRIYA
VARKALA 					   THIRUVANTHAPURAM
INDIA			     20      25000

	 2 ADITHYAN
CHERAI						   ERNAKULAM
INDIA			     25      30000

	ID NAME
---------- --------------------
ADDRESS 					   CITY
-------------------------------------------------- --------------------
COUNTRY 		    AGE     SALARY
-------------------- ---------- ----------

	 3 RISHI
DREAM						   DELHI
INDIA			     30      45000


SQL> SELECT * FROM CUSTOMER WHERE NAME LIKE 'P%';

	ID NAME
---------- --------------------
ADDRESS 					   CITY
-------------------------------------------------- --------------------
COUNTRY 		    AGE     SALARY
-------------------- ---------- ----------
	 1 PRIYA
VARKALA 					   THIRUVANTHAPURAM
INDIA			     20      25000


SQL> SELECT * FROM CUSTOMER WHERE NAME LIKE '%YA%';

	ID NAME
---------- --------------------
ADDRESS 					   CITY
-------------------------------------------------- --------------------
COUNTRY 		    AGE     SALARY
-------------------- ---------- ----------
	 1 PRIYA
VARKALA 					   THIRUVANTHAPURAM
INDIA			     20      25000

	 2 ADITHYAN
CHERAI						   ERNAKULAM
INDIA			     25      30000

	ID NAME
---------- --------------------
ADDRESS 					   CITY
-------------------------------------------------- --------------------
COUNTRY 		    AGE     SALARY
-------------------- ---------- ----------


SQL> SELECT * FROM CUSTOMER WHERE CITY LIKE '%I';      

	ID NAME
---------- --------------------
ADDRESS 					   CITY
-------------------------------------------------- --------------------
COUNTRY 		    AGE     SALARY
-------------------- ---------- ----------
	 3 RISHI
DREAM						   DELHI
INDIA			     30      45000


SQL> SELECT * FROM CUSTOMER WHERE AGE LIKE '2%';

	ID NAME
---------- --------------------
ADDRESS 					   CITY
-------------------------------------------------- --------------------
COUNTRY 		    AGE     SALARY
-------------------- ---------- ----------
	 1 PRIYA
VARKALA 					   THIRUVANTHAPURAM
INDIA			     20      25000

	 2 ADITHYAN
CHERAI						   ERNAKULAM
INDIA			     25      30000

	ID NAME
---------- --------------------
ADDRESS 					   CITY
-------------------------------------------------- --------------------
COUNTRY 		    AGE     SALARY
-------------------- ---------- ----------


SQL> SELECT * FROM CUSTOMER WHERE NAME LIKE 'PR_YA';

	ID NAME
---------- --------------------
ADDRESS 					   CITY
-------------------------------------------------- --------------------
COUNTRY 		    AGE     SALARY
-------------------- ---------- ----------
	 1 PRIYA
VARKALA 					   THIRUVANTHAPURAM
INDIA			     20      25000


SQL> SELECT * FROM CUSTOMER WHERE SALARY LIKE '3__00';

	ID NAME
---------- --------------------
ADDRESS 					   CITY
-------------------------------------------------- --------------------
COUNTRY 		    AGE     SALARY
-------------------- ---------- ----------
	 2 ADITHYAN
CHERAI						   ERNAKULAM
INDIA			     25      30000

SQL> SELECT * FROM CUSTOMER WHERE NAME LIKE '____A%';                                                      

	ID NAME
---------- --------------------
ADDRESS 					   CITY
-------------------------------------------------- --------------------
COUNTRY 		    AGE     SALARY
-------------------- ---------- ----------
	 1 PRIYA
VARKALA 					   THIRUVANTHAPURAM
INDIA			     20      25000


SQL> SELECT * FROM CUSTOMER WHERE NAME NOT LIKE 'PRIYA';

	ID NAME
---------- --------------------
ADDRESS 					   CITY
-------------------------------------------------- --------------------
COUNTRY 		    AGE     SALARY
-------------------- ---------- ----------
	 2 ADITHYAN
CHERAI						   ERNAKULAM
INDIA			     25      30000

	 3 RISHI
DREAM						   DELHI
INDIA			     30      45000

	ID NAME
---------- --------------------
ADDRESS 					   CITY
-------------------------------------------------- --------------------
COUNTRY 		    AGE     SALARY
-------------------- ---------- ----------

