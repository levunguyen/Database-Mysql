/*
    Các bạn có thể tìm hiểu thêm  phần này tại blogs: https://levunguyen.com,
    blogs chuyên về lập trình và các kỹ năng mềm trong nghề lập trình
*/


delimiter //
CREATE TRIGGER  insert_account_web_learning_from_student
 AFTER INSERT
 ON student FOR EACH ROW 
BEGIN
	INSERT INTO account_web_learning (`account`, `password`, student_id)
    VALUES (NEW.email, 'Abcd1234!', NEW.id);
END //
delimiter ;

DROP TRIGGER insert_account_web_learning_from_student;

INSERT INTO student (id, `name`, date_of_birth, email)
VALUES
('STD00001', 'Glen John', '1998-02-20', 'johnglen123@gmail.com'),
('STD00002', 'David Tom', '1997-10-01', 'david.tom98@yahoo.com'),
('STD00003', 'Steven Grace', '1996-07-07', 'grace_steven@gmail.com');