#!/usr/bin/env bash
docker run -it \
  -p 8080:8080 \
  -v `pwd`/notebooks:/app/notebooks \
  -v `pwd`/data:/app/data \
  -v $HOME/.keras:/home/workshop/.keras \
  workshop
