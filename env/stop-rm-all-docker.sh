#!/bin/bash
list=`docker ps | awk '/^[0-9a-z]/{print}' | awk '{print $1}'`
for i in $list
do
    echo stop and rm docker: $i
    docker stop  $i
    docker rm  $i
done

