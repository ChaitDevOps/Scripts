#!/bin/bash
#
# start_tomcat.sh
# chkconfig: 2345 95 20
# description: Script to Start/Stop/Status of tomcat.
# processname: tomcat6

tomcat_pid () {

        echo $(ps -ef | grep -i tomcat6 | grep -v grep | awk '{print $2}')
}

start () {

        pid=$(tomcat_pid)
        if [ -n "$pid" ]
        then
          echo "Tomcat is already running with (PID: $pid)"
        else
          echo "Starting Tomcat"
          service tomcat6 start
        fi
}

stop () {

        pid=$(tomcat_pid)
        if [ -n "$pid" ]
        then
          echo "Tomcat is running with (PID: $pid)"
          echo "Stopping..."
          service tomcat6 stop
        else
          echo "Tomcat is Not Running."
          
        fi
}

status () {

        service tomcat6 status
}

#### 
# Main Script
####

if [[ $1 == "start" ]]; then
	start
elif [[ $1 == "stop" ]]; then
	stop
elif [[ $1 == "status" ]]; then
	status
else 
	echo "You need to enter either start, stop or status"
	exit
fi
