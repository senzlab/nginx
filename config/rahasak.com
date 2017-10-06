server {
    listen          80;
    server_name     rahasak.com www.rahasak.com;
    location / {
        proxy_pass  http://rahasakweb:8080/;
    }
}
