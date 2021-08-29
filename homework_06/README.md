# Домашнее задание
## Индексы PostgreSQL
Цель:

Знать и уметь применять основные виды индексов PostgreSQL Построить и анализировать план выполнения запроса Уметь оптимизировать запросы для с использованием индексов

Создать индексы на БД, которые ускорят доступ к данным. В данном задании тренируются навыки:
- определения узких мест
- написания запросов для создания индекса оптимизации 

Необходимо:
- Создать индекс к какой-либо из таблиц вашей БД
``` sql
CREATE INDEX customer_id_idx ON public.Orders(customer_id); -- поиск пользователя по id
```
- Прислать текстом результат команды explain, в которой используется данный индекс
```
explain  select customer_id from Orders where customer_id = 1;

QUERY PLAN                                                                  |
----------------------------------------------------------------------------+
Bitmap Heap Scan on orders  (cost=4.16..9.50 rows=2 width=4)                |
  Recheck Cond: (customer_id = 1)                                           |
  ->  Bitmap Index Scan on customer_id_idx  (cost=0.00..4.16 rows=2 width=0)|
        Index Cond: (customer_id = 1)                                       |

```
- Реализовать индекс для полнотекстового поиска
``` sql
CREATE INDEX name_idx ON public.Products USING GIN (name); -- поиск по названию продукта
```
- Реализовать индекс на часть таблицы или индекс на поле с функцией
``` sql
CREATE INDEX email_idx ON public.Customers(lower(email)); -- поиск для авторизации по email.
```
- Создать индекс на несколько полей
``` sql
CREATE INDEX status_paid_idx ON public.Orders(status, payed); -- статистика по оплаченным заказам
```
- Написать комментарии к каждому из индексов
- Описать что и как делали и с какими проблемами столкнулись
