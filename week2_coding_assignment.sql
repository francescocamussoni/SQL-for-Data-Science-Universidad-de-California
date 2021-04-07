/*
date: 01-04-2021
File: week2_coding_assignment.sql
Author : Francesco Camussoni
Email: camussonif@gmail.com francesco.camussoni@ib.edu.ar
GitHub: https://github.com/francescocamussoni
linkedin: https://www.linkedin.com/in/francesco-camussoni-529079117/
Description: week 2 Coding Assignment: SQL for Data Science - Universidad de California, Davis
*/

/* Excercise 1 */
SELECT Name
FROM Tracks
WHERE Milliseconds>5000000

/* Excercise 2 */
SELECT COUNT(InvoiceId)
FROM Invoices
Where Total BETWEEN 5 and 15

/* Excercise 3 */
SELECT Company, FirstName, LastName
FROM Customers
Where State IN ('RJ', 'DF', 'AB', 'BC', 'CA', 'WA', 'NY')

/* Excercise 4 */
SELECT InvoiceId, InvoiceDate
FROM Invoices
Where (CustomerId=56 OR CustomerId=58) AND (Total BETWEEN 1 AND 5)

/* Excercise 5 */
SELECT COUNT(TrackId)
FROM Tracks
Where Name LIKE 'All%'

/* Excercise 6 */
SELECT Email
FROM Customers
Where Email LIKE 'J%' and Email LIKE '%gmail.com'

/* Excercise 7 */
SELECT Total
FROM Invoices
Where BillingCity IN ('Brasília', 'Edmonton', 'Vancouver')
Order By InvoiceId DESC

/* Excercise 8 */
SELECT CustomerId, COUNT(*) AS Orders
FROM Invoices
GROUP BY CustomerId
ORDER BY Orders DESC

/* Excercise 9 */
SELECT AlbumId, Count(*) AS Ntracks
FROM Tracks
GROUP BY AlbumId
HAVING Ntracks >= 12
