CREATE TABLE `university_sql_database`.`Professor` (
  `PROFESSOR_ID` INT NOT NULL,
  `prof_first_name` VARCHAR(50) NOT NULL,
  `prof_last_name` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`PROFESSOR_ID`));


INSERT INTO Professor (PROFESSOR_ID, prof_first_name, prof_last_name)
VALUES ("200", "Eric", "Dane"),
("210", "Carla", "Jimison"),
("220", "Charles", "Xavier"),
("230", "Minerva", "McGonnagal");