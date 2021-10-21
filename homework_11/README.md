# Домашнее задание
## Партиционирование таблицы
Цель:

Применить партиционирование по типу RANGE (по диапазону значений) к таблице своей БД

1. Применить инструкцию к одной из своих таблиц БД, таблица должна быть заполнена данными: 
``` sql
ALTER TABLE your_table 
PARTITION BY RANGE (your_field) (
PARTITION p0 VALUES LESS THAN (10),
PARTITION p1 VALUES LESS THAN (20),
PARTITION p2 VALUES LESS THAN (MAXVALUE)
);
```
2. Выполнить запрос: 
``` sql
SELECT p.PARTITION_NAME, p.TABLE_ROWS 
FROM INFORMATION_SCHEMA.PARTITIONS p 
WHERE TABLE_NAME = 'your_table';
```
3. Результат выборки разместить в README

