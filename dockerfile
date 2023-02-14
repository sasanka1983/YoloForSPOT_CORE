FROM ubuntu:18.04

USER root

RUN apt-get update && apt-get install -y python3-tk apt-utils gstreamer1.0-tools gstreamer1.0-alsa \
  gstreamer1.0-plugins-base gstreamer1.0-plugins-good \
  gstreamer1.0-plugins-bad gstreamer1.0-plugins-ugly \
  gstreamer1.0-libav

RUN apt install -y python3-pip

RUN pip3 install --upgrade pip setuptools wheel

RUN apt-get clean

RUN apt-get -y autoremove

WORKDIR /opt

COPY . .

RUN pip3 install -r requirements-amd64.txt

ENTRYPOINT ["python3","JetsonYolo.py"]
