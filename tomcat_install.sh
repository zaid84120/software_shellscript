#!/bin/bash
sudo apt update
sudo apt install openjdk-8-jdk -y
cd /opt
wget https://www.apache.org/dist/tomcat/tomcat-8/v8.5.45/bin/apache-tomcat-8.5.45.tar.gz
tar -xvzf apache-tomcat-8.5.45.tar.gz
chmod +x /opt/apache-tomcat-8.5.45/bin/startup.sh shutdown.sh
ln -s /opt/apache-tomcat-8.5.45/bin/startup.sh /usr/local/bin/tomcatup
ln -s /opt/apache-tomcat-8.5.45/bin/shutdown.sh /usr/local/bin/tomcatdown
tomcatup


