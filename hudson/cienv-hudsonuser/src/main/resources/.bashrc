# Define Java Release to use with Tomcat
export JAVA_HOME= /usr/java/jdk1.6.0_21
# Define JVM Settings for Tomcat start.
export JAVA_OPTS="-Xms128m -Xmx2048m -XX:PermSize=64m -XX:MaxPermSize=256m -Dsvnkit.http.methods=Basic,NTLM -Dsvnkit.symlinks=true"
