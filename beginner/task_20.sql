-- Вывести наименование группы товаров, 
-- общее количество по группе товаров в порядке убывания количества
SELECT categories.category_title, count(products.product_id)
    FROM products, categories 
	WHERE products.category_id = categories.category_id
	GROUP BY categories.category_id
    ORDER BY 2 DESC;
