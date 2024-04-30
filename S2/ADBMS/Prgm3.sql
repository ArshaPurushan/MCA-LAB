//DML STSTEMENT PATTERN MATCHING

SQL> select * from department;

   DEPT_ID DEPT_NAME		DEPT_CITY
---------- -------------------- --------------------
       112 HR			KOCHI
       101 SALES		KOCHI
       119 ACCOUNTANT		CHENNAI
       202 HR			CHENNAI
       303 ACCOUNTANT		KOCHI

SQL> select * from employee;

    EMP_ID EMP_NAME		   DEPT_ID EMP_SALARY
---------- -------------------- ---------- ----------
       123 JOY			       101	15000
       142 MATHEW		       119	40000
       221 RAVI 		       112	30000
       231 RIA			       303	35000
       321 JIA			       119	35000


SQL> UPDATE EMPLOYEE SET EMP_SALARY=45000 WHERE EMP_ID=142;

1 row updated.

SQL> SELECT * FROM EMPLOYEE;

    EMP_ID EMP_NAME		   DEPT_ID EMP_SALARY
---------- -------------------- ---------- ----------
       123 JOY			       101	15000
       142 MATHEW		       119	45000
       221 RAVI 		       112	30000
       231 RIA			       303	35000
       321 JIA			       119	35000

SQL> DELETE FROM EMPLOYEE WHERE DEPT_ID=101;

1 row deleted.

SQL> SELECT * FROM EMPLOYEE;

    EMP_ID EMP_NAME		   DEPT_ID EMP_SALARY
---------- -------------------- ---------- ----------
       142 MATHEW		       119	45000
       221 RAVI 		       112	30000
       231 RIA			       303	35000
       321 JIA			       119	35000

SQL> SELECT EMP_NAME,DEPT_NAME FROM EMPLOYEE,DEPARTMENT WHERE EMPLOYEE.DEPT_ID=DEPARTMENT.DEPT_ID;

EMP_NAME	     DEPT_NAME
-------------------- --------------------
RAVI		     HR
JIA		     ACCOUNTANT
MATHEW		     ACCOUNTANT
RIA		     ACCOUNTANT

SQL> SELECT EMP_NAME FROM EMPLOYEE,DEPARTMENT WHERE DEPT_CITY='CHENNAI' AND EMPLOYEE.DEPT_ID=DEPARTMENT.DEPT_ID;

EMP_NAME
--------------------
MATHEW
JIA


SQL> DELETE FROM EMPLOYEE WHERE EMP_NAME='RIA';

1 row deleted.

SQL> SELECT * FROM EMPLOYEE;

    EMP_ID EMP_NAME		   DEPT_ID EMP_SALARY
---------- -------------------- ---------- ----------
       142 MATHEW		       119	45000
       221 RAVI 		       112	30000
       321 JIA			       119	35000


SQL> UPDATE EMPLOYEE SET EMP_SALARY=EMP_SALARY+500 WHERE DEPT_ID=112;

1 row updated.

SQL> SELECT * FROM EMPLOYEE;

    EMP_ID EMP_NAME		   DEPT_ID EMP_SALARY
---------- -------------------- ---------- ----------
       142 MATHEW		       119	45000
       221 RAVI 		       112	30500
       321 JIA			       119	35000

SQL> SELECT EMP_NAME,DEPT_NAME FROM EMPLOYEE,DEPARTMENT WHERE EMP_SALARY>35000 AND EMPLOYEE.DEPT_ID=DEPARTMENT.DEPT_ID;

EMP_NAME	     DEPT_NAME
-------------------- --------------------
MATHEW		     ACCOUNTANT

SQL> commit;

Commit complete.


