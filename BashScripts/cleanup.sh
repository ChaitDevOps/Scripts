#!/bin/bash
#set -x
environment=$1
user=`whoami`
if [ $user != "hmsdeploy" ]
then
        echo "You have to logged in as user hmsdeploy to execute this script"
        exit 1
fi

##################################################
# Print the Usage of the script and exit        ##
##################################################
function usage {
echo "No arguments provided OR insufficient arguments passed. "
echo "USAGE: ./hms_cleanup.sh <environment name> "
echo "environment name: One of dev01, qa, stg, perf"
echo "example: ./hms_cleanup.sh dev01 "
echo "example: ./hms_cleanup.sh stg "
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
if [ $argc -lt 1 -o $argc -gt 1 ]; then
    usage
    exit 1
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
Subject: Success|$environment| Cleanup|`hostname`
========================================
OUTPUT LOG
========================================
`echo "Job: hms_cleanup.sh"`
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
Subject: FAILED|$environment| Cleanup|`hostname`
========================================
OUTPUT LOG
========================================
`echo "Job: hms_cleanup.sh"`
`echo "Start: $START_TIME"`
`echo "End: $END_TIME"`
`echo "Error in cleaning $environment : Please check the logs "`
EOF
}

DATE=`date '+%F'`
log_dir=/appsnfs/hms/$environment/deployment/logs
log_file=$log_dir/hms_cleanup_$DATE.log
echo $log_file
:

function dev01
{
deployed_hmsapp_version_no=`ls -l /appsnfs/hms/$environment/deployment/hmsapp | cut -d'-' -f3`
deployed_hmsstatic_version_no=`ls -l /appsnfs/hms/$environment/deployment/hmsstatic | cut -d'-' -f3`
deployed_hmsbatch_version_no=`ls -l /appsnfs/hms/$environment/deployment/hmsbatch | cut -d'-' -f3`
deployed_hmsagent_version_no=`ls -l /appsnfs/hms/$environment/deployment/hmsagent | cut -d'-' -f3`
deployed_hmstools_version_no=`ls -l /appsnfs/hms/$environment/deployment/hmstools | cut -d'-' -f3`
deployed_hmsadmin_version_no=`ls -l /appsnfs/hms/$environment/deployment/hmsadmin | cut -d'-' -f3`

echo "`date`: HMS-* will be deleted from $environment" | tee -a $log_file
find /appsnfs/hms/$environment/deployment -type d -ctime +30 -name "HMS-*" ! -name "*-$deployed_hmsapp_version_no" ! -name "*-$deployed_hmsstatic_version_no" ! -name "*-$deployed_hmstools_version_no" ! -name "*-$deployed_hmsadmin_version_no" | tee -a $log_file
find /appsnfs/hms/$environment/deployment -type d -ctime +30 -name "HMS-*" ! -name "*-$deployed_hmsapp_version_no" ! -name "*-$deployed_hmsstatic_version_no" ! -name "*-$deployed_hmstools_version_no" ! -name "*-$deployed_hmsadmin_version_no" -prune -exec rm -rf {} \; | tee -a $log_file
rtn1=$?

echo "`date`: HMSBATCH-* will be deleted from $environment" | tee -a $log_file
find /appsnfs/hms/$environment/deployment -type d -ctime +30 -name "HMSBATCH-*" ! -name "*-$deployed_hmsbatch_version_no" | tee -a $log_file
find /appsnfs/hms/$environment/deployment -type d -ctime +30 -name "HMSBATCH-*" ! -name "*-$deployed_hmsbatch_version_no" -prune -exec rm -rf {} \; | tee -a $log_file
rtn2=$?

echo "`date`: HMSAGENT-* will be deleted from $environment" | tee -a $log_file
find /appsnfs/hms/$environment/deployment -type d -ctime +30 -name "HMSAGENT-*" ! -name "*-$deployed_hmsagent_version_no" | tee -a $log_file
find /appsnfs/hms/$environment/deployment -type d -ctime +30 -name "HMSAGENT-*" ! -name "*-$deployed_hmsagent_version_no" -prune -exec rm -rf {} \; | tee -a $log_file
rtn3=$?

echo "`date`: deployment-* will be deleted from $environment" | tee -a $log_foile
find /appsnfs/hms/$environment/deployment/logs -type f -mtime +30 -name "*.log" | tee -a $log_file
find /appsnfs/hms/$environment/deployment/logs -type f -mtime +30 -name "*.log" -exec rm -rf {} \; | tee -a $log_file
rtn4=$?

echo "`date`: HMS-*, HMSAGENT-*, HMSBATCH-* will be deleted from $environment" | tee -a $log_foile
find /appsnfs/hms/$environment/deployment/archive -type f -mtime +30 -name "HMS-*.tar" | tee -a $log_file
find /appsnfs/hms/$environment/deployment/archive -type f -mtime +30 -name "HMS-*.tar" -exec rm -rf {} \; | tee -a $log_file
find /appsnfs/hms/$environment/deployment/archive -type f -mtime +30 -name "HMSAGENT-*.tar" | tee -a $log_file
find /appsnfs/hms/$environment/deployment/archive -type f -mtime +30 -name "HMSAGENT-*.tar" -exec rm -rf {} \; | tee -a $log_file
find /appsnfs/hms/$environment/deployment/archive -type f -mtime +30 -name "HMSBATCH-*.tar" | tee -a $log_file
find /appsnfs/hms/$environment/deployment/archive -type f -mtime +30 -name "HMSBATCH-*.tar" -exec rm -rf {} \; | tee -a $log_file
rtn5=$?

echo "`date`: HMS-*, HMSAGENT-*, HMSBATCH-*  will be deleted from $environment" | tee -a $log_foile
find /appsnfs/hms/$environment/sql/hmsapp -type d -ctime +30 -name "HMS-*" | tee -a $log_file
find /appsnfs/hms/$environment/sql/hmsapp -type d -ctime +30 -name "HMS-*" -print0 | xargs -0 rm -rf` | tee -a $log_file
find /appsnfs/hms/$environment/sql/hmsagent -type d -ctime +30 -name "HMSAGENT-*" | tee -a $log_file
find /appsnfs/hms/$environment/sql/hmsagent -type d -ctime +30 -name "HMSAGENT-*" -exec rm -rf {} \; | tee -a $log_file
find /appsnfs/hms/$environment/sql/hmsbatch -type d -ctime +30 -name "HMSBATCH-*" | tee -a $log_file
find /appsnfs/hms/$environment/sql/hmsbatch -type d -ctime +30 -name "HMSBATCH-*" -exec rm -rf {} \; | tee -a $log_file
find /appsnfs/hms/$environment/sql/hmsstatic -type d -ctime +30 -name "HMS-*" | tee -a $log_file
find /appsnfs/hms/$environment/sql/hmsstatic -type d -ctime +30 -name "HMS-*" -exec rm -rf {} \; | tee -a $log_file
rtn6=$?
}

function generic
{

deployed_hmsapp_version_no=`ls -l /appsnfs/hms/$environment/deployment/hmsapp |cut -d'-' -f3`
deployed_hmsbatch_version_no=`ls -l /appsnfs/hms/$environment/deployment/hmsbatch | cut -d'-' -f3`
deployed_hmsagent_version_no=`ls -l /appsnfs/hms/$environment/deployment/hmsagent | cut -d'-' -f3`
deployed_hmstools_version_no=`ls -l /appsnfs/hms/$environment/deployment/hmstools | cut -d'-' -f3`



echo "`date`: HMS-* will be deleted from $environment" | tee -a $log_file
find /appsnfs/hms/$environment/deployment -type d -ctime +30 -name "HMS-*" ! -name "*-$deployed_hmsapp_version_no" ! -name "*-$deployed_hmstools_version_no" | tee -a $log_file
find /appsnfs/hms/$environment/deployment -type d -ctime +30 -name "HMS-*" ! -name "*-$deployed_hmsapp_version_no" ! -name "*-$deployed_hmstools_version_no" -prune -exec rm -rf {} \; | tee -a $log_file
rtn1=$?

echo "`date`: HMSBATCH-* will be deleted from $environment" | tee -a $log_file
find /appsnfs/hms/$environment/deployment -type d -ctime +30 -name "HMSBATCH-*" ! -name "*-$deployed_hmsbatch_version_no" | tee -a $log_file
find /appsnfs/hms/$environment/deployment -type d -ctime +30 -name "HMSBATCH-*" ! -name "*-$deployed_hmsbatch_version_no" -prune -exec rm -rf {} \; | tee -a $log_file
rtn2=$?

echo "`date`: HMSAGENT-* will be deleted from $environment" | tee -a $log_file
find /appsnfs/hms/$environment/deployment -type d -ctime +30 -name "HMSAGENT-*" ! -name "*-$deployed_hmsagent_version_no" | tee -a $log_file
find /appsnfs/hms/$environment/deployment -type d -ctime +30 -name "HMSAGENT-*" ! -name "*-$deployed_hmsagent_version_no" -prune -exec rm -rf {} \; | tee -a $log_file
rtn3=$?

echo "`date`: deployment-* will be deleted from $environment" | tee -a $log_foile
find /appsnfs/hms/$environment/deployment/logs -type f -mtime +30 -name "*.log" | tee -a $log_file
find /appsnfs/hms/$environment/deployment/logs -type f -mtime +30 -name "*.log" -exec rm -rf {} \; | tee -a $log_file
rtn4=$?

echo "`date`: HMS-*, HMSAGENT-*, HMSBATCH-* will be deleted from $environment" | tee -a $log_foile
find /appsnfs/hms/$environment/deployment/archive -type f -mtime +30 -name "HMS-*.tar" | tee -a $log_file
find /appsnfs/hms/$environment/deployment/archive -type f -mtime +30 -name "HMS-*.tar" -exec rm -rf {} \; | tee -a $log_file
find /appsnfs/hms/$environment/deployment/archive -type f -mtime +30 -name "HMSAGENT-*.tar" | tee -a $log_file
find /appsnfs/hms/$environment/deployment/archive -type f -mtime +30 -name "HMSAGENT-*.tar" -exec rm -rf {} \; | tee -a $log_file
find /appsnfs/hms/$environment/deployment/archive -type f -mtime +30 -name "HMSBATCH-*.tar" | tee -a $log_file
find /appsnfs/hms/$environment/deployment/archive -type f -mtime +30 -name "HMSBATCH-*.tar" -exec rm -rf {} \; | tee -a $log_file
rtn5=$?

echo "`date`: HMS-*, HMSAGENT-*, HMSBATCH-*  will be deleted from $environment" | tee -a $log_foile
find /appsnfs/hms/$environment/sql/hmsapp -type d -ctime +30 -name "HMS-*" | tee -a $log_file
find /appsnfs/hms/$environment/sql/hmsapp -type d -ctime +30 -name "HMS-*" -exec rm -rf {} \; | tee -a $log_file
find /appsnfs/hms/$environment/sql/hmsagent -type d -ctime +30 -name "HMSAGENT-*" | tee -a $log_file
find /appsnfs/hms/$environment/sql/hmsagent -type d -ctime +30 -name "HMSAGENT-*" -exec rm -rf {} \; | tee -a $log_file
find /appsnfs/hms/$environment/sql/hmsbatch -type d -ctime +30 -name "HMSBATCH-*" | tee -a $log_file
find /appsnfs/hms/$environment/sql/hmsbatch -type d -ctime +30 -name "HMSBATCH-*" -exec rm -rf {} \; | tee -a $log_file
rtn6=$?

}

function returnvalue
{
if [ $rtn1 -ne 0 ] || [ $rtn2 -ne 0 ]|| [ $rtn3 -ne 0 ] || [ $rtn4 -ne 0 ] || [ $rtn5 -ne 0 ] || [ $rtn6 -ne 0 ]
then
  send_email_failure
else
  send_email_success
fi
}

if [ "$environment" = "dev01" ]; then
        echo "HMS cleanup for dev01"
        dev01
        returnvalue

elif [ "$environment" = "qa" ]; then
        echo "HMS cleanup for qa"
        generic
        returnvalue

elif [ "$environment" = "stg" ]; then
        echo "HMS cleanup for stg"
        generic
        returnvalue

elif [ "$environment" = "perf" ]; then
        echo "HMS cleanup for perf"
        generic
        returnvalue

else
        usage
fi