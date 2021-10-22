# Домашнее задание
## Партиционирование таблицы
Цель:

Применить партиционирование по типу RANGE (по диапазону значений) к таблице своей БД

1. Применить инструкцию к одной из своих таблиц БД, таблица должна быть заполнена данными: 
``` sql
INSERT INTO Products
	(products_id, name, price)
VALUES
	(1, 'Aspirin','50'),
	(2, 'Bandage', '5'),
	(3, 'Iodine','12'),
	(4, 'Tablet','1')
;

ALTER TABLE Products 
PARTITION BY RANGE (id) (
PARTITION p0 VALUES LESS THAN (10),
PARTITION p1 VALUES LESS THAN (20),
PARTITION p2 VALUES LESS THAN (MAXVALUE)
);
```
2. Выполнить запрос: 
``` sql
SELECT p.PARTITION_NAME, p.TABLE_ROWS 
FROM INFORMATION_SCHEMA.PARTITIONS p 
WHERE TABLE_NAME = 'Products';
```
3. Результат выборки разместить в README
``` text
PARTITION_NAME|TABLE_ROWS|
--------------+----------+
p0            |         4|
p1            |         0|
p2            |         0|
```
данных мало, поэтому данные попали все в `p0`