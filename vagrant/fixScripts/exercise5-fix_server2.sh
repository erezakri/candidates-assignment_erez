#!/bin/bash
#add fix to exercise5-server2 here
echo "IdentityFile /vagrant/.vagrant/machines/server1/virtualbox/private_key" >> /etc/ssh/ssh_config
echo "StrictHostKeyChecking no"  >> /etc/ssh/ssh_config
