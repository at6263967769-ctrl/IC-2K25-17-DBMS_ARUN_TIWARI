DROP TABLE IF EXISTS student;

CREATE TABLE student (
    student_id SMALLINT UNSIGNED NOT NULL,
    first_name VARCHAR(45) NOT NULL,
    last_name VARCHAR(45) NOT NULL,
    age SMALLINT UNSIGNED NOT NULL,
    grade SMALLINT UNSIGNED NOT NULL,
   PRIMARY KEY (student_id)
  ) ENGINE=InnoDB;

INSERT INTO student (student_id, first_name, last_name, age, grade) 
VALUES (1, 'verma', 'ji', 19, 4);

INSERT INTO student (student_id, first_name, last_name, age, grade) 
VALUES 
(2, 'Chetan', 'Karanjiya', 22, 5),
(3, 'Ankesh', 'Diwakar', 20, 3),
(4, 'kanak', 'pagera', 21, 4 ),
(5, 'Ajitesh', 'verma', 18, 2);

SELECT * FROM student;
