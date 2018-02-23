#!/bin/bash
#ENVIRONMENT value comes from jenkins parameter selection

if [ $ENRONMENT = "QA" ]; then
#
# this deploys the war file into tomcat's webapps directory on Slave1

sshpass -p "charan" scp $WORKSPACE/target/CounterWebApp.war charan@172.17.0.2:/home/practice/apache-tomcat-9.0.5/webapps
#
# this login to tomcat machine set java environment and start the tomcat server on Slave1

sshpass -p "charan" ssh charan@172.17.0.2 "JAVA_HOME=/home/practice/jdk-9.0.4" "/home/practice/apache-tomcat-9.0.5/bin/startup.sh"

elif [ $ENVIRONMENT = "TEST" ]; then
#
# this deploys the war file into tomcat's webapps directory on Slave2

sshpass -p "charan" scp $WORKSPACE/target/CounterWebApp.war charan@172.17.0.3:/home/Distors/apache-tomcat-9.0.5/webapps
#
# this login to tomcat machine set java environment and start the tomcat server on Slave2

sshpass -p "charan" ssh charan@172.17.0.3 "JAVA_HOME=/home/Distors/jdk-9.0.4" "/home/Distors/apache-tomcat-9.0.5/bin/startup.sh"

fi

