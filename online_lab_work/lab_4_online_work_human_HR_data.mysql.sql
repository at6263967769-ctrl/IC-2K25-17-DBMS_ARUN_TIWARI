hr data
regions (Regions ki list, jaise Europe, Asia, Americas, etc.)

countries (Countries ki details aur unka region ID)

locations (Alag-alag locations, addresses, postal codes, aur cities ki details)

jobs (Job roles, titles, aur unke minimum/maximum salary limits)

departments (Company ke alag-alag departments aur unke locations/managers)

employees (Employees ki personal details, contact info, hire date, salary, aur department ID)

job_history (Employees ki purani job history, start/end dates aur departments)

//
Enter password: **********
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 22
Server version: 8.0.46 MySQL Community Server - GPL

Copyright (c) 2000, 2026, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> CREATE DATABASE hr;
ERROR 1007 (HY000): Can't create database 'hr'; database exists
mysql> USE hr;
Database changed
mysql> SET FOREIGN_KEY_CHECKS = 0;
Query OK, 0 rows affected (0.00 sec)

mysql> DROP TABLE IF EXISTS `regions`;
Query OK, 0 rows affected (0.03 sec)

mysql> CREATE TABLE `regions` (
    ->   `REGION_ID` decimal(5,0) NOT NULL,
    ->   `REGION_NAME` varchar(25) DEFAULT NULL,
    ->   PRIMARY KEY (`REGION_ID`),
    ->   UNIQUE KEY `sss` (`REGION_NAME`)
    -> ) ENGINE=InnoDB DEFAULT CHARSET=latin1;
Query OK, 0 rows affected (0.06 sec)

mysql>
mysql> INSERT INTO `regions` VALUES (1,'Europe'),(2,'Americas'),(3,'Asia'),(4,'Middle East and Africa');
Query OK, 4 rows affected (0.01 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql>
mysql> -- Output check karne ke liye:
mysql> SELECT * FROM regions;
+-----------+------------------------+
| REGION_ID | REGION_NAME            |
+-----------+------------------------+
|         2 | Americas               |
|         3 | Asia                   |
|         1 | Europe                 |
|         4 | Middle East and Africa |
+-----------+------------------------+
4 rows in set (0.00 sec)

mysql> DROP TABLE IF EXISTS `countries`;
Query OK, 0 rows affected, 1 warning (0.02 sec)

mysql> CREATE TABLE `countries` (
    ->   `COUNTRY_ID` varchar(2) NOT NULL,
    ->   `COUNTRY_NAME` varchar(40) DEFAULT NULL,
    ->   `REGION_ID` decimal(10,0) DEFAULT NULL,
    ->   PRIMARY KEY (`COUNTRY_ID`),
    ->   KEY `COUNTR_REG_FK` (`REGION_ID`),
    ->   FOREIGN KEY (`REGION_ID`) REFERENCES `regions`(`REGION_ID`)
    -> ) ENGINE=InnoDB DEFAULT CHARSET=latin1;
Query OK, 0 rows affected (0.07 sec)

mysql>
mysql> INSERT INTO `countries` VALUES ('AR','Argentina',2),('AU','Australia',3),('BE','Belgium',1),('BR','Brazil',2),('CA','Canada',2),('CH','Switzerland',1),('CN','China',3),('DE','Germany',1),('DK','Denmark',1),('EG','Egypt',4),('FR','France',1),('HK','HongKong',3),('IL','Israel',4),('IN','India',3),('IT','Italy',1),('JP','Japan',3),('KW','Kuwait',4),('MX','Mexico',2),('NG','Nigeria',4),('NL','Netherlands',1),('SG','Singapore',3),('UK','United Kingdom',1),('US','United States of America',2),('ZM','Zambia',4),('ZW','Zimbabwe',4);
Query OK, 25 rows affected (0.01 sec)
Records: 25  Duplicates: 0  Warnings: 0

mysql>
mysql> -- Output check karne ke liye:
mysql> SELECT * FROM countries;
+------------+--------------------------+-----------+
| COUNTRY_ID | COUNTRY_NAME             | REGION_ID |
+------------+--------------------------+-----------+
| AR         | Argentina                |         2 |
| AU         | Australia                |         3 |
| BE         | Belgium                  |         1 |
| BR         | Brazil                   |         2 |
| CA         | Canada                   |         2 |
| CH         | Switzerland              |         1 |
| CN         | China                    |         3 |
| DE         | Germany                  |         1 |
| DK         | Denmark                  |         1 |
| EG         | Egypt                    |         4 |
| FR         | France                   |         1 |
| HK         | HongKong                 |         3 |
| IL         | Israel                   |         4 |
| IN         | India                    |         3 |
| IT         | Italy                    |         1 |
| JP         | Japan                    |         3 |
| KW         | Kuwait                   |         4 |
| MX         | Mexico                   |         2 |
| NG         | Nigeria                  |         4 |
| NL         | Netherlands              |         1 |
| SG         | Singapore                |         3 |
| UK         | United Kingdom           |         1 |
| US         | United States of America |         2 |
| ZM         | Zambia                   |         4 |
| ZW         | Zimbabwe                 |         4 |
+------------+--------------------------+-----------+
25 rows in set (0.00 sec)

mysql> DROP TABLE IF EXISTS `locations`;
Query OK, 0 rows affected, 1 warning (0.03 sec)

mysql> CREATE TABLE `locations` (
    ->   `LOCATION_ID` decimal(4,0) NOT NULL DEFAULT '0',
    ->   `STREET_ADDRESS` varchar(40) DEFAULT NULL,
    ->   `POSTAL_CODE` varchar(12) DEFAULT NULL,
    ->   `CITY` varchar(30) NOT NULL,
    ->   `STATE_PROVINCE` varchar(25) DEFAULT NULL,
    ->   `COUNTRY_ID` varchar(2) DEFAULT NULL,
    ->   PRIMARY KEY (`LOCATION_ID`),
    ->   KEY `LOC_CITY_IX` (`CITY`),
    ->   KEY `LOC_COUNTRY_IX` (`COUNTRY_ID`),
    ->   KEY `LOC_STATE_PROVINCE_IX` (`STATE_PROVINCE`),
    ->   FOREIGN KEY (`COUNTRY_ID`) REFERENCES `countries`(`COUNTRY_ID`)
    -> ) ENGINE=InnoDB DEFAULT CHARSET=latin1;
Query OK, 0 rows affected (0.08 sec)

mysql>
mysql> INSERT INTO `locations` VALUES (1000,'1297 Via Cola di Rie','989','Roma',NULL,'IT'),(1100,'93091 Calle della Testa','10934','Venice',NULL,'IT'),(1200,'2017 Shinjuku-ku','1689','Tokyo','Tokyo Prefecture','JP'),(1300,'9450 Kamiya-cho','6823','Hiroshima',NULL,'JP'),(1400,'2014 Jabberwocky Rd','26192','Southlake','Texas','US'),(1500,'2011 Interiors Blvd','99236','South San Francisco','California','US'),(1600,'2007 Zagora St','50090','South Brunswick','New Jersey','US'),(1700,'2004 Charade Rd','98199','Seattle','Washington','US'),(1800,'147 Spadina Ave','M5V 2L7','Toronto','Ontario','CA'),(1900,'6092 Boxwood St','YSW 9T2','Whitehorse','Yukon','CA'),(2000,'40-5-12 Laogianggen','190518','Beijing',NULL,'CN'),(2100,'1298 Vileparle (E)','490231','Bombay','Maharashtra','IN'),(2200,'12-98 Victoria Street','2901','Sydney','New South Wales','AU'),(2300,'198 Clementi North','540198','Singapore',NULL,'SG'),(2400,'8204 Arthur St',NULL,'London',NULL,'UK'),(2500,'Magdalen Centre The Oxford','OX9 9ZB','Oxford','Ox','UK'),(2600,'9702 Chester Road','9629850293','Stretford','Manchester','UK'),(2700,'Schwanthalerstr. 7031','80925','Munich','Bavaria','DE'),(2800,'Rua Frei Caneca 1360','01307-002','Sao Paulo','Sao Paulo','BR'),(2900,'20 Rue des Corps-Saints','1730','Geneva','Geneve','CH'),(3000,'Murtenstrasse 921','3095','Bern','BE','CH'),(3100,'Pieter Breughelstraat 837','3029SK','Utrecht','Utrecht','NL'),(3200,'Mariano Escobedo 9991','11932','Mexico City','Distrito Federal','MX');
Query OK, 23 rows affected (0.01 sec)
Records: 23  Duplicates: 0  Warnings: 0

mysql>
mysql> -- Output check karne ke liye:
mysql> SELECT * FROM locations;
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
23 rows in set (0.00 sec)

mysql> DROP TABLE IF EXISTS `jobs`;
Query OK, 0 rows affected, 1 warning (0.02 sec)

mysql> CREATE TABLE `jobs` (
    ->   `JOB_ID` varchar(10) NOT NULL DEFAULT '',
    ->   `JOB_TITLE` varchar(35) NOT NULL,
    ->   `MIN_SALARY` decimal(6,0) DEFAULT NULL,
    ->   `MAX_SALARY` decimal(6,0) DEFAULT NULL,
    ->   PRIMARY KEY (`JOB_ID`)
    -> ) ENGINE=InnoDB DEFAULT CHARSET=latin1;
Query OK, 0 rows affected (0.03 sec)

mysql>
mysql> INSERT INTO `jobs` VALUES ('AD_PRES','President',20000,40000),('AD_VP','Administration Vice President',15000,30000),('AD_ASST','Administration Assistant',3000,6000),('FI_MGR','Finance Manager',8200,16000),('FI_ACCOUNT','Accountant',4200,9000),('AC_MGR','Accounting Manager',8200,16000),('AC_ACCOUNT','Public Accountant',4200,9000),('SA_MAN','Sales Manager',10000,20000),('SA_REP','Sales Representative',6000,12000),('PU_MAN','Purchasing Manager',8000,15000),('PU_CLERK','Purchasing Clerk',2500,5500),('ST_MAN','Stock Manager',5500,8500),('ST_CLERK','Stock Clerk',2000,5000),('SH_CLERK','Shipping Clerk',2500,5500),('IT_PROG','Programmer',4000,10000),('MK_MAN','Marketing Manager',9000,15000),('MK_REP','Marketing Representative',4000,9000),('HR_REP','Human Resources Representative',4000,9000),('PR_REP','Public Relations Representative',4500,10500);
Query OK, 19 rows affected (0.01 sec)
Records: 19  Duplicates: 0  Warnings: 0

mysql>
mysql> -- Output check karne ke liye:
mysql> SELECT * FROM jobs;
+------------+---------------------------------+------------+------------+
| JOB_ID     | JOB_TITLE                       | MIN_SALARY | MAX_SALARY |
+------------+---------------------------------+------------+------------+
| AC_ACCOUNT | Public Accountant               |       4200 |       9000 |
| AC_MGR     | Accounting Manager              |       8200 |      16000 |
| AD_ASST    | Administration Assistant        |       3000 |       6000 |
| AD_PRES    | President                       |      20000 |      40000 |
| AD_VP      | Administration Vice President   |      15000 |      30000 |
| FI_ACCOUNT | Accountant                      |       4200 |       9000 |
| FI_MGR     | Finance Manager                 |       8200 |      16000 |
| HR_REP     | Human Resources Representative  |       4000 |       9000 |
| IT_PROG    | Programmer                      |       4000 |      10000 |
| MK_MAN     | Marketing Manager               |       9000 |      15000 |
| MK_REP     | Marketing Representative        |       4000 |       9000 |
| PR_REP     | Public Relations Representative |       4500 |      10500 |
| PU_CLERK   | Purchasing Clerk                |       2500 |       5500 |
| PU_MAN     | Purchasing Manager              |       8000 |      15000 |
| SA_MAN     | Sales Manager                   |      10000 |      20000 |
| SA_REP     | Sales Representative            |       6000 |      12000 |
| SH_CLERK   | Shipping Clerk                  |       2500 |       5500 |
| ST_CLERK   | Stock Clerk                     |       2000 |       5000 |
| ST_MAN     | Stock Manager                   |       5500 |       8500 |
+------------+---------------------------------+------------+------------+
19 rows in set (0.00 sec)

mysql> DROP TABLE IF EXISTS `departments`;
Query OK, 0 rows affected, 1 warning (0.02 sec)

mysql> CREATE TABLE `departments` (
    ->   `DEPARTMENT_ID` decimal(4,0) NOT NULL DEFAULT '0',
    ->   `DEPARTMENT_NAME` varchar(30) NOT NULL,
    ->   `MANAGER_ID` decimal(6,0) DEFAULT NULL,
    ->   `LOCATION_ID` decimal(4,0) DEFAULT NULL,
    ->   PRIMARY KEY (`DEPARTMENT_ID`),
    ->   KEY `DEPT_LOCATION_IX` (`LOCATION_ID`),
    ->   FOREIGN KEY (`LOCATION_ID`) REFERENCES `locations`(`LOCATION_ID`)
    -> ) ENGINE=InnoDB DEFAULT CHARSET=latin1;
Query OK, 0 rows affected (0.07 sec)

mysql>
mysql> INSERT INTO `departments` VALUES (10,'Administration',200,1700),(20,'Marketing',201,1800),(30,'Purchasing',114,1700),(40,'Human Resources',203,2400),(50,'Shipping',121,1500),(60,'IT',103,1400),(70,'Public Relations',204,2700),(80,'Sales',145,2500),(90,'Executive',100,1700),(100,'Finance',108,1700),(110,'Accounting',205,1700),(120,'Treasury',NULL,1700),(130,'Corporate Tax',NULL,1700),(140,'Control And Credit',NULL,1700),(150,'Shareholder Services',NULL,1700),(160,'Benefits',NULL,1700),(170,'Manufacturing',NULL,1700),(180,'Construction',NULL,1700),(190,'Contracting',NULL,1700),(200,'Operations',NULL,1700),(210,'IT Support',NULL,1700),(220,'NOC',NULL,1700),(230,'IT Helpdesk',NULL,1700),(240,'Government Sales',NULL,1700),(250,'Retail Sales',NULL,1700),(260,'Recruiting',NULL,1700),(270,'Payroll',NULL,1700);
Query OK, 27 rows affected (0.01 sec)
Records: 27  Duplicates: 0  Warnings: 0

mysql>
mysql> -- Output check karne ke liye:
mysql> SELECT * FROM departments;
+---------------+----------------------+------------+-------------+
| DEPARTMENT_ID | DEPARTMENT_NAME      | MANAGER_ID | LOCATION_ID |
+---------------+----------------------+------------+-------------+
|            10 | Administration       |        200 |        1700 |
|            20 | Marketing            |        201 |        1800 |
|            30 | Purchasing           |        114 |        1700 |
|            40 | Human Resources      |        203 |        2400 |
|            50 | Shipping             |        121 |        1500 |
|            60 | IT                   |        103 |        1400 |
|            70 | Public Relations     |        204 |        2700 |
|            80 | Sales                |        145 |        2500 |
|            90 | Executive            |        100 |        1700 |
|           100 | Finance              |        108 |        1700 |
|           110 | Accounting           |        205 |        1700 |
|           120 | Treasury             |       NULL |        1700 |
|           130 | Corporate Tax        |       NULL |        1700 |
|           140 | Control And Credit   |       NULL |        1700 |
|           150 | Shareholder Services |       NULL |        1700 |
|           160 | Benefits             |       NULL |        1700 |
|           170 | Manufacturing        |       NULL |        1700 |
|           180 | Construction         |       NULL |        1700 |
|           190 | Contracting          |       NULL |        1700 |
|           200 | Operations           |       NULL |        1700 |
|           210 | IT Support           |       NULL |        1700 |
|           220 | NOC                  |       NULL |        1700 |
|           230 | IT Helpdesk          |       NULL |        1700 |
|           240 | Government Sales     |       NULL |        1700 |
|           250 | Retail Sales         |       NULL |        1700 |
|           260 | Recruiting           |       NULL |        1700 |
|           270 | Payroll              |       NULL |        1700 |
+---------------+----------------------+------------+-------------+
27 rows in set (0.00 sec)

mysql> DROP TABLE IF EXISTS `employees`;
Query OK, 0 rows affected, 1 warning (0.02 sec)

mysql> CREATE TABLE `employees` (
    ->   `EMPLOYEE_ID` decimal(6,0) NOT NULL DEFAULT '0',
    ->   `FIRST_NAME` varchar(20) DEFAULT NULL,
    ->   `LAST_NAME` varchar(25) NOT NULL,
    ->   `EMAIL` varchar(25) NOT NULL,
    ->   `PHONE_NUMBER` varchar(20) DEFAULT NULL,
    ->   `HIRE_DATE` date NOT NULL,
    ->   `JOB_ID` varchar(10) NOT NULL,
    ->   `SALARY` decimal(8,2) DEFAULT NULL,
    ->   `COMMISSION_PCT` decimal(2,2) DEFAULT NULL,
    ->   `MANAGER_ID` decimal(6,0) DEFAULT NULL,
    ->   `DEPARTMENT_ID` decimal(4,0) DEFAULT NULL,
    ->   PRIMARY KEY (`EMPLOYEE_ID`),
    ->   UNIQUE KEY `EMP_EMAIL_UK` (`EMAIL`),
    ->   KEY `EMP_DEPARTMENT_IX` (`DEPARTMENT_ID`),
    ->   KEY `EMP_JOB_IX` (`JOB_ID`),
    ->   KEY `EMP_MANAGER_IX` (`MANAGER_ID`),
    ->   KEY `EMP_NAME_IX` (`LAST_NAME`,`FIRST_NAME`),
    ->   FOREIGN KEY (`JOB_ID`) REFERENCES `jobs`(`JOB_ID`),
    ->   FOREIGN KEY (`DEPARTMENT_ID`) REFERENCES `departments`(`DEPARTMENT_ID`)
    -> ) ENGINE=InnoDB DEFAULT CHARSET=latin1;
Query OK, 0 rows affected (0.10 sec)

mysql>
mysql> INSERT INTO `employees` VALUES (100,'Steven','King','SKING','515.123.4567','1987-06-17','AD_PRES',24000.00,0.00,NULL,90),(101,'Neena','Kochhar','NKOCHHAR','515.123.4568','1987-06-18','AD_VP',17000.00,0.00,100,90),(102,'Lex','De Haan','LDEHAAN','515.123.4569','1987-06-19','AD_VP',17000.00,0.00,100,90),(103,'Alexander','Hunold','AHUNOLD','590.423.4567','1987-06-20','IT_PROG',9000.00,0.00,102,60),(104,'Bruce','Ernst','BERNST','590.423.4568','1987-06-21','IT_PROG',6000.00,0.00,103,60),(105,'David','Austin','DAUSTIN','590.423.4569','1987-06-22','IT_PROG',4800.00,0.00,103,60),(106,'Valli','Pataballa','VPATABAL','590.423.4560','1987-06-23','IT_PROG',4800.00,0.00,103,60),(107,'Diana','Lorentz','DLORENTZ','590.423.5567','1987-06-24','IT_PROG',4200.00,0.00,103,60),(108,'Nancy','Greenberg','NGREENBE','515.124.4569','1987-06-25','FI_MGR',12000.00,0.00,101,100),(109,'Daniel','Faviet','DFAVIET','515.124.4169','1987-06-26','FI_ACCOUNT',9000.00,0.00,108,100),(110,'John','Chen','JCHEN','515.124.4269','1987-06-27','FI_ACCOUNT',8200.00,0.00,108,100),(111,'Ismael','Sciarra','ISCIARRA','515.124.4369','1987-06-28','FI_ACCOUNT',7700.00,0.00,108,100),(112,'Jose Manuel','Urman','JMURMAN','515.124.4469','1987-06-29','FI_ACCOUNT',7800.00,0.00,108,100),(113,'Luis','Popp','LPOPP','515.124.4567','1987-06-30','FI_ACCOUNT',6900.00,0.00,108,100),(114,'Den','Raphaely','DRAPHEAL','515.127.4561','1987-07-01','PU_MAN',11000.00,0.00,100,30),(115,'Alexander','Khoo','AKHOO','515.127.4562','1987-07-02','PU_CLERK',3100.00,0.00,114,30),(145,'John','Russell','JRUSSEL','011.44.1344.429268','1987-08-01','SA_MAN',14000.00,0.40,100,80),(146,'Karen','Partners','KPARTNER','011.44.1344.467268','1987-08-02','SA_MAN',13500.00,0.30,100,80),(200,'Jennifer','Whalen','JWHALEN','515.123.4444','1987-09-25','AD_ASST',4400.00,0.00,101,10),(201,'Michael','Hartstein','MHARTSTE','515.123.5555','1987-09-26','MK_MAN',13000.00,0.00,100,20),(202,'Pat','Fay','PFAY','603.123.6666','1987-09-27','MK_REP',6000.00,0.00,201,20),(203,'Susan','Mavris','SMAVRIS','515.123.7777','1987-09-28','HR_REP',6500.00,0.00,101,40),(204,'Hermann','Baer','HBAER','515.123.8888','1987-09-29','PR_REP',10000.00,0.00,101,70),(205,'Shelley','Higgins','SHIGGINS','515.123.8080','1987-09-30','AC_MGR',12000.00,0.00,101,110),(206,'William','Gietz','WGIETZ','515.123.8181','1987-10-01','AC_ACCOUNT',8300.00,0.00,205,110);
Query OK, 25 rows affected (0.01 sec)
Records: 25  Duplicates: 0  Warnings: 0

mysql>
mysql> -- Output check karne ke liye:
mysql> SELECT * FROM employees;
+-------------+-------------+-----------+----------+--------------------+------------+------------+----------+----------------+------------+---------------+
| EMPLOYEE_ID | FIRST_NAME  | LAST_NAME | EMAIL    | PHONE_NUMBER       | HIRE_DATE  | JOB_ID     | SALARY   | COMMISSION_PCT | MANAGER_ID | DEPARTMENT_ID |
+-------------+-------------+-----------+----------+--------------------+------------+------------+----------+----------------+------------+---------------+
|         100 | Steven      | King      | SKING    | 515.123.4567       | 1987-06-17 | AD_PRES    | 24000.00 |           0.00 |       NULL |            90 |
|         101 | Neena       | Kochhar   | NKOCHHAR | 515.123.4568       | 1987-06-18 | AD_VP      | 17000.00 |           0.00 |        100 |            90 |
|         102 | Lex         | De Haan   | LDEHAAN  | 515.123.4569       | 1987-06-19 | AD_VP      | 17000.00 |           0.00 |        100 |            90 |
|         103 | Alexander   | Hunold    | AHUNOLD  | 590.423.4567       | 1987-06-20 | IT_PROG    |  9000.00 |           0.00 |        102 |            60 |
|         104 | Bruce       | Ernst     | BERNST   | 590.423.4568       | 1987-06-21 | IT_PROG    |  6000.00 |           0.00 |        103 |            60 |
|         105 | David       | Austin    | DAUSTIN  | 590.423.4569       | 1987-06-22 | IT_PROG    |  4800.00 |           0.00 |        103 |            60 |
|         106 | Valli       | Pataballa | VPATABAL | 590.423.4560       | 1987-06-23 | IT_PROG    |  4800.00 |           0.00 |        103 |            60 |
|         107 | Diana       | Lorentz   | DLORENTZ | 590.423.5567       | 1987-06-24 | IT_PROG    |  4200.00 |           0.00 |        103 |            60 |
|         108 | Nancy       | Greenberg | NGREENBE | 515.124.4569       | 1987-06-25 | FI_MGR     | 12000.00 |           0.00 |        101 |           100 |
|         109 | Daniel      | Faviet    | DFAVIET  | 515.124.4169       | 1987-06-26 | FI_ACCOUNT |  9000.00 |           0.00 |        108 |           100 |
|         110 | John        | Chen      | JCHEN    | 515.124.4269       | 1987-06-27 | FI_ACCOUNT |  8200.00 |           0.00 |        108 |           100 |
|         111 | Ismael      | Sciarra   | ISCIARRA | 515.124.4369       | 1987-06-28 | FI_ACCOUNT |  7700.00 |           0.00 |        108 |           100 |
|         112 | Jose Manuel | Urman     | JMURMAN  | 515.124.4469       | 1987-06-29 | FI_ACCOUNT |  7800.00 |           0.00 |        108 |           100 |
|         113 | Luis        | Popp      | LPOPP    | 515.124.4567       | 1987-06-30 | FI_ACCOUNT |  6900.00 |           0.00 |        108 |           100 |
|         114 | Den         | Raphaely  | DRAPHEAL | 515.127.4561       | 1987-07-01 | PU_MAN     | 11000.00 |           0.00 |        100 |            30 |
|         115 | Alexander   | Khoo      | AKHOO    | 515.127.4562       | 1987-07-02 | PU_CLERK   |  3100.00 |           0.00 |        114 |            30 |
|         145 | John        | Russell   | JRUSSEL  | 011.44.1344.429268 | 1987-08-01 | SA_MAN     | 14000.00 |           0.40 |        100 |            80 |
|         146 | Karen       | Partners  | KPARTNER | 011.44.1344.467268 | 1987-08-02 | SA_MAN     | 13500.00 |           0.30 |        100 |            80 |
|         200 | Jennifer    | Whalen    | JWHALEN  | 515.123.4444       | 1987-09-25 | AD_ASST    |  4400.00 |           0.00 |        101 |            10 |
|         201 | Michael     | Hartstein | MHARTSTE | 515.123.5555       | 1987-09-26 | MK_MAN     | 13000.00 |           0.00 |        100 |            20 |
|         202 | Pat         | Fay       | PFAY     | 603.123.6666       | 1987-09-27 | MK_REP     |  6000.00 |           0.00 |        201 |            20 |
|         203 | Susan       | Mavris    | SMAVRIS  | 515.123.7777       | 1987-09-28 | HR_REP     |  6500.00 |           0.00 |        101 |            40 |
|         204 | Hermann     | Baer      | HBAER    | 515.123.8888       | 1987-09-29 | PR_REP     | 10000.00 |           0.00 |        101 |            70 |
|         205 | Shelley     | Higgins   | SHIGGINS | 515.123.8080       | 1987-09-30 | AC_MGR     | 12000.00 |           0.00 |        101 |           110 |
|         206 | William     | Gietz     | WGIETZ   | 515.123.8181       | 1987-10-01 | AC_ACCOUNT |  8300.00 |           0.00 |        205 |           110 |
+-------------+-------------+-----------+----------+--------------------+------------+------------+----------+----------------+------------+---------------+
25 rows in set (0.00 sec)

mysql> DROP TABLE IF EXISTS `job_history`;
Query OK, 0 rows affected, 1 warning (0.03 sec)

mysql> CREATE TABLE `job_history` (
    ->   `EMPLOYEE_ID` decimal(6,0) NOT NULL,
    ->   `START_DATE` date NOT NULL,
    ->   `END_DATE` date NOT NULL,
    ->   `JOB_ID` varchar(10) NOT NULL,
    ->   `DEPARTMENT_ID` decimal(4,0) DEFAULT NULL,
    ->   PRIMARY KEY (`EMPLOYEE_ID`,`START_DATE`),
    ->   KEY `JHIST_DEPARTMENT_IX` (`DEPARTMENT_ID`),
    ->   KEY `JHIST_EMPLOYEE_IX` (`EMPLOYEE_ID`),
    ->   KEY `JHIST_JOB_IX` (`JOB_ID`),
    ->   FOREIGN KEY (`EMPLOYEE_ID`) REFERENCES `employees`(`EMPLOYEE_ID`),
    ->   FOREIGN KEY (`JOB_ID`) REFERENCES `jobs`(`JOB_ID`),
    ->   FOREIGN KEY (`DEPARTMENT_ID`) REFERENCES `departments`(`DEPARTMENT_ID`)
    -> ) ENGINE=InnoDB DEFAULT CHARSET=latin1;
Query OK, 0 rows affected (0.07 sec)

mysql>
mysql> INSERT INTO `job_history` VALUES (102,'1993-01-13','1998-07-24','IT_PROG',60),(101,'1989-09-21','1993-10-27','AC_ACCOUNT',110),(101,'1993-10-28','1997-03-15','AC_MGR',110),(201,'1996-02-17','1999-12-19','MK_REP',20),(114,'1998-03-24','1999-12-31','ST_CLERK',50),(122,'1999-01-01','1999-12-31','ST_CLERK',50),(200,'1987-09-17','1993-06-17','AD_ASST',90),(176,'1998-03-24','1998-12-31','SA_REP',80),(176,'1999-01-01','1999-12-31','SA_MAN',80),(200,'1994-07-01','1998-12-31','AC_ACCOUNT',90);
Query OK, 10 rows affected (0.01 sec)
Records: 10  Duplicates: 0  Warnings: 0

mysql>
mysql> -- Output check karne ke liye:
mysql> SELECT * FROM job_history;
+-------------+------------+------------+------------+---------------+
| EMPLOYEE_ID | START_DATE | END_DATE   | JOB_ID     | DEPARTMENT_ID |
+-------------+------------+------------+------------+---------------+
|         101 | 1989-09-21 | 1993-10-27 | AC_ACCOUNT |           110 |
|         101 | 1993-10-28 | 1997-03-15 | AC_MGR     |           110 |
|         102 | 1993-01-13 | 1998-07-24 | IT_PROG    |            60 |
|         114 | 1998-03-24 | 1999-12-31 | ST_CLERK   |            50 |
|         122 | 1999-01-01 | 1999-12-31 | ST_CLERK   |            50 |
|         176 | 1998-03-24 | 1998-12-31 | SA_REP     |            80 |
|         176 | 1999-01-01 | 1999-12-31 | SA_MAN     |            80 |
|         200 | 1987-09-17 | 1993-06-17 | AD_ASST    |            90 |
|         200 | 1994-07-01 | 1998-12-31 | AC_ACCOUNT |            90 |
|         201 | 1996-02-17 | 1999-12-19 | MK_REP     |            20 |
+-------------+------------+------------+------------+---------------+
10 rows in set (0.00 sec)

mysql>
mysql> SET FOREIGN_KEY_CHECKS = 1;
Query OK, 0 rows affected (0.00 sec)

mysql>










