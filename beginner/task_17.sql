--Вывести:
-- 1. среднюю сумму всех завершенных сделок
SELECT ROUND( AVG(total)::numeric, 2 ) FROM orders  
    WHERE order_status_order_status_id = 4;

-- 2. вывести максимальную сумму сделки за 3 квартал 2020
SELECT MAX(total) FROM orders  
    WHERE order_status_order_status_id = 4 
      AND created_at BETWEEN '2020.07.01' AND '2020.09.30';