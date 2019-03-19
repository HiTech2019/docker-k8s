#!/bin/bash
rmi_base() {
  local FABRIC_TAG=$1
  for IMAGES in peer orderer ca  ccenv tools; do
      echo "==> RM FABRIC IMAGE: $IMAGES"
      echo
      docker rmi -f hyperledger/fabric-$IMAGES:$FABRIC_TAG
      docker rmi -f hyperledger/fabric-$IMAGES:latest
  done
}

rmi_third_docker() {
  local FABRIC_TAG=$2
  for IMAGES in zookeeper kafka couchdb; do
      echo "==> RM FABRIC IMAGE: $IMAGES"
      echo
      docker rmi -f hyperledger/fabric-$IMAGES:$FABRIC_TAG
      docker rmi -f hyperledger/fabric-$IMAGES:latest
  done
}

rmi_base 1.3.0
rmi_third_docker 0.4.13 


#rmi_base 1.4.0
#rmi_third_docker 0.4.14

