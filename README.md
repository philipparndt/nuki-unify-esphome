# nuki esphome

Open Nuki lock with a relay (Unifi Door) 

## First upload

- Run `./build.sh` to build the firmware. You can find the result in `./firmware.bin`
- Use [esphome-flasher](https://github.com/esphome/esphome-flasher/releases) to flash the image
  Note that the MAC address that will be printed in this tool is the Wifi address of the ESP32
  and not the Ethernet address.

## Update the firmware

Run `./run.sh` to do a OTA update.

## Get 1-wire sensor addresses

Set the log level to `DEBUG` in `app.yaml` and observe the output of the console.
There will be a list of sensor addresses.

https://www.youtube.com/watch?v=XvA3UMDDrAQ