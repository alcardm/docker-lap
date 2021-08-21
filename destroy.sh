#!/bin/bash
set -e
 
docker-compose down --volumes
docker rmi lamp_apache lamp_php lamp_mysql