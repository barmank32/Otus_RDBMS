# Домашнее задание
Используя операторы DDL создайте на примере схемы
интернет-магазина:
1. Базу данных.
2. Табличные пространства и роли.
3. Схему данных. 
4. Таблицы своего проекта, распределив их по схемам. 

- coздаем базу данных
``` sql
psql -U postgres
# CREATE TABLESPACE DBS_apteka LOCATION '/data/apteka';
# CREATE DATABASE apteka TABLESPACE DBS_apteka;
# \c apteka
# \i DB.sql

```
- создаем роль админа
``` sql
CREATE ROLE admin LOGIN PASSWORD 'Pa$$w0rd';
GRANT ALL PRIVILEGES ON DATABASE apteka to admin;
ALTER DATABASE apteka OWNER TO admin;
```
