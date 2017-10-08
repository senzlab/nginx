server {
    listen          80;
    server_name     pay.scorelab.org;
    location / {
        proxy_pass  http://paymentportal:80/;
    }
}
