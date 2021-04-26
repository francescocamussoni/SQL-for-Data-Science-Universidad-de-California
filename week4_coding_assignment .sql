/*
date: 27-04-2021
File: week4_coding_assignment.sql
Author : Francesco Camussoni
Email: camussonif@gmail.com francesco.camussoni@ib.edu.ar
GitHub: https://github.com/francescocamussoni
linkedin: https://www.linkedin.com/in/francesco-camussoni-529079117/
Description: week 4 Coding Assignment: SQL for Data Science - Universidad de California, Davis
*/

/* Excercise 1 */
SELECT CustomerId
    FirstName,
    LastName,
    UPPER(City || ' ' || Country) AS Location
FROM Customers

/* Excercise 2 */
SELECT FirstName,
    LastName,
    LOWER(SUBSTR(FirstName, 1, 4) || SUBSTR(LastName, 1, 2)) as NewCostumerId
FROM Customers

/* Excercise 3 */
SELECT DATE('now') - HireDate AS HireDate,
    LastName
FROM Employees
WHERE HireDate >=15
ORDER BY LastName ASC

/* Excercise 4 */
SELECT *
FROM Customers
WHERE PostalCode is NULL
OR FirstName is NULL
OR Phone is NULL
OR Fax is NULL
OR Company is NULL
OR Address is NULL

/* Excercise 5 */
SELECT City, COUNT(City) as Counts
FROM Customers
GROUP BY City
ORDER BY Counts DESC

/* Excercise 6 */
SELECT i.InvoiceId,
    c.FirstName,
    c.LastName,
    c.FirstName || c.LastName || i.InvoiceId as NId
FROM Invoices i INNER JOIN Customers c ON i.CustomerId = c.CustomerId
ORDER BY NId
