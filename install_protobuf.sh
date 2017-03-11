#!/bin/bash

wget https://github.com/google/protobuf/archive/v2.6.1.tar.gz
tar -zxvf v2.6.1.tar.gz
cd protobuf-2.6.1
autoreconf -i && ./configure --prefix=/usr && make && make install
cd ..
