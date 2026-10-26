mysql> -- Q16. Write a query to find the 5th maximum salary in the employees table.
mysql> SELECT DISTINCT salary FROM employees ORDER BY salary DESC LIMIT 1 OFFSET 4;
+----------+
| salary   |
+----------+
| 13000.00 |
+----------+
1 row in set (0.02 sec)
