#!/bin/bash
function check_db() {
pgid=`docker ps -f name=postgres -q`
while [ -z "$pgid" ]
do
  echo "database is not start up, waiting ..."
  pgid=`docker ps -f name=postgres -q`
  sleep 1   
done


pgid=`docker ps -f name=postgres -q`
if [ -z "$pgid" ]; then
sleep 0.5
pgid=`docker ps -f name=postgres -q`
fi

echo "postgres database is runing...."
ip=`docker inspect postgres  --format '{{ .NetworkSettings.Networks.net_byfn.IPAddress }}'`
echo "postgres ipv4 is" $ip
}

check_db

