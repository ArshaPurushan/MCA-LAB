//execute aggreate functions in sql

SQL> create table pro(pid int primary key,pname varchar(20),sid int,cid int,unit varchar(10),price int);

Table created.

SQL> desc pro;
 Name					   Null?    Type
 ----------------------------------------- -------- ----------------------------
 PID					   NOT NULL NUMBER(38)
 PNAME						    VARCHAR2(20)
 SID						    NUMBER(38)
 CID						    NUMBER(38)
 UNIT						    VARCHAR2(10)
 PRICE						    NUMBER(38)

SQL> insert into pro values(&pid,'&pname',&sid,&pid,'&unit',&price);
Enter value for pid: 1
Enter value for pname: chais
Enter value for sid: 1
Enter value for pid: 1
Enter value for unit: 10
Enter value for price: 18
old   1: insert into pro values(&pid,'&pname',&sid,&pid,'&unit',&price)
new   1: insert into pro values(1,'chais',1,1,'10',18)

1 row created.

SQL> /
Enter value for pid: 2
Enter value for pname: chang
Enter value for sid: 1
Enter value for pid: 1
Enter value for unit: 2
Enter value for price: 19
old   1: insert into pro values(&pid,'&pname',&sid,&pid,'&unit',&price)
new   1: insert into pro values(2,'chang',1,1,'2',19)

1 row created.

SQL> /
Enter value for pid: 3
Enter value for pname: anised syrup
Enter value for sid: 1
Enter value for pid: 2
Enter value for unit: 1
Enter value for price: 10
old   1: insert into pro values(&pid,'&pname',&sid,&pid,'&unit',&price)
new   1: insert into pro values(3,'anised syrup',1,2,'1',10)

1 row created.

SQL> /
Enter value for pid: 4
Enter value for pname: seasoning
Enter value for sid: 2
Enter value for pid: 2
Enter value for unit: 2
Enter value for price: 22
old   1: insert into pro values(&pid,'&pname',&sid,&pid,'&unit',&price)
new   1: insert into pro values(4,'seasoning',2,2,'2',22)

1 row created.

SQL> /
Enter value for pid: 5
Enter value for pname: gumbo mix
Enter value for sid: 2
Enter value for pid: 2
Enter value for unit: 30
Enter value for price: 23.35
old   1: insert into pro values(&pid,'&pname',&sid,&pid,'&unit',&price)
new   1: insert into pro values(5,'gumbo mix',2,2,'30',23.35)

1 row created.

SQL> select * from pro;

       PID PNAME		       SID	  CID UNIT	      PRICE
---------- -------------------- ---------- ---------- ---------- ----------
	 1 chais			 1	    1 10		 18
	 2 chang			 1	    1 2 		 19
	 3 anised syrup 		 1	    2 1 		 10
	 4 seasoning			 2	    2 2 		 22
	 5 gumbo mix			 2	    2 30		 23

SQL> select min(price),max(price) from pro where sid=2;

MIN(PRICE) MAX(PRICE)
---------- ----------
	22	   23

SQL> select count(pid) from pro where cid=2;

COUNT(PID)
----------
	 3

SQL> select count(pid) from pro where price>20;

COUNT(PID)
----------
	 2

SQL> select sum(price) from pro where sid=1;

SUM(PRICE)
----------
	47

SQL> select avg(price) from pro;

AVG(PRICE)
----------
      18.4

SQL> select avg(price) from pro where cid=1;

AVG(PRICE)
----------
      18.5

SQL> select * from pro where price>(select avg(price) from pro);

       PID PNAME		       SID	  CID UNIT	      PRICE
---------- -------------------- ---------- ---------- ---------- ----------
	 2 chang			 1	    1 2 		 19
	 4 seasoning			 2	    2 2 		 22
	 5 gumbo mix			 2	    2 30		 23

SQL> commit;

Commit complete.

