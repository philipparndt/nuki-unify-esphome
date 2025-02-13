#!/bin/bash
DEVICE=192.168.18.70

sops -d secrets.enc.yaml > secrets.yaml
#DEVICE=192.168.18.53 # Debug ESP32 ISO
docker run --rm -v "${PWD}":/config -it esphome/esphome run app.yaml --device ${DEVICE}
