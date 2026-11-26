# My-Sql-Assignment-1
Employee Database Management System using MySQL
Project Overview
This project demonstrates the creation and management of an Employee Database using MySQL. It covers fundamental SQL concepts, including database creation, table creation, primary and foreign keys, data insertion, data retrieval, table alteration, and database management operations.

The script creates employee-related tables to organize employee details, department information, and work locations. It also demonstrates how SQL constraints and relationships can be used to maintain structured data.
Project Objectives
- Create and manage databases using MySQL.
- Design tables to store employee, department, and location details.
- Apply primary key, foreign key, AUTO_INCREMENT, UNIQUE, NOT NULL, ENUM, and CHECK constraints.
- Insert sample records into tables.
- Retrieve and inspect data using SELECT statements.
- Modify table structures using ALTER TABLE.
- Rename tables and columns.
- Understand the purpose of TRUNCATE and DROP commands.
Database Structure
The script contains two database sections:
1. employee_db
2. employee
The intended database structure consists of the following tables:
Table	Purpose
employees	Stores employee details such as name, gender, age, joining date, designation, salary, department ID, and location ID.
departments / department_info	Stores department names and their department IDs.
location / locations	Stores location names and their location IDs.


The employee table uses foreign keys to connect employees with their departments and locations.
SQL Concepts Covered
1. Database Management
- CREATE DATABASE creates a database.
- DROP DATABASE IF EXISTS removes a database if it exists.
- USE selects the database for subsequent SQL statements.
- SELECT DATABASE() displays the currently selected database.
2. Table Creation and Constraints
The script creates department, location, and employee tables.

The constraints demonstrated include:
- PRIMARY KEY: Uniquely identifies each record.
- AUTO_INCREMENT: Automatically generates numeric ID values.
- FOREIGN KEY: Establishes relationships between the employee table and the department and location tables.
- ENUM: Restricts gender values to the options specified in the column definition.
- CHECK: Applies a condition to values, such as an age limit.
- UNIQUE: Prevents duplicate values in a column.
- NOT NULL: Requires a value to be provided.
- DEFAULT: Defines a default value for a column.
3. Data Insertion
The INSERT INTO statements add sample records to the department, location, and employee tables.

The sample data includes employee names, gender, age, hire date, designation, salary, department ID, and location ID.
4. Data Retrieval
The script uses:
- SELECT * FROM departments;
- SELECT * FROM location;
- SELECT * FROM employees;
- DESC employees;
These statements display table records and describe table structures.
5. Alter Table Operations
The script demonstrates how to modify an existing table:
- Add an email column.
- Drop the age column.
- Modify the designation column's data type length.
- Rename hire_date to date_of_joining.
- Rename the departments and location tables.
6. Table and Database Removal
The script demonstrates:
- TRUNCATE TABLE to remove all records from a table while retaining its structure.
- DROP TABLE to remove a table.
- DROP DATABASE to remove a database.
Warning: TRUNCATE and DROP are destructive operations. Run them only when you intend to remove the relevant data or database. The uploaded script includes database and table deletion commands, so review the script before running it.
Sample Data
The SQL file inserts four sample employee records with different designations, salaries, departments, and locations.

The department examples are Marketing, Sales, Finance, and Tele Calling. The location examples are Chennai, Kochin, Pandicherry, and Mumbai.
Tools and Technologies
- Database: MySQL
- Language: SQL
- Environment: MySQL-compatible SQL editor or client
Important Corrections Before Execution
The uploaded SQL file contains a few inconsistencies in its second database section. Review these before running the script:
1. The table is created as deprtments (a spelling mistake), but later statements refer to departments. Use one consistent table name, preferably departments.
2. The employee table's foreign key references departments(department_id). Therefore, the referenced table must exist with that exact name before the employee table is created.
3. The second section inserts department records but does not insert records into the location table before inserting employees. Add the location records first so the location foreign keys can be satisfied.
4. Check the default date expression in hire_date. The uploaded expression default (current date) is not valid MySQL syntax. Use a MySQL-supported default expression, such as DEFAULT (CURRENT_DATE), if supported by your MySQL version.
5. The script drops databases and tables. Execute it in a test environment and review the deletion statements before running them.
Conclusion
This project provides practical experience with fundamental MySQL database operations and employee data management. It demonstrates how to create relational tables, define constraints, establish relationships, insert and retrieve records, and modify database structures.

By completing this assignment, I gained a better understanding of SQL syntax, relational database design, data integrity, and database management commands.
