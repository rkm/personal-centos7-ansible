#!/bin/bash

set -ev

sudo yum -q -y install epel-release && sudo yum -q -y install git ansible
git clone --depth=1 https://github.com/rkm/personal-centos7
cd personal-centos7
ansible-galaxy install -r requirements.yml
ansible-playbook local.yml
