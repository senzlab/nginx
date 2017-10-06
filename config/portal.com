server {
    listen          80;
    server_name     msc.scorelab.org;
    location / {
        proxy_pass  http://studentportal:80/;
    }
}
