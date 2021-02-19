-- ------------------------------ NOT NULL
-- DROP DATABASE IF EXISTS student_management;
-- CREATE DATABASE student_management;

-- USE student_management;

-- CREATE TABLE student (
--     student_id INT PRIMARY KEY,
--     student_name VARCHAR(50) NOT NULL
-- );

-- INSERT INTO student (student_id, student_name)
-- VALUES (1, null);

-- ------------------------------ UNIQUE
-- DROP DATABASE IF EXISTS student_management;
-- CREATE DATABASE student_management;

-- USE student_management;

-- CREATE TABLE student (
--     student_id INT PRIMARY KEY,
--     student_name VARCHAR(50) NOT NULL,
--     email VARCHAR(100),
--     UNIQUE (email)
-- );

-- INSERT INTO student (student_id, student_name, email)
-- VALUES (1, 'Glen John', 'johnglen123@gmail.com');

-- INSERT INTO student (student_id, student_name, email)
-- VALUES (2, 'Glen John Cole', 'johnglen123@gmail.com');

-- ------------------------------ PRIMARY KEY
-- DROP DATABASE IF EXISTS student_management;
-- CREATE DATABASE student_management;

-- USE student_management;

-- CREATE TABLE student (
--     student_id INT PRIMARY KEY,
--     student_name VARCHAR(50) NOT NULL
-- );

-- INSERT INTO student (student_id, student_name)
-- VALUES (1, 'Glen John');

-- INSERT INTO student (student_id, student_name)
-- VALUES (1, 'David Tom');

-- ------------------------------ FOREIGN KEY
-- DROP DATABASE IF EXISTS student_management;
-- CREATE DATABASE student_management;

-- USE student_management;

-- CREATE TABLE class (
--     class_id INT PRIMARY KEY,
--     class_name VARCHAR(50) NOT NULL
-- );

-- CREATE TABLE student (
--     student_id INT PRIMARY KEY,
--     student_name VARCHAR(50) NOT NULL,
-- 	class_id INT,
--     
--     CONSTRAINT fk_student_class FOREIGN KEY (class_id) REFERENCES class (class_id)
-- );

-- INSERT INTO class
-- VALUES
-- (1, 'Class A'),
-- (2, 'Class B');

-- INSERT INTO student (student_id, student_name, class_id)
-- VALUES (1, 'Glen John', 2);

-- INSERT INTO student (student_id, student_name, class_id)
-- VALUES (2, 'David Tom', 1);

-- INSERT INTO student (student_id, student_name, class_id)
-- VALUES (3, 'Steven Grace', 2);

-- ------------------------------ CHECK
-- DROP DATABASE IF EXISTS student_management;
-- CREATE DATABASE student_management;

-- USE student_management;

-- CREATE TABLE student (
--     student_id INT PRIMARY KEY,
--     student_name VARCHAR(50) NOT NULL,
-- 	age INT,
--     CHECK (age >= 18)
-- );

-- INSERT INTO student (student_id, student_name, age)
-- VALUES (1, 'Glen John', 17);

-- ------------------------------ DEFAULT
DROP DATABASE IF EXISTS student_management;
CREATE DATABASE student_management;

USE student_management;

CREATE TABLE student (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50) NOT NULL,
	age INT DEFAULT 18
);

INSERT INTO student (student_id, student_name)
VALUES (1, 'Glen John');

