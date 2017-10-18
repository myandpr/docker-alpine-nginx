# docker-alpine-nginx
A minimal Nginx Docker image(Size : 58.7M) built from source on Alpine Linux.
### Version
docker:17.06.2-ce

Nginx:1.12.1

openssl:1.0.2l

pcre:8.41

zlib:1.2.11

# TODO
## Clone Code
```
# git clone git@github.com:myandpr/docker-alpine-nginx.git
```
or
```
# git clone https:/github.com/myandpr/docker-alpine-nginx.git
```
## Build Image
```
# docker build -t mini/nginx .
```
## Run Container
```
# docker run --name mini_nginx -d -p 81:80 mini/nginx
```
## Test 
In your host running docker.
```
[root@aliyun ~]# curl localhost:80
curl: (7) Failed to connect to ::1: No route to host
[root@aliyun_yanmin ~]# curl localhost:3000
<!DOCTYPE html>
<html>
<head>
<title>Welcome to nginx!</title>
<style>
    body {
        width: 35em;
        margin: 0 auto;
        font-family: Tahoma, Verdana, Arial, sans-serif;
    }
</style>
</head>
<body>
<h1>Welcome to nginx!</h1>
<p>If you see this page, the nginx web server is successfully installed and
working. Further configuration is required.</p>

<p>For online documentation and support please refer to
<a href="http://nginx.org/">nginx.org</a>.<br/>
Commercial support is available at
<a href="http://nginx.com/">nginx.com</a>.</p>

<p><em>Thank you for using nginx.</em></p>
</body>
</html>
```
## Visit Nginx Via Browser
Input the ipaddress:81 in your browser.
```
ipaddress:81
```
***ipaddress:IP of your host running the container***


