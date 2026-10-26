CREATE TABLE students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    age INT,
    course VARCHAR(50)
);

INSERT INTO students (name, age, course) VALUES 
('Aman Sharma', 19, 'MCA'),
('Priya Verma', 20, 'BCA'),
('Rahul Singh', 18, 'B.Tech');


SELECT * FROM students;
