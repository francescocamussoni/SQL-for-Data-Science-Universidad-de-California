/*
date: 05-04-2021
File: week3_coding_assignment.sql
Author : Francesco Camussoni
Email: camussonif@gmail.com francesco.camussoni@ib.edu.ar
GitHub: https://github.com/francescocamussoni
linkedin: https://www.linkedin.com/in/francesco-camussoni-529079117/
Description: week 2 Coding Assignment: SQL for Data Science - Universidad de California, Davis
*/

/* Excercise 1 */
SELECT t.Name
FROM Tracks t INNER JOIN Albums a ON t.AlbumId = a.AlbumId
WHERE a.Title = 'Californication'

/* Excercise 2 */
SELECT c.FirstName, c.LastName, c.City, c.Email, COUNT(i.total) as total_invoices
FROM Customers c INNER JOIN Invoices i ON i.CustomerId = c.CustomerId
GROUP BY c.CustomerId

/* Excercise 3 */
SELECT t.Name, a.Title, a.ArtistId, t.TrackId
FROM Tracks t INNER JOIN Albums a on a.AlbumId = t.AlbumId
WHERE a.Title = 'For Those About To Rock We Salute You'

/* Excercise 4 */
SELECT m.LastName AS Manager, e.LastName AS Employee
FROM Employees e INNER JOIN Employees m
ON e.ReportsTo = m.EmployeeId
WHERE m.LastName = 'Mitchell'

/* Excercise 5 */
SELECT ar.Name, ar.ArtistId, a.Title
FROM Artists ar LEFT JOIN Albums a
ON ar.ArtistId = a.ArtistId
WHERE a.Title IS NULL

/* Excercise 6 */
SELECT FirstName, LastName
FROM Customers
UNION
SELECT FirstName, LastName
FROM Employees
ORDER BY LastName DESC

/* Excercise 7 */
SELECT count(c.CustomerId)
FROM Customers c INNER JOIN Invoices i
ON c.CustomerId = i.CustomerId
WHERE c.City != i.BillingCity
