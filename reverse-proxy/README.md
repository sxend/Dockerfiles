ASF internal reverse proxy container
====================================



## build

```
export DOCKER_REGISTRY_HOST_NAME=<internal_docker_host_name>
envsubst '${DOCKER_REGISTRY_HOST_NAME}' < usr/local/nginx/conf/nginx.conf.template > usr/local/nginx/conf/nginx.conf.generated
docker build --tag="docker-registry.arimit.su/sxend/reverse-proxy" .
docker run -it -p 80:80 docker-registry.arimit.su/sxend/reverse-proxy
```
