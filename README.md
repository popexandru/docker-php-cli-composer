# docker-php-cli-composer v0.0.1

Docker compose to build and run a php-cli environment with php-composer and git

### Recommendation

Use Git Bash as command line client.

### Getting started with docker-compose

If you haven't used [Docker](https://www.docker.com) before, be sure to check out the [Getting Started](https://www.docker.com/get-started) guide.

Install and run:

```shell
cd /path/to/docker-php-cli-composer
```
```shell
docker-compose up -d
```

Windows:
```sh
winpty docker exec -it docker-php-cli-composer-container-name bash
```

Mac & Linux:
```sh
docker exec -it docker-php-cli-composer-container-name bash
```
Exit from bash environment CTR+D

### Getting started with Dockerfile

Build docker image:
```sh
docker build -t docker-php-cli-composer-image -f Dockerfile .
```

Start the container that will be named docker-php-cli-composer using image created above:
```sh
docker run di --name docker-php-cli-composer -v "/path/to/docker-php-cli-composer/app":/var/www docker-php-cli-composer-image
```

Windows:
```sh
winpty docker exec -it docker-php-cli-composer bash
```

Mac & Linux:
```sh
docker exec -it docker-php-cli-composer bash
```
Exit from bash environment CTR+D

### App & Source files

Source files in docker container:
```sh
cd /var/www
```
On your PC:
```sh
cd /path/to/docker-php-cli-composer/app
```

### utils

Force remove all containers:
```sh
docker rm -f $(docker ps -aq)
```

Force remove all images:
```sh
docker image rm -f $(docker images -aq)
```
