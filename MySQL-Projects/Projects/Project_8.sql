USE library;

-- SELECT * FROM Finance
-- 	WHERE mounth_incomes > (SELECT AVG(mounth_incomes) FROM Finance)

/********************************************************************************************/

-- SELECT *, (SELECT AVG(pure_profit) FROM Finance WHERE mounth_expences < mounth_incomes) AS SMTH
--  FROM Finance

/********************************************************************************************/

-- SELECT username, (SELECT SUM(pure_profit) FROM Finance WHERE pure_profit > 500) AS AVAREGEPROFIT
-- 	FROM UserInfo

/********************************************************************************************/

-- SELECT * FROM Authors 
-- 	WHERE country_id < ANY(SELECT country_id FROM Country WHERE Country.country_name = 'Peru')

/********************************************************************************************/

SELECT * FROM Authors
	WHERE NOT EXISTS (SELECT *
					 FROM order_details
                    WHERE customers.customer_id = order_details.customer_id);

/********************************************************************************************/

-- USE library;

-- UPDATE Authors SET rating = rating - 1 
-- 	WHERE rating IN (SELECT publisher_id FROM Publisher WHERE country_id < 4)
--     
-- SELECT * FROM Authors    
/********************************************************************************************/

-- DELETE FROM Publisher
-- WHERE rating = (SELECT rating FROM Authors WHERE psevdo='Orlan Capner');

-- SELECT * FROM Publisher

/********************************************************************************************/













/*
--  USE finance;

-- UPDATE Finance
-- 	SET available_amount = available_amount * 1.2 
-- 		WHERE available_amount < ALL(SELECT id FROM Finance WHERE id < 5)
-- SET ProductCount = ProductCount + 2
-- WHERE ProductId IN (SELECT Id FROM Products WHERE Manufacturer='Apple');


-- UPDATE Finance SET available_amount = available_amount * 2 
-- 	where available_amount < (SELECT mounth_expences FROM Finance WHERE mounth_expences < 500)
   
-- SELECT * FROM Finance;


*/