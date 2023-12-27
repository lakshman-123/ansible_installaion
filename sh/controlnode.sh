#!/bin/bash
sudo apt update -y
sudo apt install -y software-properties-common
sudo apt install -y ansible
sudo cp /vagrant/keys/demo.pem /home/vagrant/.ssh/.
sudo chmod 600 /home/vagrant/.ssh/demo.pem
sudo chown vagrant:vagrant /home/vagrant/.ssh/demo.pem
cat /vagrant/keys/demo.pub >> /home/vagrant/.ssh/authorized_keys
sudo mkdir /etc/ansible
sudo touch hosts
sudo touch ansible.cfg
sudo cp /vagrant/hosts /etc/ansible/hosts
sudo cp /vagrant/ansible.cfg /etc/ansible/ansible.cfg
sudo chown  vagrant:vagrant -R /etc/ansible/


