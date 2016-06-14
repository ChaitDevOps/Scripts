#!/bin/bash
# Script to Start EC2 Instances
# Chaitanya Bingu

export AWS_ACCESS_KEY_ID
export AWS_SECRET_ACCESS_KEY
export AWS_CREDENTIAL_FILE

/usr/local/bin/ec2-stop-instances i-406947d5 --region us-west-2
/usr/local/bin/ec2-stop-instances i-4225d4ed --region us-west-2
