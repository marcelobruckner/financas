docker stop financas-api
docker rm financas-api
docker run -d --name financas-api -p 9000:9000 marcelobruckner/financas-api