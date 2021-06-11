# TWRP device tree for Motorola One Macro & G8 Play

<p align="center">
  <img height="600" src="/release-date.jpg?raw=true">
</p>

Basic        | Spec Sheet
------------:|:-------------------------
CPU          | Octa-core processor > 4x2.0 Ghz Cortex-A73 & 4x2.0 GHz Cortex-A53
Chipset      | MediaTek Helio P70
GPU          | Mali-G72 MP3
Memory/RAM   | 4 GB
Storage      | 64 GB
Battery      | 4000 mAh
Dimensions   | 157.6mm x 75.4mm x 9 mm
Display      | 6.2” HD+ IPS Display 90 hz (720X1520)
Rear Camera  | 13 MP - (wide), 2 MP - (macro), 2 MP - (depth), PDAF
Front Camera | 8 MP
Release Date | October 2019

## Build instructions
- Initialize the source tree -
  ```bash
  repo init -u git://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni.git -b twrp-10.0
  ```
  You may optionally pass `--depth=1` to save space, like so:
  ```bash
  repo init --depth=1 -u git://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni.git -b twrp-10.0
  ```
- Clone this repository -
  ```bash
  git clone https://github.com/mototek/recovery_motorola_lima device/motorola/lima
  ```
- Build -
  ```bash
  source build/envsetup.sh
  export ALLOW_MISSING_DEPENDENCIES=true
  lunch omni_lima-eng
  mka recoveryimage
  ```
