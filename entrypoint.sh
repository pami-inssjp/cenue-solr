#!/bin/bash

if [ -f /.users_created ]; then
echo "Users already has been created" >> ${CATALINA_HOME}/logs/indec.log
else    
echo "Creating basic config" >> ${CATALINA_HOME}/logs/indec.log
_word=$( [ ${TOMCAT_PASS} ] && echo "preset" || echo "random" )
echo 'solr.solr.home=/tomcat/webapps/psearch-indec/cors' >> ${CATALINA_HOME}/conf/catalina.properties
echo "=> Creating an admin user with a ${_word} password in Tomcat"
sed -i -r 's/<\/tomcat-users>//' ${CATALINA_HOME}/conf/tomcat-users.xml
echo '<role rolename="manager-gui"/>' >> ${CATALINA_HOME}/conf/tomcat-users.xml
echo '<role rolename="manager-script"/>' >> ${CATALINA_HOME}/conf/tomcat-users.xml
echo '<role rolename="manager-jmx"/>' >> ${CATALINA_HOME}/conf/tomcat-users.xml
echo '<role rolename="admin-gui"/>' >> ${CATALINA_HOME}/conf/tomcat-users.xml
echo '<role rolename="role1"/>' >> ${CATALINA_HOME}/conf/tomcat-users.xml
echo '<role rolename="admin-script"/>' >> ${CATALINA_HOME}/conf/tomcat-users.xml
echo "<user username=\"admin\" password=\"admin\" roles=\"manager-gui,manager-script,manager-jmx, admin-gui, admin-script\"/>" >> ${CATALINA_HOME}/conf/tomcat-users.xml
echo "<user username=\"admin-gui\" password=\"admin-gui\" roles=\"role1\"/>" >> ${CATALINA_HOME}/conf/tomcat-users.xml
echo '</tomcat-users>' >> ${CATALINA_HOME}/conf/tomcat-users.xml 
echo "=> Done!"
touch /.users_created

fi

exec ${CATALINA_HOME}/bin/catalina.sh run


