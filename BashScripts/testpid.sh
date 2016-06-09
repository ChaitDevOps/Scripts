#!/bin/bash
pidfile=/Users/Maddy/Documents/Scripts/BashScripts/pid.file
ps -ef | grep chrome | awk '{ print $2 }' > $pidfile