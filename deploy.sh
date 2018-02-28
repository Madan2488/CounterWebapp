#!/bin/bash

if [ $ENVIRONMENT = "QA" ]; then

   scp $WORKSPACE/target/CounterWebApp.war charan@172.17.0.2:/home/Distors/apache-tomcat-9.0.5/webapps

   ssh charan@172.17.0.2 "JAVA_HOME=/home/Distors/jdk1.8.0_161" "/home/Distors/apache-tomcat-9.0.5/bin/startup.sh"

elif [ $ENVIRONMENT = "TEST" ]; then

    scp $WORKSPACE/target/CounterWebApp.war charan@172.17.0.3:/home/Distors/apache-tomcat-9.0.5/webapps

    ssh charan@172.17.0.3 "JAVA_HOME=/home/Distors/jdk1.8.0_161" "/home/Distors/apache-tomcat-9.0.5/bin/startup.sh"

elif [ $ENVIRONMENT = "ALL" ]; then

    scp $WORKSPACE/target/CounterWebApp.war charan@172.17.0.2:/home/Distors/apache-tomcat-9.0.5/webapps

    ssh charan@172.17.0.2 "JAVA_HOME=/home/Distors/jdk1.8.0_161" "/home/Distors/apache-tomcat-9.0.5/bin/startup.sh"

    scp $WORKSPACE/target/CounterWebApp.war charan@172.17.0.3:/home/Distors/apache-tomcat-9.0.5/webapps

    ssh charan@172.17.0.3 "JAVA_HOME=/home/Distors/jdk1.8.0_161" "/home/Distors/apache-tomcat-9.0.5/bin/startup.sh"

fi

