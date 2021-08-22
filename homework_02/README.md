# Домашнее задание
- Создать индексы
- Создать ограничения (constrains)
### Бонус
Доказательство, что сервер использует ваш индекс

## Index
- table `Customers` - для авторизации
```
CREATE INDEX email_idx ON "public"."Customers" ( email );
```
- table `Products` - для поиска товара
```
CREATE INDEX ProductName_idx ON "public"."Products" ( name );
```

## CONSTRAINT
- table `Products` - цена не может быть отрицательной
```
ALTER TABLE Products
ADD CONSTRAINT Check_Price CHECK ( price > 0 )
```
