drop database if exists student_management;

create database student_management;

use student_management;

CREATE TABLE student (
    id INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(60),
    date_of_birth DATE,
    email VARCHAR(50)
);

CREATE TABLE account_web_learning (
    `account` VARCHAR(30),
    `password` VARCHAR(50),
    student_id INT,
    PRIMARY KEY (`account`),
    CONSTRAINT fk_account_web_learning_student FOREIGN KEY (student_id) REFERENCES student (id)
);

INSERT INTO student (`name`, email, date_of_birth)
VALUES
('Glen John', 'johnglen123@gmail.com', '1998-02-20'),
('David Tom', 'david.tom98@yahoo.com', '1997-01-10'),
('Steven Grace', 'grace_steven@gmail.com', '1996-07-07');
