CREATE TABLE `university_sql_database`.`Grades` (
  `GRADES_ID` INT NOT NULL,
  `STUDENTS_ID` INT NOT NULL,
  `PROFESSOR_ID` INT NOT NULL,
  `COURSE_ID` INT NOT NULL,
  `grade` INT NOT NULL,
  PRIMARY KEY (`GRADES_ID`),
  INDEX `COURSE_ID_idx` (`COURSE_ID` ASC) VISIBLE,
  INDEX `PROFESSOR_ID_idx` (`PROFESSOR_ID` ASC) VISIBLE,
  INDEX `STUDENT_ID_idx` (`STUDENTS_ID` ASC) VISIBLE,
  CONSTRAINT `fk_COURSE_ID`
    FOREIGN KEY (`COURSE_ID`)
    REFERENCES `university_sql_database`.`Course` (`COURSE_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_PROFESSOR_ID`
    FOREIGN KEY (`PROFESSOR_ID`)
    REFERENCES `university_sql_database`.`Professor` (`PROFESSOR_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_STUDENT_ID`
    FOREIGN KEY (`STUDENTS_ID`)
    REFERENCES `university_sql_database`.`Student` (`STUDENT_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);



INSERT INTO `university_sql_database`.`Grades` (`GRADES_ID`, `STUDENTS_ID`, `PROFESSOR_ID`, `COURSE_ID`, `grade`) VALUES ('1', '100', '210', '100', '89');
INSERT INTO `university_sql_database`.`Grades` (`GRADES_ID`, `STUDENTS_ID`, `PROFESSOR_ID`, `COURSE_ID`, `grade`) VALUES ('2', '150', '200', '250', '53');
INSERT INTO `university_sql_database`.`Grades` (`GRADES_ID`, `STUDENTS_ID`, `PROFESSOR_ID`, `COURSE_ID`, `grade`) VALUES ('3', '110', '220', '300', '90');
INSERT INTO `university_sql_database`.`Grades` (`GRADES_ID`, `STUDENTS_ID`, `PROFESSOR_ID`, `COURSE_ID`, `grade`) VALUES ('4', '130', '230', '410', '80');
INSERT INTO `university_sql_database`.`Grades` (`GRADES_ID`, `STUDENTS_ID`, `PROFESSOR_ID`, `COURSE_ID`, `grade`) VALUES ('5', '150', '210', '411', '79');