mysql> create database jobdbms;
Query OK, 1 row affected (0.02 sec)
mysql> use jobdbms;
Database changed
SQL> CREATE TABLE jobs (
  2      job_id INT PRIMARY KEY,
  3      job_title VARCHAR2(50),
  4      min_salary NUMBER(10,2),
  5      max_salary NUMBER(10,2),
  6      CHECK(max_salary<=25000)

Table created.

SQL> INSERT INTO jobs
  2  VALUES (1, 'Software Developer', 5000, 20000);

1 row created.

SQL> INSERT INTO jobs
  2  VALUES (2, 'Project Manager', 10000, 30000);

INSERT INTO jobs
ERROR at line 1:
ERROR 3819 (HY000): Check constraint 'jobs_chk_1' is violated.
SQL> SELECT * FROM jobs;

   JOB_ID JOB_TITLE            MIN_SALARY MAX_SALARY
---------- -------------------- ---------- ----------
         1 Software Developer        5000      20000
