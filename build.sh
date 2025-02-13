#!/bin/bash
sops -d secrets.enc.yaml > secrets.yaml
docker run --rm -v "${PWD}":/config -it esphome/esphome compile app.yaml
cp .esphome/build/1wire_sml/.pioenvs/1wire_sml/firmware.bin ./1wire_sml_firmware.bin