# ASUS Vivobook S510UA-BQ423

Tested on 10.15.x Catalina (Clover Bootloader) 

![Alt text](https://ivanov-audio.com/wp-content/uploads/2014/01/Hackintosh-Featured-Image.png)

## System specification

1. Name:           Asus Vivobook S510UA-BQ423
2. CPU:            Intel Core i5-8250U
3. Graphics:       Intel UHD Graphics 620 // HDMI 연결하면 작동합니다 (Index 2). VRAM을 2048 MB로 할당했습니다.
4. Wifi:           Intel Dual Band Wireless-AC 8265 - with bluetooth // DW1560로 교체 (AirDrop and Handoff 완벽히 작동합니다.)
5. Card Reader:    Alcor USB 2.0 Card Reader
6. Camera:         ASUS UVC HD
7. Audio:          Conexant Audio CX8050
8. Touchpad:       ELAN1200
9. Bios Version:   310

## Thing will not able to use

1. Fingerprint 센서가 작동하지 않습니다.

## Known problems

1.  S510UA-BQ423에는 문제점이 없습니다.

## VoodooI2C

1. 부드러운 움직임과 제스쳐를 위해 Polling mode를 사용합니다.

## Attention please

1. 이 Repository는 S510UA-BQ423에 최적화되도록 구성했습니다. 만약 본인의 노트북에 옵티머스 외장그래픽이 없다면 사용할 수 있지만, 책임은 본인에게 있습니다. 부담이 되거나 외장그래픽 기능을 제어해야 한다면 tctien342의 [기존 master branch](https://github.com/tctien342/Asus-Vivobook-S510UA-High-Sierra-10.13-Hackintosh)나 hieplpvip의 [Zenbook repository](https://github.com/hieplpvip/ASUS-ZENBOOK-HACKINTOSH), 또는 whatnameisit의 [X510UA-BQ490 repository](https://github.com/whatnameisit/https://github.com/whatnameisit/Asus-Vivobook-X510UA-BQ490-Mojave-10.14.6-Hackintosh)를 참고하시길 바랍니다.
2. VirtualSMC와 플러그인 및 efi 파일의 버전이 서로 일치하지 않으면 터치패드나 기타 전원에 오류가 발생할 수 있습니다. 가장 최근에 나온 안정적인 SMC 패키지를 다운로드하고 알맞게 설치하십시오.

## Steps to install

1. macOS 인스톨러 USB를 준비합니다. (creationmedia 방법이나 Mojave와 Catalina를 HFS+ 파일시스템에 설치하고 싶다면 [MBR HFS Firmware Check Patch](https://www.insanelymac.com/forum/files/file/985-catalina-mbr-hfs-firmware-check-patch/)를 사용하십시오.) 기존 맥 시스템이 없다면 가상머신을 이용하실 수 있습니다. 또는 [hackintosh.co.kr](https://hackintosh.co.kr)에서 고스트를 받아 설치하시면 편리합니다.
2. USB의 EFI 파티션에 Clover EFI의 하위폴더 EFI를 붙여넣으십시오.
3. USB로 부팅해서 macOS Installer를 선택하십시오.
4. 설치중에는 터치패드가 작동하지 않을 수 있습니다. 이 경우 별도의 마우스가 필요합니다. (또는 VoodooI2CHID.kext의 info.plist에서 IOGraphicsFamily에 대한 dependency를 삭제하십시오.) tonymacx86이나 다른 해킨토시 커뮤니티를 참고해서 설치를 마무리하십시오. 한글을 원하시면 [hackintosh.co.kr](https://hackintosh.co.kr)를 이용하십시오.
    - 만약 카탈리나를 HFS+ 파일시스템으로 설치하신다면 [이곳](https://www.insanelymac.com/forum/files/file/985-catalina-mbr-hfs-firmware-check-patch/)의 설치방법을 참고하십시오.
5. 설치가 완료된 후에 macOS로 부팅해서 /kexts/Other의 켁스트를 -> /Library/Extension로 붙여넣으십시오.
6. Kext Utility를  이용해서 (또는 큰따옴표를 제외한 다음의 명령어를 터미널에 붙여넣습니다: "sudo chmod -R 755 /L*/E*&&sudo chown -R 0:0 /L*/E*&&sudo kextcache -i /") 캐시를 재생성하고 재부팅하십시오.
    - 카탈리나를 설치했다면 [Hackintool](https://headsoft.com.au/download/mac/Hackintool.zip)로 먼저 Gate Keeper를 비활성화 시킨 후 진행하십시오.
7. 터치패드와 소리가 (마이크) 정상작동합니다. SSD의 EFI 파티션을 활성화시키고 (sudo diskutil mount EFI) Clover EFI의 하위폴더를 SSD의 EFI 하위폴더로 붙여넣습니다.
8. EFI 폴더를 설치한 후 Clover Configurator를 이용해서 MacBookPro14,1의 SMBIOS 내용을 생성하십시오.
- Note: 경우에 따라서 별도의 패치가 필요할 수 있습니다.
    - DW1560를 설치한 경우 -- Replace WiFi/Bluetooth Card
    - DW1560설치 이후 잠자기에서 깨어난 상태에서 블루투스가 작동하지 않을 때 -- Set Bluetooth port as internal
    - WiFi & BT 모듈을 DW1560로 교체하지 않았지만 USB WiFi 동글이나 USB LAN를 통해 iMessage와 FaceTime를 활성화시킬 때 -- Install RehabMan's Null Ethernet
    - 잠자기와 비행기모드 fn 버튼이 있을 때 -- Activate Sleep and Airplane fn keys

## Replace WiFi/Bluetooth card

1. DW1560 카드를 설치하십시오.
2. 지역이 한국인 경우 bootflag가 brcmfx-country=#a인 것을 확인하십시오.
3. /kexts/other/additional에 있는 AirportBrcmFixup과 세 개의 Brcm kext들 (Repo, Injector, RAM3) 을 /L*/E*로 복사하고 캐시를 재생성하십시오.
4. 권장사항: /kexts/other/additional/LiluFriend.kext를 (새롭게 LiluFriend를 생성하는 것이 안정적입니다.) /L*/E*에 붙여넣고 캐시를 재생성하십시오.
5. 재부팅합니다.

## Set Bluetooth port as internal

1. /L*/E*의 3rd party USB 관련 켁스트나 SSDT-UIA.aml가 로드되지 않은 것을 확인하십시오.
2. headkaze의 [Hackintool](https://headsoft.com.au/download/mac/Hackintool.zip)를 다운로드 하십시오.
3. USB 탭에서 블루투스 포트를 확인하고 internal로 설정하십시오. UVC 카메라 또한 internal로 설정할 수 있습니다. Export/내보내기 버튼으로 codeless injection kext과 SSDT들을 데스크톱에 생성하고, 생성된 SSDT들은 삭제하십시오.
4. USBPorts.kext를 /L*/E*에 설치하십시오. (자세한 내용은 [여기서](https://www.tonymacx86.com/threads/guide-usb-power-property-injection-for-sierra-and-later.222266/) 확인하실 수 있습니다.)
5. 캐시를 재생성하고 재부팅합니다.

## Install RehabMan's Null Ethernet

1. /kexts/other/additional/NullEthernet.kext를 /L*/E*에 설치하고 캐시를 재생성하십시오.
2. /ACPI/additional/SSDT-RMNE를 /ACPI/patched로 복사하십시오.
3. 재부팅합니다.
- Note: 안정적인 iMessage, FaceTime, 그리고 App Store를 사용하기 위해서는 Null Ethernet를 먼저 설치한 후 기타 USB 동글이나 LAN을 사용하십시오.

## Activate Sleep and Airplane fn keys

1. 자세한 내용은 [여기](https://github.com/hieplpvip/AsusSMC/wiki/Installation-Instruction)를 참고하십시오.
    - [AsusSMC Release](https://github.com/hieplpvip/AsusSMC/releases)를 다운로드합니다.
    - install_daemon.sh를 터미널로 드래그해서 실행시키십시오.
    - 곧바로 작동하지 않는다면 재부팅하십시오. 켁스트와 efi 드라이버, OS, 클로버 등을 업데이트 할 때 새로 실행해야 할 수 있습니다.

## When you think you are done
 
1. 클로버, 켁스트, 그리고 efi 파일을 최근 버전으로 업데이트 하십시오.
2. /L*/E*의 내용을 SSD의 EFI 파티션과 설치 USB EFI 파티션에 복사하십시오.

## Other things
1. 키보드 Fn 조합 (터치패드 활성화/비활성화 버튼) 이 작동하지 않는 경우 CC를 제외한 켁스트를 전부 Clover에서 로드하십시오. 단, Clover에서 로드하는 경우 BrcmFirmwareRepo 대신 BrcmFirmwareData를 사용해야 블루투스가 안정적입니다.

## Changelog

December 22, 2019
- 클로버 부트로더를 r5101로 업데이트 하였습니다.
- 모든 코드를 재작업 하였습니다.

October 21, 2019
- 클로버 부트로더를 r5097로 업데이트 하였습니다.
- 모든 파일을 카탈리나에 맞춰 업데이트 하였습니다. (모하비 지원을 종료하였습니다.)
- S510UA-BQ423용 DSDT를 생성하였습니다.
- whatnameisit님의 repository의 패치 일부를 병합하였습니다.

September 23, 2019
- whatnameisit님 repository를 가져와 S510UA-BQ423에 맞게 수정 하였습니다.
- USB 2.0 Card Reader 관련 메뉴얼을 추가하였습니다.
- PS2 관련 메뉴얼을 삭제하였습니다.
- USBPort 패치 관련 kext와 DSDT를 삭제하였습니다. Hackintool을 사용하여 직접 제작하여야 합니다.

## Credits

[Apple](https://apple.com) for macOS

[tctien342](https://github.com/tctien342) for Asus Vivobook repository

[hieplpvip](https://github.com/hieplpvip) for Asus Zenbook repository

[whatnameisit](https://github.com/whatnameisit) for Asus Vivobook repository

the VoodooI2C helpdesk for working touchpad

headkaze for Hackintool

[RehabMan](https://github.com/RehabMan) for Null Ethernet and many other things

CrazyBird for HFS+ partitioning in 10.14+

daliansky and williambj1 for many hotpatch methods

## [hackintosh.co.kr](http://hackintosh.co.kr)
이 한국 커뮤니티에 방문하시면 기타 정보를 얻으실 수 있습니다.
