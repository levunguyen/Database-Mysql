CREATE DATABASE student_management;

USE student_management;

-- DROP DATABASE student_management;

CREATE TABLE student (
	student_id int primary key,
    student_name varchar(50)
);

-- DROP TABLE student;

INSERT INTO student
VALUES
(1, 'Nguyen Van A'),
(2, 'Nguyen Van B');

TRUNCATE TABLE student;

ALTER TABLE student
ADD email VARCHAR(50);

-- ALTER TABLE student
-- DROP COLUMN email;

ALTER TABLE student
MODIFY COLUMN email VARCHAR(250);