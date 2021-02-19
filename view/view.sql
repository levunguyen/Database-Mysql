CREATE VIEW student_study_class_view
AS
SELECT s.id 'student_id', s.name 'student_name', c.id 'class_id', c.name 'class_name'
FROM student s
	INNER JOIN class c ON s.class_id = c.id;

SELECT *
FROM student_study_class_view;

CREATE OR REPLACE VIEW student_study_class_view
AS
SELECT s.id 'student_id', s.name 'student_name', s.date_of_birth 'dob', c.id 'class_id', c.name 'class_name'
FROM student s
	INNER JOIN class c ON s.class_id = c.id;

DROP VIEW student_study_class_view;
    