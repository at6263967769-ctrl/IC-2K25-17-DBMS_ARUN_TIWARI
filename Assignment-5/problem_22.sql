mysql> -- Q22. Write a query to get nth max salaries of employees.
mysql> SELECT DISTINCT salary FROM employees ORDER BY salary DESC LIMIT 1 OFFSET N-1;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '-1' at line 1
mysql> SELECT DISTINCT salary FROM employees ORDER BY salary DESC LIMIT 1 OFFSET 4;
+----------+
| salary   |
+----------+
| 13000.00 |
+----------+
1 row in set (0.00 sec)

mysql>
