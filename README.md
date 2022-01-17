# Hackintosh Xiaomi Mi Air 13.3 Skylake-U 2016 for macOS Big Sur & Catalina

Hackintosh your XiaoMi Air 13.3 Skylake-U 2016. This is intented to create a fully functional hackintosh for the Xiaomi Mi Notebook Air 13.3'' i5-6200U (Skylake-U 2016).

## Important Notes
[up up up](#)

* This guide is for the **XiaoMi Air 13.3 Skylake-U 2016**. It will probably work on the **XiaoMi Air 13.3 Kaby Lake-R 2018** models with minor modifications.
* Following this guide you can run **Big Sur 11.0.1, 11.1**. and **Catalina 10.5.x up to 10.15.7**
* I stopped using **Clover**. This guide is for **OpenCore** only. If you need to run Clover for any reason you can check the older [Clover Guide](./README.clover.md)
* All files used and detailed readmes are located in github [sakoula/XiaoMi-Air-6200U](https://github.com/sakoula/XiaoMi-Air-6200U/blob/master/Changelog.md)
* The guide will work for either **BIOS A05** or **BIOS A06**. Bios A09 has **NOT** been tested
* macOS has been installed on a different disk on the second M.2 port of the laptop. I have no experience of having both Windows and macOS on a single disk. In order to boot to macOS you use `F12` upon power on and select the boot device.
* In order to be able to help you please provide full debug information useing the excellent [black-dragon74/OSX-Debug
](https://github.com/black-dragon74/OSX-Debug) tool.
* Support and Discussion on this guide can be found at [tonymacx86.com](https://www.tonymacx86.com/threads/guide-xiaomi-mi-air-13-3-skylake-u-2016-1rst-gen.268979/)

Please note that this guide will be not possible without all the excellent resources:

* [[Guide] XiaoMi Mi Notebook Air 13"](https://www.insanelymac.com/forum/topic/319656-guide-xiaomi-mi-notebook-air-13/) by *JahStories*
* [macOS Catalina & Mojave & High Sierra on XiaoMi NoteBook Pro 2017 & 2018](https://github.com/daliansky/XiaoMi-Pro) by *[daliansky](https://github.com/daliansky)* and *[stevezhengshiqi](https://github.com/stevezhengshiqi)*
* All the **super amazing guides** from [RehabMan](https://www.tonymacx86.com/members/rehabman.429483/)
* [Dortania Documentation guides](https://dortania.github.io/)


## What's working
[up up up](#)

* Sleep (sleep works **only** by selecting sleep on the apple menu)
* Bluetooth
* Internal WiFi card. *see [Wi-Fi section](./README.md#wi-fi)*
* Proper CPU PowerManagement
* Proper USB Support
* Dual boot (windows and macOS on different disks) through OpenCore
* Running with SIP enabled

## What's not working
[up up up](#)

* Discrete GPU (Nvidia GeForce 940MX GPU )
* No audio output from HDMI port
* lid sleep does not always work. *A working workaround is to always sleep from the menu and wait for the laptop to go to sleep prior closing the lid. You can wake the laptop by opening the lid*
* Shutdown is not working as expected. *The on/off button's led stays up and the keyboard light is on when touching it. In order to switch off you have to hold the shutdown key for 4 seconds.*

If you face another problem please open a issue.

## Hardware Specifications
[up up up](#)

* Skylake-U 2016
* Xiaomi Mi Notebook Air 13.3''
* Bios vers A06
* CPU Intel Core i5-6200U /  2.7GHz max /  Dual core, 4 threads /  3MB L3 cache
* Motherboard: Timi TM1613 (U3E1)
* GPU: HD Graphics 520
* GPU: Nvidia GeForce 940MX GPU / 1G GDDR5 RAM, frequency 5GHz
* Memory: 8192 MB DDR4 2133 MHz, single-channel, firmly fitted
* Display: 13.3 inch 16:9, 1920 x 1080 pixel 166 PPI, Samsung LTN133HL09-M01, IPS, glossy: yes
* Samsung PM951 NVMe MZVLV256, 256 GB (on first SLOT which is PCie/NVMe)
* Samsung 850 Evo Series, 500GB M.2 SSD (MZ-N5E500BW) (on second SLOT which is SATA) (for macOS)
* WIFI: Intel Dual Band Wireless-AC 2x2 Network / 2.4GHz and 5GHz dual-band WiFi / 802.11ac / 802.11b/g/n /  867Mbps max
* Bluetooth: Bluetooth 4.1 wireless technology
* Connectivity: USB Type-C charging port, 2× USB 3.0, 1× HDMI, 3,5 mm audio jack

---

## Table of Contents
[up up up](#)

<!-- MarkdownTOC -->

- [Installation Guide](#installation-guide)
	- [Installation SSD](#installation-ssd)
	- [Preparing USB Flash Drive](#preparing-usb-flash-drive)
	- [Customize USB Flash Drive](#customize-usb-flash-drive)
	- [Generate a valid SMBIOS](#generate-a-valid-smbios)
	- [Disable Secure Boot](#disable-secure-boot)
	- [Unlock CFG Lock](#unlock-cfg-lock)
	- [Install macOS](#install-macos)
	- [Post Install](#post-install)
	- [Enable TRIM for SSDs](#enable-trim-for-ssds)
	- [Clover to OpenCore Migration](#clover-to-opencore-migration)
	- [Sleep](#sleep)
- [Upgrade Guide](#upgrade-guide)
	- [Upgrade from `Catalina 10.15.3` to `Catalina 10.15.7`](#upgrade-from-catalina-10153-to-catalina-10157)
	- [Upgrade to `Big Sur 11.0.1`](#upgrade-to-big-sur-1101)
- [Postinstallation Steps](#postinstallation-steps)
	- [Enable HiDPI resolutions](#enable-hidpi-resolutions)
	- [Install ALCPlugFix :icecream:](#install-alcplugfix-icecream)
	- [Wi-Fi](#wi-fi)
	- [Headphone Port](#headphone-port)
- [Changelog](#changelog)
- [Benchmarking](#benchmarking)
	- [Benchmarking Windows 10](#benchmarking-windows-10)
	- [Benchmarking macOS 10.14.2 \(Clover\)](#benchmarking-macos-10142-clover)
	- [Benchmarking macOS 10.15.3 \(JahStories CPUFriendProvider\) \(Clover\)](#benchmarking-macos-10153-jahstories-cpufriendprovider-clover)
	- [Benchmarking macOS 10.15.3 \(corpnewt/CPUFriendFriend LFM=08/EPP=80\) \(Clover\)](#benchmarking-macos-10153-corpnewtcpufriendfriend-lfm08epp80-clover)
	- [Benchmarking macOS 10.15.7 \(corpnewt/CPUFriendFriend LFM=08/EPP=80/PerfBias=05\) \(OpenCore\)](#benchmarking-macos-10157-corpnewtcpufriendfriend-lfm08epp80perfbias05-opencore)
- [FAQ](#faq)
	- [Disabling SIP](#disabling-sip)
	- [OCB: LoadImage failed - Security Violation](#ocb-loadimage-failed---security-violation)
	- [MacOS installer thinks I am russian](#macos-installer-thinks-i-am-russian)
	- [OpenCore Sanity Checker](#opencore-sanity-checker)
	- [Make Changes on the root filesystem](#make-changes-on-the-root-filesystem)
	- [Making Symbolic Links on the root filesystem](#making-symbolic-links-on-the-root-filesystem)
- [Changelog](#changelog-1)
- [Buy me a coffee or a beer](#buy-me-a-coffee-or-a-beer)
- [Credits](#credits)

<!-- /MarkdownTOC -->


<!--
* This line is a placeholder to generate the table of contents in jekyll
{:toc}

[TOC]
-->

## Installation Guide
[up up up](#)

These are the steps in order to install or upgrade your Mi. There is a very detailed document on the steps followed and the customizations which can be found in [DETAILS.opencore.md](DETAILS.opencore.md).

There is a another document on how I setup my environment including all the tools and utilities I have used [ENVIRONMENT.air.md](ENVIRONMENT.air.md).

Start by downloading the latest version the customization files from the [releases](https://github.com/sakoula/XiaoMi-Air-6200U/releases) page. It includes:

* `AIR_EFI/`: efi directory including all kexts and customization needed

The guide is being written based on the excellent [Dortania guides](https://dortania.github.io/getting-started/)

### Installation SSD
[up up up](#)

I installed a `Samsung 850 Evo Series, 500GB M.2 SSD (MZ-N5E500BW)` specifically for macOS on the **second** M.2 port. Use `F12` to boot from a specific device.

### Preparing USB Flash Drive
[up up up](#)

[Get a at least 16GB](https://support.apple.com/en-us/HT201372) USB Flash Drive and follow [Creating the USB > Making the installer](https://dortania.github.io/OpenCore-Install-Guide/installer-guide/). Follow just the `Making the installer Guide`.

> Or could follow [this](https://www.winytips.com/download-macos-dmg-full-offline-installer/) guide,if you need Big Sur,you can direct [download](http://swcdn.apple.com/content/downloads/00/55/001-86606-A_9SF1TL01U7/5duug9lar1gypwunjfl96dza0upa854qgg/InstallAssistant.pkg).

If you need just a USB stick with OpenCore installation for booting an existing MacOS installation just format the USB stick as following:

`Disk Utility > Select USB Device > Erase`:

* Scheme = GUID Partition Map
* Name: OC
* Format: macOS Extended (Journaled)

### Customize USB Flash Drive
[up up up](#)

In this step you will add all the required opencore files to the USB flash drive.

Download the latest [release](https://github.com/sakoula/XiaoMi-Air-6200U/releases) from github and unzip the archive. You will find an `AIR_EFI` directory. Mount the USB Flash Drive's `EFI` partition on `/Volumes/EFI`. You can do this with many utilities (e.g. [MountEFI](https://github.com/corpnewt/MountEFI) or [mount_efi.sh](https://github.com/black-dragon74/OSX-Debug/blob/master/mount_efi.sh)).

Move the `AIR_EFI` to `/Volumes/EFI` and rename it to `EFI`. It will look like `/Volumes/EFI/EFI`

### Generate a valid SMBIOS
[up up up](#)

Use [corpnewt/GenSMBIOS](https://github.com/corpnewt/GenSMBIOS) to generate a valid `MacBookPro13,1` SMBIOS and populate the following `/Volumes/EFI/OC/config.plist` with a text editor or [corpnewt/ProperTree](https://github.com/corpnewt/ProperTree):

```xml
<key>PlatformInfo</key>
<dict>
    ...
    <key>MLB</key>
    <string>XXXXXXXXXXXXXXXXX</string>
    ...
    <key>SystemSerialNumber</key>
    <string>XXXXXXXXXXXX</string>
    ...
    <key>SystemUUID</key>
    <string>XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX</string>
    ...
</dict>
```

a valid SMBIOS is really important for Apple Services, iMessage & FaceTime. Check also the guide [An iDiot's Guide To iMessage ](https://www.tonymacx86.com/threads/an-idiots-guide-to-imessage.196827/)

### Disable Secure Boot
[up up up](#)

Hold `F2` to get into the BIOS. In order to disable the secure boot you need to set a supervisor BIOS password. Use `root` as a password. Without exiting disable the secure boot. Then change the supervisor password and do not enter a new one. This will disable it. Exit BIOS saving the options.

You do not have to change anything else from the defaults

### Unlock CFG Lock
[up up up](#)

**`CFG Lock` removal is required**.

This procedure is verified for `BIOS A06`. **It has not been tested in any other BIOS**. Proceed at your own risk.

Follow [Fixing CFG Lock](https://dortania.github.io/OpenCore-Post-Install/misc/msr-lock.html#turning-off-cfg-lock-manually). The right offset is `0x84A`. The steps are:

> If your BIOS version is A05, you can upgrade to [A06](https://github.com/sakoula/XiaoMi-Air-6200U/files/7879807/VFBI0A06.zip) and direct use above value(`0x84A`).


1. boot from the USB drive

2. On the opencore menu hit `Space`. You will see a number of options

3. select `Modified GRUB Shell`.  On the prompt you will type:

```
setup_var 0x84A
```

**Only if you do not get any type of error type the following to unlock CFG**:

```
setup_var 0x84A 0x00
```

4. reboot and boot from the USB drive again. On the OpenCore menu hit `Space`. Then Select `VerifyMSRE2.efi`. This will verify whether CFG is unlocked.


>Note: **If you change any settings on the BIOS or flash a new BIOS you should always redo this procedure again**.

### Install macOS
[up up up](#)

During the first time you boot you **must** clear the NVRAM of the system (Clover and other Bootloader leave traces)

To boot from the USB Flash Drive you can just hit `F9` and you will get the UEFI boot loader. Once you get to Clover hit `space` and select `CleanNvram.efi`. After it completes power off the computer wait for ten seconds and power on again.

Boot again and [Install macOS](https://dortania.github.io/OpenCore-Install-Guide/installation/installation-process.html#macos-installer)

### Post Install
[up up up](#)

At this point OpenCore boot loader is installed only in the USB driver. You are required to install it on your bootable disk. Follow [Moving OpenCore from USB to macOS Drive](https://dortania.github.io/OpenCore-Post-Install/universal/oc2hdd.html#moving-opencore-from-usb-to-macos-drive)

### Enable TRIM for SSDs
[up up up](#)

Since OpenCore does not reccomends to patch for TRIM using the bootloader you need to enable TRIM for all SSDs manually. Open terminal and use command: `sudo trimforce enable`. Reboot and check that TRIM is enabled on the `Apple > About this Mac > System Report`.

### Clover to OpenCore Migration
[up up up](#)

This section is for those who run Clover and want to migrate to OpenCore. You need to:

1. make sure you have a **backup USB flash drive** with clover in order to boot your system. Check [README.clover.md](./README.clover.md). If something goes wrong you may end up with an unbootable system! You have been warned!

2. Create a USB flash drive without the macos installer. check [Preparing USB Flash Drive](#preparing-usb-flash-drive) and [Customize USB Flash Drive](#customize-usb-flash-drive).

3. Remove Clover. Check [Converting from Clover to OpenCore](https://github.com/dortania/OpenCore-Install-Guide/tree/master/clover-conversion). TLDR you need to [Cleaning the Clover Junk in macOS](https://github.com/dortania/OpenCore-Install-Guide/tree/master/clover-conversion#cleaning-the-clover-junk-in-macos) and [Removing kexts from macOS(S/L/E and L/E)](https://github.com/dortania/OpenCore-Install-Guide/tree/master/clover-conversion#removing-kexts-from-macossle-and-le)

4. Most likely you will hit the [stuck on OCB: LoadImage failed - Security Violation](https://dortania.github.io/OpenCore-Install-Guide/troubleshooting/extended/kernel-issues.html#stuck-on-ocb-loadimage-failed-security-violation). Follow the link and fix it now. **Do not disable SecureBootModel**. Follow the terminal instructions

5. Boot from the USB and Clear the NVRAM. Check [Install macOS](#install-macOS) section.

6. Boot from the USB flash drive. Make sure you have a working system

7. Move OpenCore from USB to macOS Driver. Check [Post Install](#post-install)

### Sleep
[up up up](#)

make sure that you type the following on the terminal based on ([Fixing Sleep](https://dortania.github.io/OpenCore-Post-Install/universal/sleep.html#preparations))

check your current state:

```shell_session
$ sudo pmset -g
```

and type

```shell
sudo pmset autopoweroff 0
sudo pmset powernap 0
sudo pmset standby 0
sudo pmset proximitywake 0
sudo pmset lidwake 0
```

## Upgrade Guide
[up up up](#)

### Upgrade from `Catalina 10.15.3` to `Catalina 10.15.7`
[up up up](#)

Upgrade from within macOS. No special action is needed

### Upgrade to `Big Sur 11.0.1`
[up up up](#)

Use the latest release from here boot in Catalina and upgrade.

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

### Wi-Fi
[up up up](#)

The card in the laptop is `Intel® Dual Band Wireless-AC 8260`

Support to the Wifi card has been condifured using [itlwm](https://github.com/OpenIntelWireless/itlwm) and **not** `AirportItlwm` (does not support hidden networks).

You will need to install [OpenIntelWireless/HeliPort](https://github.com/OpenIntelWireless/HeliPort) as well.

You can also use USB dongles but this is not reccomended anymore. `TP-LINK TL-WN725N v3` and `Archer T3U` has been used succesfully in the past. Drivers for those can be downloaded from [TP-LINK site](https://www.tp-link.com/us/support/download/archer-t3u//archer-t3u/) or [chris1111/Wireless-USB-Adapter](https://github.com/chris1111/Wireless-USB-Adapter).

In the case you migrate from a USB dongle with NullEthernet to native wifi support you need to force macOS to rewnumerate the interfaces. Check [Fixing En0](https://dortania.github.io/OpenCore-Post-Install/universal/iservices.html#fixing-en0).

In short you need to open terminal write the following and then reboot:

```
sudo rm /Library/Preferences/SystemConfiguration/NetworkInterfaces.plist
sudo rm /Library/Preferences/SystemConfiguration/preferences.plist
```

### Headphone Port
[up up up](#)

The is a problem with the headphone port and does not always work. You need to install [hackintosh-stuff/ComboJack](https://github.com/hackintosh-stuff/ComboJack) and follow the instructions on github.

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

### Benchmarking macOS 10.14.2 (Clover)

* `GeekBench x64 4.3.2 CPU` 3470/6695
* `GeekBench x64 4.3.2 GPU/OpenCl` 16465
* `GeekBench x64 4.3.2 GPU/Metal` 16748
* `CINEBENCH R15.038_RC184115 OpenGL` 22.92fps
* `CINEBENCH R15.038_RC184115 CPU` 293cb
* `LuxMark-v3.1 OpenCL GPU` 1381
* `LuxMark-v3.1 OpenCL CPU` 776
* `Heaven FPS` 13.8 `Score` 349 `Min FPS` 6.2 `Max FPS` 25.3
* `AJA System Test Lite (with trim) Samsung SSD 850 EVO M.2 500GB:` 469MB/sec write, 489MB/sec read

### Benchmarking macOS 10.15.3 (JahStories CPUFriendProvider) (Clover)

* `GeekBench x64 4.3.2 CPU` 3356/6486
* `GeekBench x64 4.3.2 GPU/OpenCl` 23481
* `GeekBench x64 4.3.2 GPU/Metal` 16968
* `CINEBENCH R15.038_RC184115 OpenGL` 22.26fps
* `CINEBENCH R15.038_RC184115 CPU` 268cb
* `LuxMark-v3.1 OpenCL GPU` 1465
* `LuxMark-v3.1 OpenCL CPU` 776
* `Heaven FPS` 13.4 `Score` 336 `Min FPS` 6.0 `Max FPS` 22.9 (fullscreen/Quality:Medium/Tessellation:Disabled/Anti-aliasing:off/Stereo3D:Disabled)
* `AJA System Test Lite (with trim) Samsung SSD 850 EVO M.2 500GB:` 474MB/sec write, 494MB/sec read

### Benchmarking macOS 10.15.3 (corpnewt/CPUFriendFriend LFM=08/EPP=80) (Clover)

* `GeekBench x64 4.3.2 CPU` 3348/6462
* `GeekBench x64 4.3.2 GPU/OpenCl` 23762
* `GeekBench x64 4.3.2 GPU/Metal` 17023
* `CINEBENCH R15.038_RC184115 OpenGL` 22.33fps
* `CINEBENCH R15.038_RC184115 CPU` 286cb
* `LuxMark-v3.1 OpenCL GPU` 1460
* `LuxMark-v3.1 OpenCL CPU` 771
* `Heaven FPS` 13.2 `Score` 333 `Min FPS` 5.9 `Max FPS` 24.7 (fullscreen/Quality:Medium/Tessellation:Disabled/Anti-aliasing:off/Stereo3D:Disabled)
* `AJA System Test Lite (with trim) Samsung SSD 850 EVO M.2 500GB:` 466MB/sec write, 497MB/sec read

### Benchmarking macOS 10.15.7 (corpnewt/CPUFriendFriend LFM=08/EPP=80/PerfBias=05) (OpenCore)

* `GeekBench x64 4.3.2 CPU` 2302/5634 (first time)
* `GeekBench x64 4.3.2 CPU` 3401/6367 (second time is better because of adapting power)
* `GeekBench x64 4.3.2 GPU/OpenCl` 24058
* `GeekBench x64 4.3.2 GPU/Metal` 15649
* `CINEBENCH R15.038_RC184115 OpenGL` 22.49fps
* `CINEBENCH R15.038_RC184115 CPU` 283cb
* `LuxMark-v3.1 OpenCL GPU` 1415
* `LuxMark-v3.1 OpenCL CPU` 761
* `Heaven FPS` 13.3 `Score` 335 `Min FPS` 5.9 `Max FPS` 21.1 (fullscreen/Quality:Medium/Tessellation:Disabled/Anti-aliasing:off/Stereo3D:Disabled)
* `AJA System Test Lite (with trim) Samsung SSD 850 EVO M.2 500GB:` 479MB/sec write, 498MB/sec read

## FAQ
[up up up](#)

### Disabling SIP
[up up up](#)

[Disabling SIP](https://dortania.github.io/OpenCore-Install-Guide/troubleshooting/extended/post-issues.html#disabling-sip)

### OCB: LoadImage failed - Security Violation
[up up up](#)

Users may find upgrading OpenCore on an already installed system can result in early boot failures due to `Security > SecureBootModel > Default`
[OCB: LoadImage failed - Security Violation](https://dortania.github.io/OpenCore-Install-Guide/troubleshooting/extended/kernel-issues.html#stuck-on-ocb-loadimage-failed-security-violation)

### MacOS installer thinks I am russian
[up up up](#)

[macOS installer in Russian](https://dortania.github.io/OpenCore-Install-Guide/troubleshooting/extended/userspace-issues.html#macos-installer-in-russian)

### OpenCore Sanity Checker
[up up up](#)

make sure to check your config.plist against [OpenCore Sanity Checker](https://opencore.slowgeek.com/)

### Make Changes on the root filesystem
[up up up](#)

Apple has introduce SSV (signed system volumes). SSV features a kernel mechanism that verifies the integrity of the system content at runtime, and rejects any data — code and non-code — that doesn’t have a valid cryptographic signature from Apple. In order to make root volume writable you need to disable, mount it, change it, create a new snapshot and boot from that snapshot. **I am not responsible if you make your machine unbootable. This may break OS updates**. Check how to do it @ [macOS 11 Big Sur](https://egpu.io/forums/postid/82119/) and [Mount root as writable in Big Sur](https://apple.stackexchange.com/questions/395508/mount-root-as-writable-in-big-sur)

**Note**: For some [reason](https://apple.stackexchange.com/questions/407437/error-while-creating-new-snapshot-on-macos-11-big-sur) bless is not working with errors like:

```console
sudo bless --folder /Users/xxx/mount/System/Library/CoreServices --bootefi --create-snapshot
Couldn't copy file "/Users/xxx/mount/System/Library/CoreServices/boot.efi.j137ap.im4m" - Error Domain=NSCocoaErrorDomain Code=513 "“boot.efi.j137ap.im4m” couldn’t be copied because you don’t have permission to access “CoreServices”." UserInfo={NSSourceFilePathErrorKey=/System/Volumes/Preboot/525BE91F-EBD8-3CBD-9774-952E4F6FC515/usr/standalone/i386/boot.efi.j137ap.im4m, NSUserStringVariant=(
    Copy
), NSDestinationFilePath=/Users/xxx/mount/System/Library/CoreServices/boot.efi.j137ap.im4m, NSFilePath=/System/Volumes/Preboot/525BE91F-EBD8-3CBD-9774-952E4F6FC515/usr/standalone/i386/boot.efi.j137ap.im4m, NSUnderlyingError=0x7f94b8d13c30 {Error Domain=NSPOSIXErrorDomain Code=1 "Operation not permitted"}}
```

Instead of bless you can do the following:

Steps:

1. Boot from recovery and disable SSV (this will be permanent)

```bash
csrutil authenticated-root disable
```

2. Boot on macos and mount your root volume as writable. Find your root mount's device - run mount and chop off the last s, e.g. if your root is `/dev/disk1s2s3`, you'll mount `/dev/disk1s2`

```bash
$ mount
/dev/disk2s5s1 on / (apfs, sealed, local, read-only, journaled)
$ mkdir /Users/xxx/mount
sudo mount -o nobrowse -t apfs /dev/disk2s5 /Users/xxx/mount
```

3. Make any modifications you want in `/Users/xxx/mount`

4. Generate and tag new APFS System Snapshot as follows and make it bootable

```bash
# Create snapshot.
sudo /System/Library/Filesystems/apfs.fs/Contents/Resources/apfs_systemsnapshot -s "ChangedRoot" -v /Users/xxx/mount

# Tag snapshot for next boot.
sudo /System/Library/Filesystems/apfs.fs/Contents/Resources/apfs_systemsnapshot -r "ChangedRoot" -v /Users/xxx/mount
```

5. reboot and you are done

6. check the snapshots

```shell
$ diskutil apfs snapshots disk2s5s1
Snapshots for disk2s5s1 (3 found)
|
+-- AFD82B0C-23D3-481B-9401-0A17DC46C1EC
|   Name:        com.apple.os.update-779BDF1556C6F688504E24FB29C75AFFABFCB91E701806FFFF35235E19914F1E
|   XID:         489684
|   Purgeable:   No
|   NOTE:        This snapshot limits the minimum size of APFS Container disk2
|
+-- 4A6FACBE-2667-4127-8143-646C38E3C3B4
|   Name:        ChangedRoot
|   XID:         490985
|   Purgeable:   Yes
|
+-- 3DC0C93D-F858-4420-AC0B-49FDF23D5C3A
    Name:        NewRoot
    XID:         9223372036855268389
    Purgeable:   Yes
```

7. you can always boot to another snapshot by doing

```shell
$ diskutil apfs snapshots disk2s5s1
$ mount
/dev/disk2s5s1 on / (apfs, sealed, local, read-only, journaled)
$ mkdir /Users/xxx/mount
$ sudo mount -o nobrowse -t apfs /dev/disk2s5 /Users/xxx/mount
$ sudo /System/Library/Filesystems/apfs.fs/Contents/Resources/apfs_systemsnapshot -r "com.apple.os.update-779BDF1556C6F688504E24FB29C75AFFABFCB91E701806FFFF35235E19914F1E" -v /Users/xxx/mount

reboot
```

8. to delete a snapshot you need to boot into recovery

```shell
$ diskutil list
$ diskutil apfs snapshots disk2s5
$ diskutil apfs deleteSnapshot disk2s5 -name ChangedRoot
```

*you cannot delete the bootable snapshot*

9. when upgrading it do idea whats will happen **XXX**

### Making Symbolic Links on the root filesystem
[up up up](#)

Try [Making Symbolic Links on the root filesystem](https://apple.stackexchange.com/questions/395508/mount-root-as-writable-in-big-sur/406706#406706)

## Changelog
[up up up](#)

You can view [Changelog](Changelog.md) for detailed information.

## Buy me a coffee or a beer
[up up up](#)

If you feel so you can [buy me](http://google.com) a coffee or a beer!

## Credits
[up up up](#)

- Thanks to [JahStories](https://www.insanelymac.com/forum/topic/319656-guide-xiaomi-mi-notebook-air-13/), Jolly, gengik84 that provided the [original post](https://www.insanelymac.com/forum/topic/319656-guide-xiaomi-mi-notebook-air-13/) that made this guide feasible.

- Thanks to [stevezhengshiqi](https://github.com/stevezhengshiqi) and [daliansky](https://github.com/daliansky) for the amazing guide of [Xiaomi-Pro](https://github.com/daliansky/XiaoMi-Pro/commits?author=stevezhengshiqi) that also made this guide feasible.

- Thanks to [Piker-Alpha](https://pikeralpha.wordpress.com/)

- Thanks to [vit9696/Acidanthera](https://github.com/acidanthera) for providing [AppleALC](https://github.com/acidanthera/AppleALC), [CPUFriend](https://github.com/acidanthera/CPUFriend), [HibernationFixup](https://github.com/acidanthera/HibernationFixup), [Lilu](https://github.com/acidanthera/Lilu), `USBPorts`, [VirtualSMC](https://github.com/acidanthera/VirtualSMC), [WhateverGreen](https://github.com/acidanthera/WhateverGreen) and now [VoodooPS2](https://github.com/acidanthera/VoodooPS2)

- Thanks to [Dortania](https://dortania.github.io/) for their amazing guides!

- Thanks to [apianti](https://sourceforge.net/u/apianti), [blackosx](https://sourceforge.net/u/blackosx), [blusseau](https://sourceforge.net/u/blusseau), [dmazar](https://sourceforge.net/u/dmazar), and [slice2009](https://sourceforge.net/u/slice2009) for providing [Clover](https://sourceforge.net/projects/cloverefiboot).

- Thanks to [RehabMan](https://github.com/RehabMan) for providing [EAPD-Codec-Commander](https://github.com/RehabMan/EAPD-Codec-Commander), [OS-X-Clover-Laptop-Config](https://github.com/RehabMan/OS-X-Clover-Laptop-Config), [OS-X-Null-Ethernet](https://github.com/RehabMan/OS-X-Null-Ethernet), [OS-X-ACPI-Battery-Driver](https://github.com/RehabMan/OS-X-ACPI-Battery-Driver), [OS-X-Voodoo-PS2-Controller](https://github.com/RehabMan/OS-X-Voodoo-PS2-Controller), and [SATA-unsupported](https://github.com/RehabMan/hack-tools/tree/master/kexts/SATA-unsupported.kext) and all the amazing help in the forums.

