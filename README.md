# Deep Learning Workshop

## Setup

Install [Docker](https://docs.docker.com/engine/installation/). This is an easy way to get a portable development environment up and running.

## Quick Mac/Linux Setup

Run:
```
./bin/build_workshop.sh
```
from this directory.

You can lauch Jupyter with:
```
./bin/run_workshop.sh
```
Open the link that gets written to your command line in your browser.

## Windows Setup:

Download [this zip file](https://www.dropbox.com/s/dm8h0nsok4cs38j/data.zip) and unzip it in this directory.

Build the docker image:
```
docker build -t workshop .
```

Then run the docker container:
```
docker run -it \
  -p 8080:8080 \
  -v \path\to\this\directory\notebooks:/app/notebooks \
  -v \path\to\this\directory\data:/app/data \
  -v %USERPROFILE%/.keras:/home/workshop/.keras \
  workshop
```
Open the link that gets written to your command line in your browser.

## Without Docker

You can set up a python environment however you'd like, as long as it has HDF5 and the requirements from `requirements.txt` installed.
