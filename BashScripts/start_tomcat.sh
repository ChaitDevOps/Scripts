#!/bin/bash
#
# start_tomcat.sh

tomcat_pid () {

	echo $(ps -ef | grep -i tomcat6 | grep -v grep | awk '{print $2}')
}

tomcat_pid