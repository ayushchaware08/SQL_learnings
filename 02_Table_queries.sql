-- Table schema defination
DROP TABLE STUDENT;


CREATE TABLE STudent(
rollno INT PRIMARY KEY,
name VARCHAR(50),
age INT
);

SELECT 	* 	FROM student;

-- INSERTION 
INSERT INTO Student(rollno, name, age) 
VALUES(101, "aysuh", 19),
	   (102, "Aman",20),
       (103, "Ram", 21);
       
INSERT INTO student(rollno, name, age) VALUES (104,"ram", 22);   -- M1 
INSERT INTO student VALUES (105,"shyam", 23);   -- M2 (order should maintain)

-- CONSTRAINTS
CREATE TABLE temp1(
	 id INT UNIQUE,
     rollno INT NOT NULL,
     id2 INT PRIMARY KEY
     );
     
INSERT INTO temp1 VALUES (01, 1, 124);

CREATE TABLE temp2(
	 CUST_id INT ,
     FOREIGN KEY (cust_id) REFERENCES temp1(id)
--   FOREIGN KEY (t2_c1) REFERENCES t1(c1);
     );

SELECT * FROM temp1;
SELECT * FROM temp2;

 -- DEFAULT 
CREATE TABLE emp(
	id INT,
    salary INT DEFAULT 25000);
INSERT INTO emp(id) VALUES (101);
SELECT * from emp;


-- CHECK 
CREATE TABLE city(
	id INT PRIMARY KEY,
    city VARCHAR(50),
    age INT,
    CONSTRAINT age_check CHECK ( age>=18 AND city="Delhi")  -- not able add age>=18 and city delhi in any tupple(row)
    );
    
CREATE TABLE city(age INT CHECK(age>=18)); -- M2 for check

INSERT INTO city VALUES 
	(101, "Delhi", 20),
    (102, "Delhi", 21),
    (103, "Delhi", 22),
    (104, "Delhi", 20);
   --  (105, "Mumbai", 18) ; -- Creates violation to age_check
   

DROP TABLE temp1;
DROP TABLE temp2;
DROP TABLE city;
DROP TABLE emp;