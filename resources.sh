#!/lib/bash

#############################################
# created by : saif
# description : script to return all resource of aws account
# ec-2 instance , s3 buckets, lambda functions
###############################################

# on debug mode
set -x
# quit on error
set -e
set -o pipefail

# list ec2 instances ids
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

# list s3 buckets
aws s3 ls

# list lambdas function list
aws lambda list-functions
