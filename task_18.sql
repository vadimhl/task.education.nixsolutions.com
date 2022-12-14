-- Создайте новую таблицу potential_customers с полями 
-- id, email, name, surname, second_name, city
DROP TABLE IF EXISTS  potential_customers  CASCADE;
CREATE TABLE potential_customers (
    id SERIAL PRIMARY KEY,
    email VARCHAR(255),
    name VARCHAR(256),
    surname VARCHAR(255),
    second_name VARCHAR(255),
    city VARCHAR(256)
);

-- Заполните данными таблицу.
INSERT INTO potential_customers (email, name, surname, second_name, city)
    SELECT CONCAT('cust' , user_id, '@gmail.com'),   
	       CONCAT('cust_name' , user_id), 
	       CONCAT('cust_surname' , user_id), 
	       CONCAT('cust_second_name' , user_id), 
	       CONCAT('city ' , user_id ) -- % 20 +1)
	FROM users LIMIT 1000;

---Выведите имена и электронную почту потеницальных и существующих пользователей из города city 17
SELECT name, surname, second_name, email FROM potential_customers WHERE city='city 17'
UNION ALL
SELECT first_name, middle_name, last_name, email FROM users WHERE city='city 17';
