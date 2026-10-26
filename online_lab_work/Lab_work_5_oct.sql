Enter password: **********
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 8
Server version: 8.0.46 MySQL Community Server - GPL

Copyright (c) 2000, 2026, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> CREATE DATABASE customer_order;
Query OK, 1 row affected (0.08 sec)

mysql> USE customer_order;
Database changed
mysql> CREATE TABLE Customer (
    ->     customer_id INT PRIMARY KEY, name VARCHAR(50), address VARCHAR(100), contact_no VARCHAR(15));
Query OK, 0 rows affected (0.10 sec)

mysql> INSERT INTO Customer
    -> (customer_id, name, address, contact_no)
    -> VALUES (1, 'Ankesh', 'Indore', '9876543210'), (2, 'Rahul', 'Bhopal', '9876543211'), (3, 'Aman', 'Delhi', '9876543212');
Query OK, 3 rows affected (0.04 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> CREATE TABLE Orders (
    ->     id INT PRIMARY KEY, product_name VARCHAR(50), rate_per_unit DECIMAL(10,2), qty INT,
    ->     amount DECIMAL(10,2),customer_id INT,
    ->
    ->     FOREIGN KEY (customer_id)
    ->     REFERENCES Customer(customer_id)
    -> );
Query OK, 0 rows affected (0.07 sec)

mysql> INSERT INTO Orders
    -> (id, product_name, rate_per_unit, qty, amount, customer_id)
    -> VALUES (101, 'Laptop', 50000, 1, 50000, 1), (102, 'Mouse', 500, 2, 1000, 1), (103, 'Keyboard', 1000, 1, 1000, 2),(104, 'Mobile', 20000, 1, 20000, 3);
Query OK, 4 rows affected (0.03 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM Customer;
+-------------+--------+---------+------------+
| customer_id | name   | address | contact_no |
+-------------+--------+---------+------------+
|           1 | Ankesh | Indore  | 9876543210 |
|           2 | Rahul  | Bhopal  | 9876543211 |
|           3 | Aman   | Delhi   | 9876543212 |
+-------------+--------+---------+------------+
3 rows in set (0.03 sec)

mysql> SELECT * FROM Orders;
+-----+--------------+---------------+------+----------+-------------+
| id  | product_name | rate_per_unit | qty  | amount   | customer_id |
+-----+--------------+---------------+------+----------+-------------+
| 101 | Laptop       |      50000.00 |    1 | 50000.00 |           1 |
| 102 | Mouse        |        500.00 |    2 |  1000.00 |           1 |
| 103 | Keyboard     |       1000.00 |    1 |  1000.00 |           2 |
| 104 | Mobile       |      20000.00 |    1 | 20000.00 |           3 |
+-----+--------------+---------------+------+----------+-------------+
4 rows in set (0.02 sec)

mysql> SELECT
    ->     Customer.customer_id,
    ->     Customer.name,
    ->     Customer.address,
    ->     Customer.contact_no,
    ->     Orders.id AS order_id,
    ->     Orders.product_name,
    ->     Orders.rate_per_unit,
    ->     Orders.qty,
    ->     Orders.amount
    -> FROM Customer
    -> JOIN Orders
    -> ON Customer.customer_id = Orders.customer_id;
+-------------+--------+---------+------------+----------+--------------+---------------+------+----------+
| customer_id | name   | address | contact_no | order_id | product_name | rate_per_unit | qty  | amount   |
+-------------+--------+---------+------------+----------+--------------+---------------+------+----------+
|           1 | Ankesh | Indore  | 9876543210 |      101 | Laptop       |      50000.00 |    1 | 50000.00 |
|           1 | Ankesh | Indore  | 9876543210 |      102 | Mouse        |        500.00 |    2 |  1000.00 |
|           2 | Rahul  | Bhopal  | 9876543211 |      103 | Keyboard     |       1000.00 |    1 |  1000.00 |
|           3 | Aman   | Delhi   | 9876543212 |      104 | Mobile       |      20000.00 |    1 | 20000.00 |
+-------------+--------+---------+------------+----------+--------------+---------------+------+----------+
4 rows in set (0.03 sec)

mysql>
