# Создание dockerfile

FROM postgres:latest
ENV POSTGRES_PASSWORD=12345678
ENV POSTGRES_USER=kiri
ENV POSTGRES_DB=database
COPY db/init.sql /docker-entrypoint-initdb.d/init.sql

# Создание образа docker

docker build -t doc_images:latest .

# Запуск контейнера с созданием тома (volume) 

docker run -d -p 5432:5432 -v /data:/var/lib/postgressql/data --name doc_container doc_image:latest

# Передача Джуну доступ в БД

docker exec -it doc_container psql postgres -h 127.0.0.1 -p 5432:5432 -U kiri -W 12345678

# При удалении контейнера, перезапуск его

sudo docker run --rm --name doc_container -e POSTGRES_PASSWORD=12345678 -p 5432:5432 -v /data:/var/lib/postgresql/data -d postgres

