/*A Procedure called Deposit is created and stored in database. Create the table customer(A/c no, balance) and update the balance using the procedure Deposit.*/

CREATE TABLE customers (
    ac_no NUMBER,
    balance NUMBER(10,2)
);
 
INSERT INTO customers VALUES (001, 1000);
INSERT INTO customers VALUES (002, 3000);
 
SELECT * FROM customers;
 
SET serveroutput ON;
 
CREATE OR REPLACE PROCEDURE deposit(id IN NUMBER, amt IN NUMBER) IS
BEGIN
    UPDATE customers SET balance = balance + amt WHERE ac_no = id;
 
    DBMS_OUTPUT.PUT_LINE('Deposit successful.');
END;
/
 
DECLARE
    Accno NUMBER(2);
    Amount NUMBER(10,2);
BEGIN
    Accno := &Accno;
    Amount := &amount;
    deposit(Accno, Amount);
END;
/
 

    Select * from customers;




