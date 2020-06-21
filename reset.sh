#!/bin/bash -e
# Bash script run in evaluated mode
#   if it's got an error then don't continue

# Define Variables
CURR_DIR=`pwd`


DEPLOY_DIR=${DEPLOY_DIR:-"$CURR_DIR/deploy"}
if [[ ! -d $DEPLOY_DIR ]]; then
  echo "ERROR! Deployment Directory doesn't exist!"
fi


echo "Resetting Deployment..."
echo "----------------------------------------------------"

echo "- Cleaning-up Deployment"
cd "${DEPLOY_DIR}" \
&& docker-compose down --volumes \
&& cd "$CURR_DIR"

echo "- Cleaning-up Docker System"
echo ""
echo "Please input your 'sudo' password if asked!"
sudo docker system prune -f

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
