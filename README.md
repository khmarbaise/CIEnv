CIEnv
=====

This is an *C*ontinious *I*ntegration Environment Setup based on Maven which
contains different components like Hudson and Nexus.

It is assumes that Nexus and the Hudson instances are running on separate servers.

Contained Components
====================

* Maven
* Hudson
* Nexus
* Tomcat

Important Note
==============
Based on the usage of the [Maven RPM plugin](http://mojo.codehaus.org/rpm-maven-plugin/) this build will not 
work on Windows environment. You have to install rpmbuild to get it running.

## Repository Setup for Maven Build

To get this project to work you have to configure the following repository
into your settings.xml file:

    <settings
      xmlns="http://maven.apache.org/POM/4.0.0"
      xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
      xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/settings-1.0.0.xsd">

      <activeProfiles>
        <activeProfile>sonatype-nexus</activeProfile>
        <activeProfile>jenkins</activeProfile>
      </activeProfiles>

      <profiles>
        <profile>
          <id>sonatype-nexus</id>
          <activation>
            <activeByDefault>false</activeByDefault>
          </activation>

        <repositories>
          <repository>
            <id>sonatype-nexus</id>
            <name>Sonatype Nexus</name>
            <url>https://repository.sonatype.org/content/groups/forge</url>
            <layout>default</layout>
            <releases>
              <enabled>true</enabled>
              <updatePolicy>allways</updatePolicy>
              <checksumPolicy>warn</checksumPolicy>
            </releases>
            <snapshots>
              <enabled>false</enabled>
            </snapshots>
          </repository>
        </repositories>
        </profile>

        <profile>
          <id>jenkins</id>
          <activation>
            <activeByDefault>false</activeByDefault>
          </activation>

        <repositories>
          <repository>
            <id>jenkins</id>
            <name>Jenkins Repository</name>
            <url>http://maven.jenkins-ci.org:8081/content/repositories/releases/</url>
            <layout>default</layout>
            <releases>
              <enabled>true</enabled>
              <updatePolicy>allways</updatePolicy>
              <checksumPolicy>warn</checksumPolicy>
            </releases>
            <snapshots>
              <enabled>false</enabled>
            </snapshots>
          </repository>

  http://maven.jenkins-ci.org:8081/content/repositories/releases/org/jenkins-ci/main/jenkins-war/
          </repository>
        </repositories>

        </profile>
      </profiles>
    </settings>


The Hudson is placed into a Tomcat 6.0.24. The configuration is intended to
serve via a Apache proxy to the Tomcat to achieve calling of the Hudson site
just giving the URL of the Hudson server.

The following RPM's will be created:

cienv-hudsonuser
cienv-hudson

The result are a list of RPM's which current only tested with CentOS 5.5


## License
This project is released under the terms of the [Apache Software License, Version 2.0](http://www.apache.org/licenses/LICENSE-2.0.html).
See COPYING for details.
