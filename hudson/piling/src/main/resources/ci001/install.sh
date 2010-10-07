#!/bin/bash
rpm -i cienv-proxy-${project.version}-ci001.rpm
rpm -i cienv-hudsonuser-${project.version}.rpm
rpm -i cienv-tomcat-${project.version}.rpm
rpm -i cienv-hudson-war-${project.version}.rpm
rpm -i cienv-hudson-plugins-${project.version}.rpm
rpm -i cienv-hudson-config-${project.version}-ci001.rpm
rpm -i cienv-maven-settings-${project.version}.rpm
rpm -i cienv-tools-${project.version}.rpm

