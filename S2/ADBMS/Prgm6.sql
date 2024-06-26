//EXECUTE DML STATEMENTS ,SET OPERATIONS,AGGREGATE,NESTED,GROUP BY

SQL> create table sailors(sid int primary key,sname varchar(25),rating int,age float);

Table created.

SQL> create table boat(bid int primary key,bname varchar(25),color varchar(10));

Table created.

SQL> create table reserve(sid int,bid int,day date,foreign key(sid) references sailors(sid),foreign key(bid) references boat(bid));

Table created.

SQL> insert into sailors values(&sid,'&sname',&rating,&age);
Enter value for sid: 22
Enter value for sname: dustin
Enter value for rating: 7
Enter value for age: 45
old   1: insert into sailors values(&sid,'&sname',&rating,&age)
new   1: insert into sailors values(22,'dustin',7,45)

1 row created.


SQL> /     
Enter value for sid: 29
Enter value for sname: brutis
Enter value for rating: 1
Enter value for age: 33
old   1: insert into sailors values(&sid,'&sname',&rating,&age)
new   1: insert into sailors values(29,'brutis',1,33)

1 row created.

SQL> /
Enter value for sid: 31
Enter value for sname: lubber
Enter value for rating: 8
Enter value for age: 55.5
old   1: insert into sailors values(&sid,'&sname',&rating,&age)
new   1: insert into sailors values(31,'lubber',8,55.5)

1 row created.

SQL> /
Enter value for sid: 32
Enter value for sname: andy
Enter value for rating: 8
Enter value for age: 25.5
old   1: insert into sailors values(&sid,'&sname',&rating,&age)
new   1: insert into sailors values(32,'andy',8,25.5)

1 row created.

SQL> / 
Enter value for sid: 58
Enter value for sname: rusty
Enter value for rating: 10
Enter value for age: 35
old   1: insert into sailors values(&sid,'&sname',&rating,&age)
new   1: insert into sailors values(58,'rusty',10,35)

1 row created.

SQL> /
Enter value for sid: 65
Enter value for sname: horatio
Enter value for rating: 7
Enter value for age: 35.0
old   1: insert into sailors values(&sid,'&sname',&rating,&age)
new   1: insert into sailors values(64,'horatio',7,35.0)

1 row created.

SQL> /
Enter value for sid: 71
Enter value for sname: zorba
Enter value for rating: 10
Enter value for age: 16  
old   1: insert into sailors values(&sid,'&sname',&rating,&age)
new   1: insert into sailors values(71,'zorba',10,16)

1 row created.

SQL> /
Enter value for sid: 72
Enter value for sname: horatio
Enter value for rating: 9
Enter value for age: 35
old   1: insert into sailors values(&sid,'&sname',&rating,&age)
new   1: insert into sailors values(74,'horatio',9,35)

1 row created.

SQL> /
Enter value for sid: 85
Enter value for sname: art
Enter value for rating: 3
Enter value for age: 25.5
old   1: insert into sailors values(&sid,'&sname',&rating,&age)
new   1: insert into sailors values(85,'art',3,25.5)

1 row created.

SQL> /
Enter value for sid: 95
Enter value for sname: bob
Enter value for rating: 3
Enter value for age: 63.5
old   1: insert into sailors values(&sid,'&sname',&rating,&age)
new   1: insert into sailors values(95,'bob',3,63.5)

1 row created.

SQL> select * from sailors;

       SID SNAME			 RATING        AGE
---------- ------------------------- ---------- ----------
	22 dustin			      7 	45
	29 brutis			      1 	33
	31 lubber			      8       55.5
	32 andy 			      8       25.5
	58 rusty			     10 	35
	64 horatio			      7 	35
	71 zorba			     10 	16
	74 horatio			      9 	35
	85 art				      3       25.5
	95 bob				      3       63.5

10 rows selected.

SQL> insert into boat values(&bid,'&bname','&color');
Enter value for bid: 101
Enter value for bname: interlake
Enter value for color: blue
old   1: insert into boat values(&bid,'&bname','&color')
new   1: insert into boat values(101,'interlake','blue')

1 row created.

SQL> /
Enter value for bid: 102
Enter value for bname: interlake
Enter value for color: red
old   1: insert into boat values(&bid,'&bname','&color')
new   1: insert into boat values(102,'interlake','red')

1 row created.

SQL> /
Enter value for bid: 103
Enter value for bname: clipper
Enter value for color: green
old   1: insert into boat values(&bid,'&bname','&color')
new   1: insert into boat values(103,'clipper','green')

1 row created.

SQL> /
Enter value for bid: 104
Enter value for bname: marine
Enter value for color: red
old   1: insert into boat values(&bid,'&bname','&color')
new   1: insert into boat values(104,'marine','red')

1 row created.

SQL> select * from boat;

       BID BNAME		     COLOR
---------- ------------------------- ----------
       101 interlake		     blue
       102 interlake		     red
       103 clipper		     green
       104 marine		     red

SQL> insert into reserve values(&sid,&bid,'&day');
Enter value for sid: 22
Enter value for bid: 101
Enter value for day: 10/10/1998
old   1: insert into reserve values(&sid,&bid,'&day')
new   1: insert into reserve values(22,101,'10/10/1998')

1 row created.

SQL> /
Enter value for sid: 22
Enter value for bid: 102
Enter value for day: 10/10/98
old   1: insert into reserve values(&sid,&bid,'&day')
new   1: insert into reserve values(22,102,'10/10/98')

1 row created.

SQL> /
Enter value for sid: 22
Enter value for bid: 103
Enter value for day: 10/08/1998
old   1: insert into reserve values(&sid,&bid,'&day')
new   1: insert into reserve values(22,103,'10/08/1998')

1 row created.

SQL> /
Enter value for sid: 22
Enter value for bid: 104
Enter value for day: 10/07/1998
old   1: insert into reserve values(&sid,&bid,'&day')
new   1: insert into reserve values(22,104,'10/07/1998')

1 row created.

SQL> /
Enter value for sid: 31
Enter value for bid: 102
Enter value for day: 11/10/1998
old   1: insert into reserve values(&sid,&bid,'&day')
new   1: insert into reserve values(31,102,'11/10/1998')

1 row created.

SQL> /
Enter value for sid: 31
Enter value for bid: 103
Enter value for day: 11/06/1998
old   1: insert into reserve values(&sid,&bid,'&day')
new   1: insert into reserve values(31,103,'11/06/1998')

1 row created.

SQL> /
Enter value for sid: 31
Enter value for bid: 104
Enter value for day: 11/12/1998
old   1: insert into reserve values(&sid,&bid,'&day')
new   1: insert into reserve values(31,104,'11/12/1998')

1 row created.

SQL> /
Enter value for sid: 65
Enter value for bid: 101
Enter value for day: 09/05/1998
old   1: insert into reserve values(&sid,&bid,'&day')
new   1: insert into reserve values(64,101,'09/05/1998')

1 row created.

SQL> /
Enter value for sid: 65
Enter value for bid: 102
Enter value for day: 09/06/1998
old   1: insert into reserve values(&sid,&bid,'&day')
new   1: insert into reserve values(64,102,'09/06/1998')

1 row created.

SQL> /
Enter value for sid: 72
Enter value for bid: 103
Enter value for day: 09/08/1998
old   1: insert into reserve values(&sid,&bid,'&day')
new   1: insert into reserve values(74,103,'09/08/1998')

1 row created.

SQL> select * from reserve;

       SID	  BID DAY
---------- ---------- --------
	22	  101 10-10-98
	22	  102 10-10-98
	22	  103 10-08-98
	22	  104 10-07-98
	31	  102 11-10-98
	31	  103 11-06-98
	31	  104 11-12-98
	64	  101 09-05-98
	64	  102 09-06-98
	74	  103 09-08-98

10 rows selected.

SQL> desc sailors;
 Name					   Null?    Type
 ----------------------------------------- -------- ----------------------------
 SID					   NOT NULL NUMBER(38)
 SNAME						    VARCHAR2(25)
 RATING 					    NUMBER(38)
 AGE						    FLOAT(126)

SQL> desc reserve;
 Name					   Null?    Type
 ----------------------------------------- -------- ----------------------------
 SID						    NUMBER(38)
 BID						    NUMBER(38)
 DAY						    DATE

SQL> select distinct sname from sailors;

SNAME
-------------------------
brutis
bob
lubber
andy
rusty
dustin
zorba
art
horatio

9 rows selected.

SQL> select sailors.sid,sname,rating,age from reserve,sailors where sailors.sid=reserve.sid and bid=101;

       SID SNAME			 RATING        AGE
---------- ------------------------- ---------- ----------
	22 dustin			      7 	45
	64 horatio			      7 	35


SQL> select distinct sailors.sid,sname from sailors,reserve where sailors.sid=reserve.sid;

       SID SNAME
---------- -------------------------
	74 horatio
	64 horatio
	31 lubber
	22 dustin

SQL> select distinct sailors.sid,sname,age from sailors,reserve,boat where sailors.sid=reserve.sid and reserve.bid=boat.bid and color='red' order by age;

       SID SNAME			    AGE
---------- ------------------------- ----------
	64 horatio			     35
	22 dustin			     45
	31 lubber			   55.5

SQL> select  sailors.sid,sname from sailors inner join reserve on sailors.sid=reserve.sid group by sailors.sid,sailors.sname,reserve.day having count(distinct reserve.bid)>=2;

       SID SNAME
---------- -------------------------
	22 dustin



//SET OPERATIONS

SQL> select sid from reserve,boat where reserve.bid=boat.bid and color='red' union select sid from reserve,boat where reserve.bid=boat.bid and color='green';

       SID
----------
	22
	31
	64
	74

SQL> select sname from sailors intersect select sname from sailors,reserve where sailors.sid=reserve.sid and bid=103;

SNAME
-------------------------
dustin
horatio
lubber

SQL> select sname,age from sailors intersect select sname,age from sailors where age in (select min(age) from sailors);

SNAME				 AGE
------------------------- ----------
zorba				  16


SQL> select  sname from sailors where not exists((select bid from boat) minus (select bid from reserve where reserve.sid=sailors.sid));

SNAME
-------------------------
dustin



//AGGREGATE OPERATIONS

SQL> select sname,age from sailors where age=(select min(age) from sailors);

SNAME				 AGE
------------------------- ----------
zorba				  16

SQL> select rating,avg(age) from sailors group by rating;

    RATING   AVG(AGE)
---------- ----------
	 1	   33
	 8	 40.5
	 7	   40
	 3	 44.5
	10	 25.5
	 9	   35

6 rows selected.

SQL> select count(distinct sname) from sailors;

COUNT(DISTINCTSNAME)
--------------------
		   9

SQL> select avg(age) from sailors;

  AVG(AGE)
----------
      36.9



//NESTED QUERY

SQL> select sname from sailors where sid in (select  sid from reserve where bid=103);

SNAME
-------------------------
dustin
lubber
horatio

SQL> select sname,age from sailors where age in (select min(age) from sailors);

SNAME				 AGE
------------------------- ----------
zorba				  16

SQL> select sname from sailors where not exists(select * from boat where not exists(select * from reserve where reserve.sid=sailors.sid and reserve.bid=boat.bid));

SNAME
-------------------------
dustin



//GROUP BY

SQL> select min(age),rating from sailors group by rating;

  MIN(AGE)     RATING
---------- ----------
	33	    1
      25.5	    8
	35	    7
      25.5	    3
	16	   10
	35	    9


