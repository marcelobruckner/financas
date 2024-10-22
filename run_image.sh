docker stop docker_financas
docker rm docker_financas
#docker run -d --name docker_financas -p 8080:8080 -e DATABASE_HOST=mysql-db -e DATABASE_NAME=financas --network financas-ntw marcelobruckner/financas-api:3.4
docker run -d --name docker_financas -p 8080:8080 --network financas-ntw marcelobruckner/financas-api:3.4