vagrant-koan
==============

Vagrant vm with koan stack

#### Requirements

 * [Vagrant](http://www.vagrantup.com/)
 * [VirtualBox](https://www.virtualbox.org/)

#### OS

 * Ubuntu 14.04

#### Stack

 * [Koanjs](http://www.koanjs.com/)
 * Node.js (0.11.13)
 * Mongodb
 * Bower
 * Grunt-cli
 * Yeoman

#### Info

*workspace* host folder is linked with */home/vagrant/workspace* guest.

Forwarded ports from host:
 * 3000 - meanjs app server
 * 5858 - nodejs debug
 * 27017 - mongodb

#### Postinstall

If you want connect to MongoDB using some GUI admin tools, you must edit /etc/mongod.conf and comment line *bind_ip* and restart MongoDB or restart the VM
