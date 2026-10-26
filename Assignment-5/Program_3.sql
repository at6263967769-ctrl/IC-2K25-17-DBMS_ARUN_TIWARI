Enter password: **********
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 10
Server version: 8.0.46 MySQL Community Server - GPL

Copyright (c) 2000, 2026, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> USE hr;
Database changed
mysql> SHOW TABLES;
+--------------+
| Tables_in_hr |
+--------------+
| countries    |
| departments  |
| employees    |
| job_history  |
| jobs         |
| locations    |
| regions      |
+--------------+
7 rows in set (0.01 sec)

mysql> DESC departments;
+-----------------+--------------+------+-----+---------+-------+
| Field           | Type         | Null | Key | Default | Extra |
+-----------------+--------------+------+-----+---------+-------+
| DEPARTMENT_ID   | decimal(4,0) | NO   | PRI | 0       |       |
| DEPARTMENT_NAME | varchar(30)  | NO   |     | NULL    |       |
| MANAGER_ID      | decimal(6,0) | YES  |     | NULL    |       |
| LOCATION_ID     | decimal(4,0) | YES  | MUL | NULL    |       |
+-----------------+--------------+------+-----+---------+-------+
4 rows in set (0.01 sec)

mysql> -- Q3. Write a query to find the name (first_name, last_name) of the employees who have a manager and worked in a USA based department.
Hint : Write single-row and multiple-row subqueries

mysql> SELECT *
    -> FROM locations;
+-------------+----------------------------+-------------+---------------------+------------------+------------+
| LOCATION_ID | STREET_ADDRESS             | POSTAL_CODE | CITY                | STATE_PROVINCE   | COUNTRY_ID |
+-------------+----------------------------+-------------+---------------------+------------------+------------+
|        1000 | 1297 Via Cola di Rie       | 989         | Roma                | NULL             | IT         |
|        1100 | 93091 Calle della Testa    | 10934       | Venice              | NULL             | IT         |
|        1200 | 2017 Shinjuku-ku           | 1689        | Tokyo               | Tokyo Prefecture | JP         |
|        1300 | 9450 Kamiya-cho            | 6823        | Hiroshima           | NULL             | JP         |
|        1400 | 2014 Jabberwocky Rd        | 26192       | Southlake           | Texas            | US         |
|        1500 | 2011 Interiors Blvd        | 99236       | South San Francisco | California       | US         |
|        1600 | 2007 Zagora St             | 50090       | South Brunswick     | New Jersey       | US         |
|        1700 | 2004 Charade Rd            | 98199       | Seattle             | Washington       | US         |
|        1800 | 147 Spadina Ave            | M5V 2L7     | Toronto             | Ontario          | CA         |
|        1900 | 6092 Boxwood St            | YSW 9T2     | Whitehorse          | Yukon            | CA         |
|        2000 | 40-5-12 Laogianggen        | 190518      | Beijing             | NULL             | CN         |
|        2100 | 1298 Vileparle (E)         | 490231      | Bombay              | Maharashtra      | IN         |
|        2200 | 12-98 Victoria Street      | 2901        | Sydney              | New South Wales  | AU         |
|        2300 | 198 Clementi North         | 540198      | Singapore           | NULL             | SG         |
|        2400 | 8204 Arthur St             | NULL        | London              | NULL             | UK         |
|        2500 | Magdalen Centre The Oxford | OX9 9ZB     | Oxford              | Ox               | UK         |
|        2600 | 9702 Chester Road          | 9629850293  | Stretford           | Manchester       | UK         |
|        2700 | Schwanthalerstr. 7031      | 80925       | Munich              | Bavaria          | DE         |
|        2800 | Rua Frei Caneca 1360       | 01307-002   | Sao Paulo           | Sao Paulo        | BR         |
|        2900 | 20 Rue des Corps-Saints    | 1730        | Geneva              | Geneve           | CH         |
|        3000 | Murtenstrasse 921          | 3095        | Bern                | BE               | CH         |
|        3100 | Pieter Breughelstraat 837  | 3029SK      | Utrecht             | Utrecht          | NL         |
|        3200 | Mariano Escobedo 9991      | 11932       | Mexico City         | Distrito Federal | MX         |
+-------------+----------------------------+-------------+---------------------+------------------+------------+
23 rows in set (0.03 sec)

mysql> ELECT LOCATION_ID, CITY, COUNTRY_ID FROM locations;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'ELECT LOCATION_ID, CITY, COUNTRY_ID FROM locations' at line 1
mysql> SELECT LOCATION_ID, CITY, COUNTRY_ID
    -> FROM locations;
+-------------+---------------------+------------+
| LOCATION_ID | CITY                | COUNTRY_ID |
+-------------+---------------------+------------+
|        1000 | Roma                | IT         |
|        1100 | Venice              | IT         |
|        1200 | Tokyo               | JP         |
|        1300 | Hiroshima           | JP         |
|        1400 | Southlake           | US         |
|        1500 | South San Francisco | US         |
|        1600 | South Brunswick     | US         |
|        1700 | Seattle             | US         |
|        1800 | Toronto             | CA         |
|        1900 | Whitehorse          | CA         |
|        2000 | Beijing             | CN         |
|        2100 | Bombay              | IN         |
|        2200 | Sydney              | AU         |
|        2300 | Singapore           | SG         |
|        2400 | London              | UK         |
|        2500 | Oxford              | UK         |
|        2600 | Stretford           | UK         |
|        2700 | Munich              | DE         |
|        2800 | Sao Paulo           | BR         |
|        2900 | Geneva              | CH         |
|        3000 | Bern                | CH         |
|        3100 | Utrecht             | NL         |
|        3200 | Mexico City         | MX         |
+-------------+---------------------+------------+
23 rows in set (0.00 sec)

mysql> SELECT LOCATION_ID, CITY, COUNTRY_ID
    -> FROM locations;
+-------------+---------------------+------------+
| LOCATION_ID | CITY                | COUNTRY_ID |
+-------------+---------------------+------------+
|        1000 | Roma                | IT         |
|        1100 | Venice              | IT         |
|        1200 | Tokyo               | JP         |
|        1300 | Hiroshima           | JP         |
|        1400 | Southlake           | US         |
|        1500 | South San Francisco | US         |
|        1600 | South Brunswick     | US         |
|        1700 | Seattle             | US         |
|        1800 | Toronto             | CA         |
|        1900 | Whitehorse          | CA         |
|        2000 | Beijing             | CN         |
|        2100 | Bombay              | IN         |
|        2200 | Sydney              | AU         |
|        2300 | Singapore           | SG         |
|        2400 | London              | UK         |
|        2500 | Oxford              | UK         |
|        2600 | Stretford           | UK         |
|        2700 | Munich              | DE         |
|        2800 | Sao Paulo           | BR         |
|        2900 | Geneva              | CH         |
|        3000 | Bern                | CH         |
|        3100 | Utrecht             | NL         |
|        3200 | Mexico City         | MX         |
+-------------+---------------------+------------+
23 rows in set (0.00 sec)

mysql> SELECT COUNTRY_ID, COUNTRY_NAME
    -> FROM countries;
+------------+--------------------------+
| COUNTRY_ID | COUNTRY_NAME             |
+------------+--------------------------+
| AR         | Argentina                |
| AU         | Australia                |
| BE         | Belgium                  |
| BR         | Brazil                   |
| CA         | Canada                   |
| CH         | Switzerland              |
| CN         | China                    |
| DE         | Germany                  |
| DK         | Denmark                  |
| EG         | Egypt                    |
| FR         | France                   |
| HK         | HongKong                 |
| IL         | Israel                   |
| IN         | India                    |
| IT         | Italy                    |
| JP         | Japan                    |
| KW         | Kuwait                   |
| MX         | Mexico                   |
| NG         | Nigeria                  |
| NL         | Netherlands              |
| SG         | Singapore                |
| UK         | United Kingdom           |
| US         | United States of America |
| ZM         | Zambia                   |
| ZW         | Zimbabwe                 |
+------------+--------------------------+
25 rows in set (0.03 sec)

mysql> SELECT COUNTRY_ID, COUNTRY_NAME
    -> FROM countries
    -> WHERE COUNTRY_NAME LIKE '%United States%';
+------------+--------------------------+
| COUNTRY_ID | COUNTRY_NAME             |
+------------+--------------------------+
| US         | United States of America |
+------------+--------------------------+
1 row in set (0.00 sec)

mysql> SELECT LOCATION_ID, CITY, COUNTRY_ID
    -> FROM locations
    -> WHERE COUNTRY_ID = (
    ->     SELECT COUNTRY_ID
    ->     FROM countries
    ->     WHERE COUNTRY_NAME LIKE '%United States%'
    -> );
+-------------+---------------------+------------+
| LOCATION_ID | CITY                | COUNTRY_ID |
+-------------+---------------------+------------+
|        1400 | Southlake           | US         |
|        1500 | South San Francisco | US         |
|        1600 | South Brunswick     | US         |
|        1700 | Seattle             | US         |
+-------------+---------------------+------------+
4 rows in set (0.02 sec)

mysql> -- main
mysql> SELECT DEPARTMENT_ID, DEPARTMENT_NAME, LOCATION_ID
    -> FROM departments
    -> WHERE LOCATION_ID IN (
    ->     SELECT LOCATION_ID
    ->     FROM locations
    ->     WHERE COUNTRY_ID = (
    ->         SELECT COUNTRY_ID
    ->         FROM countries
    ->         WHERE COUNTRY_NAME LIKE '%United States%'
    ->     )
    -> );
+---------------+----------------------+-------------+
| DEPARTMENT_ID | DEPARTMENT_NAME      | LOCATION_ID |
+---------------+----------------------+-------------+
|            60 | IT                   |        1400 |
|            50 | Shipping             |        1500 |
|            10 | Administration       |        1700 |
|            30 | Purchasing           |        1700 |
|            90 | Executive            |        1700 |
|           100 | Finance              |        1700 |
|           110 | Accounting           |        1700 |
|           120 | Treasury             |        1700 |
|           130 | Corporate Tax        |        1700 |
|           140 | Control And Credit   |        1700 |
|           150 | Shareholder Services |        1700 |
|           160 | Benefits             |        1700 |
|           170 | Manufacturing        |        1700 |
|           180 | Construction         |        1700 |
|           190 | Contracting          |        1700 |
|           200 | Operations           |        1700 |
|           210 | IT Support           |        1700 |
|           220 | NOC                  |        1700 |
|           230 | IT Helpdesk          |        1700 |
|           240 | Government Sales     |        1700 |
|           250 | Retail Sales         |        1700 |
|           260 | Recruiting           |        1700 |
|           270 | Payroll              |        1700 |
+---------------+----------------------+-------------+
23 rows in set (0.02 sec)

mysql> SELECT FIRST_NAME, LAST_NAME
    -> FROM employees
    -> WHERE MANAGER_ID IS NOT NULL
    -> AND DEPARTMENT_ID IN (
    ->     SELECT DEPARTMENT_ID
    ->     FROM departments
    ->     WHERE LOCATION_ID IN (
    ->         SELECT LOCATION_ID
    ->         FROM locations
    ->         WHERE COUNTRY_ID = (
    ->             SELECT COUNTRY_ID
    ->             FROM countries
    ->             WHERE COUNTRY_NAME LIKE '%United States%'
    ->         )
    ->     )
    -> );
+-------------+-----------+
| FIRST_NAME  | LAST_NAME |
+-------------+-----------+
| Alexander   | Hunold    |
| Bruce       | Ernst     |
| David       | Austin    |
| Valli       | Pataballa |
| Diana       | Lorentz   |
| Jennifer    | Whalen    |
| Den         | Raphaely  |
| Alexander   | Khoo      |
| Neena       | Kochhar   |
| Lex         | De Haan   |
| Nancy       | Greenberg |
| Daniel      | Faviet    |
| John        | Chen      |
| Ismael      | Sciarra   |
| Jose Manuel | Urman     |
| Luis        | Popp      |
| Shelley     | Higgins   |
| William     | Gietz     |
+-------------+-----------+
18 rows in set (0.02 sec)
