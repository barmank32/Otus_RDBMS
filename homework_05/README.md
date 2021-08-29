# Домашнее задание
## DML в PostgreSQL
Цель:

Написать запрос с конструкциями SELECT, JOIN Написать запрос с добавлением данных INSERT INTO Написать запрос с обновлением данных с UPDATE FROM Использовать using для оператора DELETE

- Напишите запрос по своей базе с регулярным выражением, добавьте пояснение, что вы хотите найти.
``` sql
SELECT
	name,
	description,
	price
FROM
	Products
WHERE
	name ILIKE 'Asp%'; -- поиск лекарства
```
- Напишите запрос по своей базе с использованием LEFT JOIN и INNER JOIN, как порядок соединений в FROM влияет на результат? Почему?
``` sql
SELECT *
FROM
	Categories
INNER JOIN
	Products ON Categories.categories_id = Products.products_id; 
	-- будет выведены только пересечения, остальное отброшено (категории без продуктов.)

SELECT *
FROM
	Products
LEFT JOIN
	Categories ON Products.products_id = Categories.categories_id; 
	-- будет выведены все продукты и связаны с категориями
```
- Напишите запрос на добавление данных с выводом информации о добавленных строках.
``` sql
INSERT INTO public.Products
	(name, price)
VALUES
	('Aspirin','50'),
	('Bandage', '5'),
	('Iodine','10'),
	('Tablet','1')
RETURNING  products_id, name,  description,  price;
```
- Напишите запрос с обновлением данные используя UPDATE FROM.
``` sql
UPDATE public.CustomerDiscount
	SET discount = 3
FROM public.Customers
	WHERE CustomerDiscount.customer_id = Customers.customer_id 
		and CustomerDiscount.discount = 0;
```
- Напишите запрос для удаления данных с оператором DELETE используя join с другой таблицей с помощью using.
``` sql !
DELETE FROM Orders
	USING OrdersProducts
	WHERE OrdersProducts.order_id = Orders.order_id
		and OrdersProducts.qty = 0;
```
- - Приведите пример использования утилиты COPY (по желанию)
``` sql
```
