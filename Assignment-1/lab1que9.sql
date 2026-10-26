mysql> create database at;
Query OK, 1 row affected (0.01 sec)

mysql> use at;
Database changed
mysql> CREATE TABLE countries (
    -> country_id VARCHAR(2) NOT NULL UNIQUE,
    -> country_name VARCHAR(40),
    -> region_id DECIMAL(10,0)
    -> );
Query OK, 0 rows affected (0.02 sec)

mysql> DESCRIBE countries;
+--------------+---------------+------+-----+---------+-------+
| Field        | Type          | Null | Key | Default | Extra |
+--------------+---------------+------+-----+---------+-------+
| country_id   | varchar(2)    | NO   | UNI | NULL    |       |
| country_name | varchar(40)   | YES  |     | NULL    |       |
| region_id    | decimal(10,0) | YES  |     | NULL    |       |
+--------------+---------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> INSERT INTO countries VALUES ('IN', 'India', 1);
Query OK, 1 row affected (0.01 sec)
mysql> INSERT INTO countries VALUES ('IN', 'Indonesia', 1);
ERROR 1062 (23000): Duplicate entry 'IN' for key 'countries.country_id'
