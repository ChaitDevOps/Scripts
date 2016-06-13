#!/bin/bash
set -x
environment=$1
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

dev01 () {

	output=`ls -l /appsnfs/hms/$environment/deployment/$application`
    deployed_hmsapp_version_no=`echo $output|cut -d'-' -f3`
    deployed_hmsstatic_version_no=`ls -l /appsnfs/hms/dev01/deployment/hmstatic | cut -d'-' -f3`

}


generic () {


}

returnvalue () {

	if [ $rtn1 -ne 0 ] || [ $rtn2 -ne 0 ]|| [ $rtn3 -ne 0 ] || [ $rtn4 -ne 0 ]|| [ $rtn5 -ne 0 ] || [ $rtn6 -ne 0 ]|| [ $rtn7 -ne 0 ]
    then
        send_email_failure
    else
        send_email_success
    fi
}

case $enviornment in
	dev01)  dev01
			returnvalue
			;;
	dev02)  generic
		    returnvalue
			;;
	*) 		Usage
			;;
esac
	
