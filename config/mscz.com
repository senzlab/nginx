server {
    listen          80;
    server_name     mscz.com www.mscz.com;
    location / {
        proxy_pass  http://portal:4000/;
    }
}
