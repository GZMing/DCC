#!/bin/bash
#Author: saintic
#PageHome: http://www.saintic.com
#ProjectHome: https://github.com/saintic/DCC
#Document

BaseRoot=$(cd $(dirname $0);pwd)
BaseConf=${BaseRoot}/Config/
function Echo()
{
    msg=$1
    color=$2
    echo $msg $color
    exit 1
    test -z $color && color=green
    if [ $color = "green" ];then
        $(echo -e "\033[32m${msg}\033[0m")
    else
        $(echo -e "\033[31m${msg}\033[0m")
    fi
    return
}

if [ -d ${BaseConf} ];then
    for BaseConfName in $(ls -lh ${BaseConf} | grep ^- | awk '{print $9}'); do
        if [ -f ${BaseConf}/${BaseConfName} ];then
            . ${BaseConf}/${BaseConfName}
        fi
    done
else
    echo "Exception: no configuration file found!" ; exit 1
fi

Echo "Exception: no configuration file found!" ; exit 1

