drop database if exists student_management;

create database student_management;

use student_management;

CREATE TABLE student (
    id CHAR(8) PRIMARY KEY,
    `name` VARCHAR(60),
    date_of_birth DATE,
    email VARCHAR(50)
);

CREATE TABLE account_web_learning (
    `account` VARCHAR(30),
    `password` VARCHAR(50),
    student_id CHAR(8),
    PRIMARY KEY (`account`),
    CONSTRAINT fk_account_web_learning_student FOREIGN KEY (student_id)
        REFERENCES student (id)
);
