-- Вывести: (если задание можно решить несколькими способами, указывай все)
-- 1. продукты, цена которых больше 80.00 и меньше или равно 150.00
SELECT * FROM products WHERE price > 80.00 AND price <= 150.00;

-- 2. заказы совершенные после 01.10.2020 (поле created_at)
SELECT * FROM orders WHERE created_at > '2020.10.01';

-- 3. заказы полученные за первое полугодие 2020 года
SELECT * FROM orders WHERE created_at BETWEEN '2020.01.01' AND '2020.06.30';

-- 4. подукты следующих категорий Category 7, Category 11, Category 18
SELECT * FROM products WHERE category_id in (7, 11, 18);

-- 5. незавершенные заказы по состоянию на 31.12.2020
SELECT * FROM orders WHERE created_at <= '2020.12.31' AND order_status_order_status_id < 4;
SELECT * FROM orders WHERE created_at <= '2020.12.31' AND order_status_order_status_id IN (1,2,3);

-- 6. вывести все корзины, которые были созданы, но заказ так и не был оформлен.
SELECT * FROM carts WHERE cart_id NOT IN (SELECT carts_cart_id FROM orders);