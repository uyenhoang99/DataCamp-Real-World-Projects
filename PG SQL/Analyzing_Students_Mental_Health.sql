--select necessary columns
SELECT inter_dom, japanese_cate, english_cate, academic, age, stay, todep, tosc, toas
FROM students
LIMIT 5;

/*Return a table with nine rows and five columns.
The five columns should be aliased as: stay, count_int, average_phq, average_scs, and average_as, in that order.
The average columns should contain the average of the todep (PHQ-9 test), tosc (SCS test), and toas (ASISS test) columns for each length of stay, rounded to two decimal places.
The count_int column should be the number of international students for each length of stay.
Sort the results by the length of stay in descending order.*/

SELECT stay AS stay, COUNT(stay) AS count_int, ROUND(AVG(todep), 2) AS average_phq, ROUND(AVG(tosc), 2) AS average_scs,
       ROUND(AVG(toas), 2) AS average_as
FROM public.students
WHERE inter_dom = 'Inter'
GROUP BY stay
ORDER BY stay DESC;