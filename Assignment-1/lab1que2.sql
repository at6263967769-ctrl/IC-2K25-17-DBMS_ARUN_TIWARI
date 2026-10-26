mysql> CREATE DATABASE IF NOT EXISTS test_db;
Query OK, 1 row affected (0.01 sec)

mysql> USE test_db;
Database changed

mysql> CREATE TABLE IF NOT EXISTS countries (
    -> country_id VARCHAR(2),
    -> country_name VARCHAR(40),
    -> region_id DECIMAL(10,0)
    -> );
Query OK, 0 rows affected (0.02 sec)

mysql> SHOW TABLES;
+-------------------+
| Tables_in_test_db |
+-------------------+
| countries         |
+-------------------+
1 row in set (0.00 sec)

mysql> DESCRIBE countries;
+--------------+---------------+------+-----+---------+-------+
| Field        | Type          | Null | Key | Default | Extra |
+--------------+---------------+------+-----+---------+-------+
| country_id   | varchar(2)    | YES  |     | NULL    |       |
| country_name | varchar(40)   | YES  |     | NULL    |       |
| region_id    | decimal(10,0) | YES  |     | NULL    |       |
+--------------+---------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> EXIT;
