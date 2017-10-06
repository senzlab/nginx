server {
    listen          80;
    server_name     bankz.com www.bankz.com;
    location / {
        proxy_pass  http://web:8080/;
    }
}
