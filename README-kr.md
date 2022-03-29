# ASUS Vivobook S510UA-BQ423

Tested on 10.17.x Monterey & 10.16.x Big Sur (OpenCore Bootloader) 

![Alt text](https://ivanov-audio.com/wp-content/uploads/2014/01/Hackintosh-Featured-Image.png)

## Attention!

이 레포지토리는 아카이브화 되었습니다. 더이상 해당 디바이스를 관리하지 않습니다.

## 시스템 사양정보

| Item | Details |
| - | - |
| Model | ASUS Vivobook S510UA-BQ423 |
| CPU | Intel Core i5-8250U |
| VGA | Intel UHD Graphics 620 |
| RAM | SK Hynix 8GB 2400MHz DDR4 SODIMM / Samsung 8GB 2400MHz DDR4 SODIMM |
| Wi-Fi / Bluetooth | BCM94360NG / BCM20702 (교체) |
| Card Reader | Alcor USB 2.0 Card Reader |
| Camera | ASUS UVC HD |
| Audio | Conexant Audio CX8050 |
| Touchpad | ELAN1200 |
| UEFI BIOS Version | 310 |

## 미작동

1. Fingerprint 센서가 작동하지 않습니다.
2. IMEI 펌웨어가 macOS와 호환되지 않는 부분이 존재하여 DRM 지원이 작동하지 않습니다. [DRM Compatibility Chart](https://github.com/acidanthera/WhateverGreen/blob/master/Manual/FAQ.Chart.md) 문서를 확인해 보세요.
3. 카드 리더기의 고장으로 인해 작동 여부를 확인하지 못하였습니다. 만약 작동하지 않을 경우 Issue를 열어주세요.

## 필독 사항

1. 이 Repository는 S510UA-BQ423에 최적화되도록 구성했습니다. 만약 본인의 노트북에 옵티머스 외장그래픽이 없다면 사용할 수 있지만, 책임은 본인에게 있습니다. 부담이 되거나 외장그래픽 기능을 제어해야 한다면 LeeBinder의 [S510UA-Hackintosh repository](https://github.com/LeeBinder/Asus-Vivobook-S510UA-Hackintosh)나 hieplpvip의 [Zenbook repository](https://github.com/hieplpvip/ASUS-ZENBOOK-HACKINTOSH), 또는 whatnameisit의 [X510UA-BQ490 repository](https://github.com/whatnameisit/Asus-Vivobook-X510UA-BQ490-Hackintosh)를 참고하시길 바랍니다.
2. 이 README를 꼭 정독하시고 진행하시기 바랍니다. 만약 부주의로 인한 오류 발생 시 책임을 지지 않습니다.

## 설치 방법

1. [OpenCore 설정 공식 문서 (영문)](https://github.com/acidanthera/OpenCorePkg/blob/master/Docs/Configuration.pdf)를 정독합니다.
2. [Dortania 가이드 문서 (영문)](https://dortania.github.io/getting-started/)를 정독합니다.
3. macOS 인스톨러 USB를 준비합니다.
4. USB의 EFI 파티션에 OC와 BOOT 폴더를 붙여넣습니다.
5. USB로 부팅해서 macOS Installer를 선택한 후 설치합니다.
6. 설치한 드라이브의 EFI 파티션을 마운트 한 후 USB EFI를 붙여넣습니다.
7. OpenCore Configurator를 통해 SMBIOS를 생성하고, config.plist에 저장한 뒤 재부팅 합니다.
- Note: 경우에 따라 별도의 패치가 필요할 수 있습니다.
   - 잠자기 및 비행기모드의 fn 버튼이 있을 경우 -- [잠자기 및 에어플레인 모드 fn 키 활성화](#잠자기-및-에어플레인-모드-fn-키-활성화)
   - 전력관리를 최대로 활성화 하고 싶을 경우 -- [CFG Lock 해제](#cfg-lock-해제)

## 잠자기 및 에어플레인 모드 fn 키 활성화

1. [AsusSMC](https://github.com/hieplpvip/AsusSMC/releases)를 다운로드합니다.
2. install_daemon.sh를 터미널로 드래그하여 실행시키십시오.
- Note: 곧바로 작동하지 않을 경우 재부팅하십시오.

## CFG Lock 해제

1. [Dortania 가이드](https://dortania.github.io/OpenCore-Post-Install/misc/msr-lock.html)를 정독하고 참고하여 진행하십시오.
- Note: 자신의 노트북 BIOS 버전을 확인하고 진행하십시오. 버전이 다를 경우 노트북에 이상이 생길 수 있습니다. 혹은 OpenCore에서 제공되는 ControlMsrE2.efi를 사용하는 것도 가능합니다.

## 설치 완료 후
 
1. OpenCore 설정 공식 문서 및 Dortania 가이드를 주기적으로 확인하십시오.

## Changelog

March 29, 2022 (Rev.10 | 최종 업데이트)
- OpenCore 부트로더를 업데이트 하였습니다.
- Kext를 최신버전으로 업데이트 하였습니다.

November 04, 2021 (Rev.9 | 정규 업데이트)
- OpenCore 부트로더를 업데이트 하였습니다.
- Kext를 최신버전으로 업데이트 하였습니다.
- macOS Monterey를 지원합니다.

October 12, 2021 (Rev.8.1 | 긴급 업데이트)
- HibernationFixup Kext 및 관련 옵션을 삭제했습니다. 자세한 내용은 [여기](https://github.com/hieplpvip/AsusSMC/issues/103)를 확인하세요.

October 12, 2021 (Rev.8 | 정규 업데이트)
- OpenCore 부트로더로 업데이트 하였습니다.
- macOS Big Sur를 지원합니다.

January 31, 2020 (Rev.7 | 정규 업데이트)
- Kext를 최신버전으로 업데이트 하였습니다.
- NoTouchID.kext와 SMC 센서 켁스트를 추가하였습니다.
- KernelLapic 옵션을 비활성화 하였습니다.

January 17, 2020 (Rev.6 | 정규 업데이트)
- 클로버 부트로더 테마를 clover-theme-minimal-dark로 변경하였습니다.
- HWPEnable 옵션과 HighCurrent옵션을 활성화 하였습니다.
- 클로버 부트로더 버전을 5103으로 업데이트 하였습니다.
- AsusSMCDaemon 설치 픽스 스크립트를 추가하였습니다.
- Kext를 최신버전으로 업데이트 하였습니다.

December 31, 2019 (Rev.5.1 | 긴급 업데이트)
- 기존의 Alcor USB 2.0 Card Reader 패치를 제거하고, AlcorSDCardReader.kext를 추가하였습니다. Thanks to [whatnameisit](https://github.com/whatnameisit)
- 클로버 부트로더 버전을 5102로 업데이트 하였습니다.

December 30, 2019 (Rev.5 | 정규 업데이트)
- 부트 사운드를 제거하였습니다.
- HWP 적용 후 C-States가 비활성화되는 문제를 수정하였습니다.
- Alcor USB 2.0 Card Reader 활성화 패치를 추가하였습니다.
- AppleALC 문제로 인해 1.4.2로 롤백 및 CodecCommander와 CC DSDT를 추가하여 HDMI 오디오 오류를 수정하였습니다.
- USBPorts.kext 추가 및 USB Port 패치 메뉴 추가하였습니다.

December 27, 2019 (Rev.4 | 정규 업데이트)
- whatnameisit님의 repository의 패치 일부를 병합하였습니다.
- SMBIOS를 MacBookPro15,4로 설정하고 NoTouchID.kext를 추가했습니다.
- CPUFriendDataProvider.kext를 BPOWER-CPUFriendDataProvider.kext로 대체하였습니다.

December 22, 2019 (Rev.3 | 정규 업데이트)
- 클로버 부트로더를 r5101로 업데이트 하였습니다.
- 모든 코드를 재작업 하였습니다.

October 21, 2019 (Rev.2 | 정규 업데이트)
- 클로버 부트로더를 r5097로 업데이트 하였습니다.
- 모든 파일을 카탈리나에 맞춰 업데이트 하였습니다. (모하비 지원을 종료하였습니다.)
- S510UA-BQ423용 DSDT를 생성하였습니다.
- whatnameisit님의 repository의 패치 일부를 병합하였습니다.

September 23, 2019 (Rev.1 | 릴리즈)
- whatnameisit님 repository를 가져와 S510UA-BQ423에 맞게 수정 하였습니다.
- USB 2.0 Card Reader 관련 메뉴얼을 추가하였습니다.
- PS2 관련 메뉴얼을 삭제하였습니다.
- USBPort 패치 관련 kext와 DSDT를 삭제하였습니다. Hackintool을 사용하여 직접 제작하여야 합니다.

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

## [x86.co.kr](https://x86.co.kr)
이 한국 커뮤니티에 방문하시면 기타 정보를 얻으실 수 있습니다.
