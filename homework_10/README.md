# Домашнее задание
## Типы данных
Цель:

Вдумчиво подбираем нужные типы данных
Определяемся с типом ID
Изучаем тип JSON

1. проанализировать типы данных в своем проекте, изменить при необходимости. В README указать что на что поменялось и почему.

Наверно я бы изменил `bigint` во всей таблице на `int unsigned` чтобы убрать оверхед.

2. добавить тип JSON в структуру. Проанализировать какие данные могли бы там хранится. привести примеры SQL для добавления записей и выборки.

``` sql
CREATE TABLE IF NOT EXISTS Products (
	products_id bigint NOT NULL,
	name varchar(50) NOT NULL,
	description TEXT,
	price FLOAT NOT NULL,
    attributes JSON NOT NULL ,
	CONSTRAINT Products_pk PRIMARY KEY (products_id)
)
ENGINE=InnoDB;

INSERT INTO Products (
    `name` ,
    `price` ,
    `attributes`
)
VALUES(
    'Aspirin' ,
    '50' ,
    JSON_OBJECT(
        "form",
        "blister",
        "qtl",
        "14"
    )
);
SELECT * FROM Products
WHERE
JSON_EXTRACT(`attributes`, '$.form') LIKE 'blister';
```
Данный хранимые в JSON могут быть параметры упаковки и лекарства.
