# docker-alpine-nginx
A minimal Nginx Docker image(Size : 58.7M) built from source on Alpine Linux.

# How to Use The Dockerfile
## Clone
`
# git clone git@github.com:myandpr/docker-alpine-nginx.git
`
or
`
# git clone https:/github.com/myandpr/docker-alpine-nginx.git
`
## Build the Image
`
# docker build -t mini/nginx .
`
## Run A Container
`
# docker run --name mini_nginx -d -p 81:80 mini/nginx
`
## Visit Websit via Browser
`
ipaddress:81
`
***ipaddress:IP of your host running the container***
