# Домашнее задание
## Делаем физическую и логическую репликации
Цель:

После домашнего задания вы сможете настраивать физическую и логическую репликации самостоятельно

Физическая репликация: Весь стенд собирается в Docker образах. Необходимо:

- Настроить физическую репликации между двумя кластерами базы данных
- Репликация должна работать использую "слот репликации"
- Реплика должна отставать от мастера на 5 минут
```
настраиваем pg_hba.conf находящийся в папке с volumes
- host relication all 0.0.0.0/0 md5
docker-compose stop replica - останавливаем реплику
docker-compose rm replica
docker-compose run replica rm -rf /var/lib/postgresql/data

Создаем реплику
docker-compose run replica pg_basebackup -p 5432 -h master -R -D /var/lib/postgresql/data/pgdata/ -U postgres -W
docker-compose up -d replica
```
![screen replicas](https://github.com/barmank32/Otus_RDBMS/blob/master/homework_08/screen1.png)

Логическая репликация: В стенд добавить еще один кластер Postgresql. Необходимо:

- Создать на первом кластере базу данных, таблицу и наполнить ее данными (на ваше усмотрение)
- На нем же создать публикацию этой таблицы
- На новом кластере подписаться на эту публикацию
- Убедиться что она среплицировалась. Добавить записи в эту таблицу на основном сервере и убедиться, что они видны на логической реплике
![screen replicas](https://github.com/barmank32/Otus_RDBMS/blob/master/homework_08/screen2.png)

Версия PostgreSQL на ваше усмотрение
