
Create Constraints
Constraints are rules for data in a table.
Constraints are used to prevent insertion of invalid data in a table, and ensures the accuracy and reliability of the data in the table. If there is any violation between the constraint and the data action, the action is aborted.
Constraints can be specified in two ways:
•	When a table is created (through the CREATE TABLE statement)
•	After a table is created (through the ALTER TABLE statement)
________________________________________
MySQL Constraints
The following constraints are commonly used in MySQL:
•	NOT NULL - Ensures that a column cannot have a NULL value
•	UNIQUE - Ensures that all values in a column are unique
•	PRIMARY KEY - Uniquely identifies each row in a table (a combination of a NOT NULL and UNIQUE)
•	FOREIGN KEY - Establishes a link between data in two tables, and prevents action that will destroy the link between them
•	CHECK - Ensures that the values in a column satisfies a specific condition
•	DEFAULT - Sets a default value for a column if no value is specified
•	CREATE INDEX - Creates indexes on columns to retrieve data from the database faster
________________________________________
MySQL NOT NULL Constraint
The NOT NULL constraint enforces a column to NOT accept NULL values. This enforces a field to always contain a value, which means that you cannot insert a new record, or update a record without adding a value to this field.
By default, a column can hold NULL values.
________________________________________
NOT NULL on CREATE TABLE
To define a NOT NULL constraint when creating a table, add NOT NULL after the data type of the column name.
The following SQL creates a "Persons" table, and ensures that the "ID", "LastName", and "FirstName" columns cannot accept NULL values:
ExampleGet your own SQL Server
CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255) NOT NULL,
    Age int
);
________________________________________
NOT NULL on ALTER TABLE
To define a NOT NULL constraint on an existing table, use ALTER TABLE and add NOT NULL after the data type of the column name.
The following SQL adds a NOT NULL constraint on the "Age" column, after the "Persons" table is already created:
ALTER TABLE Persons
MODIFY Age int NOT NULL;
________________________________________
Remove a NOT NULL Constraint
To remove a NOT NULL constraint from a column (to let the column accept NULL values again), use the following syntax:
ALTER TABLE Persons
MODIFY Age int NULL;
MySQL UNIQUE Constraint
The UNIQUE constraint ensures that all values in a column are unique.
Both the UNIQUE and PRIMARY KEY constraints provide a guarantee for uniqueness for a column or set of columns. However, you can have many UNIQUE constraints per table, but only one PRIMARY KEY constraint per table.
________________________________________
UNIQUE Constraint on CREATE TABLE
The following SQL defines a UNIQUE constraint for the "ID" column upon creation of the "Persons" table:
CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    UNIQUE (ID)
);
Naming a Unique Constraint
To name a UNIQUE constraint, and to define a UNIQUE constraint on multiple columns, use the following SQL syntax:
CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    CONSTRAINT UC_Person UNIQUE (ID,LastName)
);
________________________________________
REMOVE ADS
________________________________________
UNIQUE Constraint on ALTER TABLE
To create a UNIQUE constraint on the "ID" column when the table is already created, use the following SQL syntax:
ALTER TABLE Persons
ADD UNIQUE (ID);
Naming a Unique Constraint
To name a UNIQUE constraint, and to define a UNIQUE constraint on multiple columns, use the following SQL syntax:
ALTER TABLE Persons
ADD CONSTRAINT UC_Person UNIQUE (ID,LastName);
________________________________________
Drop a UNIQUE Constraint
To drop a UNIQUE constraint, use the following SQL:
ALTER TABLE Persons
DROP INDEX UC_Person;
MySQL PRIMARY KEY Constraint
The PRIMARY KEY constraint uniquely identifies each record in a database table.
A PRIMARY KEY constraint ensures unique values, and cannot contain NULL values (it is a combination of both a UNIQUE constraint and a NOT NULL constraint).
A table can have only ONE PRIMARY KEY constraint. The primary key can either be a single column, or a combination of columns.
Tip: The primary key is the target for FOREIGN KEY constraints in other tables (which enforces referential integrity between data in two tables).
________________________________________
PRIMARY KEY on CREATE TABLE
The following SQL creates a PRIMARY KEY on the "ID" column upon creation of the "Persons" table:
CREATE TABLE Persons (
    ID int PRIMARY KEY,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int
);
PRIMARY KEY on Multiple Columns
To define an un-named PRIMARY KEY constraint on multiple columns, use the following SQL syntax:
CREATE TABLE Persons (
    ID int,
    LastName varchar(255),
    FirstName varchar(255),
    Age int,
    PRIMARY KEY (ID, LastName)
);
Note: In the example above, the PRIMARY KEY value is made up of two columns (ID + LastName).
To define a named PRIMARY KEY constraint on multiple columns, use the following SQL syntax:
CREATE TABLE Persons (
    ID int,
    LastName varchar(255),
    FirstName varchar(255),
    Age int,
    CONSTRAINT PK_Person PRIMARY KEY (ID, LastName)
);
Note: In the example above, the PRIMARY KEY is named "PK_Person", and the value is made up of two columns (ID + LastName).
PRIMARY KEY on ALTER TABLE
To create a PRIMARY KEY constraint on the "ID" column when the table already has been created, use the following SQL:
ALTER TABLE Persons
ADD PRIMARY KEY (ID);
PRIMARY KEY on Multiple Columns
To define a named PRIMARY KEY constraint on multiple columns, use the following SQL syntax:
ALTER TABLE Persons
ADD CONSTRAINT PK_Person PRIMARY KEY (ID, LastName);
Note: When using ALTER TABLE to add a primary key, the primary key column(s) must have been declared with NOT NULL upon creation of the table.
________________________________________
Drop a PRIMARY KEY Constraint
To drop a PRIMARY KEY constraint, use the following SQL:
ALTER TABLE Persons
DROP PRIMARY KEY;

MySQL FOREIGN KEY Constraint
The FOREIGN KEY constraint establishes a link between two tables, and prevents action that will destroy the link between them.
A FOREIGN KEY is a column in a table that refers to the PRIMARY KEY in another table.
The table with the foreign key column is called the child table, and the table with the primary key column is called the referenced or parent table.
The FOREIGN KEY constraint prevents invalid data from being inserted into the foreign key column (in the child table), because the value has to exist in the parent table.
The FOREIGN KEY constraint also prevents you from deleting a record in the parent table, if related rows still exist in the child table. 
Assume we have two tables:
Persons Table
PersonID	LastName	FirstName	Age
1	Hansen	Ola	30
2	Svendson	Tove	23
Orders Table
OrderID	OrderNumber	PersonID
3	22456	2
4	24562	1
Here we see that the "PersonID" column in the "Orders" table points to the "PersonID" column in the "Persons" table.
The "PersonID" column in the "Persons" table is the PRIMARY KEY in the "Persons" table.
The "PersonID" column in the "Orders" table is the FOREIGN KEY in the "Orders" table.
FOREIGN KEY on CREATE TABLE
The following SQL creates a FOREIGN KEY constraint on the "PersonID" column upon creation of the "Orders" table:
CREATE TABLE Orders (
    OrderID int PRIMARY KEY,
    OrderNumber int NOT NULL,
    PersonID int,
    CONSTRAINT fk_Person
    FOREIGN KEY (PersonID)
    REFERENCES Persons(PersonID)
);
________________________________________
FOREIGN KEY on ALTER TABLE
To create a FOREIGN KEY constraint on the "PersonID" column after the "Orders" table is created, use the following SQL:
ALTER TABLE Orders
ADD CONSTRAINT fk_Person
FOREIGN KEY (PersonID)
REFERENCES Persons(PersonID);
________________________________________
Drop a FOREIGN KEY Constraint
To drop a FOREIGN KEY constraint, use the following SQL:
ALTER TABLE Orders
DROP FOREIGN KEY fk_Person;
MySQL CHECK Constraint
The CHECK constraint is used to ensure that the values in a column satisfies a specific condition.
The CHECK constraint evaluates the data to TRUE or FALSE. If the data evaluates to TRUE, the operation is ok. If the data evaluates to FALSE, the entire INSERT or UPDATE operation is aborted, and an error is raised.
________________________________________
CHECK Constraint on CREATE TABLE
The following SQL creates a CHECK constraint on the "Age" column upon creation of the "Persons" table.
Here, the CHECK constraint ensures that the "Age" column must have a value of 18, or above:
CREATE TABLE Persons (
    ID int PRIMARY KEY,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int CHECK (Age >= 18)
);
Naming a CHECK Constraint
To name a CHECK constraint, or to define a CHECK constraint on multiple columns, use the following SQL syntax:
CREATE TABLE Persons (
    ID int PRIMARY KEY,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    City varchar(255),
    CONSTRAINT chk_PersonAge CHECK (Age >= 18 AND City = 'Sandnes')
);
CHECK Constraint on ALTER TABLE
To create a CHECK constraint on the "Age" column when the table is already created, use the following SQL:
ALTER TABLE Persons
ADD CHECK (Age >= 18);
Naming a CHECK Constraint
To name a CHECK constraint, and to define a CHECK constraint on multiple columns, use the following SQL syntax:
ALTER TABLE Persons
ADD CONSTRAINT chk_PersonAge CHECK (Age >= 18 AND City = 'Sandnes');
________________________________________
Drop a CHECK Constraint
To drop a CHECK constraint, use the following SQL:
ALTER TABLE Persons
DROP CHECK chk_PersonAge;
MySQL DEFAULT Constraint
The DEFAULT constraint is used to automatically insert a default value for a column, if no value is specified.
The default value will be added to all new records (if no other value is specified).
________________________________________
DEFAULT Constraint on CREATE TABLE
The following SQL sets a DEFAULT value for the "City" column upon creation of the "Persons" table:
CREATE TABLE Persons (
    ID int PRIMARY KEY,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    City varchar(255) DEFAULT 'Sandnes'
);
The DEFAULT constraint can also be used to insert system values, by using functions like CURRENT_DATE() to insert the current date:
CREATE TABLE Orders (
    ID int PRIMARY KEY,
    OrderNumber int NOT NULL,
    OrderDate date DEFAULT CURRENT_DATE()
);
________________________________________
DEFAULT Constraint on ALTER TABLE
To define a DEFAULT constraint on the "City" column when the table is already created, use the following SQL:
ALTER TABLE Persons
ALTER City SET DEFAULT 'Sandnes';
________________________________________
DROP a DEFAULT Constraint
To drop a DEFAULT constraint, use the following SQL:
ALTER TABLE Persons
ALTER City DROP DEFAULT;
MySQL CREATE INDEX Statement
The CREATE INDEX statement is used to create indexes on tables in databases, to speed up data retrieval.
The users cannot see the indexes, they are just used to speed up searches/queries.
Note: Updating tables with indexes are more time-consuming than tables without indexes (because the indexes must also be updated). So, only create indexes on columns that are frequently searched against.
________________________________________
Types of Indexes: Non-unique and Unique
There are two types of indexes:
•	CREATE INDEX - Creates a non-unique index (duplicate values are allowed)
•	CREATE UNIQUE INDEX - Creates a unique index (duplicate values are not allowed)
CREATE INDEX Syntax
CREATE INDEX index_name
ON table_name (column1, column2, ...);
CREATE UNIQUE INDEX Syntax
CREATE UNIQUE INDEX index_name
ON table_name (column1, column2, ...);
MySQL CREATE INDEX Example
The following SQL creates a non-unique index named "idx_lastname" on the "LastName" column in the "Persons" table:
CREATE INDEX idx_lastname
ON Persons (LastName);
If you want to create an index on a combination of columns, you can list the column names within the parentheses, separated by commas:
CREATE INDEX idx_lname_fname
ON Persons (LastName, FirstName);
________________________________________
DROP INDEX Statement
The DROP INDEX statement is used to delete an index in a table.
ALTER TABLE table_name
DROP INDEX index_name;

