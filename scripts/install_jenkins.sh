#!/bin/bash
#install on ubuntu 14.04
#install java8
sudo apt-add-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install -y oracle-java8-installer
java -version
#install jenkins
wget -q -O - https://pkg.jenkins.io/debian/jenkins-ci.org.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update
sudo apt-get install -y jenkins
#install make 
sudo apt-get install -y make
sudo apt-get install -y g++
