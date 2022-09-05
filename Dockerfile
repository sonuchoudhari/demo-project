FROM tomcat:8.5.47-jdk8-openjdk

COPY ssl/localhost-rsa-cert.csr localhost-rsa-cert.csr

RUN keytool -importcert -alias sample -keystore \
    $JAVA_HOME/jre/lib/security/cacerts -storepass changeit -file localhost-rsa-cert.csr -noprompt

COPY ./sample.war /usr/local/tomcat/webapps

COPY ./server.xml /usr/local/tomcat/conf

WORKDIR /usr/local/tomcat/webapps
