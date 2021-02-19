/*
    Các bạn có thể tìm hiểu thêm  phần này tại blogs: https://levunguyen.com,
    blogs chuyên về lập trình và các kỹ năng mềm trong nghề lập trình
*/

-- Example 1
delimiter //
CREATE PROCEDURE get_all_student()
BEGIN
	SELECT *
    FROM student;
END; //
delimiter ;

CALL get_all_student();

-- Example 2
delimiter //
CREATE PROCEDURE find_all_student(p_keyword VARCHAR(10))
BEGIN
	SELECT *
    FROM student
    WHERE `name` like CONCAT('%', p_keyword, '%');
END; //
delimiter ;

CALL find_all_student('om');