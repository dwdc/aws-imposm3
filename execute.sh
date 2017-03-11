#!/bin/bash

# if pgsql not found, run aws-postgis2_96 package

if [ ! -f '/usr/bin/psql' ]; then
  cd /tmp
  git clone https://github.com/dwdc/aws-postgis2_96.git
  ./aws-postgis2_96/execute.sh
  rm -rf aws-postgis2_96
fi

./install_hyperleveldb.sh
./install_protobuf.sh
yum install -y go
mkdir /home/go
export GOPATH=/home/go
go get github.com/omniscale/imposm3
go install github.com/omniscale/imposm3/cmd/imposm3
ln -s /home/go/bin/imposm3 /bin/imposm3
