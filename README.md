# Asus Vivobook S510UA-BQ423

Tested on 10.15.x Catalina (Clover Bootloader)

![Alt text](https://ivanov-audio.com/wp-content/uploads/2014/01/Hackintosh-Featured-Image.png)

## System specification

1. Name:           Asus Vivobook S510UA-BQ423
2. CPU:            Intel Core i5-8250U
3. Graphics:       Intel UHD Graphics 620 // Dual monitor with HDMI (Index 2) and 2048 MB VRAM
4. Wifi:           Intel Dual Band Wireless-AC 8265 - with bluetooth // REPLACED WITH DW1560 (AirDrop and Handoff Working perfectly)
5. Card Reader:    Alcor USB 2.0 Card Reader
6. Camera:         ASUS UVC HD
7. Audio:          Conexant Audio CX8050
8. Touchpad:       ELAN1200
9. Bios Version:   310

## Thing will not able to use

1. Fingerprint Sensor is not work.

## Known problems

1.  Not on S510UA-BQ423

## VoodooI2C

1. Polling mode for smooth movements and gestures.

## Attention please

1. Note that this fork is mostly for my laptop only (S510UA-BQ423). If yours has similar features such as no dGPU, try, but at your own risk. Otherwise, please go to tctien342's [original master branch](https://github.com/tctien342/Asus-Vivobook-S510UA-High-Sierra-10.13-Hackintosh) or hieplpvip's [Zenbook repository](https://github.com/hieplpvip/ASUS-ZENBOOK-HACKINTOSH) or whatnameisit's [X510UA-BQ490 repository](https://github.com/whatnameisit/https://github.com/whatnameisit/Asus-Vivobook-X510UA-BQ490-Mojave-10.14.6-Hackintosh).
2. If the versions of your VirtualSMC and corresponding efi driver and plugins do not match, touchpad and other battery issues might arise. Please make sure to download the most recent stable release of the SMC package and install them accordingly.

## Steps to install

1. Prepair a macOS installer in USB. (Use creationmedia method or MBR HFS Firmware Check Patch available in [here](https://www.insanelymac.com/forum/files/file/985-catalina-mbr-hfs-firmware-check-patch/) for Catalina.)
2. Replace EFI folder in USB EFI partition with the EFI folder in Clover EFI.
3. Boot into USB and select MacOs installer.
4. During the installation, touchpad may not work. You need a mouse connected through USB. (Or you may delete the IOGraphicsFamily dependency from VoodooI2CHID.kext/info.plist.) Follow installation instructions found on tonymacx86 or other hackintosh forums.
    - If you have chosen to install Catalina in HFS+ file system, follow the directions given in [here](https://www.insanelymac.com/forum/files/file/985-catalina-mbr-hfs-firmware-check-patch/)
5. After a successful installation, boot into macOS, copy kexts In /kexts/Other -> /Library/Extension
6. Use Kext Utility (or simply copy this line without the quotation marks: "sudo chmod -R 755 /L*/E* && sudo chown -R 0:0 /L*/E* && sudo kextcache -i /") to rebuild kext then reboot.
    - If you have installed Catalina, use [Hackintool](https://headsoft.com.au/download/mac/Hackintool.zip) to disable Gate Keeper beforehand.
7. Now the touchpad and sound input should function correctly. You need to mount EFI and copy Clover EFI to the system EFI partition in like what you have done on USB EFI partition.
8. After System EFI replaced by your EFI, use Clover Configurator to change SMBIOS, generate your serial and MBL
- Note: You may want to complete these extra steps.
    - You have DW1560 installed -- Replace WiFi/Bluetooth card
    - You have not replaced the WiFi & BT module with DW1560 but want to have working iMessage and FaceTime with USB WiFi dongle or USB LAN -- Install RehabMan's Null Ethernet
    - You have Sleep and Airplane fn keys -- Activate Sleep and Airplane fn keys

## Replace WiFi/Bluetooth card

1. Replace your card wifi with DW1560.
2. Change the bootflag so you can specify your region. The default is brcmfx-country=#a
3. Go to /kexts/other/additional and copy AirportBrcmFixup and the three Brcm kexts (Repo, Injector, RAM2) to /L*/E* and rebuild cache.
4. Optional: Copy /kexts/other/additional/LiluFriend.kext (recommended to create your own) to /L*/E* and rebuild cache.
5. Reboot.

## Install RehabMan's Null Ethernet

1. Copy /kexts/other/additional/NullEthernet.kext to /L*/E* and rebuild cache.
2. Copy /ACPI/additional/SSDT-RMNE to /ACPI/patched.
3. Reboot.
- Note: For iMessage, FaceTime, and App Store to function correctly with RMNE, I recommend you install RMNE before trying to connect to any USB networking devices. Otherwise, you need to reset the network mapping by having RMNE set to en0. Use Google.

## Activate Sleep and Airplane fn keys

1. Follow the simple directions given in [here](https://github.com/hieplpvip/AsusSMC/wiki/Installation-Instruction).
    - Download [Release of AsusSMC](https://github.com/hieplpvip/AsusSMC/releases).
    - Run install_daemon.sh by dragging it onto terminal.
    - Reboot if the script does not seem to work. After updating your EFI folder or any kexts, you may need to run the script again.

## When you think you are done
 
1. Update Clover, kexts, and efi files.
2. Backup your /L*/E* by copying them to the system EFI partition and/or installation USB EFI partition.

## Other things
1. If you can't get Fn keys to work (namely touchpad enable/disable), try loading all kexts except CC from Clover in which case BrcmFirmwareData needs to load instead of BrcmFirmwareRepo.
2. Bluetooth may not work after loading kexts. In this case, please run hibernation mode and turn it on again.

## Changelog

December 27, 2019
- Some patches merged from whatnameisit's repository.
- Changed SMBIOS to MacBookPro15,4 and added NoTouchID.kext.
- Switched CPUFriendDataProvider.kext to BPOWER-CPUFriendDataProvider.kext.

December 22, 2019
- Update clover bootloader to r5101.
- Remake of all of codes.

October 21, 2019
- Update clover bootloader to r5097.
- Update all of files to support Catalina. (Dropped to support Mojave.)
- Make S510UA-BQ423's DSDT.
- Some patches merged from whatnameisit's repository.

September 23, 2019
- Bringup this repository from whatnameisit, and modified for S510UA-BQ423.
- Add USB 2.0 Card Reader guide.
- Delete PS2 Patch guide.
- Delete USBPort kext and DSDT. You need to make this files from Hackintool.

## Credits

[Apple](https://apple.com) for macOS

[tctien342](https://github.com/tctien342) for Asus Vivobook repository

[hieplpvip](https://github.com/hieplpvip) for Asus Zenbook repository

[whatnameisit](https://github.com/whatnameisit) for Asus Vivobook repository

The VoodooI2C helpdesk for working touchpad

headkaze for Hackintool

[RehabMan](https://github.com/RehabMan) for Null Ethernet and many other things

CrazyBird for HFS+ partitioning in 10.14+

daliansky and williambj1 for many hotpatch methods

LeeBinder for many helps

fewtarius for new CPUFriendDataProvider kext and SMBIOS

## For Koreans
[README-kr](README-kr.md)를 참고하십시오.
