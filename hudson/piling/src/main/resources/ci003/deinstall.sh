#!/bin/bash
#
# The follwong call to is used to get that working
# in development mode as well, cause the RPM's 
# contain the timestamp as well.
rpm -qa | grep "^cienv-tools" | xargs rpm -e
rpm -qa | grep "^cienv-maven-settings" | xargs rpm -e
rpm -qa | grep "^cienv-hudson-config" | xargs rpm -e
rpm -qa | grep "^cienv-hudson-plugins" | xargs rpm -e
rpm -qa | grep "^cienv-hudson-war" | xargs rpm -e
rpm -qa | grep "^cienv-tomcat" | xargs rpm -e
rpm -qa | grep "^cienv-hudsonuser" | xargs rpm -e
rpm -qa | grep "^cienv-proxy" | xargs rpm -e

# Remove the user incl. it's home folder
userdel -r hudson
