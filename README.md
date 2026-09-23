# SQL Queries Assignment

## 📌 Project Overview

This project contains a collection of SQL queries used to retrieve, filter, sort, and analyze data from a MySQL database.

The assignment focuses on practicing basic and intermediate SQL commands using tables such as `payments`, `orders`, `employees`, `offices`, and `products`.

## 🎯 Learning Objectives

By completing this assignment, I practiced how to:

* Retrieve specific columns from a table
* Filter records using `WHERE`
* Sort results using `ORDER BY`
* Use conditions to find specific records
* Limit the number of results using `LIMIT`
* Work with multiple database tables
* Write clean and readable SQL queries

## 🗄️ Database

**Database:** `sales`

### Tables Used

* `payments`
* `orders`
* `employees`
* `offices`
* `products`

## 📝 SQL Queries

### 1. Retrieve Payment Information

Retrieves the check number, payment date, and payment amount from the `payments` table.

```sql
SELECT checkNumber, paymentDate, amount
FROM payments;
```

### 2. Find Orders in Process

Retrieves orders whose status is **In Process** and displays the newest orders first.

```sql
SELECT orderDate, requiredDate, status
FROM orders
WHERE status = 'In Process'
ORDER BY orderDate DESC;
```

### 3. Find Sales Representatives

Retrieves the first name, last name, and email of employees whose job title is **Sales Rep**.

```sql
SELECT firstName, lastName, email
FROM employees
WHERE jobTitle = 'Sales Rep'
ORDER BY employeeNumber DESC;
```

### 4. Retrieve Office Information

Retrieves all information from the `offices` table.

```sql
SELECT *
FROM offices;
```

### 5. Find the Cheapest Products

Retrieves the five products with the lowest buying prices.

```sql
SELECT productName, quantityInStock
FROM products
ORDER BY buyPrice ASC
LIMIT 5;
```

## 🛠️ Tools Used

* MySQL
* MySQL Workbench
* GitHub

## 📚 Key SQL Concepts Practiced

| SQL Concept | Purpose                                    |
| ----------- | ------------------------------------------ |
| `SELECT`    | Retrieves data from a table                |
| `WHERE`     | Filters records                            |
| `ORDER BY`  | Sorts query results                        |
| `DESC`      | Sorts from highest/newest to lowest/oldest |
| `ASC`       | Sorts from lowest/oldest to highest/newest |
| `LIMIT`     | Restricts the number of returned records   |

## 🚀 How to Run

1. Open **MySQL Workbench**.
2. Select or create the `sales` database.
3. Run:

```sql
USE sales;
```

4. Make sure the required tables exist.
5. Copy and execute the queries in the SQL file.

## 📂 Project Structure

```text
SQL-Queries/
│
├── queries.sql
└── README.md
```

## 👨‍💻 Author

**Abdiaziz**

SQL & Database Learning Project
