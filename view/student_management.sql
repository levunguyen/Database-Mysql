drop database if exists student_management;

create database student_management;

use student_management;

CREATE TABLE type_of_class (
    id INT PRIMARY KEY,
    `name` VARCHAR(50)
);

CREATE TABLE account_james (
    `account` VARCHAR(50),
    `password` VARCHAR(20),
    PRIMARY KEY (`account`)
);

CREATE TABLE instructor (
    id INT PRIMARY KEY,
    `name` VARCHAR(50),
    date_of_birth DATE
);

CREATE TABLE class (
    id INT,
    `name` CHAR(7),
    type_of_class_id INT,
    CONSTRAINT pk_class PRIMARY KEY (id),
    CONSTRAINT fk_class_type_of_class FOREIGN KEY (type_of_class_id)
        REFERENCES type_of_class (id)
);

CREATE TABLE student (
    id INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(50),
    date_of_birth DATE,
    account_james VARCHAR(50),
    class_id INT,
    FOREIGN KEY (account_james)
        REFERENCES account_james (`account`),
    FOREIGN KEY (class_id)
        REFERENCES class (id)
);
/* 1: Full time, 2: Half time */

CREATE TABLE instructor_teach_class (
    instructor_id INT,
    class_id INT,
    PRIMARY KEY (instructor_id , class_id),
    FOREIGN KEY (instructor_id)
        REFERENCES instructor (id),
    FOREIGN KEY (class_id)
        REFERENCES class (id)
);

insert into type_of_class
values
(1, 'Full time'),
(2, 'Half time');

insert into class
values
(1, 'C0620G1', 1),
(2, 'C0520G1', 1),
(3, 'C0220H1', 2);

insert into account_james
values
('tien.nguyen', '12345678'),
('toan.le', '12345678'),
('chuong.kim', '12345678'),
('long.duong', '12345678');

insert into student
values
(1, 'Tien', '2000-07-14', 'tien.nguyen', 1),
(2, 'Toan', '2002-05-03', 'toan.le', 2),
(3, 'Chuong', '2001-04-03', 'chuong.kim', 2),
(4, 'Long', '2002-01-25', 'long.duong', null);

insert into instructor
values
(1, 'Tien', '2000-07-14'),
(2, 'Trung', '2002-05-03'),
(3, 'Hai', '2003-11-03'),
(4, 'Chanh', '1998-07-09');

insert into instructor_teach_class
values
(1, 1),
(1, 2),
(2, 1);