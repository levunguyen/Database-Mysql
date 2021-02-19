DROP DATABASE IF EXISTS student_management;
CREATE DATABASE student_management;

USE student_management;

CREATE TABLE student (
	student_id int primary key,
    student_name varchar(50)
);

INSERT INTO student
VALUES
(1, 'Glen John'),
(2, 'David Tom');

SELECT student_id, student_name
FROM student;

UPDATE student
SET student_name = 'Steven Grace'
WHERE student_id = 1;

DELETE FROM student
WHERE id = 1;




