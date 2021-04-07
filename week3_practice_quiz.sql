/*
date: 05-04-2021
File: week3_practice_quiz.sql
Author : Francesco Camussoni
Email: camussonif@gmail.com francesco.camussoni@ib.edu.ar
GitHub: https://github.com/francescocamussoni
linkedin: https://www.linkedin.com/in/francesco-camussoni-529079117/
Description: week 2 Practice Quiz: SQL for Data Science - Universidad de California, Davis
*/

/* Excercise 1 */
SELECT COUNT(name)
FROM artists INNER JOIN albums ON artists.ArtistId = albums.ArtistId
WHERE artists.Name = 'Led Zeppelin'

/* Excercise 2 */
SELECT a.Title, t.UnitPrice
FROM albums a
INNER JOIN tracks t ON a.AlbumId = t.AlbumId
INNER JOIN artists ar ON ar.ArtistId = a.ArtistId
WHERE ar.Name = 'Audioslave'

/* Excercise 3 */
SELECT c.FirstName, c.LastName
FROM customers c
INNER JOIN invoices i ON c.CustomerId = i.CustomerId
WHERE InvoiceId = Null

/* Excercise 4 */
SELECT SUM(t.UnitPrice) as suma
FROM albums a
INNER JOIN tracks t ON a.AlbumId = t.AlbumId
WHERE Title='Big Ones'

/* Excercise 5 */
SELECT COUNT(*)
FROM invoices CROSS JOIN invoice_items
