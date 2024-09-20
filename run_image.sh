podman stop podman_financas
podman rm podman_financas
podman run -d --name podman_financas -p 8080:8080 -e DATABASE_HOST=mysql-db -e DATABASE_NAME=financas --network financas-ntw marcelobruckner/financas-api:3.3