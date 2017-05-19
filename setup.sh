#!/bin/bash
#
# Configure a p2.xlarge instance

# get the correct ami
export region=$(aws configure get region)
if [ $region = "us-west-2" ]; then
   export ami="ami-efd0428f" # Oregon Ubuntu Server 16.04 LTS (HVM), SSD Volume Type

else
  echo "Only us-west-2 (Oregon) is currently supported"
  exit 1
fi

export instanceType="p2.xlarge"

. $(dirname "$0")/setup_instance.sh
