# Asus Vivobook S510UA-BQ423

Tested on 10.17.x Monterey & 10.16.x Big Sur (OpenCore Bootloader)

![Alt text](https://ivanov-audio.com/wp-content/uploads/2014/01/Hackintosh-Featured-Image.png)

## System specification

| Item | Details |
| - | - |
| Model | ASUS Vivobook S510UA-BQ423 |
| CPU | Intel Core i5-8250U |
| VGA | Intel UHD Graphics 620 |
| RAM | SK Hynix 8GB 2400MHz DDR4 SODIMM / Samsung 8GB 2400MHz DDR4 SODIMM |
| Wi-Fi / Bluetooth | BCM94360NG / BCM20702 (Replaced) |
| Card Reader | Alcor USB 2.0 Card Reader |
| Camera | ASUS UVC HD |
| Audio | Conexant Audio CX8050 |
| Touchpad | ELAN1200 |
| UEFI BIOS Version | 310 |

## Not working

1. Fingerprint Sensor is not work.
2. The support for DRM contents is limited due to incompatible firmware. Please check about [DRM Compatibility Chart](https://github.com/acidanthera/WhateverGreen/blob/master/Manual/FAQ.Chart.md).
3. The operation couldn't checked due to a malfunction of my Card Reader. If it doesn't work, please open the Issue.

## Attention please

1. Note that this Repository is mostly for my laptop only (S510UA-BQ423). If yours has similar features such as no dGPU, try, but at your own risk. Otherwise, please go to LeeBinder's [S510UA-Hackintosh repository](https://github.com/LeeBinder/Asus-Vivobook-S510UA-Hackintosh) or hieplpvip's [Zenbook repository](https://github.com/hieplpvip/ASUS-ZENBOOK-HACKINTOSH) or whatnameisit's [X510UA-BQ490 repository](https://github.com/whatnameisit/Asus-Vivobook-X510UA-BQ490-Hackintosh).
2. Please read the whole README before doing anything. If you get a problem in your laptop without read this, I'm not responsibiliy.

## Steps to install

1. Read [OpenCore configuration official document](https://github.com/acidanthera/OpenCorePkg/blob/master/Docs/Configuration.pdf).
2. Read [Dortania guide document](https://dortania.github.io/getting-started/).
3. Prepare USB drive with macOS installer mounted on it.
4. Download this repository and copy and paste the OC and BOOT folders to USB EFI partition.
5. Boot into USB and select macOS installer and install it.
6. Mount EFI partition and copy USB EFI to the system EFI partition.
7. Replace SMBIOS in OpenCore Configurator, and save it in config.plist. Then, reboot.
- Note: You may need to extra patches to work whole functions.
   - You have Sleep and Airplane fn keys -- [Activate Sleep and Airplane fn keys](#activate-sleep-and-airplane-fn-keys)
   - You want to enable full power management -- [Unlock CFG Lock](#unlock-cfg-lock)

## Activate Sleep and Airplane fn keys

1. Download [AsusSMC](https://github.com/hieplpvip/AsusSMC/releases).
2. Run install_daemon.sh by dragging in onto terminal.
- Note: Reboot if the script does not seem to work.

## Unlock CFG Lock

1. Read [Dortania guid document](https://dortania.github.io/OpenCore-Post-Install/misc/msr-lock.html), and follow it.
- Note: You need to know which UEFI BIOS version matches your laptop model. Otherwise, there may be a permanent damage to your laptop. If you are unsure, use ControlMsrE2.efi bundled in OpenCore instead in which case you are still at your own risk.

## When you think you are done
 
1. Check periodically OpenCore configuration official document and Dortania guide document.

## Changelog

October 12, 2021 (Rev.8.1 | Emergency Update)
- Remove HibernationFixup kext and configs. More information, See [this](https://github.com/hieplpvip/AsusSMC/issues/103).

October 12, 2021 (Rev.8 | Planned Update)
- Update to use OpenCore Bootloader.
- Support macOS Big Sur.

January 31, 2020 (Rev.7 | Planned Update)
- Update kexts.
- Added NoTouchID.kext and SMC sensor kexts.
- Disabled KernelLapic option.

January 17, 2020 (Rev.6 | Planned Update)
- Changed clover bootloader theme to clover-theme-minimal-dark.
- Enabled HWPEnable option and HighCurrent option.
- Updated clover bootloader version to 5103.
- Added AsusSMCDaemon install fix script.
- Update kexts.

December 31, 2019 (Rev.5.1 | Emergency Update)
- Removed previously Alcor USB 2.0 Card Reader patch, Added AlcorSDCardReader.kext. Thanks to [whatnameisit](https://github.com/whatnameisit)
- Updated clover bootloader version to 5102.

December 30, 2019 (Rev.5 | Planned Update)
- Removed boot sound.
- Fixed issue of C-States disabled when enabled of HWP.
- Added enable Alcor USB 2.0 Card Reader patch.
- Cause of issue in AppleALC, rollbacked AppleALC to 1.4.2 and added CodecCommander and CC DSDT to fix HDMI audio.
- Added USBPorts.kext and added patch menu of USB Port.

December 27, 2019 (Rev.4 | Planned Update)
- Some patches merged from whatnameisit's repository.
- Changed SMBIOS to MacBookPro15,4 and added NoTouchID.kext.
- Switched CPUFriendDataProvider.kext to BPOWER-CPUFriendDataProvider.kext.

December 22, 2019 (Rev.3 | Planned Update)
- Update clover bootloader to r5101.
- Remake of all of codes.

October 21, 2019 (Rev.2 | Planned Update)
- Update clover bootloader to r5097.
- Update all of files to support Catalina. (Dropped to support Mojave.)
- Make S510UA-BQ423's DSDT.
- Some patches merged from whatnameisit's repository.

September 23, 2019 (Rev.1 | Release)
- Bringup this repository from whatnameisit, and modified for S510UA-BQ423.
- Add USB 2.0 Card Reader guide.
- Delete PS2 Patch guide.
- Delete USBPort kext and DSDT. You need to make this files from Hackintool.

## Credits

[Apple](https://apple.com) for macOS

[tctien342](https://github.com/tctien342) for Asus Vivobook repository

[hieplpvip](https://github.com/hieplpvip) for Asus Zenbook repository

[whatnameisit](https://github.com/whatnameisit) for Asus Vivobook repository

The VoodooI2C team for working touchpad

daliansky and williambj1 for many hotpatch methods

LeeBinder for many helps

fewtarius for new CPUFriendDataProvider kext and SMBIOS

The Acidanthera team for OpenCore and many kexts

The Dortania team for OpenCore guides

## For Koreans
[README-kr](README-kr.md)를 참고하십시오.
