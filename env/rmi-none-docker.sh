#!/bin/bash
list=`docker images | awk '/(<none>)/{print}'  | awk  '{print $3}'`
for i in $list
do
    echo Fetch docker images  $i
    docker rmi -f $i
done
