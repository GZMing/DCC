#!/bin/bash
#Author: saintic
#PageHome: http://www.saintic.com
#ProjectHome: https://github.com/saintic/DCC

#Here Document Help
#echo -e "\033[32mGreen\033[0m"
#echo -e "\033[31mColor\033[0m"

BaseRoot=$(cd $(dirname $0);pwd)
BaseConf=${BaseRoot}/Config

if [ -d ${BaseConf} ];then
    for BaseConfName in $(ls -lh ${BaseConf} | grep ^- | awk '{print $9}'); do
        if [ -f ${BaseConf}/${BaseConfName} ];then
            . ${BaseConf}/${BaseConfName}
        fi
    done
else
    echo -e "\033[31mException: no configuration file found!\033[0m"
    exit 1
fi

