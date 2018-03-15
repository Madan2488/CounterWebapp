#!/bin/bash

if [ $ENVIRONMENT = "QA" ]; then

sshpass -p "root" scp $WORKSPACE/target/CounterWebApp.war root@172.17.0.3:/home/practice/apache-tomcat-9.0.5/webapps

sshpass -p "root" ssh root@172.17.0.3 "JAVA_HOME=/home/practice/jdk1.8.0_161" "/home/practice/apache-tomcat-9.0.5/bin/startup.sh"

elif [ $ENVIRONMENT = "TEST" ]; then

sshpass -p "charan" scp $WORKSPACE/target/CounterWebApp.war charan@172.17.0.3:/home/Distors/apache-tomcat-9.0.5/webapps

sshpass -p "charan" ssh charan@172.17.0.3 "JAVA_HOME=/home/Distors/jdk1.8.0_161" "/home/Distors/apache-tomcat-9.0.5/bin/startup.sh"

elif [ $ENVIRONMENT = "ALL" ]; then

sshpass -p "charan" scp $WORKSPACE/target/CounterWebApp.war charan@172.17.0.2:/home/Distors/apache-tomcat-9.0.5/webapps

sshpass -p "charan" ssh charan@172.17.0.2 "JAVA_HOME=/home/Distors/jdk1.8.0_161" "/home/Distors/apache-tomcat-9.0.5/bin/startup.sh"

sshpass -p "charan" scp $WORKSPACE/target/CounterWebApp.war charan@172.17.0.3:/home/Distors/apache-tomcat-9.0.5/webapps

sshpass -p "charan" ssh charan@172.17.0.3 "JAVA_HOME=/home/Distors/jdk1.8.0_161" "/home/Distors/apache-tomcat-9.0.5/bin/startup.sh"

fi

