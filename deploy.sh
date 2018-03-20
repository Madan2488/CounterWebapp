#!/bin/bash

if [ $ENVIRONMENT = "QA" ]; then

sshpass -p "root" scp $WORKSPACE/target/CounterWebApp root@172.17.0.2:/home/Distors/apache-tomcat-9.0.5/webapps

sshpass -p "root" ssh root@172.17.0.2 "JAVA_HOME=/home/Distors/jdk1.8.0_161" "/home/Distors/apache-tomcat-9.0.5/bin/startup.sh"

elif [ $ENVIRONMENT = "TEST" ]; then

sshpass -p "root" scp $WORKSPACE/target/CounterWebApp root@172.17.0.4:/home/Distors/apache-tomcat-9.0.5/webapps

sshpass -p "root" ssh root@172.17.0.4 "JAVA_HOME=/home/Distors/jdk1.8.0_161" "/home/Distors/apache-tomcat-9.0.5/bin/startup.sh"

elif [ $ENVIRONMENT = "ALL" ]; then

sshpass -p "root" scp $WORKSPACE/target/CounterWebApp root@172.17.0.2:/home/Distors/apache-tomcat-9.0.5/webapps

sshpass -p "root" ssh root@172.17.0.2 "JAVA_HOME=/home/Distors/jdk1.8.0_161" "/home/Distors/apache-tomcat-9.0.5/bin/startup.sh"

sshpass -p "root" scp $WORKSPACE/target/CounterWebApp root@172.17.0.4:/home/Distors/apache-tomcat-9.0.5/webapps

sshpass -p "root" ssh root@172.17.0.4 "JAVA_HOME=/home/Distors/jdk1.8.0_161" "/home/Distors/apache-tomcat-9.0.5/bin/startup.sh"

fi

