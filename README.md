# Dockerfiles-nginx-user-adderable

# Building & Running

Copy the sources to your docker host and build the container, and to run.
```
	docker build --rm -t manbygod/nginx .
	winpty docker run -it --rm --name u2 -v c:\\Users\\user\\df:/var/www/html -p 80:80 manbygod/nginx:0.1
```
Get the port that the container is listening on:

```
# docker ps
CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS               NAMES
ad2ad96e4b2f        nowage/centos7      "/bin/bash"         7 seconds ago       Up 6 seconds                            u2
```

To test, ("manbygod" is username. )
```
	su - manbygod
```
To Rollback
```
    docker rm u2 -f
    docker rmi manbygod/nginx:0.1
```
