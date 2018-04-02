#!/bin/bash 

source config.sh

if [ "$1" != "start" -a "$1" != "stop" -a "$1" != "down"  -a "$1" != "restart" ]
then
    echo "./compose.sh (start|stop|down|restart)";
    exit;
fi

ACTION=$1
export ACTION=$1

if [ "$ACTION" = "start" ]
then
    docker-compose -p ${PROJECT} up -d
elif [ "$ACTION" = "stop" ]
then
    docker-compose -p ${PROJECT} stop
elif [ "$ACTION" = "restart" ]
then
    docker-compose -p ${PROJECT} restart
elif [ "$ACTION" = "down" ]
then
    docker-compose -p ${PROJECT} down
fi
echo $ACTION
