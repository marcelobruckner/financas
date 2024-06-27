podman stop podman_financas
podman rm podman_financas
podman run -d --name podman_financas -p 8080:8080 marcelobruckner/financas-api