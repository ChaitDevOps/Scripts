#!/bin/bash
# Script to Start EC2 Instances
# Chaitanya Bingu

source ~/.bash_profile
export PATH=/Users/Maddy:$PATH
export AWS_ACCESS_KEY_ID
export AWS_SECRET_ACCESS_KEY
export AWS_CREDENTIAL_FILE

/usr/local/bin/ec2-start-instances i-406947d5 --region us-west-2
/usr/local/bin/ec2-start-instances i-4225d4ed --region us-west-2