# Database Management Systems (DBMS) Lab

### **IC-2K25-17 | Arun Tiwari**

Welcome to the **DBMS Lab Coursework Repository** for **IC-2K25 (Batch 2025, Roll No. 17)**. This repository contains all practical database assignments, SQL scripts, terminal execution outputs, and online lab work created using **MySQL**.

---

## 👨‍🎓 Student Details

| Attribute | Details |
| :--- | :--- |
| **Name** | Arun Tiwari |
| **Roll Number** | IC-2K25-17 |
| **Course** | Integrated MCA / Computer Science (IC-2K25-17) |
| **Subject** | Database Management Systems (DBMS) Lab |
| **Database Engine** | MySQL Server 8.0+ |
| **GitHub Profile** | [@at6263967769-ctrl](https://github.com/at6263967769-ctrl) |

---

## 📂 Repository Structure

```text
IC-2K25-17-DBMS_ARUN_TIWARI/
├── Assignment-1/
│   ├── lab1que1.sql
│   ├── lab1que2.sql
│   ├── ...
│   └── lab1que18.sql
│
├── Assignment-2/
│   ├── que1.sql
│   ├── que2.sql
│   ├── que3.sql
│   ├── que4.sql
│   └── que_5_to_que19.sql
│
├── Assignment-3/
│   ├── Q1_to_Q5.sql
│   └── Q6-to-Q11.sql
│
├── Assignment-4/
│   ├── Q1.sql
│   ├── Q2-to-Q4.sql
│   ├── Q5 to Q6.sql
│   ├── Q7 to Q8.sql
│   └── Q9 to Q10.sql
│
├── Assignment-5/
│   ├── Problem_1.sql
│   ├── Problem_2.sql
│   ├── Program_3.sql
│   ├── Program_4.sql
│   ├── program_5.sql ... program_10.sql
│   └── problem_10.sql ... problem_22.sql
│
├── online_lab_work/
│   ├── constraints.dbms.sql
│   ├── Lab_6_online25dt_table_createbypdb.mysql.sql
│   ├── Lab_work_5_oct.sql
│   ├── lab7_31_sep_labwork_dbms.sql
│   ├── lab8_1sep_onlineclass_dbms.sql
│   ├── lab_1_2_3 work.mysgl.sql
│   ├── lab_1_dbms_mysql.sql
│   ├── lab_2_Create_table_mysql.sql
│   ├── lab_4_online_work_human_HR_data.mysql.sql
│   ├── lab_5(24)_work.mysql.sql
│   ├── lab_9_online(15sep)work.sql
│   ├── online_lab_work.sql
│   └── online_lab_work2.sql
│
└── README.md
```

---

## 📑 Assignments Overview

### 🔹 [Assignment-1](./Assignment-1) - Basic DDL & DML Operations
- **Files**: `lab1que1.sql` to `lab1que18.sql` (18 Files)
- **Topics Covered**:
  - Creating and dropping databases (`arundbms`, `at`, `jobdbms`).
  - Table creation with basic column data types (`VARCHAR`, `DECIMAL`, `INT`, `DATE`).
  - Specifying `PRIMARY KEY` and `CHECK` constraints on table creation.
  - Basic data insertion (`INSERT INTO`) and querying (`SELECT *`).
  - Duplicating table structure and data (`dup_countries`, `jobs`, `job_history`).

### 🔹 [Assignment-2](./Assignment-2) - Table Constraints & Employee Schema
- **Files**: `que1.sql` to `que_5_to_que19.sql` (5 Files)
- **Topics Covered**:
  - Building Employee and Department relational structures.
  - Adding and modifying constraints using `ALTER TABLE`.
  - Enforcing `NOT NULL`, `UNIQUE`, `PRIMARY KEY`, and `FOREIGN KEY` constraints.
  - Testing integrity violations and verifying constraint behavior.

### 🔹 [Assignment-3](./Assignment-3) - Data Query Language (DQL) & Filtering
- **Files**: `Q1_to_Q5.sql`, `Q6-to-Q11.sql` (2 Files)
- **Topics Covered**:
  - Conditional retrieval using `WHERE`, `AND`, `OR`, `IN`, `BETWEEN`.
  - Pattern matching using `LIKE` and wildcard operators (`%`, `_`).
  - Sorting query results using `ORDER BY` (ASC/DESC).
  - Aggregate functions (`COUNT`, `SUM`, `AVG`, `MIN`, `MAX`).

### 🔹 [Assignment-4](./Assignment-4) - Joins & Grouping
- **Files**: `Q1.sql` to `Q9 to Q10.sql` (5 Files)
- **Topics Covered**:
  - Grouping records using `GROUP BY` and filtering groups with `HAVING`.
  - Multi-table relationships and queries.
  - `INNER JOIN`, `LEFT OUTER JOIN`, `RIGHT OUTER JOIN`, and `CROSS JOIN`.
  - Self Joins (e.g., finding employees and their managers).

### 🔹 [Assignment-5](./Assignment-5) - Subqueries & Nested Queries
- **Files**: `Problem_1.sql` to `problem_22.sql` (23 Files)
- **Topics Covered**:
  - Single-row and multi-row subqueries.
  - Correlated subqueries and subqueries with `IN`, `ANY`, `ALL`, `EXISTS`.
  - Employee HR analytics (department-wise salary comparisons, above-average earners, manager hierarchies).
  - Terminal logs and query validation on the HR database schema.

### 🔹 [online_lab_work](./online_lab_work) - Live Lab Sessions & Theory Notes
- **Files**: 13 SQL scripts (including notes and terminal logs)
- **Topics Covered**:
  - Comprehensive reference notes on SQL Constraints (`PRIMARY KEY`, `FOREIGN KEY`, `CHECK`, `DEFAULT`, `INDEX`).
  - Live lecture exercises and classroom practice sets.
  - `pdb` and `human_HR_data` database creation and testing.

---

## 🛠️ Concepts & Technologies

- **Database Engine**: MySQL 8.0+
- **Languages**: SQL (Structured Query Language)
- **Core Concepts**:
  - **DDL**: `CREATE`, `ALTER`, `DROP`, `TRUNCATE`, `RENAME`
  - **DML**: `INSERT`, `UPDATE`, `DELETE`
  - **DQL**: `SELECT`, `WHERE`, `ORDER BY`, `GROUP BY`, `HAVING`
  - **Constraints**: `PRIMARY KEY`, `FOREIGN KEY`, `UNIQUE`, `NOT NULL`, `CHECK`, `DEFAULT`
  - **Joins**: Inner, Left, Right, Full, Self Join
  - **Subqueries**: Scalar, Multi-row, Correlated, Common Table Expressions

---

## 🚀 How to Run the Scripts

### Method 1: MySQL Command-Line Client
1. Open your terminal or MySQL command line client:
   ```bash
   mysql -u root -p
   ```
2. Run any `.sql` file using the `source` command:
   ```sql
   source /path/to/IC-2K25-17-DBMS_ARUN_TIWARI/Assignment-1/lab1que1.sql;
   ```

### Method 2: Command Line Redirection
```bash
mysql -u root -p arundbms < Assignment-1/lab1que1.sql
```

### Method 3: MySQL Workbench
1. Open MySQL Workbench and connect to your local MySQL instance.
2. Go to **File** > **Open SQL Script...** (or press `Ctrl + O`).
3. Select any `.sql` file and click the Execute (⚡) button.

---

## 👤 Author

**Arun Tiwari**  
- **GitHub**: [@at6263967769-ctrl](https://github.com/at6263967769-ctrl)  
- **Batch**: IC-2K25 (Roll No: 17)
