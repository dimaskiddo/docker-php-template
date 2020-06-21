#!/bin/bash -e
# Bash script run in evaluated mode
#   if it's got an error then don't continue

# Define Variables
CURR_DIR=`pwd`


DEPLOY_DIR=${DEPLOY_DIR:-"$CURR_DIR/deploy"}
if [[ ! -d $DEPLOY_DIR ]]; then
  echo "ERROR! Deployment Directory doesn't exist!"
fi


echo "Preparing Data Directory..."
echo "----------------------------------------------------"

APP_DIR=${APP_DIR:-"$CURR_DIR/data/web"}
if [[ ! -d "$APP_DIR" ]]; then
  echo "- Creating Web Data Directory"
  mkdir -p "$APP_DIR"
fi

APP_HTML_DIR=${APP_HTML_DIR:-"$CURR_DIR/data/web/html"}
if [[ ! -d "$APP_HTML_DIR" ]]; then
  echo "- Creating Web HTML Data Directory"
  mkdir -p "$APP_HTML_DIR"
fi

echo "- Changing Data Directory Owner"
echo ""
echo "Please input your 'sudo' password if asked!"
sudo chown -R `id -u`:`id -g` "${CURR_DIR}/data"

sleep 2


exit 0
