#!/bin/bash
sudo apt update -y
sudo apt install -y software-properties-common
sudo apt install -y ansible
sudo cp /vagrant/keys/demo.pem /home/vagrant/.ssh/.
sudo chmod 600 /home/vagrant/.ssh/demo.pem
