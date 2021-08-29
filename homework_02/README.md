# Домашнее задание
- Создать индексы
- Создать ограничения (constrains)
### Бонус
Доказательство, что сервер использует ваш индекс

## Index
- table `Customers` - для авторизации
``` sql
CREATE INDEX email_idx ON "public"."Customers" ( email );
```
- table `Products` - для поиска товара
``` sql
CREATE INDEX ProductName_idx ON "public"."Products" ( name );
```

## CONSTRAINT
- table `Products` - цена не может быть отрицательной
``` sql
ALTER TABLE Products
ADD CONSTRAINT Check_Price CHECK ( price > 0 )
```
