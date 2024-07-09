#!/bin/bash

TOKEN_FILE=/vagrant/token

curl -sfL https://get.k3s.io | INSTALL_K3S_VERSION="v1.30.2+k3s1" \
	K3S_TOKEN=$(cat ${TOKEN_FILE}) \
	K3S_URL=https://192.168.56.110:6443 \
	INSTALL_K3S_EXEC="--node-ip=192.168.56.111" sh -

rm ${TOKEN_FILE}
