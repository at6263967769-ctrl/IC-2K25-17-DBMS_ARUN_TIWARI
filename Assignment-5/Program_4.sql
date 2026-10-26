mysql> -- Q4. Write a query to find the name (first_name, last_name) of the employees who are managers
mysql> SELECT DISTINCT MANAGER_ID
    -> FROM employees
    -> WHERE MANAGER_ID IS NOT NULL;
+------------+
| MANAGER_ID |
+------------+
|        100 |
|        101 |
|        102 |
|        103 |
|        108 |
|        114 |
|        201 |
|        205 |
+------------+
8 rows in set (0.02 sec)

mysql> SELECT DISTINCT MANAGER_ID
    -> FROM employees
    -> WHERE MANAGER_ID IS NOT NULL;
+------------+
| MANAGER_ID |
+------------+
|        100 |
|        101 |
|        102 |
|        103 |
|        108 |
|        114 |
|        201 |
|        205 |
+------------+
8 rows in set (0.00 sec)

mysql> SELECT FIRST_NAME, LAST_NAME
    -> FROM employees
    -> WHERE EMPLOYEE_ID IN (
    ->     SELECT DISTINCT MANAGER_ID
    ->     FROM employees
    ->     WHERE MANAGER_ID IS NOT NULL
    -> );
+------------+-----------+
| FIRST_NAME | LAST_NAME |
+------------+-----------+
| Steven     | King      |
| Neena      | Kochhar   |
| Lex        | De Haan   |
| Alexander  | Hunold    |
| Nancy      | Greenberg |
| Den        | Raphaely  |
| Michael    | Hartstein |
| Shelley    | Higgins   |
+------------+-----------+
8 rows in set (0.02 sec)

mysql>
