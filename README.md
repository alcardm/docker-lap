# docker-LAP
A template with Apache and PHP-FPM on Docker.

Includes WordPress dependencies and opcache enabled.

## Starting
Run `docker-compose up -d --build` or `./build.sh` to bring your this stack online.

## stoping
Run `docker-compose down --volumes` or `./destroy.sh` to... shutdown.

## Where to place files
You can place your files and folders anywhere in the */public* folder.

## How to access your projects?
Access projects by browsing to http://localhost  and it will use your public folder as the default location

---

# TODO
## docker-compose
- ~~container names~~ ✔
- logs to volumes 🚫
- networks(❓) 
- enviroment variables(❓)

## dockerfile
### apache
- ~~check configuration files~~ ✔
- ~~inspect *httpd.conf* file, compare with model~~  ✔
- ~~copy *httpd.conf* default configuration file~~ ✔
- ~~rename *zzz-httpd.conf* to *httpd-vhosts.conf*~~ ✔

### php
- ~~remove *apk upgrade* line~~ ✔
- ~~copy config files~~ ✔
- ~~copy *opcache* configuration file and activate~~ ✔
- ~~copy *error logging* configuration file~~ ✔
- ~~copy *php.ini* default configuration file~~ ✔
- ~~add install persistent dependencies~~ ✔