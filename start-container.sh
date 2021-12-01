#!/bin/bash

container=`docker ps -a | grep 'Exited' | grep 'days' | awk '{print $1}'`

for i in $container; do sleep 30s
    docker start $i
done

#echo $container
