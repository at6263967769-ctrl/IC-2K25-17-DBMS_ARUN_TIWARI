mysql> create database at;
Query OK, 1 row affected (0.01 sec)

mysql> use at;
Database changed
mysql> CREATE TABLE job_histry (
    -> employee_id DECIMAL(6,0) NOT NULL,
    -> start_date DATE NOT NULL,
    -> end_date VARCHAR(10) NOT NULL CHECK (end_date LIKE '--/--/----'),
    -> job_id VARCHAR(10) NOT NULL,
    -> department_id DECIMAL(4,0)
    -> );
Query OK, 0 rows affected (0.02 sec)

mysql> DESCRIBE job_histry;
+---------------+---------------+------+-----+---------+-------+
| Field         | Type          | Null | Key | Default | Extra |
+---------------+---------------+------+-----+---------+-------+
| employee_id   | decimal(6,0)  | NO   |     | NULL    |       |
| start_date    | date          | NO   |     | NULL    |       |
| end_date      | varchar(10)   | NO   |     | NULL    |       |
| job_id        | varchar(10)   | NO   |     | NULL    |       |
| department_id | decimal(4,0)  | YES  |     | NULL    |       |
+---------------+---------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> INSERT INTO job_histry VALUES (101, '2023-01-15', '--/--/----', 'IT_PROG', 60);
Query OK, 1 row affected (0.01 sec)
mysql> INSERT INTO job_histry VALUES (102, '2023-01-15', '2024-05-20', 'IT_PROG', 60);
ERROR 3819 (HY000): Check constraint 'job_histry_' is violated.
