#!/bin/bash

echo "hello from Server"
echo "TEST file :: Server" >> TEST

# install K3s
echo "installing K3s ..."
curl -sfL https://get.k3s.io | sh -
