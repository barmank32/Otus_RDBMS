# Домашнее задание
## Восстановить таблицу из бэкапа
Цель:

В этом ДЗ осваиваем инструмент для резервного копирования и восстановления - xtrabackup.  Задача восстановить конкретную таблицу из сжатого и шифрованного бэкапа.

В материалах приложен файл бэкапа backup_des.xbstream.gz.des3 и дамп структуры базы world-db.sql
Бэкап выполнен с помощью команды:
``` sh
sudo xtrabackup --backup --stream=xbstream 
    --target-dir=/tmp/backups/xtrabackup/stream 
    | gzip - | openssl des3 -salt -k "password" 
    > stream/backup_des.xbstream.gz.des3
```
Требуется восстановить таблицу world.city из бэкапа и выполнить оператор:
``` sql
select count(*) from city where countrycode = 'RUS';
```
Результат оператора написать в чат с преподавателем.
