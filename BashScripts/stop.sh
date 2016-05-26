asadmin@c963zkknhpf01:/appserver/np/SAS/scripts> more startapps.sh
#!/bin/bash
# Script to greacefully stop Apps on NFEN
# Author: Chaitanya Bingu

##Elastic Check

fnElasticCheck()
{
ElasticIP=$(grep "elasticsearch.uri" /appserver/np/npr/config/elastic/elasticsearch.properties | awk -F'=' '{print $2}'| awk -F':' '{print $1}')

status=$(curl -XGET 'http://'$ElasticIP':9200/_cluster/health?pretty=true' 2>&1 | grep status | awk -F': "' '{print $2}' | sed 's/",//g')

if [ $status != "green" ]
then
   echo "status not green,please check Elastic"
   exit
else
   echo "Elastic Status is green"
fi
}

##Db Check

fnDatabaseCheck()
{
iam=`hostname`
NLES=$(grep $iam /appserver/np/SAS/scripts/lookuptable | awk '{print $2}')

ssh -qt $NLES "
/appserver/zabbix_modules/zabora/xzabora np xz_np_cnt > /dev/null
"
if [ $? = 0 ]
then
   echo "Connection to DB Successfull"
else
   echo "Please Check Connection to DB"
   exit
fi

}

###Start The Apps

fnStartApps()
{
echo "###Starting NPR###"
Release=$(rpm -q newsplus-recommender-service | awk -F'-' '{print $4}')
/appserver/tomcat/npr_"$Release"_8081/bin/startServer.sh
sleep 5

echo "###Starting NWS###"
NWS=$(ls -ltr /appserver/tomcat/ | grep nws | awk '{print $NF}' | awk -F'_' '{print $2}')
/appserver/tomcat/nws_"$NWS"_8080/bin/startServer.sh
sleep 5

echo "###Starting HMON###"

HMON=$(ls -ltr /appserver/tomcat/ | grep healthmon | grep -v X | awk '{print $NF}' | awk -F'_' '{print $2}')
/appserver/tomcat/healthmon_"$HMON"_8082/bin/startServer.sh

}

fnElasticCheck
fnDatabaseCheck
fnStartApps
