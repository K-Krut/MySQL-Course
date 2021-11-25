USE LIBRARY;
/*
SELECT author_id, psevdo, country_id, rating FROM authors
 
-- WHERE author_id > 1 AND author_id < 6
-- WHERE country_id = 5 OR rating = 2
-- WHERE NOT psevdo IN  ('Dannye Nulty', 'Orlan Capner', 'Emile Bluschke') AND NOT rating = 1
-- WHERE author_id BETWEEN 4 AND 8;
-- ORDER BY rating DESC;
-- ORDER BY psevdo ASC;
-- WHERE psevdo LIKE 'E%';
-- WHERE psevdo LIKE '%s';
*/



SELECT a.rating AS common_rating, a.psevdo, a.country_id, p.rating, p.publisher_name, p.country_id FROM Authors a 
-- INNER JOIN Publisher p ON p.rating = a.rating
LEFT OUTER JOIN Publisher p ON p.rating = a.rating
-- RIGHT OUTER JOIN Publisher p ON p.rating = a.rating


-- SELECT DISTINCT Publisher_name FROM Publisher

-- SELECT * FROM Authors LIMIT 3;