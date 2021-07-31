# docker-lap

A template with Apache and PHP-FPM on Docker.

Includes _WordPress_ dependencies and _opcache_ enabled.

Use _git_ to clone this repository `git clone https://github.com/alcardm/docker-lap.git`

## Starting

Run `docker-compose up -d --build` or `./build.sh` to bring your this stack online (to make it executable use `chmod +x build.sh`).

## Stoping

Run `docker-compose down --volumes` or `./destroy.sh` to... shutdown (to make it executable use `chmod +x destroy.sh`). ⚠ Keep in mind that the this script also deletes the images created.

## Where to place files

You can place your files and folders anywhere in the _/public_ folder.

## How to access your projects?

Access project by browsing to [http://localhost](http://localhost) and it will use your public folder as the default location

---

## TODO

### docker-compose

- ~~container names~~ ✔
- ~~networks~~ ✔
- ~~enviroment variables~~ ✔
- ~~logs to volumes~~ ✔

#### apache

- ~~check configuration files~~ ✔
- ~~inspect _httpd.conf_ file, compare with model~~ ✔
- ~~copy _httpd.conf_ default configuration file~~ ✔
- ~~rename _zzz-httpd.conf_ to _httpd-vhosts.conf_~~ ✔

#### php

- ~~remove _apk upgrade_ line~~ ✔
- ~~copy config files~~ ✔
- ~~copy _opcache_ configuration file and activate~~ ✔
- ~~copy _error logging_ configuration file~~ ✔
- ~~copy _php.ini_ default configuration file~~ ✔
- ~~add install persistent dependencies~~ ✔
- ~~remove _public/.user.uni_ move values to _zzz-php.ini_~~ ✔

---

## Resources

- [inanzzz | Creating Apache, MySQL and PHP-FPM containers for a web application with Docker compose](http://www.inanzzz.com/index.php/post/su76/creating-apache-mysql-and-php-fpm-containers-for-a-web-application-with-docker-compose)
- [iamgoodbytes/docker-LAMP-starter: A starter template if you want to get up and running quickly with php/mysql/apache in Docker (github.com)](https://github.com/iamgoodbytes/docker-LAMP-starter)
- [wordpress/Dockerfile at master · docker-library/wordpress (github.com)](https://github.com/docker-library/wordpress/blob/master/latest/php7.4/fpm-alpine/Dockerfile)
