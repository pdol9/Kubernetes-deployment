#!/bin/bash
set -e

IP_ADDR=192.168.56.110

curl -sfL https://get.k3s.io | INSTALL_K3S_VERSION="v1.30.2+k3s1" \
	K3S_KUBECONFIG_MODE="644" \
	INSTALL_K3S_EXEC="server \
	--node-ip=${IP_ADDR} \
	--advertise-address=${IP_ADDR}" sh -s -

#--bind-address=${IP_ADDR}\
sudo cp /var/lib/rancher/k3s/server/node-token /vagrant/token
sudo chown vagrant:vagrant /vagrant/token
sudo dnf install net-tools -y
