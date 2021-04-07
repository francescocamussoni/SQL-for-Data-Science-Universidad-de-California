/*
date: 01-04-2021
File: week2_practice_quiz.sql
Author : Francesco Camussoni
Email: camussonif@gmail.com francesco.camussoni@ib.edu.ar
GitHub: https://github.com/francescocamussoni
linkedin: https://www.linkedin.com/in/francesco-camussoni-529079117/
Description: week 2 Practice Quiz: SQL for Data Science - Universidad de California, Davis
*/

/* Excercise 2 */
SELECT  DISTINCT Extended_step
FROM salary_range_by_job_classification

/* Excercise 3 */
SELECT min(Biweekly_high_Rate)
FROM salary_range_by_job_classification
WHERE biweekly_high_rate <> '$0.00'

/* Excercise 4 */
SELECT Max(Biweekly_high_Rate)
FROM salary_range_by_job_classification

/* Excercise 5 */
SELECT job_code,
pay_type
FROM salary_range_by_job_classification
WHERE Job_Code LIKE '03%'

/* Excercise 6 */
SELECT sal_end_date
FROM salary_range_by_job_classification
WHERE Grade='Q90H0'

/* Excercise 7 */
SELECT Biweekly_high_Rate
FROM salary_range_by_job_classification
ORDER BY Biweekly_high_Rate ASC;

/* Excercise 8 */
SELECT DISTINCT Step
FROM salary_range_by_job_classification
WHERE Job_Code='0110' OR Job_Code='0400'

/* Excercise 9 */
SELECT DISTINCT Biweekly_High_Rate,
Biweekly_Low_Rate,
Biweekly_High_Rate - Biweekly_Low_Rate AS 'RESTA'
FROM salary_range_by_job_classification
WHERE Job_Code='0170'

/* Excercise 10 */
SELECT DISTINCT Extended_Step
FROM salary_range_by_job_classification
WHERE Pay_Type IN ('M', 'H', 'D')

/* Excercise 11 */
SELECT DISTINCT Step
FROM salary_range_by_job_classification
WHERE Union_Code=990 AND (SetId == 'SFMTA' OR SetId='COMMN')
