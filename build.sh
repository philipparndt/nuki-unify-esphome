#!/bin/bash
sops -d secrets.enc.yaml > secrets.yaml
docker run --rm -v "${PWD}":/config -it esphome/esphome compile app.yaml
cp .esphome/build/unifi_nuki/.pioenvs/unifi_nuki/firmware.bin ./unifi_nuki_firmware.bin