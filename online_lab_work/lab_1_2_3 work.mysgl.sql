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
(5, 'Ajitesh', 'verma', 18, 2),
(6, 'Atul', 'Prajapat', 19, 4),
(7, 'Mohit', 'Yadav', 17, 3),
(8, 'Aryan', 'sharma', 15, 4),
(9, 'Pranjal', 'verma', 17, 5),
(10, 'Ayush', 'Singh', 18, 6);


SELECT * FROM student;


SELECT last_name, age 
FROM student;

SELECT first_name, age 
FROM student 
WHERE age > 20;

UPDATE student 
SET grade = 5
WHERE first_name = 'verma';

SELECT last_name, age 
FROM student 
ORDER BY age ASC;

SELECT * 
FROM student 
ORDER BY age DESC 
LIMIT 5;

SELECT AVG(age), SUM(age) 
FROM student;

SELECT MIN(age), MAX(age) 
FROM student;
