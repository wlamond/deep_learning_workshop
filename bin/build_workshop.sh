#!/usr/bin/env bash
if [ ! -d data ]; then
  wget https://www.dropbox.com/s/dm8h0nsok4cs38j/data.zip
  unzip data.zip
fi
docker build -t workshop .
