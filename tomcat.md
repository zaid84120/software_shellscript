
# How to change the port no. of tomcat server
cd /opt/apache-tomcat-8.5.35/conf
# update port number in the "connecter port" field in server.xml
# restart tomcat after configuration update
tomcatdown
tomcatup
--------------------------------------------------------------------------------------
# check point :
access tomcat application from browser on prot 8090
http://<Public_IP>:8090

now application is accessible on port 8090. but tomcat application doesnt allow to login from browser. changing a default parameter in context.xml does address this issue

# search for context.xml
find / -name context.xml
above command gives 3 context.xml files. comment () Value ClassName field on files which are under webapp directory. After that restart tomcat services to effect these changes

tomcatdown
tomcatup

--------------------------------------------------------------------
Update users information in the tomcat-users.xml file goto tomcat home directory and Add below users to conf/tomcat-user.xml file

	<role rolename="manager-gui"/>
	<role rolename="manager-script"/>
	<role rolename="manager-jmx"/>
	<role rolename="manager-status"/>
	<user username="admin" password="admin" roles="manager-gui, manager-script, manager-jmx, manager-status"/>
	<user username="deployer" password="deployer" roles="manager-script"/>
	<user username="tomcat" password="s3cret" roles="manager-gui"/>

Restart serivce and try to login to tomcat application from the browser. This time it should be Successful
