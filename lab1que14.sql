mysql> create database employe;
Query OK, 1 row affected (0.02 sec)

mysql> use employe;
Database changed
mysql> create table employe(
    -> first_name varchar(100),
    -> last_name varchar(100)
    -> );
Query OK, 0 rows affected (0.05 sec)

mysql> insert into employe(first_name,last_name) values('ram','sharma');
Query OK, 1 row affected (0.04 sec)

mysql> select * from employe;
+------------+-----------+
| first_name | last_name |
+------------+-----------+
| ram        | sharma    |
+------------+-----------+
1 row in set (0.00 sec)
