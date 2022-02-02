CREATE TABLE `university_sql_database`.`Course` (
  `COURSE_ID` INT NOT NULL,
  `course_name` VARCHAR(50) NOT NULL,
  `STUDENT_ID` INT NOT NULL,
  `PROFESSOR_ID` INT NOT NULL,
  PRIMARY KEY (`COURSE_ID`),
  INDEX `STUDENT_ID_idx` (`STUDENT_ID` ASC) VISIBLE,
  INDEX `PROFESSOR_ID_idx` (`PROFESSOR_ID` ASC) VISIBLE,
  CONSTRAINT `STUDENT_ID`
    FOREIGN KEY (`STUDENT_ID`)
    REFERENCES `university_sql_database`.`Student` (`STUDENT_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `PROFESSOR_ID`
    FOREIGN KEY (`PROFESSOR_ID`)
    REFERENCES `university_sql_database`.`Professor` (`PROFESSOR_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);



USE university_sql_database;

INSERT INTO Course (COURSE_ID, course_name, STUDENT_ID, PROFESSOR_ID)
VALUES ("100", "Printmaking", "100", "210"),
("300", "Forensic Science", "110", "200"),
("410", "Project Management", "130", "220"),
("250", "Transfiguration", "150", "230");

UPDATE `university_sql_database`.`Course` SET `COURSE_ID` = '100' WHERE (`COURSE_ID` = '411');
INSERT INTO `university_sql_database`.`Course` (`COURSE_ID`, `course_name`, `STUDENT_ID`, `PROFESSOR_ID`) VALUES ('100', 'Printmaking', '160', '210');
INSERT INTO `university_sql_database`.`Course` (`COURSE_ID`, `course_name`, `STUDENT_ID`, `PROFESSOR_ID`) VALUES ('300', 'Forensic Science', '140', '200');
INSERT INTO `university_sql_database`.`Course` (`COURSE_ID`, `course_name`, `STUDENT_ID`, `PROFESSOR_ID`) VALUES ('410', 'Project Management', '110', '230');
INSERT INTO `university_sql_database`.`Course` (`COURSE_ID`, `course_name`, `STUDENT_ID`, `PROFESSOR_ID`) VALUES ('100', 'Printmaking', '140', '210');
INSERT INTO `university_sql_database`.`Course` (`COURSE_ID`, `course_name`, `STUDENT_ID`, `PROFESSOR_ID`) VALUES ('250', 'Transfiguration', '170', '230');

