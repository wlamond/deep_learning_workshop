ARG cuda_version=8.0
ARG cudnn_version=6
FROM nvidia/cuda:${cuda_version}-cudnn${cudnn_version}-devel

WORKDIR /app

ADD requirements.txt /app

RUN apt-get update
RUN apt-get install -y libhdf5-dev gcc g++ python-pip
RUN pip install --upgrade pip
RUN pip install --trusted-host pypi.python.org -r requirements.txt

RUN useradd -m -s /bin/bash -N workshop
USER workshop

EXPOSE 8080

ENV NAME Workshop

CMD jupyter notebook --notebook-dir=notebooks --port 8080 --ip=0.0.0.0
