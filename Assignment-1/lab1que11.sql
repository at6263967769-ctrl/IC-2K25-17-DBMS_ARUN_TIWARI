mysql> create database arundbms;
Query OK, 1 row affected (0.01 sec)

mysql> use arundbms;
Database changed
mysql> CREATE TABLE countries (
    ->     country_id INT PRIMARY KEY,
    ->     country_name VARCHAR(50),
    ->     region_id INT
    -> );
Query OK, 0 rows affected (0.05 sec)

mysql> INSERT INTO countries (country_id, country_name, region_id)
    -> VALUES (1, 'India', 100);
Query OK, 1 row affected (0.01 sec)

mysql>
mysql> INSERT INTO countries (country_id, country_name, region_id)
    -> VALUES (2, 'China', 200);
Query OK, 1 row affected (0.01 sec)

mysql>
mysql> INSERT INTO countries (country_id, country_name, region_id)
    -> VALUES (3, 'Italy', 300);
Query OK, 1 row affected (0.01 sec)

mysql> select * from countries;
+------------+--------------+-----------+
| country_id | country_name | region_id |
+------------+--------------+-----------+
|          1 | India        |       100 |
|          2 | China        |       200 |
|          3 | Italy        |       300 |
+------------+--------------+-----------+
3 rows in set (0.00 sec)

mysql> 
