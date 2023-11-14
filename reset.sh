#!/bin/bash -e
# Bash script run in evaluated mode
#   if it's got an error then don't continue

# Define Variables
CURR_DIR=`pwd`


echo "Resetting Deployment..."
echo "----------------------------------------------------"

echo "- Cleaning-up Deployment"
docker compose down --volumes \

echo "- Cleaning-up Docker System"
docker system prune -f

echo "- Cleaning-up Data Directory"
echo ""
echo "Please input your 'sudo' password if asked!"
sudo rm -rf \
  data/mariadb/data/* \
  data/redis/* \
  data/minio/* \
  data/web/*

sleep 2


exit 0
