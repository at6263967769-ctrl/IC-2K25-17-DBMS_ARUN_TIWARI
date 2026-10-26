mysql> use jobdbms;
Database changed
mysql> create table countries(
    -> country_id INT auto_increment primary key,
    -> country_name VARCHAR(50),
    -> region_id INT
    ->
    -> );
Query OK, 0 rows affected (0.05 sec)

mysql> INSERT INTO countries (country_name, region_id)
    -> VALUES ('India', 1);
Query OK, 1 row affected (0.01 sec)

mysql>
mysql> INSERT INTO countries (country_name, region_id)
    -> VALUES ('Italy', 2);
Query OK, 1 row affected (0.01 sec)

mysql> select * from countries;
+------------+--------------+-----------+
| country_id | country_name | region_id |
+------------+--------------+-----------+
|          1 | India        |         1 |
|          2 | Italy        |         2 |
+------------+--------------+-----------+
2 rows in set (0.00 sec)
mysql>
