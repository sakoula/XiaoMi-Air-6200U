# Hackintosh Xiaomi Mi Air 13.3 Skylake-U 2016 for macOS Mojave & High Sierra

Hackintosh your XiaoMi Air 13.3 Skylake-U 2016. This is intented to create a fully functional hackintosh for the Xiaomi Mi Notebook Air 13.3'' i5-6200U (Skylake-U 2016).

## Important Notes
[up up up](#)

* This guide is for the **XiaoMi Air 13.3 Skylake-U 2016**. It will probably work on the **XiaoMi Air 13.3 Kaby Lake-R 2018** models with minor modifications.
* All files used and detailed readmes are located in github [sakoula/XiaoMi-Air-6200U](https://github.com/sakoula/XiaoMi-Air-6200U/blob/master/Changelog.md)
* The guide will work for either **BIOS A05** or **BIOS A06**
* Following this guide you can run **High Sierra 10.13.6** or any version of **Mojave 10.14.x**
* macOS has been installed on a different disk on the second M.2 port of the laptop. I have no experience of having both Windows and macOS on a single disk. In order to boot to macOS you use `F12` upon power on and select the boot device.
* In order to be able to help you please provide full debug information useing the excellent [black-dragon74/OSX-Debug
](https://github.com/black-dragon74/OSX-Debug) tool.
* Support and Discussion on this guide can be found at [tonymacx86.com](https://www.tonymacx86.com/threads/guide-xiaomi-mi-air-13-3-skylake-u-2016-1rst-gen.268979/)

Please note that this guide will be not possible without all the excellent resources:

* [[Guide] XiaoMi Mi Notebook Air 13"](https://www.insanelymac.com/forum/topic/319656-guide-xiaomi-mi-notebook-air-13/) by *JahStories*
* [XiaoMi NoteBook Pro for macOS Mojave & High Sierra & Sierra ](https://github.com/daliansky/XiaoMi-Pro) by *[daliansky](https://github.com/daliansky)* amd *[stevezhengshiqi](https://github.com/stevezhengshiqi)*
* All the **super amazing guides** from [RehabMan](https://www.tonymacx86.com/members/rehabman.429483/)
* [Air guide](https://github.com/johnnync13/Xiaomi-Notebook-Air-1Gen) by [johnnync13](https://github.com/johnnync13)

---

## Table of Contents
[up up up](#)

<!-- MarkdownTOC -->

- [Known Issues / Work in Progress](#known-issues--work-in-progress)
- [Hardware Specifications](#hardware-specifications)
- [Installation Guide](#installation-guide)
	- [Installation SSD](#installation-ssd)
	- [Disable Secure Boot](#disable-secure-boot)
	- [Preparing USB Flash Drive](#preparing-usb-flash-drive)
	- [Install mojave installer to the USB Flash Drive](#install-mojave-installer-to-the-usb-flash-drive)
	- [Install `Clover` to the USB Flash Drive](#install-clover-to-the-usb-flash-drive)
	- [Customize Clover on the USB Flash Drive](#customize-clover-on-the-usb-flash-drive)
	- [Install Mojave](#install-mojave)
	- [Install `Clover` on the macOS disk](#install-clover-on-the-macos-disk)
	- [Customize Clover on the macOS disk](#customize-clover-on-the-macos-disk)
	- [Move kexts to `/Library/Extentions`](#move-kexts-to-libraryextentions)
	- [Create a USB Flash Drive just with `Clover` for emergencies](#create-a-usb-flash-drive-just-with-clover-for-emergencies)
- [Postinstallation Steps](#postinstallation-steps)
	- [Enable HiDPI resolutions](#enable-hidpi-resolutions)
	- [Install ALCPlugFix :icecream:](#install-alcplugfix-icecream)
	- [create a valid SMBIOS](#create-a-valid-smbios)
- [Patching Information](#patching-information)
	- [CPU](#cpu)
	- [Audio](#audio)
	- [Bluetooth](#bluetooth)
	- [Ethernet](#ethernet)
	- [Graphics](#graphics)
	- [Keyboard](#keyboard)
	- [Touchpad](#touchpad)
	- [USB](#usb)
	- [Wi-Fi](#wi-fi)
- [Changelog](#changelog)
- [Benchmarking](#benchmarking)
	- [Benchmarking Windows 10](#benchmarking-windows-10)
	- [Benchmarking macOS 10.14.2](#benchmarking-macos-10142)
- [Buy me a coffee or a beer](#buy-me-a-coffee-or-a-beer)
- [Credits](#credits)

<!-- /MarkdownTOC -->


<!--
* This line is a placeholder to generate the table of contents in jekyll
{:toc}

[TOC]
-->

## Known Issues / Work in Progress
[up up up](#)

* After Sleep distorted or know audio from Headphones Port *work in progress using ALCPlugFix*
* No audio output from HDMI port *I am not using it so ignore for now*
* Shutdown is not working as expected. The on/off button's led stays up and the keyboard light is on when touching it. In order to switch off you have to hold the shutdown key for 4 seconds.
* Multitouch Gestures *work in progress through VoodooI2c*
* Internal Wifi is not working *see Wi-Fi section for alternatives*
* improve bettery life using a `CPUFriendDataProvider.kext` and `CPUTune.kext`
* When sleeping by closing LID on wake loosing USB
* Bluetooth works if using a VM to inject the FW

If you face another problem please open a issue.

## Hardware Specifications
[up up up](#)

* Skylake-U 2016
* Xiaomi Mi Notebook Air 13.3''
* Bios vers A06
* CPU Intel Core i5-6200U /  2.7GHz max /  Dual core, 4 threads /  3MB L3 cache
* GPU: HD Graphics 520 
* GPU: Nvidia GeForce 940MX GPU / 1G GDDR5 RAM, frequency 5GHz
* Memory: 8192 MB DDR4 2133 MHz, single-channel, firmly fitted
* Display: 13.3 inch 16:9, 1920 x 1080 pixel 166 PPI, Samsung LTN133HL09-M01, IPS, glossy: yes
* Samsung PM951 NVMe MZVLV256, 256 GB (on first SLOT which is PCie/NVMe)
* Samsung 850 Evo Series, 500GB M.2 SSD (MZ-N5E500BW) (on second SLOT which is SATA) (for macOS)
* WIFI: Intel Dual Band Wireless-AC 2x2 Network / 2.4GHz and 5GHz dual-band WiFi / 802.11ac / 802.11b/g/n /  867Mbps max
* Bluetooth: Bluetooth 4.1 wireless technology
* Connectivity: USB Type-C charging port, 2× USB 3.0, 1× HDMI, 3,5 mm audio jack

## Installation Guide
[up up up](#)

These are the steps in order to install or upgrade your XiaoMi-Air. There is a very detailed document on the steps followed and the customizations which can be found in [DETAILS.md](DETAILS.md).

There is a another document on how I setup my environment including all the tools and utilities I have used [ENVIRONMENT.air.md](ENVIRONMENT.air.md).

You will need a working macOS installation (no matter the version) to create a USB Flash Drive with macOS.

Start by downloading the latest version the customization files from the [releases](https://github.com/sakoula/XiaoMi-Air-6200U/releases) page. It includes:

* `AIR_EFI/`: efi directory including all kexts and customization needed
* `addons/LiluFriendLite.kext`: `LiluFriendLite.kext` used in the installation
* `addons/HFSPlus.efi`: `HFSPlus.efi` used in the installation
* `addons/VirtualSmc.efi`: `VirtualSmc.efi` used in the installation

### Installation SSD
[up up up](#)

I installed a `Samsung 850 Evo Series, 500GB M.2 SSD (MZ-N5E500BW)` specifically for macOS on the **second** M.2 port. Use `F12` to boot from a specific device. 

### Disable Secure Boot
[up up up](#)

Hold `F2` to get into the BIOS. In order to disable the secure boot you need to set a supervisor BIOS password. Use `root` as a password. Without exiting disable the secure boot. Then change the supervisor password and do not enter a new one. This will disable it. Exit BIOS saving the options.

You do not have to change anything else from the defaults

### Preparing USB Flash Drive
[up up up](#)

[Get a at least 16GB](https://support.apple.com/en-us/HT201372) USB Flash Drive and:

`Disk Utility > Select USB Device > Erase`:

* GUID Partition Table
* Name: USB
* Format: MacOS Extended (Journaled)

### Install mojave installer to the USB Flash Drive
[up up up](#)

Download mojave from Apple AppStore and run the following command to install it on the USB disk you just Erased.

`$ sudo /Applications/Install\ macOS\ Mojave.app/Contents/Resources/createinstallmedia --volume /Volumes/USB`

### Install `Clover` to the USB Flash Drive
[up up up](#)

Rehabman's fork of clover tends to be more stable so we are goinf to use this. Download it from [here](https://bitbucket.org/RehabMan/clover/downloads/).

Run `Clover_v2.4k_r4701.RM-4963.ca6cca7c` installer:

*Clover for UEFI booting only*, *Install Clover in the ESP*

*UEFI Drivers* / `drivers64UEFI`:

* `ApfsDriverLoader-64.efi`
* `AppleImageLoader-64.efi`
* `AptioMemoryFix-64.efi`
* `DataHubDxe-64.efi`
* `FSInject-64.efi`

*FileVault 2 UEFI Drivers* / `drivers64UEFI`:

* `AppleKeyFeeder-64.efi`
* `AppleUISupport-64.efi`
* `AptioInputFix-64.efi`

### Customize Clover on the USB Flash Drive
[up up up](#)

Download the latest [release](https://github.com/sakoula/XiaoMi-Air-6200U/releases) from github and unzip the archive. You will find an `AIR_EFI` directory and a `addons` directory. Mount the USB Flash Drive's `EFI` partition on `/Volumes/EFI`:

1. copy `AIR_EFI/CLOVER/kexts/Other` from the downloaded file to USB's EFI to `EFI/CLOVER/kexts/Other`

2. make sure that on the USB's EFI `EFI/CLOVER/kexts/Other` you just have `Lilu.kext`, `WhateverGreen.kext`, `VoodooPS2Controller.kext`, `VirtualSMC.kext`, `SATA-unsupported.kext`, `USBPorts.kext`. **Erase the rest**.

3. copy `addons/HFSPlus.efi` from the downloaded file to USB's EFI to `EFI/CLOVER/drivers64UEFI/HFSPlus.efi`

4. copy `addons/VirtualSmc.efi` from the downloaded file to USB's EFI to `EFI/CLOVER/drivers64UEFI/VirtualSmc.efi`

5. copy `AIR_EFI/CLOVER/ACPI/PATCHED/*` from the downloaded file to USB's EFI to `EFI/CLOVER/ACPI/PATCHED/*`

6. copy `AIR_EFI/CLOVER/config.plist` from the downloaded file to USB's EFI to `EFI/CLOVER/ACPI/config.plist`

### Install Mojave
[up up up](#)

To boot from the USB Flash Drive you can just hit `F12` and you will get the UEFI boot loader

Boot from the USB and install Mojave on the hard disk. 

If your Xiaomi-Air already runs High Sierra 10.13.6 you can upgrade directly to Mojave using the installer from the AppleStore (no need of a USB Flash Drive).

> **Important**: During installation you will ask to reboot the machine. While on clover make sure to boot from `Boot macOS install from *** disk` disk. If you do not see this disk hit `F3` to show all the hidden disks. You may need to reboot multiple times.

### Install `Clover` on the macOS disk
[up up up](#)

Once the installation is over you will need to install `Clover` bootloader on the hard disk that you have installed macOS in order to be able to boot without the USB Flash Drive.

Run again the `Clover_v2.4k_r4701.RM-4963.ca6cca7c` installer:

*Clover for UEFI booting only*, *Install Clover in the ESP*

*UEFI Drivers* / `drivers64UEFI`:

* `ApfsDriverLoader-64.efi`
* `AppleImageLoader-64.efi`
* `AptioMemoryFix-64.efi`
* `DataHubDxe-64.efi`
* `FSInject-64.efi`

*FileVault 2 UEFI Drivers* / `drivers64UEFI`:

* `AppleKeyFeeder-64.efi`
* `AppleUISupport-64.efi`
* `AptioInputFix-64.efi`

*Install Clover Preference Pane*

### Customize Clover on the macOS disk
[up up up](#)

Download the latest [release](https://github.com/sakoula/XiaoMi-Air-6200U/releases) from github and unzip the archive. You will find an `AIR_EFI` directory and a `addons` directory. 

Mount the EFI partition of the macOS boot parition on `/Volumes/EFI`:

1. copy `AIR_EFI/CLOVER/kexts/Other` from the downloaded file to USB's EFI to `EFI/CLOVER/kexts/Other`

2. copy `addons/HFSPlus.efi` from the downloaded file to USB's EFI to `EFI/CLOVER/drivers64UEFI/HFSPlus.efi`

3. copy `addons/VirtualSmc.efi` from the downloaded file to USB's EFI to `EFI/CLOVER/drivers64UEFI/VirtualSmc.efi`

4. copy `AIR_EFI/CLOVER/ACPI/PATCHED/*` from the downloaded file to USB's EFI to `EFI/CLOVER/ACPI/PATCHED/*`

5. copy `AIR_EFI/CLOVER/config.plist` from the downloaded file to USB's EFI to `EFI/CLOVER/ACPI/config.plist`

### Move kexts to `/Library/Extentions`
[up up up](#)

The right way to load kexts is **not** by injecting them through clover but installing them in `/Library/Extentions` and building them into the kernel cache. 

Download the latest [release](https://github.com/sakoula/XiaoMi-Air-6200U/releases) from github and unzip the archive. You will find an `AIR_EFI` directory and a `addons` directory. 

Mount the EFI partition of the macOS boot parition on `/Volumes/EFI`:

1. **move** `EFI/CLOVER/kexts/Other/*` from macOS boot parition to `/Library/Extentions/*`
2. run from the console `$ sudo chown -R root:wheel /Library/Extentions/*`
3. run from the console `$ sudo chmod -r 755 /Library/Extentions/*`
4. run from the console `$ sudo kextcache -i /` to rebuild the caches
5. **move** `addons/LiluFriendLite.kext` from the downloaded file to `/Library/Extentions/LiluFriendLite.kext`
6. run from the console `$ sudo chown -R root:wheel /Library/Extentions/*`
7. run from the console `$ sudo chmod -r 755 /Library/Extentions/*`
8. run from the console `$ sudo kextcache -i /` to rebuild the caches

**remember** that `kextcache` needs to be run twice

### Create a USB Flash Drive just with `Clover` for emergencies
[up up up](#)

Get a small (2GB will work just fine) USB Flash Drive and:

`Disk Utility > Select USB Device > Erase`:

* GUID Partition Table
* Name: CLOVER
* Format: MS-DOS-FAT

Run the `Clover_v2.4k_r4701.RM-4963.ca6cca7c` installer:

*Clover for UEFI booting only*, *Install Clover in the ESP*

*UEFI Drivers* / `drivers64UEFI`:

* `ApfsDriverLoader-64.efi`
* `AppleImageLoader-64.efi`
* `AptioMemoryFix-64.efi`
* `DataHubDxe-64.efi`
* `FSInject-64.efi`

*FileVault 2 UEFI Drivers* / `drivers64UEFI`:

* `AppleKeyFeeder-64.efi`
* `AppleUISupport-64.efi`
* `AptioInputFix-64.efi`

Download the latest [release](https://github.com/sakoula/XiaoMi-Air-6200U/releases) from github and unzip the archive. You will find an `AIR_EFI` directory and a `addons` directory. Mount the USB Flash Drive's `EFI` partition on `/Volumes/EFI`:

1. copy `AIR_EFI/CLOVER/kexts/Other` from the downloaded file to USB's EFI to `EFI/CLOVER/kexts/Other`

2. make sure that on `EFI/CLOVER/kexts/Other` you just have `Lilu.kext`, `WhateverGreen.kext`, `VoodooPS2Controller.kext`, `VirtualSMC.kext`, `SATA-unsupported.kext`, `USBPorts.kext`. Erase the rest

3. copy `addons/HFSPlus.efi` from the downloaded file to USB's EFI to `EFI/CLOVER/drivers64UEFI/HFSPlus.efi`

4. copy `addons/VirtualSmc.efi` from the downloaded file to USB's EFI to `EFI/CLOVER/drivers64UEFI/VirtualSmc.efi`

5. copy `AIR_EFI/CLOVER/ACPI/PATCHED/*` from the downloaded file to USB's EFI to `EFI/CLOVER/ACPI/PATCHED/*`

6. copy `AIR_EFI/CLOVER/config.plist` from the downloaded file to USB's EFI to `EFI/CLOVER/ACPI/config.plist`

7. edit `config.plist` change the `SystemParameters`:

```xml
<dict>
  <key>InjectKexts</key>
  <string>Detect</string>
  <key>InjectSystemID</key>
  <true/>
</dict>
```

## Postinstallation Steps
[up up up](#)

### Enable HiDPI resolutions
[up up up](#)

I am using the computer using the *1600x900* resolution that fits my eyes best.

You can enable HiDPI resolutions using the amazing script [one-key-hidpi](https://github.com/xzhih/one-key-hidpi). However since native max resolution of the LCD is *1920x1080* it **does not make any sense**. HiDPI will look huge on screen and the *1920x1080* HiDPI will not seem any different and will make the computer slower. *1920x1080* HiDPI will create a *3840x2160* virtual screen that will map it to a  *1920x1080* display, so it does not help much.

If you still want to use HiDPI get the [avibrazil/RDM](https://github.com/avibrazil/RDM) tool if you cannot see all the available resolutions.

### Install ALCPlugFix :icecream:
[up up up](#)

* Install ALCPlugFix is *work in progress* to solve the wake up with headphones problem

### create a valid SMBIOS
[up up up](#)

* create a valid SMBIOS. This is really important and do not forget it. Follow the guide [An iDiot's Guide To iMessage ](https://www.tonymacx86.com/threads/an-idiots-guide-to-imessage.196827/)

## Patching Information
[up up up](#)

Patching has been done using clover and [hotpatching ACPI](https://www.tonymacx86.com/threads/guide-using-clover-to-hotpatch-acpi.200137/). All the required files exist in the `AIR_EFI` directory:

* `CLOVER/config.plist` clover configuration file
* `CLOVER/ACPI/origin` BIOS A06 ACPI aml files (from CLOVER with F4)
* `CLOVER/ACPI/patched` ACPI hotpaches 
* `CLOVER/kexts/Other` kexts required

The SMBIOS used is `MacBookPro13,1`

### CPU
[up up up](#)

* The model is `i5-6200U`, and XCPM power management is native supported.
* HWP is supported as well through a custom `CPUFriendDataProvider.kext` *work in progress*

kext patches in `/CLOVER/kexts/Other` applied:

* `Lilu.kext` Arbitrary kext and process patching on macOS
* `HibernationFixup.kext` Lilu plugin intended to fix hibernation compatibility issues
* `NullEthernet.kext` Null Ethernet Network Driver by RehabMan
* `CPUFriend.kext` Dynamic macOS CPU power management data injection
* `CPUFriendDataProvider.kext` custom CPU power management provider for i5-6200U
* `ACPIBatteryManager.kext` Advanced Configuration and Power Interface (ACPI) based battery manager kernel extension
* `VirtualSMC.kext` SMC emulator layer
* `SATA-unsupported.kext` SATA unsupported

ACPI patches in `/CLOVER/ACPI/patched` applied:

* `SSDT-DMAC.aml` Add missing DMAC Device to enhace performance like a real Mac
* `SSDT-HPET.aml` Disable HPET device by passing value 0 to HPTE to to behave more like a real Mac
* `SSDT-MEM2.aml` Add missing MEM2 Device to enhace performance like a real Mac
* `SSDT-PMCR.aml` Add missing PMCR Device to enhace performance like a real Mac
* `SSDT-GPRW.aml` For solving instant wake by hooking GPRW
* `SSDT-PNLF.aml` Adding PNLF device for BackLight related
* `SSDT-RMCF.aml` Configuration data for other SSDTs(SSDT-GPRW and SSDT-PTSWAK)
* `SSDT-LPC.aml` To fix unsupported 8-series LPC devices (0x9d48).
* `SSDT-PTSWAK.aml` fixing sleep _PTS and _WAK
* `SSDT-SMBUS.aml` add BUS0 device
* `SSDT-PXSX.aml` Cosmetic Strings for Xiaomi Mi Notebook Air 13.3
* `SSDT-XOSI.aml` Override for host defined _OSI to handle "Darwin"

### Audio
[up up up](#)

* Sound card is `Realtek ALC255` which is drived by `AppleALC` on layout-id 30 or 99.

kext patches in `/CLOVER/kexts/Other` applied:

* `AppleALC.kext` Native macOS HD audio for not officially supported codecs
* `CodecCommander.kext` For waking up EAPD amp after sleep on OS X hackintosh

`config.plist` patch applied:

* Patch `Devices > PciRoot(0x0)/Pci(0x1f,0x3)`

### Bluetooth
[up up up](#)

The card in the laptop is `Intel® Dual Band Wireless-AC 8260`

* Bluetooth works if using a VM to inject the FW

### Ethernet
[up up up](#)

* Xiaomi-Air does not have an Ethernet. A USB one can be used and supported natively such as the [`TP-LINK UE300`](https://www.tp-link.com/us/products/details/cat-5523_UE300.html)

### Graphics
[up up up](#)

* Discrete card is `Nvidia GeForce 940MX`, disabled by `SSDT-DDGPU.aml` because macOS doesn't support Optimus technology.
* Supported card is `Intel HD Graphics 520` supported with edits in `config.plist`

kext patches in `/CLOVER/kexts/Other` applied:

* `WhateverGreen.kext` Various patches necessary for certain ATI/AMD/Intel/Nvidia GPUs

ACPI patches in `/CLOVER/ACPI/patched` applied:

* `SSDT-DDGPU.aml` disable discrete GPU
* `SSDT-CKEY.aml` Native brightness hotkey support

`config.plist` patch applied:

* Patch `Devices > PciRoot(0x0)/Pci(0x2,0x0)`

### Keyboard 
[up up up](#)

kext patches in `/CLOVER/kexts/Other` applied:

* `VoodooPS2Controller.kext` RehabMan work on keyboard

### Touchpad
[up up up](#)

kext patches in `/CLOVER/kexts/Other` applied:

* `VoodooPS2Controller.kext` RehabMan work on keyboard

### USB
[up up up](#)

* USB Port Patching uses [Intel FB-Patcher](https://www.tonymacx86.com/threads/release-intel-fb-patcher-v1-4-1.254559), related file is located in `/CLOVER/kexts/Other/USBPorts.kext`.

kext patches in `/CLOVER/kexts/Other` applied:

* `USBPorts.kext` through Intel FB-Patcher

ACPI patches in `/CLOVER/ACPI/patched` applied:

* `SSDT-USBX.aml` USB power properties via USBX device

### Wi-Fi
[up up up](#)

The card in the laptop is `Intel® Dual Band Wireless-AC 8260`

* Wifi is not working. Get a USB card such as `TP-LINK TL-WN725N v3` and download drivers from the [TP-LINK site](https://www.tp-link.com/us/download/TL-WN725N.html)

## Changelog
[up up up](#)

You can view [Changelog](Changelog.md) for detailed information.

## Benchmarking
[up up up](#)

### Benchmarking Windows 10

* `GeekBench x64 4.0.3 CPU` 2550/5551
* `CINEBENCH R15.038_RC184115 OpenGL` 56.92fps (NVIDIA) 
* `CINEBENCH R15.038_RC184115 OpenGL` 36.45fps (Intel) 
* `CINEBENCH R15.038_RC184115 CPU` 295cb
* `LuxMark-v3.1 OpenCL GPU` 3710 (Intel + NVIDIA)
* `LuxMark-v3.1 OpenCL GPU` 1427 (Intel)
* `LuxMark-v3.1 OpenCL GPU` 2354 (NVIDIA)
* `LuxMark-v3.1 OpenCL CPU` 860
* `Heaven FPS` 20.3 `Score` 512 `Min FPS` 7.8 `Max FPS` 40.4 (NVIDIA)
* `Heaven FPS` 9.1 `Score` 230 `Min FPS` 5.5 `Max FPS` 20.1 (Intel)

### Benchmarking macOS 10.14.2

* `GeekBench x64 4.3.2 CPU` 3470/6695
* `GeekBench x64 4.3.2 GPU/OpenCl` 16465
* `GeekBench x64 4.3.2 GPU/Metal` 16748
* `CINEBENCH R15.038_RC184115 OpenGL` 22.92fps
* `CINEBENCH R15.038_RC184115 CPU` 293cb
* `LuxMark-v3.1 OpenCL GPU` 1381
* `LuxMark-v3.1 OpenCL CPU` 776
* `Heaven FPS` 13.8 `Score` 349 `Min FPS` 6.2 `Max FPS` 25.3
* `AJA System Test Lite (with trim) Samsung SSD 850 EVO M.2 500GB:` 469MB/sec write, 489MB/sec read

## Buy me a coffee or a beer
[up up up](#)

If you feel so you can [buy me](http://google.com) a coffee or a beer!

## Credits
[up up up](#)

- Thanks to [JahStories](https://www.insanelymac.com/forum/topic/319656-guide-xiaomi-mi-notebook-air-13/), Jolly, gengik84 that provided the [original post](https://www.insanelymac.com/forum/topic/319656-guide-xiaomi-mi-notebook-air-13/) that made this guide feasible.

- Thanks to [stevezhengshiqi](https://github.com/stevezhengshiqi) and [daliansky](https://github.com/daliansky) for the amazing guide of [Xiaomi-Pro](https://github.com/daliansky/XiaoMi-Pro/commits?author=stevezhengshiqi) that also made this guide feasible.

- Thanks to [Piker-Alpha](https://pikeralpha.wordpress.com/)

- Thanks to [vit9696/Acidanthera](https://github.com/acidanthera) for providing [AppleALC](https://github.com/acidanthera/AppleALC), [CPUFriend](https://github.com/acidanthera/CPUFriend), [HibernationFixup](https://github.com/acidanthera/HibernationFixup), [Lilu](https://github.com/acidanthera/Lilu), `USBPorts`, [VirtualSMC](https://github.com/acidanthera/VirtualSMC), and [WhateverGreen](https://github.com/acidanthera/WhateverGreen).

- Thanks to [alexandred](https://github.com/alexandred) and [hieplpvip](https://github.com/hieplpvip) for providing [VoodooI2C](https://github.com/alexandred/VoodooI2C).

- Thanks to [apianti](https://sourceforge.net/u/apianti), [blackosx](https://sourceforge.net/u/blackosx), [blusseau](https://sourceforge.net/u/blusseau), [dmazar](https://sourceforge.net/u/dmazar), and [slice2009](https://sourceforge.net/u/slice2009) for providing [Clover](https://sourceforge.net/projects/cloverefiboot).

- Thanks to [RehabMan](https://github.com/RehabMan) for providing [EAPD-Codec-Commander](https://github.com/RehabMan/EAPD-Codec-Commander), [OS-X-Clover-Laptop-Config](https://github.com/RehabMan/OS-X-Clover-Laptop-Config), [OS-X-Null-Ethernet](https://github.com/RehabMan/OS-X-Null-Ethernet), [OS-X-ACPI-Battery-Driver](https://github.com/RehabMan/OS-X-ACPI-Battery-Driver), [OS-X-Voodoo-PS2-Controller](https://github.com/RehabMan/OS-X-Voodoo-PS2-Controller), and [SATA-unsupported](https://github.com/RehabMan/hack-tools/tree/master/kexts/SATA-unsupported.kext) and all the amazing help in the forums.

- Thanks to [johnnync13](https://github.com/johnnync13) for his guide [Xiaomi-Notebook-Air-6200u](https://github.com/johnnync13/Xiaomi-Notebook-Air-6200u)

