#!/usr/bin/env bash

PORT_BUSY=$(lsof -i :4444)

if [ -z "$PORT_BUSY" ]
then
    BASE_DIR=$(dirname $0)

    SELENIUM_SERVER=${BASE_DIR}/../vendor/bin/selenium-server-standalone
    CHROMEDRIVER=${BASE_DIR}/../vendor/bin/chromedriver

    clear
    ${SELENIUM_SERVER} -Dwebdriver.chrome.driver=${CHROMEDRIVER} $@
else
    echo "Porta 444 ocupada. Provavelmente o selenium já está rodando"
    echo $PORT_BUSY
fi
