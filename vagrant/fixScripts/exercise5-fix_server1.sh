#!/bin/bash
echo "IdentityFile /vagrant/.vagrant/machines/server2/virtualbox/private_key" >> /etc/ssh/ssh_config
echo "StrictHostKeyChecking no"  >> /etc/ssh/ssh_config
