-- 1. Вывести продукты, которые ни разу не попадали в корзину.
SELECT *
    FROM products
    WHERE product_id NOT IN (SELECT products_product_id FROM cart_product);
    
-- 2. Вывести все продукты, которые так и не попали ни в 1 заказ. (но в корзину попасть могли).
SELECT *
    FROM products
    WHERE product_id NOT IN (SELECT products_product_id FROM cart_product)
UNION ALL 
SELECT products.*
    FROM products, cart_product
    WHERE products.product_id = cart_product.products_product_id 
	  AND cart_product.carts_cart_id NOT IN (SELECT carts_cart_id FROM orders)

-- 3. Вывести топ 10 продуктов, которые добавляли в корзины чаще всего.
SELECT id, product_title, cnt
FROM products, (
SELECT products_product_id AS id, count(*) AS cnt
FROM cart_product
GROUP BY products_product_id
ORDER BY cnt DESC
LIMIT 10 ) top
where products.product_id = top.id
ORDER BY CNT DESC

-- 4. Вывести топ 10 продуктов, которые не только добавляли в корзины, но и оформляли заказы чаще всего.
SELECT id, product_title, cnt
FROM products, (
SELECT products_product_id AS id, count(*) AS cnt
FROM cart_product WHERE carts_cart_id IN (SELECT carts_cart_id FROM orders)
GROUP BY products_product_id
ORDER BY cnt DESC
LIMIT 10 ) top
where products.product_id = top.id
ORDER BY CNT DESC

-- 5. Вывести топ 5 юзеров, которые потратили больше всего денег (total в заказе).
SELECT first_name, middle_name, last_name, SUM(orders.total) as total
FROM users, carts, orders
WHERE users.user_id = carts.users_user_id 
  AND carts.cart_id = orders.carts_cart_id
  AND orders.order_status_order_status_id in (3,4)
GROUP BY users.user_id
ORDER BY total DESC
LIMIT 5;

-- 6. Вывести топ 5 юзеров, которые сделали больше всего заказов (кол-во заказов).
SELECT first_name, middle_name, last_name, COUNT(*) as cnt
FROM users, carts, orders
WHERE users.user_id = carts.users_user_id 
  AND carts.cart_id = orders.carts_cart_id
GROUP BY users.user_id
ORDER BY cnt DESC
LIMIT 5;

-- 7. Вывести топ 5 юзеров, которые создали корзины, но так и не сделали заказы.
SELECT first_name, middle_name, last_name, COUNT(*) as cnt
FROM users, carts
WHERE users.user_id = carts.users_user_id 
  AND carts.cart_id NOT IN (SELECT orders.carts_cart_id FROM orders )
GROUP BY users.user_id
ORDER BY cnt DESC
LIMIT 5;