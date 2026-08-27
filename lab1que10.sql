mysql> create database at;
Query OK, 1 row affected (0.01 sec)

mysql> use at;
Database changed
mysql> CREATE TABLE IF NOT EXISTS jobs (
    -> job_id VARCHAR(10) NOT NULL,
    -> job_title VARCHAR(35) NOT NULL DEFAULT ' ',
    -> min_salary DECIMAL(6,0) DEFAULT 8000,
    -> max_salary DECIMAL(6,0) DEFAULT NULL
    -> );
Query OK, 0 rows affected (0.02 sec)

mysql> DESCRIBE jobs;
+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| job_id     | varchar(10)  | NO   |     | NULL    |       |
| job_title  | varchar(35)  | NO   |     |         |       |
| min_salary | decimal(6,0) | YES  |     | 8000    |       |
| max_salary | decimal(6,0) | YES  |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> -- Test: Inserting only job_id to verify automatic default values
mysql> INSERT INTO jobs (job_id) VALUES ('DEV01');
Query OK, 1 row affected (0.01 sec)

mysql> -- View stored records
mysql> SELECT * FROM jobs;
+--------+-----------+------------+------------+
| job_id | job_title | min_salary | max_salary |
+--------+-----------+------------+------------+
| DEV01  |           |       8000 |       NULL |
+--------+-----------+------------+------------+
1 row in set (0.00 sec)
