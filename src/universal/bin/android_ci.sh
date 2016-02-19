#!/usr/bin/env bash
DIR=$(cd `dirname $0` && pwd)
appium --session-override -p 4730  2>&1 | tee appium_android.log &
sleep 5
bash $DIR/appcrawler -c $DIR/../conf/xueqiu.json -p android