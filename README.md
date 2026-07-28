# 🗄️ SQL Learning Journey

> A structured collection of SQL concepts, queries, and hands-on practice built while learning SQL from beginner to intermediate level.

![SQL](https://img.shields.io/badge/SQL-PostgreSQL-blue?style=for-the-badge&logo=postgresql)
![Status](https://img.shields.io/badge/Status-Active-success?style=for-the-badge)
![License](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)

---

## 📖 About

This repository documents my SQL learning journey through practical examples, exercises, and database operations. It covers fundamental to intermediate SQL concepts using PostgreSQL and focuses on writing efficient queries for real-world data analysis.

The repository is designed for:

- 📚 Students learning SQL
- 📊 Data Analyst Aspirants
- 🤖 Data Science Beginners
- 💼 Interview Preparation
- 🛠️ Hands-on SQL Practice

---

## 🚀 Topics Covered

### 📌 Database Basics
- Creating Databases
- Creating Tables
- Data Types
- Constraints
- Primary Key
- Foreign Key

### 📌 Data Manipulation Language (DML)
- INSERT
- UPDATE
- DELETE

### 📌 Data Query Language (DQL)
- SELECT
- DISTINCT
- WHERE
- ORDER BY
- LIMIT
- OFFSET

### 📌 Filtering Records
- AND
- OR
- NOT
- BETWEEN
- IN
- LIKE
- IS NULL

### 📌 Aggregate Functions
- COUNT()
- SUM()
- AVG()
- MIN()
- MAX()

### 📌 Grouping
- GROUP BY
- HAVING

### 📌 Joins
- INNER JOIN
- LEFT JOIN
- RIGHT JOIN
- FULL JOIN
- SELF JOIN
- CROSS JOIN

### 📌 SQL Functions
- String Functions
- Numeric Functions
- Date Functions

### 📌 Operators
- Arithmetic Operators
- Comparison Operators
- Logical Operators

### 📌 Advanced SQL
- Subqueries
- Aliases
- CASE Statement
- Views
- Common Table Expressions (CTEs)

---


---

## 🛠️ Technologies Used

- PostgreSQL
- pgAdmin 4
- SQL

---

## 💻 Sample Queries

### Find Annual Salary

```sql
SELECT
    first_name,
    last_name,
    salary,
    salary * 12 AS annual_salary
FROM employee;
```

### Calculate Salary After 5% Increment

```sql
SELECT
    first_name,
    salary,
    salary * 1.05 AS new_salary
FROM employee;
```

### Find Average Salary Department Wise

```sql
SELECT
    department,
    AVG(salary)
FROM employee
GROUP BY department;
```

---

## 🎯 Learning Objectives

- Understand Relational Databases
- Write SQL Queries Efficiently
- Perform CRUD Operations
- Analyze Data using SQL
- Master Joins and Subqueries
- Prepare for SQL Interviews

---

## 📈 Future Additions

- Window Functions
- Stored Procedures
- Triggers
- Indexing
- Transactions
- Views
- CTEs
- Recursive Queries
- SQL Interview Questions
- SQL Mini Projects

---

## 🤝 Contributions

Suggestions and improvements are always welcome.

Feel free to fork the repository and submit a Pull Request.

---

## ⭐ Support

If you found this repository helpful,

⭐ Star this repository to support my learning journey.

---

## 👨‍💻 Author

**Prashant Kumar Rajhans**

- GitHub: https://github.com/Prasahant
- LinkedIn: www.linkedin.com/in/prashant-kumar-rajhans

---

## 📜 License

This project is licensed under the MIT License.
