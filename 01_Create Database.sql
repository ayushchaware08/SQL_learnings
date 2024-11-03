-- not case Sensitive -- 
CREATE DATABASE temp1;
 
 -- delete whole database --
DROP DATABASE temp1;

CREATE DATABASE College;
-- use this DB--
USE College;

-- Create a table (schema Design) --
CREATE TABLE Student(
	s_id INT PRIMARY KEY,
    s_name VARCHAR(50),
    age INT NOT NULL
);

-- Insertion --
INSERT INTO student VALUES(1, "Ayush", 19);

INSERT INTO student VALUES(2, "John" , 20);

-- view table--
SELECT * FROM student;

-- DB releted queries --

-- if not exist -- 
CREATE DATABASE college; -- gives error --

CREATE DATABASE IF NOT EXISTS College;-- Gives warning --

DROP DATABASE IF EXISTS table_name;

SHOW DATABASES;

SHOW TABLES;

-- delete table
DROP TABLE student;
