
-- Practice question --
-- (q3) Payment(cust_id, customer, mode, city) find total patment a/c to each payment method
SELECT  mode, count(cust_id) FROM payment
GROUP BY mode; 

-- (Q2) query for avg marks in each city in asc order
SELECT city, AVG(marks) FROM student 
GROUP BY city
ORDER BY city DESC;

-- (Q1) Db for comapany table employee(id, name, salary), add info, seleect and view DB, delete table

CREATE DATABASE Company;

USE Company;

CREATE TABLE employee(
	id INT PRIMARY KEY,
    NAME VARCHAR(50),
    salary INT);

INSERT INTO employee Values
	(101, "A", 10000),
    (102, "B", 20000),
    (103, "C", 30000),
    (104, "D", 40000);
    
SELECT * FROM employee;

DROP table employee;

DROP DATABASE company;

