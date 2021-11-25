USE finance;
USE library;


-- SELECT user_id, available_amount, mounth_incomes, mounth_expences FROM Finance  

/******************************************************************************/

-- SELECT SUM(available_amount + mounth_incomes) total FROM Finance WHERE user_id = "Дуб"

/******************************************************************************/

-- SELECT COUNT(DISTINCT publisher_name) FROM Publisher;

/******************************************************************************/

-- SELECT user_id, available_amount, mounth_incomes, mounth_expences,  
--        SUM(mounth_incomes - mounth_expences) OVER(PARTITION BY user_id) Real_Profit
-- FROM Finance 

/******************************************************************************/

-- SELECT user_id, available_amount, mounth_incomes, mounth_expences,  
-- -- 	  AVG(mounth_expences)  AS Average_Expenses,
-- --    MIN(mounth_incomes) AS Min_Expenses
--       MAX(available_amount) AS MAX_Expenses
--       FROM Finance      

/******************************************************************************/

-- SELECT publisher_id, publisher_name, country_id, rating FROM Publisher 
-- order by country_id;
-- SELECT country_id, COUNT(*) AS AmountAuthors FROM Authors GROUP BY country_id 
      
/******************************************************************************/     
      
--  SELECT DISTINCT publisher_name, rating FROM Publisher ORDER BY rating;     

/******************************************************************************/  

-- SELECT country_id, AVG(rating) AS AvgRating 
-- FROM Authors 
-- GROUP BY country_id 
-- ORDER BY country_id ASC; 
      
/******************************************************************************/

SELECT psevdo, country_id, avg(rating)
FROM Authors 
GROUP BY country_id HAVING avg(rating) > 2

/******************************************************************************/

-- SELECT psevdo, country_id, rating 
-- FROM Authors HAVING rating > 2

/******************************************************************************/

-- SELECT psevdo, country_id, rating 
-- FROM Authors WHERE rating > 2 GROUP BY country_id

/******************************************************************************/

-- SELECT country_id, AVG(rating)
-- FROM Authors GROUP BY country_id HAVING country_id > 2 AND country_id < 6
