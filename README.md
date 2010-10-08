CIEnv
=====

This is an *C*ontinious *I*ntegration Environment Setup based on Maven

Contained Components
====================

* Maven
* Hudson
* Nexus (currently turned off, cause of some problems).
* Tomcat

Important Note
==============
Based on the usage of the [Maven RPM plugin](http://mojo.codehaus.org/rpm-maven-plugin/) this build will not 
work on Windows environment. You have to install rpmbuild to get it running.

The Hudson is placed into a Tomcat 6.0.24. The configuration is intended to
serve via a Apache proxy to the Tomcat to achieve calling of the Hudson site
just giving the URL of the Hudson server.


The following RPM's will be created:

cienv-hud 

The result are a list of RPM's which current only tested with CentOS 5.4

## Repository Setup for Maven Build

You have to setup the following Maven repositories to the build running.
* ?

## License
This project is released under the terms of the [Apache Software License, Version 2.0](http://www.apache.org/licenses/LICENSE-2.0.html).
See COPYING for details.
