mysql> create database countryiddbms;
Query OK, 1 row affected (0.01 sec)

mysql> use countryiddbms;
Database changed
mysql> CREATE TABLE countries (
    ->     country_id INT,
    ->     country_name VARCHAR(50),
    ->     region_id INT,
    ->     UNIQUE (country_id, region_id)
    -> );
Query OK, 0 rows affected (0.05 sec)

mysql> INSERT INTO countries VALUES (1, 'India', 10);
Query OK, 1 row affected (0.01 sec)

mysql> Insert into countries VALUES (1, 'India', 20);
Query OK, 1 row affected (0.01 sec)

mysql> select * from countries;
+------------+--------------+-----------+
| country_id | country_name | region_id |
+------------+--------------+-----------+
|          1 | India        |        10 |
|          1 | India        |        20 |
+------------+--------------+-----------+
2 rows in set (0.00 sec)
mysql>
mysql> INSERT INTO countries VALUES (1, 'India', 10);
ERROR 1062 (23000): Duplicate entry '1-10' for key 'countries.country_id'
mysql> INSERT INTO countries VALUES (1, 'India', 10);
ERROR 1062 (23000): Duplicate entry '1-10' for key 'countries.country_id'
