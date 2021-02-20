#!/bin/bash

for region in $(aws ec2 describe-regions --output text | cut -f4); do
  echo -e "\nListing Instances in '$region' region..."
  aws resourcegroupstaggingapi get-resources --region $region
done
