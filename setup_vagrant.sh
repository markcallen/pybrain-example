#!/bin/bash
#
#

set -e

apt-get update
apt-get install -y python python-virtualenv git-core

apt-get install -y python-scipy python-numpy


if [ ! -d /opt/pybrain ]; then
  cd /opt
  git clone git://github.com/pybrain/pybrain.git pybrain
else
  cd /opt/pybrain
  git pull
fi

cd /opt/pybrain
python setup.py install



