#!/bin/bash
set -x
application=$1
environment=$2
user=`whoami`

##################################################
# Print the Usage of the script and exit        ##
##################################################
function usage {
    echo "No arguments provided OR insufficient arguments passed. "
    echo "USAGE: ./gw_cleanup.sh <application name> <environment name> "
    echo "environment name: One of dev01, dev02, gw_dev, gw_prj, gw_dev4, qa, qa2, gw_qa, stg, stg2, stg3, gw_stg_A, gw_stg_B, ,gw_iwv_stg, gw_iwv_prd, perf, gw_perf_B, prd, gw_prd_A, gw_prd_B"
    echo "application name : api, gw"
    echo "example: ./gw_cleanup.sh api dev01 "
    echo "example: ./gw_cleanup.sh gw gw_dev "
    exit 1
}

##################################
# Input variables               ##
##################################
argc=$#

##################################################
#check if variable is passed or not.            ##
# PW - Moving to top.  We must have at least an ##
# environment variable.                         ##
##################################################
if [ $argc -eq 1 -o $argc -gt 2 ]; then
    usage
    exit
fi

#TOMAIL="status@clnxbcmon11.hilton.com"
#TOMAIL="ravishankar.aithala.contractor@hilton.com"
TOMAIL="WebsiteTechArch@hilton.com"
#CCMAIL="hiltonserveradmin@hilton.com"

START_TIME=`date +%H:%M:%S`

function send_email_success
{
END_TIME=`date +%H:%M:%S`
/usr/lib/sendmail -t << EOF
To: $TOMAIL
From: HiltonServerAdmin <hiltonserveradmin@hilton.com>
Subject: Success|$application|$environment| Cleanup|`hostname`
========================================
OUTPUT LOG
========================================
`echo "Job: cleanup.sh"`
`echo "Start: $START_TIME"`
`echo "End: $END_TIME"`
`echo "cleanup have been cleaned successfully "`
`cat $log_file`
EOF
}

function send_email_failure
{
END_TIME=`date +%H:%M:%S`
/usr/lib/sendmail -t << EOF
To: $TOMAIL
Cc: $CCMAIL
From: HiltonServerAdmin <hiltonserveradmin@hilton.com>
Subject: FAILED|$application|$environment| Cleanup|`hostname`
========================================
OUTPUT LOG
========================================
`echo "Job: cleanup.sh"`
`echo "Start: $START_TIME"`
`echo "End: $END_TIME"`
`echo "Error in cleaning $environment $application : Please check the logs "`
EOF
}


if [ $application == "hms" ]
then
    echo "hms cleanup..."

if [ $2 != "dev01" ] && [ $2 != "dev02" ] && [ $2 != "qa" ] && [ $2 != "qa2" ] && [ $2 != "stg" ] && [ $2 != "stg2" ] && [ $2 != "stg3" ] && [ $2 != "perf" ] && [ $2 != "prd" ]
then
   usage
   exit
fi

    DATE=`date '+%F'`
    log_dir=/appsnfs/$environment/deployment/logs
    log_file=$log_dir/api_cleanup_$DATE.log
    echo $log_file

    output=`ls -l /appsnfs/$environment/deployment/API`
    deployed_version_no=`echo $output|cut -d'-' -f4`
    echo "`date`: $output"| tee -a $log_file
    echo "`date`: deployed version of API App in $environment is: $deployed_version" |tee -a $log_file

    echo "`date`: API-* will be deleted fron $environment" | tee -a $log_file
    find /appsnfs/$environment/deployment -type d -ctime +30 -name "API-*" ! -name "*-$deployed_version" | tee -a $log_file
    find /appsnfs/$environment/deployment -type d -ctime +30 -name "API-*" ! -name "*-$deployed_version" -prune -exec rm -rf {} \; | tee -a $log_file
    rtn1=$?

    echo "`date:` API-* will be deleted from $environment" | tee -a $log_foile
    find /appsnfs/$environment/htdocs -type f -ctime +30 -name "API-*" | tee -a $log_file
    find /appsnfs/$environment/htdocs -type f -ctime +30 -name "API-*" -exec rm -rf {} \; | tee -a $log_file
    rtn2=$?

    echo "`date:` API-* will be deleted from $environment" | tee -a $log_foile
    find /appsnfs/$environment/sql -type f -ctime +30 -name "API-*" | tee -a $log_file
    find /appsnfs/$environment/sql -type f -ctime +30 -name "API-*" -exec rm -rf {} \; | tee -a $log_file
        rtn3=$?

    echo "`date:` hilton-* will be deleted from $environment" | tee -a $log_foile
    find /appsnfs/$environment/sql -type d -ctime +30 -name "hilton-*" | tee -a $log_file
    find /appsnfs/$environment/sql -type d -ctime +30 -name "hilton-*" -exec rm -rf {} \; | tee -a $log_file
        rtn4=$?

    echo "`date:` *-SQL.txt  will be deleted from $environment" | tee -a $log_foile
    find /appsnfs/$environment/sql -type f -ctime +30 -name "*.txt" | tee -a $log_file
    find /appsnfs/$environment/sql -type f -ctime +30 -name "*.txt" -exec rm -rf {} \; | tee -a $log_file
        rtn5=$?

    echo "`date:` API-* will be deleted from $environment" | tee -a $log_foile
    find /appsnfs/$environment/deployment/archive -type f -mtime +30 -name "API-*.tar" | tee -a $log_file
    find /appsnfs/$environment/deployment/archive -type f -mtime +30 -name "API-*.tar" -exec rm -rf {} \; | tee -a $log_file
    rtn6=$?

        echo "`date:` deployment-* will be deleted from $environment" | tee -a $log_foile
    find /appsnfs/$environment/deployment/logs -type f -mtime +30 -name "*.log" | tee -a $log_file
    find /appsnfs/$environment/deployment/logs -type f -mtime +30 -name "*.log" -exec rm -rf {} \; | tee -a $log_file
        rtn7=$?


    if [ $rtn1 -ne 0 ] || [ $rtn2 -ne 0 ]|| [ $rtn3 -ne 0 ] || [ $rtn4 -ne 0 ]|| [ $rtn5 -ne 0 ] || [ $rtn6 -ne 0 ]|| [ $rtn7 -ne 0 ]
    then
        send_email_failure
    else
        send_email_success
    fi
fi
else
    echo "application name not supported"
    usage
    exit