mysql> -- Q17. Write a query to find the 4th minimum salary in the employees table.
mysql> SELECT DISTINCT salary
    -> FROM employees
    -> ORDER BY salary ASC
    -> LIMIT 1 OFFSET 3;
+---------+
| salary  |
+---------+
| 4800.00 |
+---------+
1 row in set (0.00 sec)
