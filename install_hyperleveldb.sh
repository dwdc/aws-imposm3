#!/bin/bash

git clone https://github.com/rescrv/HyperLevelDB.git
cd HyperLevelDB
autoreconf -i
./configure --prefix=/usr && make && make install
cd ..
ln -s /usr/include/hyperleveldb /usr/include/leveldb
ln -s /usr/lib/libhyperleveldb.so.0.0.0 /usr/lib/libleveldb.so.0.0.0
ln -s /usr/lib/libhyperleveldb.so.0.0.0 /usr/lib/libleveldb.so.0
ln -s /usr/lib/libhyperleveldb.so.0.0.0 /usr/lib/libleveldb.so

