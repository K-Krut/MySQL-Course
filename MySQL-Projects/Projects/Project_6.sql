USE library;
USE finance;
USE production;

-- SELECT author_id, psevdo, activity_period, 
-- 	CASE
-- 		WHEN country_id = 2 THEN 'New Zealand'
-- 		WHEN country_id = 3 THEN 'Serbia'
-- 		ELSE CAST(country_id AS CHAR(5))
-- 	END,
--     CASE 
--  		WHEN rating > 4 THEN 'top' ELSE rating
--  END
-- FROM Authors

/********************************************************************************************/

-- SELECT author_id, psevdo, activity_period, 
-- 	CASE
-- 		WHEN country_id > 4 THEN 'Top'
-- 		WHEN country_id IN (3, 4) THEN 'Middle'
-- 		WHEN country_id < 3 THEN 'The Worth'
-- 		ELSE CAST(country_id AS CHAR(5))
-- END
-- FROM Authors WHERE author_id > 5
-- ORDER BY author_id DESC

/********************************************************************************************/

-- USE finance;

-- SELECT user_id, available_amount, mounth_expences, mounth_incomes, pure_profit,
-- 	IF(available_amount < 50, 'Not enough', available_amount)
--  FROM Finance

/********************************************************************************************/


-- USE library;

-- UPDATE Publisher SET rating = 
-- 	CASE 
-- 		WHEN country_id < 10 THEN 5 ELSE rating
-- 	END


/********************************************************************************************/

-- USE library;

-- DELETE FROM Publisher 
-- 	WHERE FALSE  = 
-- 		CASE 
-- 			WHEN publisher_id < 13 THEN TRUE ELSE FALSE
-- 		END

/********************************************************************************************/

-- SELECT country_id FROM Authors 
-- 	UNION
-- SELECT country_id FROM PUBLISHER
-- ORDER BY country_id

/********************************************************************************************/

-- SELECT id, user_id, mounth_expences, mounth_incomes FROM Finance
-- 	WHERE mounth_incomes < 200
--     GROUP BY id 
--     HAVING SUM(mounth_expences - mounth_incomes) > 10

/********************************************************************************************/

-- SELECT id, laptop_name, manufacturer, laptop_count, price, COALESCE(id%2, 12, 14) FROM laptops
-- 		WHERE id < 10;

/********************************************************************************************/

SELECT concat(firstname, ' ', lastname) AS Contact_Name, relationship,
  COALESCE(homephone, workphone, cellphone, 'NA') phone
FROM
  Contacts
ORDER BY Contact_Name






/*
https://overcoder.net/q/6804/%D0%B2-%D1%87%D0%B5%D0%BC-%D1%80%D0%B0%D0%B7%D0%BD%D0%B8%D1%86%D0%B0-%D0%BC%D0%B5%D0%B6%D0%B4%D1%83-join-%D0%B8-union

UNION объединяет результаты двух или более запросов в единый результирующий набор, включающий все строки, принадлежащие всем запросов в союзе.
Используя JOINs, вы можете извлекать данные из двух или более таблиц на основе логических отношений между таблицами. 
Соединения указывают, как SQL должен использовать данные из одной таблицы для выбора строк в другой таблице.
Операция UNION отличается от использования JOINs, которые объединяют столбцы из двух таблиц.


Основное отличие WHERE от HAVING заключается в том, что WHERE сначала выбирает строки, 
а затем группирует их и вычисляет агрегатные функции (таким образом, она отбирает строки 
для вычисления агрегатов), тогда как HAVING отбирает строки групп после группировки и вычисления 
агрегатных функций. Как следствие, предложение WHERE не должно содержать агрегатных функций; 
не имеет смысла использовать агрегатные функции для определения строк для вычисления агрегатных функций.
Предложение HAVING, напротив, всегда содержит агрегатные функции. 
(Строго говоря, вы можете написать предложение HAVING, не используя агрегаты, 
но это редко бывает полезно. То же самое условие может работать более эффективно на стадии WHERE.)



ORDER BY изменяет порядок возврата элементов.
GROUP BY будет собирать записи по указанным столбцам, 
что позволяет выполнять функции агрегации для негрупповых 
столбцов (например, SUM, COUNT, AVG и т.д.).



DISTINCT - получить уникальные строки (отличающиеся друг от друга любым отображаемым полем). Работает чуть быстрее.
GROUP BY - сгруппировать по какому-либо признаку, при этом можно использовать агрегатные функции SUM, AVG, MAX и т.д.
*/





















-- SELECT DeptID, SUM(SaleAmount)
-- FROM Sales
-- WHERE SaleDate = '01-Jan-2000'
-- GROUP BY DeptID
-- HAVING SUM(SaleAmount) > 1000
/*
-- USE finance;
UPDATE Finance SET mounth_incomes =
 	CASE 
		WHEN available_amount < 60 THEN  available_amount + 100  ELSE 'NOT ENOUGH'
    END
WHERE available_amount < 300
*/
/*
-- UPDATE Publisher SET rating = 4 WHERE publisher_id = 2;
-- UPDATE Publisher SET rating = 2 WHERE publisher_id = 3;
-- UPDATE Publisher SET rating = 1 WHERE publisher_id = 4;
-- UPDATE Publisher SET rating = 2 WHERE publisher_id = 5;
-- UPDATE Publisher SET rating = 4 WHERE publisher_id = 6;
-- UPDATE Publisher SET rating = 4 WHERE publisher_id = 2;
-- UPDATE Publisher SET rating = 1 WHERE publisher_id = 9;
-- UPDATE Publisher SET rating = 4 WHERE publisher_id = 10;
-- UPDATE Publisher SET rating = 1 WHERE publisher_id = 11;
*/

