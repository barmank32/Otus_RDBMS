# Домашнее задание
##  SQL выборка
Цель:

Научиться джойнить таблицы и использовать условия в SQL выборке

1. Напишите запрос по своей базе с inner join
``` sql
SELECT *
FROM Customers
INNER JOIN CustomerDiscount on Customers.customer_id = CustomerDiscount.customer_id;
```
2. Напишите запрос по своей базе с left join
``` sql
SELECT *
FROM Customers
LEFT JOIN CustomerDiscount on Customers.customer_id = CustomerDiscount.customer_id;
```
3. Напишите 5 запросов с WHERE с использованием разных операторов, опишите для чего вам в проекте нужна такая выборка данных
``` sql
SELECT * 
FROM Products
WHERE price between 10 and 50;
Цена между 10 и 50

SELECT * 
FROM Products
WHERE name LIKE 'Asp%';
Поиск по названию
```
Фантазия кончилась:(
