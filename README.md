# SQL Aggregate Queries Assignment

## 📌 Project Overview

This project contains SQL queries for analyzing data using **aggregate functions**, **GROUP BY**, **ORDER BY**, and **LIMIT**.

The queries work with tables from a sales database, including `payments`, `customers`, and `orderdetails`.

## 🎯 Learning Objectives

By completing this assignment, I practiced how to:

* Calculate totals using `SUM()`
* Calculate averages using `AVG()`
* Find the highest value using `MAX()`
* Group data using `GROUP BY`
* Sort results using `ORDER BY`
* Limit results using `LIMIT`
* Perform calculations using table columns

## 🗄️ Database Tables Used

* `payments`
* `customers`
* `orderdetails`

## 📝 Assignment Questions

### Question 1: Total Payment by Payment Date

This query calculates the total payment amount for each payment date, sorts the dates from latest to oldest, and displays only the five latest payment dates.

```sql
SELECT
    paymentDate,
    SUM(amount) AS total_amount
FROM payments
GROUP BY paymentDate
ORDER BY paymentDate DESC
LIMIT 5;
```

### Question 2: Average Credit Limit by Customer

This query calculates the average credit limit for each customer and displays the customer's name and country.

```sql
SELECT
    customerName,
    country,
    AVG(creditLimit) AS average_credit_limit
FROM customers
GROUP BY customerName, country;
```

### Question 3: Total Price of Products Ordered

This query calculates the total price using:

**Quantity Ordered × Price Each**

The results are grouped by product code and quantity ordered.

```sql
SELECT
    productCode,
    quantityOrdered,
    SUM(quantityOrdered * priceEach) AS total_price
FROM orderdetails
GROUP BY productCode, quantityOrdered;
```

### Question 4: Highest Payment by Check Number

This query finds the highest payment amount recorded for each check number.

```sql
SELECT
    checkNumber,
    MAX(amount) AS highest_amount
FROM payments
GROUP BY checkNumber;
```

## 🧠 SQL Concepts Practiced

| SQL Function / Clause | Purpose                                |
| --------------------- | -------------------------------------- |
| `SUM()`               | Calculates the total of numeric values |
| `AVG()`               | Calculates the average value           |
| `MAX()`               | Finds the highest value                |
| `GROUP BY`            | Groups records with similar values     |
| `ORDER BY`            | Sorts query results                    |
| `DESC`                | Sorts in descending order              |
| `LIMIT`               | Restricts the number of results        |

## 🛠️ Tools Used

* MySQL
* MySQL Workbench
* GitHub

## 📂 Project Structure

```text
SQL-Aggregate-Queries/
│
├── queries.sql
└── README.md
```

## 🚀 How to Run

1. Open **MySQL Workbench**.
2. Connect to your MySQL server.
3. Select the database containing the required tables.
4. Open the `queries.sql` file.
5. Run each query individually or run the complete script.
6. Review the results displayed in MySQL Workbench.

## 📚 Conclusion

This assignment demonstrates the use of SQL aggregate functions and grouping techniques to summarize and analyze sales-related data. These skills are important for generating reports and extracting meaningful information from databases.

## 👨‍💻 Author

**Abdiaziz**

SQL & Database Learning Project
