--1. добавьте в таблицу users колонку phone_number (int)
ALTER TABLE users add phone_number INTEGER;

--2. поменяйте тип данных в таблице users колонка phone_number с int на varchar
ALTER TABLE users ALTER COLUMN phone_number TYPE VARCHAR;
