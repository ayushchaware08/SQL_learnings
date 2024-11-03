-- sample DB
CREATE DATABASE college;
USE college;

CREATE TABLE student(
	 rollno INT PRIMARY KEY,
     name VARCHAR(50),
     marks INT NOT NULL,
     grade VARCHAR(1),
     city VARCHAR(50));
    
INSERT INTO student (rollno, name, marks, grade, city) 
VALUES
	(101, "anıl", 78, "C", "Pune"),
    (102, "bhumika", 93, "A", "Mumbai"),
    (103, "chetan", 85, "B", "Mumbai"),
    (104, "dhruv", 96, "A", "Delhi"),
    (105, "emanuel", 12, "F", "Delhi"),
    (106, "farah", 82,"B","Delhi");

SELECT * FROM student;


-- (1) SELECT Clause
SELECT Col1, col2 FROM tabe_name;	-- select specific
SELECT * FROM table_name; -- slelect all

SELECT rollno, marks FROM student;
SELECT * FROM student;
SELECT DISTINCT city FROM student;  -- Unique cities only


-- (2) WHERE Clause - conditions
SELECT * 
FROM student 
WHERE marks> 80 AND city = "Mumbai";

-- operator

SELECT * 
FROM student 
WHERE marks+10 > 100;  -- all whose if marks + 10 == 100

SELECT * FROM student WHERE marks> 90 AND city ="Mumbai";  
SELECT * FROM student WHERE marks>90 or city = "Mumabi";
SELECT * FROM student WHERE marks BETWEEN 70 AND 90;
SELECT * FROM student WHERE city IN ("delhi", "Mumbai", "Bhandara");  -- include
SELECT * FROM student WHERE city NOT IN ("delhi", "Mumbai", "Bhandara");  -- exclude


-- (3) Limit Clause
SELECT * FROM student WHERE marks>75
LIMIT 3;  -- top 3 stu


-- (4) ORDER BY Clause ( ASC DESC )
SELECT * FROM student
ORDER BY marks ASC;

-- for top 2 stu in class
SELECT * FROM student 
ORDER BY marks DESC
LIMIT 3; 

-- (5) Aggregrate Function
-- COUNT() MAX() MIN() SUM() AVG()
SELECT count(rollno) FROM student;
SELECT AVG(marks) FROM student;


-- (6) GROUP BY Clause (generally use with aggregrate function)
SELECT city, count(rollno) FROM student 
GROUP BY city;

SELECT city, name, count(rollno) FROM student 
GROUP BY city, name;

-- avg mark in cities
SELECT city, AVG(marks) FROM student 
GROUP BY city;

