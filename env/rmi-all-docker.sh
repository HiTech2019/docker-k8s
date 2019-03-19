#!/bin/bash
list=`docker images | awk  '/^hyperledger/{print}'  | awk '{print $1":"$2}'`
for i in $list
do
    echo Fetch docker images  $i
    docker rmi -f $i
done
