#!/bin/bash
set -e
 
docker-compose down --volumes
docker rmi lap_apache lap_php