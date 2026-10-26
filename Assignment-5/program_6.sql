mysql> -- Q6. Write a query to find the name (first_name, last_name), and salary of the employees whose salary is equal to the minimum salary for their job grade.
mysql> SELECT job_id, job_title, min_salary FROM jobs;
+------------+---------------------------------+------------+
| job_id     | job_title                       | min_salary |
+------------+---------------------------------+------------+
| AC_ACCOUNT | Public Accountant               |       4200 |
| AC_MGR     | Accounting Manager              |       8200 |
| AD_ASST    | Administration Assistant        |       3000 |
| AD_PRES    | President                       |      20000 |
| AD_VP      | Administration Vice President   |      15000 |
| FI_ACCOUNT | Accountant                      |       4200 |
| FI_MGR     | Finance Manager                 |       8200 |
| HR_REP     | Human Resources Representative  |       4000 |
| IT_PROG    | Programmer                      |       4000 |
| MK_MAN     | Marketing Manager               |       9000 |
| MK_REP     | Marketing Representative        |       4000 |
| PR_REP     | Public Relations Representative |       4500 |
| PU_CLERK   | Purchasing Clerk                |       2500 |
| PU_MAN     | Purchasing Manager              |       8000 |
| SA_MAN     | Sales Manager                   |      10000 |
| SA_REP     | Sales Representative            |       6000 |
| SH_CLERK   | Shipping Clerk                  |       2500 |
| ST_CLERK   | Stock Clerk                     |       2000 |
| ST_MAN     | Stock Manager                   |       5500 |
+------------+---------------------------------+------------+
19 rows in set (0.06 sec)

mysql> SELECT first_name, last_name, salary FROM employees WHERE salary = (SELECT min_salary FROM jobs WHERE jobs.job_id = employees.job_id);
Empty set (0.02 sec)

mysql> SELECT e.first_name, e.last_name, e.job_id, e.salary, j.min_salary
    -> FROM employees e
    -> JOIN jobs j
    -> ON e.job_id = j.job_id;
+-------------+-----------+------------+----------+------------+
| first_name  | last_name | job_id     | salary   | min_salary |
+-------------+-----------+------------+----------+------------+
| Steven      | King      | AD_PRES    | 24000.00 |      20000 |
| Neena       | Kochhar   | AD_VP      | 17000.00 |      15000 |
| Lex         | De Haan   | AD_VP      | 17000.00 |      15000 |
| Alexander   | Hunold    | IT_PROG    |  9000.00 |       4000 |
| Bruce       | Ernst     | IT_PROG    |  6000.00 |       4000 |
| David       | Austin    | IT_PROG    |  4800.00 |       4000 |
| Valli       | Pataballa | IT_PROG    |  4800.00 |       4000 |
| Diana       | Lorentz   | IT_PROG    |  4200.00 |       4000 |
| Nancy       | Greenberg | FI_MGR     | 12000.00 |       8200 |
| Daniel      | Faviet    | FI_ACCOUNT |  9000.00 |       4200 |
| John        | Chen      | FI_ACCOUNT |  8200.00 |       4200 |
| Ismael      | Sciarra   | FI_ACCOUNT |  7700.00 |       4200 |
| Jose Manuel | Urman     | FI_ACCOUNT |  7800.00 |       4200 |
| Luis        | Popp      | FI_ACCOUNT |  6900.00 |       4200 |
| Den         | Raphaely  | PU_MAN     | 11000.00 |       8000 |
| Alexander   | Khoo      | PU_CLERK   |  3100.00 |       2500 |
| John        | Russell   | SA_MAN     | 14000.00 |      10000 |
| Karen       | Partners  | SA_MAN     | 13500.00 |      10000 |
| Jennifer    | Whalen    | AD_ASST    |  4400.00 |       3000 |
| Michael     | Hartstein | MK_MAN     | 13000.00 |       9000 |
| Pat         | Fay       | MK_REP     |  6000.00 |       4000 |
| Susan       | Mavris    | HR_REP     |  6500.00 |       4000 |
| Hermann     | Baer      | PR_REP     | 10000.00 |       4500 |
| Shelley     | Higgins   | AC_MGR     | 12000.00 |       8200 |
| William     | Gietz     | AC_ACCOUNT |  8300.00 |       4200 |
+-------------+-----------+------------+----------+------------+
25 rows in set (0.00 sec)

mysql> SELECT e.first_name, e.last_name, e.salary
    -> FROM employees e
    -> JOIN jobs j
    -> ON e.job_id = j.job_id
    -> WHERE e.salary = j.min_salary;
Empty set (0.00 sec)

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

mysql> -- final
mysql> SELECT first_name, last_name, salary
    -> FROM employees
    -> WHERE salary = (
    ->     SELECT min_salary
    ->     FROM jobs
    ->     WHERE jobs.job_id = employees.job_id
    -> );
Empty set (0.00 sec )
