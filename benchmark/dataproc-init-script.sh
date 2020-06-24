#!/usr/bin/env bash

TPCDS_KIT_VERSION="master"

apt-get update
apt-get install -y gcc make flex bison byacc git

git clone https://github.com/databricks/tpcds-kit.git -b ${TPCDS_KIT_VERSION} /opt/tpcds-kit
cd /opt/tpcds-kit/tools
make OS=LINUX
