#!/bin/bash
set -ex
mv /opt/terraform/terraform /usr/local/bin
CWD=$(pwd)
cd aws-prepare-get/terraform/c0-aws-base/
cp $CWD/pcfawsops-terraform-state-put/terraform.tfstate .
terraform plan
terraform destroy

cd $CWD/pcfawsops-terraform-state-put
touch terraform.tfstate
