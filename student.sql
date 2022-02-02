CREATE TABLE `university_sql_database`.`Student` (
  `STUDENT_ID` INT NOT NULL,
  `Stu_first_name` VARCHAR(50) NOT NULL,
  `Stu_last_name` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`STUDENT_ID`));

  


USE university_sql_database;

INSERT INTO Student (STUDENT_ID, stu_first_name, stu_last_name)
VALUES ("100", "Reagan", "Keith"),
("110", "Bruce", "Wayne"),
("120", "Emma", "Stone"),
("130", "Steve", "Jobs"),
("140", "Carrie", "Underwood"),
("150", "Ella", "Hunt"),
("160", "Hailee", "Steinfeld"),
("170", "David", "Beckham");