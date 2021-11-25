USE coursework;

SELECT user_id, available_amount FROM Finance

WHERE available_amount > 50 AND available_amount < 100
-- WHERE available_amount > 60 OR user_id = "Дуб"
-- WHERE available_amount < 100  AND NOT user_id  = "Дуб"
-- WHERE available_amount BETWEEN 50 AND 70
-- WHERE user_id IN ('Лера', 'Дуб')
-- WHERE user_id LIKE '%t';

ORDER BY available_amount;
