#!/usr/bin/env bash

set -euo pipefail

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

export DEBIAN_FRONTEND=noninteractive

cd "$(mktemp -d -t autopsy_installer-XXXXXXXXXX)"

apt -y update
apt -y install curl gnupg

curl -OL https://github.com/sleuthkit/sleuthkit/releases/download/sleuthkit-4.11.1/sleuthkit-java_4.11.1-1_amd64.deb
curl -OL https://github.com/labcif/autopsy-packager/releases/download/4.19.2-1/autopsy_4.19.2-1_amd64.deb

curl https://download.bell-sw.com/pki/GPG-KEY-bellsoft | apt-key add -
echo "deb [arch=amd64] https://apt.bell-sw.com/ stable main" > /etc/apt/sources.list.d/bellsoft.list

apt -y update

apt -y install ./sleuthkit-java_4.11.1-1_amd64.deb ./autopsy_4.19.2-1_amd64.deb
