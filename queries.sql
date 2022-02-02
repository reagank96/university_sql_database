-- average grade given by professor

USE university_sql_database;

SELECT grades_PROFESSOR_ID, prof_first_name, prof_last_name, AVG(grade)
FROM grades
INNER JOIN Professor
ON  grades.grades_PROFESSOR_ID = Professor.PROFESSOR_ID
GROUP BY grades.grades_PROFESSOR_ID;


-- top grades for each student

USE university_sql_database;

SELECT MAX(grade)
FROM grades;


-- group students by course

USE university_sql_database;

SELECT student_id, COUNT(course)
FROM course
GROUP BY course_name;


-- summary report

USE university_sql_database;

SELECT AVG(grade)
FROM grades
ORDER BY grade ASC;


-- most in common

USE university_sql_database;

SELECT course_name, stu_first_name, prof_first_name
FROM course
INNER JOIN Professor
ON course.course_PROFESSOR_ID = Professor.PROFESSOR_ID
INNER JOIN Student
ON course.course_STUDENT_ID = Student.STUDENT_ID;