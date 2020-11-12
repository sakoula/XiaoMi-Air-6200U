# Xiaomi Mi Air 13.3'' Skylake-U 2016 for macOS Catalina & Big Sur

# Table of Contents

<!-- MarkdownTOC -->

- [hardware specs](#hardware-specs)
- [directory structure](#directory-structure)
- [A09 Bios Update I5 6200U](#a09-bios-update-i5-6200u)
- [A06 Bios Update I5 6200U August 27th 2017](#a06-bios-update-i5-6200u-august-27th-2017)
- [DSDT patching \(active patches\)](#dsdt-patching-active-patches)
  - [`patches.air.opencore/SSDT-PLUG.dsl`](#patchesairopencoressdt-plugdsl)
  - [`patches.air.opencore/SSDT-EC-USBX.dsl`](#patchesairopencoressdt-ec-usbxdsl)
  - [`patches.air.opencore/SSDT-PNLF.dsl`](#patchesairopencoressdt-pnlfdsl)
  - [`patches.air.opencore/SSDT-GPI0.dsl`](#patchesairopencoressdt-gpi0dsl)
  - [`patches.air.opencore/SSDT-dGPU-Off.dsl`](#patchesairopencoressdt-dgpu-offdsl)
  - [`patches.air.opencore/SSDT-HPET.dsl` + OC patches](#patchesairopencoressdt-hpetdsl--oc-patches)
  - [`patches.air.opencore/SSDT-SBUS-MCHC.dsl`](#patchesairopencoressdt-sbus-mchcdsl)
  - [`patches.air.opencore/SSDT-RMNE.dsl`](#patchesairopencoressdt-rmnedsl)
  - [`patches.air.opencore/SSDT-GPRW.dsl`](#patchesairopencoressdt-gprwdsl)
  - [`patches.air.opencore/SSDT-USBX.dsl`](#patchesairopencoressdt-usbxdsl)
  - [`patches.air.opencore/FixShutdown-USB-SSDT.dsl`](#patchesairopencorefixshutdown-usb-ssdtdsl)
  - [`patches.air.opencore/SSDT-BKEY.dsl`](#patchesairopencoressdt-bkeydsl)
- [DSDT patching \(retired patches\)](#dsdt-patching-retired-patches)
  - [~~`DSDT.dsl`~~](#%7E%7Edsdtdsl%7E%7E)
  - [~~`patches.air.clover/SSDT-XOSI.dsl`~~](#%7E%7Epatchesaircloverssdt-xosidsl%7E%7E)
  - [~~`patches.air.clover/SSDT-SMBUS.dsl`~~](#%7E%7Epatchesaircloverssdt-smbusdsl%7E%7E)
  - [~~`patches.air.clover/SSDT-RMCF.dsl`~~](#%7E%7Epatchesaircloverssdt-rmcfdsl%7E%7E)
  - [~~`patches.air.clover/SSDT-PTSWAK.dsl`~~](#%7E%7Epatchesaircloverssdt-ptswakdsl%7E%7E)
  - [~~`patches.air.clover/SSDT-GPRW.dsl`~~](#%7E%7Epatchesaircloverssdt-gprwdsl%7E%7E)
  - [~~`patches.air.clover/SSDT-RMDT.dsl`~~](#%7E%7Epatchesaircloverssdt-rmdtdsl%7E%7E)
  - [~~`patches.air.clover/SSDT-DMAC.dsl`~~](#%7E%7Epatchesaircloverssdt-dmacdsl%7E%7E)
  - [~~`patches.air.clover/SSDT-HPET.dsl`~~](#%7E%7Epatchesaircloverssdt-hpetdsl%7E%7E)
  - [~~`patches.air.clover/SSDT-MEM2.dsl`~~](#%7E%7Epatchesaircloverssdt-mem2dsl%7E%7E)
  - [~~`patches.air.clover/SSDT-PMCR.dsl`~~](#%7E%7Epatchesaircloverssdt-pmcrdsl%7E%7E)
  - [~~`patches.air.clover/SSDT-LPC.dsl`~~](#%7E%7Epatchesaircloverssdt-lpcdsl%7E%7E)
- [DSDT patching \(work in progress patches\) :icecream:](#dsdt-patching-work-in-progress-patches-icecream)
  - [~~`patches.air.clover/SSDT-SLEEP.dsl`~~ :icecream:](#%7E%7Epatchesaircloverssdt-sleepdsl%7E%7E-icecream)
  - [~~`patches.air.clover/SSDT-I2C.dsl`~~ :icecream:](#%7E%7Epatchesaircloverssdt-i2cdsl%7E%7E-icecream)
  - [~~`patches.air.clover/SSDT-PNPOC14.dsl`~~ :icecream:](#%7E%7Epatchesaircloverssdt-pnpoc14dsl%7E%7E-icecream)
  - [~~`patches.air.clover/SSDT-PNLF.dsl`~~](#%7E%7Epatchesaircloverssdt-pnlfdsl%7E%7E)
  - [~~`patches.air.clover/SSDT-DDGPU.dsl`~~](#%7E%7Epatchesaircloverssdt-ddgpudsl%7E%7E)
  - [~~`patches.air.clover/SSDT-PXSX.dsl`~~](#%7E%7Epatchesaircloverssdt-pxsxdsl%7E%7E)
  - [~~`patches.air.clover/SSDT-BKEY.dsl`~~](#%7E%7Epatchesaircloverssdt-bkeydsl%7E%7E)
  - [~~`patches.air.clover/SSDT-EC.dsl`~~](#%7E%7Epatchesaircloverssdt-ecdsl%7E%7E)
  - [~~`patches.air.clover/SSDT-ALS0.dsl`~~](#%7E%7Epatchesaircloverssdt-als0dsl%7E%7E)
  - [~~`patches.air.clover/SSDT-SATA.dsl`~~](#%7E%7Epatchesaircloverssdt-satadsl%7E%7E)
  - [~~`patches.air.clover/SSDT-PCIList.dsl`~~](#%7E%7Epatchesaircloverssdt-pcilistdsl%7E%7E)
  - [~~`patches.air.clover/SSDT-XHC.dsl`~~](#%7E%7Epatchesaircloverssdt-xhcdsl%7E%7E)
  - [~~`patches.air.clover/SSDT-UIAC.dsl`~~](#%7E%7Epatchesaircloverssdt-uiacdsl%7E%7E)
  - [~~`patches.air.clover/SSDT-USBX.dsl`~~](#%7E%7Epatchesaircloverssdt-usbxdsl%7E%7E)
- [`config.plist`](#configplist)
  - [ACPI](#acpi)
  - [Booter](#booter)
  - [DeviceProperties](#deviceproperties)
  - [Kernel](#kernel)
  - [Misc](#misc)
  - [NVRAM](#nvram)
  - [PlatformInfo](#platforminfo)
  - [UEFI](#uefi)
  - [OpenCore beauty treatment](#opencore-beauty-treatment)
- [How to Debug](#how-to-debug)
- [TRIM on SSDs](#trim-on-ssds)
- [Audio](#audio)
- [Bluetooth](#bluetooth)
- [Ethernet](#ethernet)
- [Graphics](#graphics)
- [Keyboard](#keyboard)
- [Touchpad](#touchpad)
- [USB Mapping](#usb-mapping)
  - [USB Mapping that does not work](#usb-mapping-that-does-not-work)
  - [USB Mapping that works](#usb-mapping-that-works)
- [Sleep](#sleep)
  - [Laptop Lid Detection](#laptop-lid-detection)
  - [getting ready to fix sleep](#getting-ready-to-fix-sleep)
- [Power Management](#power-management)
- [`kexts`](#kexts)
- [Power Management](#power-management-1)
- [General](#general)
  - [`AppleIntelInfo.kext`](#appleintelinfokext)
  - [Work in Progress](#work-in-progress)
- [Check disks with `smartclt`](#check-disks-with-smartclt)

<!-- /MarkdownTOC -->

<!--
* This line is a placeholder to generate the table of contents in jekyll
{:toc}

[TOC]
-->

# hardware specs
[up up up](#)

hardware configuration with the following specs:

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

# directory structure
[up up up](#)

define a `HACK` environment variable for all your hackintosh work. Add `$HACK/bin` for all the hack binaries.

readme:

* `$HACK/air/DETAILS.md` *very detailed technical details on how to patch a XiaMi-Air*
* `$HACK/air/README.md` *github readme*
* `$HACK/air/CHANGELOG.md` *github changelog*
* `$HACK/air/ENVIRONMENT.air.md` *my environment to work with hackintoshes*


patches:

* `$HACK/air/patches.air.opencore` work in progress directory with all required patches for XiaoMi-Air: *DSDT.DSL, SSDT\*.DSL, hotfixes, config.plist*

`$HACK/air/sources.opencore`:

* `$HACK/air/sources.opencore/USBMap.kext.zip` *updated list with source kexts used*

# A09 Bios Update I5 6200U
[up up up](#)

**February 2020**: This is work in progress and most likely will not upgrade unless required

# A06 Bios Update I5 6200U August 27th 2017
[up up up](#)

I downloaded the A06 Bios from [techtablets](https://techtablets.com/wpfb-file/mi-notebook-air-13-2016-a06-bios-update-i5-6200u-august-27th-2017-rar/)

run executable in Windows 10 and update the BIOS from A05 to A06.

some interesting references on the BIOS subject:

* [reference 1](https://en.miui.com/type-106-796.html)
* [reference 2](https://wiki.archlinux.org/index.php/Talk:Xiaomi_Mi_Notebook_Air_13.3_(2016))
* [reference 3](https://github.com/Golovin-Andrey/xiaomi-mi-13-ubuntu/issues/6)
* [reference 4](https://help.ubuntu.com/community/BIOSUpdate)
* [reference 5](https://linuxinsight.com/how-to-flash-motherboard-bios-from-linux-no-dos-windows-no-floppy-drive.html)

# DSDT patching (active patches)
[up up up](#)

## `patches.air.opencore/SSDT-PLUG.dsl`
[up up up](#)

[Fixing Power Management (SSDT-PLUG)](https://dortania.github.io/Getting-Started-With-ACPI/Universal/plug.html)

## `patches.air.opencore/SSDT-EC-USBX.dsl`
[up up up](#)

[Fixing Embedded Controller (SSDT-EC/USBX)](https://dortania.github.io/Getting-Started-With-ACPI/Universal/ec-fix.html)

Manual > SSDT-EC-USBX.dsl

## `patches.air.opencore/SSDT-PNLF.dsl`
[up up up](#)

[Fixing Backlight (SSDT-PNLF)](https://dortania.github.io/Getting-Started-With-ACPI/Laptops/backlight.html)

Manual > SSDT-PNLF.dsl

## `patches.air.opencore/SSDT-GPI0.dsl`
[up up up](#)

[Fixing Trackpads (SSDT-GPI0/XOSI)](https://dortania.github.io/Getting-Started-With-ACPI/Laptops/trackpad.html)

Manual > SSDT-GPI0.dsl

## `patches.air.opencore/SSDT-dGPU-Off.dsl`
[up up up](#)

[Disabling laptop dGPUs (SSDT-dGPU-Off/NoHybGfx)](https://dortania.github.io/Getting-Started-With-ACPI/Laptops/laptop-disable.html)

So with laptops, we can hide the dGPU from macOS with the little boot-arg called -wegnoegpu from WhateverGreen. But one small problem, the dGPU is still pulling power draining your battery slowly.

Manual > SSDT-dGPU-Off.dsl

Reference: [[Guide] Disabling discrete graphics in dual-GPU laptops](https://www.tonymacx86.com/threads/guide-disabling-discrete-graphics-in-dual-gpu-laptops.163772/)

you can always refer to the [general reference on hotpatching](https://www.tonymacx86.com/threads/guide-using-clover-to-hotpatch-acpi.200137/)

1. find `_OFF` method

*So, we know that _OFF is in SSDT-7-SKL-ULT.dsl. If you open SSDT-7-SKL-ULT.dsl and look for _OFF, you find it is a method inside a PowerResource macro. This is not the _OFF method we want. It is the other one*

```bash
grep _OFF patches.air.clover/*dsl
SSDT-7-SKL-ULT.dsl
# called like this \_SB.PCI0.RP01.PXSX._OFF ()
```

_OFF function is:

```
Scope (\_SB.PCI0.RP01.PXSX)
{
  Method (_OFF, 0, Serialized)  // _OFF: Power Off
  {
      If (LEqual (CCHK (Zero), Zero))
      {
          Return (Zero)
      }

      If (LNotEqual (GPRF, One))
      {
          Store (VREG, VGAB)
      }

      HGOF ()
      Return (Zero)
  }
}
```

see `$HACK/git/Rehabman.git/OS-X-Clover-Laptop-Config.git/hotpatch/SSDT-DDGPU.dsl`

## `patches.air.opencore/SSDT-HPET.dsl` + OC patches
[up up up](#)

[Fixing IRQ Conflicts (SSDT-HPET + OC_Patches.plist)](https://dortania.github.io/Getting-Started-With-ACPI/Universal/irq.html)

So head over to [SSDT: Easy Way](https://dortania.github.io/Getting-Started-With-ACPI/ssdt-methods/ssdt-easy.html) on how to make it.(use option C to omit conflicting legacy IRQs)

Manual > SSDT-HPET.dsl

and patch

```xml
<dict>
    <key>ACPI</key>
    <dict>
        <key>Add</key>
        <array>
            <dict>
                <key>Comment</key>
                <string>HPET _CRS (Needs _CRS to XCRS Rename) (SSDTTime)</string>
                <key>Enabled</key>
                <true/>
                <key>Path</key>
                <string>SSDT-HPET.aml</string>
            </dict>
        </array>
        <key>Patch</key>
        <array>
            <dict>
                <key>Comment</key>
                <string>HPET _CRS to XCRS Rename (SSDTTime)</string>
                <key>Count</key>
                <integer>0</integer>
                <key>Enabled</key>
                <true/>
                <key>Find</key>
                <data>
                JV9DUlM=
                </data>
                <key>Limit</key>
                <integer>0</integer>
                <key>Mask</key>
                <data>
                </data>
                <key>OemTableId</key>
                <data>
                AAAAAA==
                </data>
                <key>Replace</key>
                <data>
                JVhDUlM=
                </data>
                <key>ReplaceMask</key>
                <data>
                </data>
                <key>Skip</key>
                <integer>0</integer>
                <key>TableLength</key>
                <integer>0</integer>
                <key>TableSignature</key>
                <data>
                AAAAAA==
                </data>
            </dict>
            <dict>
                <key>Comment</key>
                <string>RTC IRQ 8 Patch (SSDTTime)</string>
                <key>Count</key>
                <integer>0</integer>
                <key>Enabled</key>
                <true/>
                <key>Find</key>
                <data>
                IgABeQA=
                </data>
                <key>Limit</key>
                <integer>0</integer>
                <key>Mask</key>
                <data>
                </data>
                <key>OemTableId</key>
                <data>
                AAAAAA==
                </data>
                <key>Replace</key>
                <data>
                IgAAeQA=
                </data>
                <key>ReplaceMask</key>
                <data>
                </data>
                <key>Skip</key>
                <integer>0</integer>
                <key>TableLength</key>
                <integer>0</integer>
                <key>TableSignature</key>
                <data>
                AAAAAA==
                </data>
            </dict>
            <dict>
                <key>Comment</key>
                <string>TIMR IRQ 0 Patch (SSDTTime)</string>
                <key>Count</key>
                <integer>0</integer>
                <key>Enabled</key>
                <true/>
                <key>Find</key>
                <data>
                IgEAeQA=
                </data>
                <key>Limit</key>
                <integer>0</integer>
                <key>Mask</key>
                <data>
                </data>
                <key>OemTableId</key>
                <data>
                AAAAAA==
                </data>
                <key>Replace</key>
                <data>
                IgAAeQA=
                </data>
                <key>ReplaceMask</key>
                <data>
                </data>
                <key>Skip</key>
                <integer>0</integer>
                <key>TableLength</key>
                <integer>0</integer>
                <key>TableSignature</key>
                <data>
                AAAAAA==
                </data>
            </dict>
        </array>
    </dict>
</dict>
```

## `patches.air.opencore/SSDT-SBUS-MCHC.dsl`
[up up up](#)

[Fixing SMBus support (SSDT-SBUS-MCHC)](https://dortania.github.io/Getting-Started-With-ACPI/Universal/smbus.html)

## `patches.air.opencore/SSDT-RMNE.dsl`
[up up up](#)

[Fixing iMessage and other services with OpenCore](https://dortania.github.io/OpenCore-Post-Install/universal/iservices.html#generate-a-new-serial)

Fake an ethernet card to make the system still allow Mac App Store access, work with NullEthernet.kext.

add `SSDT-RMNE.dsl` from NullEthernet.kext repository or `https://github.com/RehabMan/OS-X-Null-Ethernet/blob/master/SSDT-RMNE.dsl`

## `patches.air.opencore/SSDT-GPRW.dsl`
[up up up](#)

[GPRW/UPRW/LANC Instant Wake Patch](https://dortania.github.io/OpenCore-Post-Install/usb/misc/instant-wake.html)

it is happening to me

```bash
pmset -g log | grep -e "Sleep.*due to" -e "Wake.*due to"
2020-10-25 20:14:04 +0200 Sleep                 Entering DarkWake state due to 'Software Sleep pid=172':TCPKeepAlive=active Using AC (Charge:91%) 45 secs
2020-10-25 20:14:49 +0200 Wake                  DarkWake to FullWake from Invalid [CDNVA] : due to HID Activity Using AC (Charge:91%)
2020-10-25 21:02:35 +0200 Sleep                 Entering Sleep state due to 'Software Sleep pid=171':TCPKeepAlive=active Using AC (Charge:100%)
2020-10-27 11:09:36 +0200 Sleep                 Entering Sleep state due to 'Software Sleep pid=170':TCPKeepAlive=active Using AC (Charge:88%) 11 secs
2020-10-27 11:09:47 +0200 Wake                  Wake from Normal Sleep [CDNVA] : due to GLAN XDCI/HID Activity Using AC (Charge:88%) 65 secs
2020-10-27 11:10:52 +0200 Sleep                 Entering Sleep state due to 'Software Sleep pid=170':TCPKeepAlive=active Using AC (Charge:89%) 10 secs
2020-10-27 11:11:02 +0200 Wake                  Wake from Normal Sleep [CDNVA] : due to GLAN XDCI/HID Activity Using AC (Charge:89%)
```

requires acpi patch as well

```xml
<dict>
    <key>Comment</key>
    <string>change Method(GPRW,2,N) to XPRW, pair with SSDT-GPRW.aml</string>
    <key>Count</key>
    <integer>0</integer>
    <key>Enabled</key>
    <true/>
    <key>Find</key>
    <data>R1BSVwI=</data>
    <key>Limit</key>
    <integer>0</integer>
    <key>Mask</key>
    <data></data>
    <key>OemTableId</key>
    <data></data>
    <key>Replace</key>
    <data>WFBSVwI=</data>
    <key>ReplaceMask</key>
    <data></data>
    <key>Skip</key>
    <integer>0</integer>
    <key>TableLength</key>
    <integer>0</integer>
    <key>TableSignature</key>
    <data></data>
</dict>
```

## `patches.air.opencore/SSDT-USBX.dsl`
[up up up](#)

[Fixing USB Power](https://dortania.github.io/OpenCore-Post-Install/usb/misc/power.html)

remomber to apply _PTS to ZPTS patch

does not seem to have any impact on the keyboard bug on shutdown

## `patches.air.opencore/FixShutdown-USB-SSDT.dsl`
[up up up](#)

[Fixing Shutdown/Restart](https://dortania.github.io/OpenCore-Post-Install/usb/misc/shutdown.html)

does not seem to have any impact on the keyboard bug on shutdown

## `patches.air.opencore/SSDT-BKEY.dsl`
[up up up](#)

based on [post](https://www.tonymacx86.com/threads/guide-patching-dsdt-ssdt-for-laptop-backlight-control.152659/)

apply renames:

* change _Q1C to ZQ1C (brightness hotkey) (SSDT-BKEY.dsl) `X1ExQw==` to `WlExQw==`
* change _Q1D to ZQ1D (brightness hotkey) (SSDT-BKEY.dsl) `X1ExRA==` to `WlExRA==`

# DSDT patching (retired patches)
[up up up](#)

## ~~`DSDT.dsl`~~
[up up up](#)

**November 2020**: migration to OpenCore. Removed ([Dortania Guides](https://dortania.github.io/getting-started/))

open with MaciASL the `patches.air/DSDT.dsl`. In the preferences use the `ACPI 6.2a` and try to compile. If you have only warnings you are good to proceed.

Because we are hotpatching here you should not use the `DSDT.aml` in the clover directory. If you need to use it for debugging purposes then you need to put it in `CLOVER/ACPI/patched` and check the clover setting `config.plist/ACPI/DSDT/Fixes/FixRegions=true)` to fix the *Floating Regions* as described in [Rehabman's guide](https://www.tonymacx86.com/threads/guide-patching-laptop-dsdt-ssdts.152573/)

## ~~`patches.air.clover/SSDT-XOSI.dsl`~~
[up up up](#)

**November 2020**: migration to OpenCore. Removed ([Dortania Guides](https://dortania.github.io/getting-started/))

copy `cp $HACK/git/Rehabman.git/OS-X-Clover-Laptop-Config.git/hotpatch/SSDT-XOSI.dsl patches.air.clover/SSDT-XOSI.dsl` and edit `patches.air.clover/SSDT-XOSI.dsl`

compare it with the *XiaoMi-Pro*

apply clover renames (OSIN first because there is some type of bug on the DSDT patching when applying only the second one):

* change OSIN to XSIN (SSDT-XOSI.dsl) `T1NJTg==` to `WFNJTg==`
* change _OSI to XOSI (SSDT-XOSI.dsl) `X09TSQ==` to `WE9TSQ==`

This XOSI simulates "Windows 2015" (which is Windows 10)

## ~~`patches.air.clover/SSDT-SMBUS.dsl`~~
[up up up](#)

copy `cp $HACK/git/Rehabman.git/OS-X-Clover-Laptop-Config.git/hotpatch/SSDT-SMBUS.dsl patches.air.clover/SSDT-SMBUS.dsl` and edit `patches.air.clover/SSDT-SMBUS.dsl`

apply clover renames:

* change SAT0 to SATA (SSDT-SMBUS.dsl) `U0FUMA==` to `U0FUQQ==`

> *XiaoMi-Pro* does not use it any more. It is possibly needed

## ~~`patches.air.clover/SSDT-RMCF.dsl`~~
[up up up](#)

**November 2020**: migration to OpenCore. Removed ([Dortania Guides](https://dortania.github.io/getting-started/))

`cp $HACK/git/Rehabman.git/OS-X-Clover-Laptop-Config.git/hotpatch/SSDT-RMCF.dsl patches.air.clover/SSDT-RMCF.dsl` and edit it using *XiaoMi-Pro* as a reference

## ~~`patches.air.clover/SSDT-PTSWAK.dsl`~~
[up up up](#)

**November 2020**: migration to OpenCore. Removed ([Dortania Guides](https://dortania.github.io/getting-started/))

> *XiaoMi-Pro* does not use it any more. It is possibly needed

`cp $HACK/git/Rehabman.git/OS-X-Clover-Laptop-Config.git/hotpatch/SSDT-PTSWAK.dsl patches.air.clover/SSDT-PTSWAK.dsl` and compare it with *XiaoMi-Pro*

Overriding _PTS and _WAK. I modified the address of discrete card to fit *Xiaomi-Air*.

apply clover renames:

* change Method(_PTS,1,N) to ZPTS (SSDT-PTSWAK.dsl) `X1BUUwE=` to `WlBUUwE=`
* change Method(_WAK,1,S) to ZWAK (SSDT-PTSWAK.dsl) `X1dBSwk=` to `WldBSwk=`

## ~~`patches.air.clover/SSDT-GPRW.dsl`~~
[up up up](#)

**November 2020**: migration to OpenCore. Removed ([Dortania Guides](https://dortania.github.io/getting-started/))

`cp $HACK/git/Rehabman.git/OS-X-Clover-Laptop-Config.git/hotpatch/SSDT-GPRW.dsl patches.air.clover/SSDT-GPRW.dsl` and compare it with *XiaoMi-Pro*

For solving instant wake by hooking GPRW

apply clover renames:

* change Method(GPRW,2,N) to XPRW (SSDT-GPRW.dsl) `R1BSVwI=` to `WFBSVwI=`

## ~~`patches.air.clover/SSDT-RMDT.dsl`~~
[up up up](#)

**November 2020**: migration to OpenCore. Removed ([Dortania Guides](https://dortania.github.io/getting-started/))

`cp $HACK/git/Rehabman.git/OS-X-Clover-Laptop-Config.git/hotpatch/SSDT-RMDT.dsl patches.air.clover/SSDT-RMDT.dsl`

Facility for writing trace output to system.log, Use in conjunction with ACPIDebug.kext

## ~~`patches.air.clover/SSDT-DMAC.dsl`~~
[up up up](#)

**November 2020**: migration to OpenCore. Removed ([Dortania Guides](https://dortania.github.io/getting-started/))

Add missing DMAC Device to enhace performance like a real Mac. Inspired by [syscl](https://github.com/syscl/XPS9350-macOS/tree/master/DSDT/patches). Found it in *XiaoMi-Pro* repository.

## ~~`patches.air.clover/SSDT-HPET.dsl`~~
[up up up](#)

**November 2020**: migration to OpenCore. Removed ([Dortania Guides](https://dortania.github.io/getting-started/))

Disable HPET device by passing value 0 to HPTE to to behave more like a real Mac. Found it in *XiaoMi-Pro* repository.

> updated 20190801 (based on [daliansky/XiaoMi-Pro-Hackintosh](https://github.com/daliansky/XiaoMi-Pro-Hackintosh) repository)

## ~~`patches.air.clover/SSDT-MEM2.dsl`~~
[up up up](#)

**November 2020**: migration to OpenCore. Removed ([Dortania Guides](https://dortania.github.io/getting-started/))

Add missing MEM2 Device to enhace performance like a real Mac. Inspired by [syscl](https://github.com/syscl/XPS9350-macOS/tree/master/DSDT/patches). Found it in *XiaoMi-Pro* repository.

> updated 20190801 (based on [daliansky/XiaoMi-Pro-Hackintosh](https://github.com/daliansky/XiaoMi-Pro-Hackintosh) repository)

## ~~`patches.air.clover/SSDT-PMCR.dsl`~~
[up up up](#)

**November 2020**: migration to OpenCore. Removed ([Dortania Guides](https://dortania.github.io/getting-started/))

Add missing PMCR Device to enhace performance like a real Mac. Inspired by [syscl](https://github.com/syscl/XPS9350-macOS/tree/master/DSDT/patches). (PPMC and PMCR combine together for macOS to load LPCB correctly). Found it in *XiaoMi-Pro* repository.

in the *XiaoMi-Pro* DSDT.dsl there is no PMCR device, but there is one in *Xiaomi-air*

> updated 20190801 (based on [daliansky/XiaoMi-Pro-Hackintosh](https://github.com/daliansky/XiaoMi-Pro-Hackintosh) repository)

## ~~`patches.air.clover/SSDT-LPC.dsl`~~
[up up up](#)

**November 2020**: migration to OpenCore. Removed ([Dortania Guides](https://dortania.github.io/getting-started/))

`cp $HACK/git/Rehabman.git/OS-X-Clover-Laptop-Config.git/hotpatch/SSDT-LPC.dsl patches.air.clover/SSDT-LPC.dsl`

To fix unsupported 8-series LPC devices. looked in ioreg and look for LPC. mine is 0x9d48 which is included here

*XiaoMi-Pro* is not using it.

# DSDT patching (work in progress patches) :icecream:
[up up up](#)

## ~~`patches.air.clover/SSDT-SLEEP.dsl`~~ :icecream:
[up up up](#)

**November 2020**: migration to OpenCore. Removed ([Dortania Guides](https://dortania.github.io/getting-started/))

this is from the 2.1, keep it for now do not include it. It may be related to the shutdown fix

There is a discussion on this on [Pike's Universum](https://pikeralpha.wordpress.com/2017/01/12/debugging-sleep-issues/)

## ~~`patches.air.clover/SSDT-I2C.dsl`~~ :icecream:
[up up up](#)

**November 2020**: migration to OpenCore. Removed ([Dortania Guides](https://dortania.github.io/getting-started/))

Does it really works?

## ~~`patches.air.clover/SSDT-PNPOC14.dsl`~~ :icecream:
[up up up](#)

this is probably from *XiaoMi-Pro* repository trying to disable WMI devices perhaps, found a [reference](https://www.tonymacx86.com/threads/guide-using-clover-to-hotpatch-acpi.200137/page-51#post-1834603). Do not use it for now.

## ~~`patches.air.clover/SSDT-PNLF.dsl`~~
[up up up](#)

> updated 20190801 Remove SSDT-PNLF and replace with AddPNLF argument as suggested in [WhateverGreen FAQ](https://github.com/acidanthera/WhateverGreen/blob/master/Manual/FAQ.IntelHD.en.md#adjusting-the-brightness-on-a-laptop)

`cp $HACK/git/Rehabman.git/OS-X-Clover-Laptop-Config.git/hotpatch/SSDT-PNLF.dsl patches.air.clover/SSDT-PNLF.dsl` and compare it with *XiaoMi-Pro*

## ~~`patches.air.clover/SSDT-DDGPU.dsl`~~
[up up up](#)

> updated 20190801 (Remove `SSDT-DDGPU` because disable-external-gpu does the same thing)

Reference: [[Guide] Disabling discrete graphics in dual-GPU laptops](https://www.tonymacx86.com/threads/guide-disabling-discrete-graphics-in-dual-gpu-laptops.163772/)

you can always refer to the [general reference on hotpatching](https://www.tonymacx86.com/threads/guide-using-clover-to-hotpatch-acpi.200137/)

1. find `_OFF` method

*So, we know that _OFF is in SSDT-7-SKL-ULT.dsl. If you open SSDT-7-SKL-ULT.dsl and look for _OFF, you find it is a method inside a PowerResource macro. This is not the _OFF method we want. It is the other one*

```bash
grep _OFF patches.air.clover/*dsl
SSDT-7-SKL-ULT.dsl
# called like this \_SB.PCI0.RP01.PXSX._OFF ()
```

_OFF function is:

```
Scope (\_SB.PCI0.RP01.PXSX)
{
  Method (_OFF, 0, Serialized)  // _OFF: Power Off
  {
      If (LEqual (CCHK (Zero), Zero))
      {
          Return (Zero)
      }

      If (LNotEqual (GPRF, One))
      {
          Store (VREG, VGAB)
      }

      HGOF ()
      Return (Zero)
  }
}
```

copy `cp $HACK/git/Rehabman.git/OS-X-Clover-Laptop-Config.git/hotpatch/SSDT-DDGPU.dsl patches.air.clover/SSDT-DDGPU.dsl` and edit `patches.air.clover/SSDT-DDGPU.dsl`


## ~~`patches.air.clover/SSDT-PXSX.dsl`~~
[up up up](#)

used *XiaoMi-Pro* used only a subset that I was sure about and used also the DTGP

## ~~`patches.air.clover/SSDT-BKEY.dsl`~~
[up up up](#)

to be used for brightness control instead of `SSDT-LGPA.dsl` of the *XiaoMi-Pro*

apply clover renames:

* change _Q1C to ZQ1C (brightness hotkey) (SSDT-BKEY.dsl) `X1ExQw==` to `WlExQw==`
* change _Q1D to ZQ1D (brightness hotkey) (SSDT-BKEY.dsl) `X1ExRA==` to `WlExRA==`

## ~~`patches.air.clover/SSDT-EC.dsl`~~
[up up up](#)

> **Update January 2019** I added the EC0 to EC rename on config.plist and it is working without injecting the EC device.

according to this [article](https://www.tonymacx86.com/threads/guide-usb-power-property-injection-for-sierra-and-later.222266/) we do not need this so leave it in but keep it. There is an EC0 device but do not rename it. Instead inject the USBX

> *johnnync13/Xiaomi-Notebook-Air-6200u* is not using this and just renames the EC device

> article](https://www.tonymacx86.com/threads/guide-usb-power-property-injection-for-sierra-and-later.222266/) Note: If your computer has an ECDT in ACPI, you should not rename anything along the EC path, including the EC itself. Use a "Fake EC" instead as described below. You can check if you have ECDT by extracting ACPI with Clover (F4) and checking for ECDT.aml in EFI/Clover/ACPI/origin.

> Note: You may find you have an EC in your DSDT: Device with "Name (_HID, EisaId ("PNP0C09"))", even if it is not active.

## ~~`patches.air.clover/SSDT-ALS0.dsl`~~
[up up up](#)

not required anymore

## ~~`patches.air.clover/SSDT-SATA.dsl`~~
[up up up](#)

Not using this dsl anymore. Instead as descibed in [[Guide] Booting the OS X installer on LAPTOPS with Clover](https://www.tonymacx86.com/threads/guide-booting-the-os-x-installer-on-laptops-with-clover.148093/) migrate to [SATA-unsupported.kext](https://github.com/RehabMan/hack-tools).

*XiaoMi-Pro* is doing the same

## ~~`patches.air.clover/SSDT-PCIList.dsl`~~
[up up up](#)

Initially added from an older version from the *XiaoMi-Pro* repository. Ideally I need to get rid of it and use clover's `Devices > Properties` and `SSDT-PXSX.dsl`

## ~~`patches.air.clover/SSDT-XHC.dsl`~~

This is coming from an older XiaoMi-Pro version. We do not need it everything has been implemented in `SSDT-USBX.dsl`

## ~~`patches.air.clover/SSDT-UIAC.dsl`~~
[up up up](#)

This has the `USBX` device for the power injection according to the [article](https://www.tonymacx86.com/threads/guide-usb-power-property-injection-for-sierra-and-later.222266/) plus the injector for the USBInjectAll. I changed it based to the `XiaoMi-2.1.JahStories/EFI/CLOVER/kexts/10.13/XiaominjectXHC.kext`

USBX power injection device is inline with the latest *XiaoMi-Pro* edits based on the [rehadbman's recomendations](https://www.tonymacx86.com/threads/guide-usb-power-property-injection-for-sierra-and-later.222266/)

> *XiaoMi-Pro* implements the injector using a kext produced from HackingTool

from tonymac:

```text
Common port connector types are USB2 = 0, USB3 = 3, internal = 255.
USB type C ports can be either 9 or 10, which depends on how the hardware deals with the two possible orientations of a USB type C device/cable.
If a USB-C uses the same SSxx in both orientations, then it has an internal switch (UsbConnector=9).
If a USB-C uses a different SSxx in each orientation, then it has no switch (UsbConnector=10).
HSxx ports that are connected to a USB3 port should be marked UsbConnector=3, not UsbConnector=0.
sakoula: since JahStories had 4 more devices I assume that USB-C port use different SSxx in each oritentation, and it has no switch (UsbConnector=10)
```

## ~~`patches.air.clover/SSDT-USBX.dsl`~~
[up up up](#)

> Implement the injector using a the kext produced from HackingTool

This has the `USBX` device for the power injection according to the [article](https://www.tonymacx86.com/threads/guide-usb-power-property-injection-for-sierra-and-later.222266/)

USBX power injection device is inline with the latest *XiaoMi-Pro* edits based on the [rehadbman's recomendations](https://www.tonymacx86.com/threads/guide-usb-power-property-injection-for-sierra-and-later.222266/)

# `config.plist`
[up up up](#)

[Desktop Skylake](https://dortania.github.io/OpenCore-Install-Guide/config.plist/skylake.html#starting-point)

## ACPI
[up up up](#)

autogenerate with OC Snapshot/OC Clean Snapshot in the beggining)

## Booter
[up up up](#)

leave default

## DeviceProperties
[up up up](#)

start with bare minimum according to documentation

audio, Realtek ALC255 Audio Controller, layoutid 99:

```xml
<key>PciRoot(0x0)/Pci(0x1f,0x3)</key>
<dict>
    <key>layout-id</key>
    <integer>99</integer>
</dict>
```

video, Intel HD Graphics 510, 0x19160000, stolenmem patch

```xml
<key>PciRoot(0x0)/Pci(0x2,0x0)</key>
<dict>
    <key>AAPL,ig-platform-id</key>
    <data>AAAWGQ==</data>
    <key>device-id</key>
    <data>FhkAAA==</data>
    <key>framebuffer-fbmem</key>
    <data>AACQAA==</data>
    <key>framebuffer-patch-enable</key>
    <data>AQAAAA==</data>
    <key>framebuffer-stolenmem</key>
    <data>AAAwAQ==</data>
</dict>
```

and then populalate all:

audio, Realtek ALC255 Audio Controller, layoutid 99:

```xml
<key>PciRoot(0x0)/Pci(0x1f,0x3)</key>
<dict>
  <key>AAPL,slot-name</key>
  <string>Internal@0,31,3</string>
  <key>device_type</key>
  <string>Audio device</string>
  <key>layout-id</key>
  <integer>99</integer>
  <key>model</key>
  <string>Realtek ALC255 Audio Controller</string>
</dict>
```

video, Intel HD Graphics 510, 0x19160000, stolenmem patch

```xml
<key>PciRoot(0x0)/Pci(0x2,0x0)</key>
<dict>
  <key>AAPL,slot-name</key>
  <string>Internal@0,2,0</string>
  <key>device_type</key>
  <string>Display controller</string>
  <key>AAPL,ig-platform-id</key>
  <data>AAAWGQ==</data>
  <key>device-id</key>
  <data>FhkAAA==</data>
  <key>framebuffer-fbmem</key>
  <data>AACQAA==</data>
  <key>framebuffer-patch-enable</key>
  <data>AQAAAA==</data>
  <key>framebuffer-stolenmem</key>
  <data>AAAwAQ==</data>
  <key>model</key>
  <string>Intel Skylake GT2 [HD Graphics 520]</string>
</dict>
```

```xml
<key>PciRoot(0x0)/Pci(0x1D,0x0)/Pci(0x0,0x0)</key>
<dict>
  <key>AAPL,slot-name</key>
  <string>Internal@0,29,0/0,0</string>
  <key>device_type</key>
  <string>Non-Volatile memory controller</string>
  <key>model</key>
  <string>NVMe SSD Controller SM951/PM951</string>
</dict>
```

```xml
<key>PciRoot(0x0)/Pci(0x1C,0x4)/Pci(0x0,0x0)</key>
<dict>
  <key>AAPL,slot-name</key>
  <string>Internal@0,28,4/0,0</string>
  <key>device_type</key>
  <string>Network controller</string>
  <key>model</key>
  <string>Wireless 8260</string>
</dict>
```

```xml
<key>PciRoot(0x0)/Pci(0x14,0x0)</key>
<dict>
  <key>AAPL,slot-name</key>
  <string>Internal@0,20,0</string>
  <key>device_type</key>
  <string>USB controller</string>
  <key>model</key>
  <string>Sunrise Point-LP USB 3.0 xHCI Controller</string>
</dict>
```

## Kernel
[up up up](#)

* `AppleXcpmCfgLock`: `False` (CFG Unlocked)
* `CustomSMBIOSGuid`: `True` Setting UpdateSMBIOSMode to Custom with CustomSMBIOSGuid quirk enabled can also disable SMBIOS injection into "non-Apple" OSes however we do not endorse this method as it breaks Bootcamp compatibility.
* `PanicNoKextDump`: `True` Allows for reading kernel panics logs when kernel panics occur
* `PowerTimeoutKernelPanic`: `True` Helps fix kernel panics relating to power changes with Apple drivers in macOS Catalina, most notably with digital audio.
* `XhciPortLimit`: `True` This is actually the 15 port limit patch, don't rely on it as it's not a guaranteed solution for fixing USB. Please create a USB map when possible.

## Misc
[up up up](#)

* `Boot > HideAuxiliary > True`: so only the bootable ones space to see everything

* `Security > AllowNvramReset > True`: Allows for NVRAM reset both in the boot picker and when pressing Cmd+Opt+P+R
* `Security > AllowSetDefault > True`: Allow CTRL+Enter and CTRL+Index to set default boot device in the picker
* `Security > Vault > Optional`: We won't be dealing vaulting so we can ignore, you won't boot with this set to Secure. note that it is case-sensitive
* `Security > ScanPolicy > 0`: 0 allows you to see all drives available
* `Security > SecureBootModel > Default`: Enables Apple's secure boot functionality in macOS, please refer to Security section for further details.

## NVRAM
[up up up](#)

* `4D1EDE05-38C7-4A6A-9CC6-4BCCA8B38C14` Used for OpenCore's UI scaling, default will work for us.
* `4D1EDE05-38C7-4A6A-9CC6-4BCCA8B38C14 > UIScale > 1`: Standard resolution (2 HiDPI (generally required for FileVault to function correctly on smaller displays))
* `4D1EDE05-38C7-4A6A-9CC6-4BCCA8B38C14 > DefaultBackgroundColor > 00000000`: Syrah Black


* `4D1FDA02-38C7-4A6A-9CC6-4BCCA8B30102` OpenCore's NVRAM GUID, mainly relevant for RTCMemoryFixup users.

* `7C436110-AB2A-4BBB-A880-FE41995C9F82` SIP bitmask
* `7C436110-AB2A-4BBB-A880-FE41995C9F82> boot-args > -v keepsyms=1 debug=0x100 -wegnoegpu` -wegnoegpu disable discrete card
* `7C436110-AB2A-4BBB-A880-FE41995C9F82 > csr-active-config > 00000000` enables System Integrity Protectio
* `7C436110-AB2A-4BBB-A880-FE41995C9F82 > un-efi-updater > False`: This is used to prevent Apple's firmware update packages from installing and breaking boot order; this is important as these firmware updates (meant for Macs) will not work.
* `7C436110-AB2A-4BBB-A880-FE41995C9F82 > prev-lang:kbd > 656e2d55533a30`: Default in Sample config is Russian, use 656e2d55533a30 for enUS

* `WriteFlash > True`: Enables writing to flash memory for all added variables.

## PlatformInfo
[up up up](#)

> Note: It is saying that : `MacBookPro13,1    Dual Core 15w(Low End)  iGPU: Iris 540  13"     No`

* `Generic > ROM > 112233445566` Mac address of the buildin interface. Because we are using NullEthernet we use this
* `Generic > SystemProductName > MacBookPro13,1`
* `Generic > MLB > XXXXXXXXXXXXXXXXX`
* `Generic > SystemSerialNumber > XXXXXXXXXXXX`
* `Generic >  SystemUUID > XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX`
* `Automatic > True` Generates PlatformInfo based on Generic section instead of DataHub, NVRAM, and SMBIOS sections#
* `UpdateSMBIOSMode > Custom`: Setting to Custom with CustomSMBIOSGuid quirk enabled can also disable SMBIOS injection into "non-Apple" OSes however we do not endorse this method as it breaks Bootcamp compatibility.

## UEFI
[up up up](#)

* `ConnectDrivers > True` Forces .efi drivers
* `Drivers` Only drivers present here should be: HfsPlus.efi OpenRuntime.ef
* `Quirks > ReleaseUsbOwnership > True` Releases USB controller from firmware driver, needed for when your firmware doesn't support EHCI/XHCI Handoff. Most laptops have garbage firmwares so we'll need this as well

## OpenCore beauty treatment
[up up up](#)

[Add Gui and Boot-chime](https://dortania.github.io/OpenCore-Post-Install/cosmetic/gui.html#setting-up-opencore-s-gui)

* `OC/Drivers/OpenCanopy.efi`
* `OC/Drivers/AudioDxe.efi`
* `OC/Resources` from [OcBinaryData](https://github.com/acidanthera/OcBinaryData)
* `Misc -> Boot -> PickerMode: External`
* `Misc -> Boot -> PickerAttributes:1`
* `NVRAM -> Add -> 7C436110-AB2A-4BBB-A880-FE41995C9F82 > SystemAudioVolume | Data | 0x46`

UEFI

```xml
<key>Audio</key>
<dict>
    <key>AudioCodec</key>
    <integer>0</integer>
    <key>AudioDevice</key>
    <string>PciRoot(0x0)/Pci(0x1f,0x3)</string>
    <key>AudioOut</key>
    <integer>0</integer>
    <key>AudioSupport</key>
    <true/>
    <key>MinimumVolume</key>
    <integer>70</integer>
    <key>PlayChime</key>
    <true/>
    <key>VolumeAmplifier</key>
    <integer>143</integer>
</dict>
```

# How to Debug
[up up up](#)

> Note: In a production machine change `Misc > Debug > AppleDebug > True` to `Misc > Debug > AppleDebug > False` to avoid all debug files writen on the file system. reference [OpenCore Debugging](https://dortania.github.io/OpenCore-Install-Guide/troubleshooting/debug.html#opencore-debugging)

* `Misc > Debug > AppleDebug > True`: Enables boot.efi logging, useful for debugging. Note this is only supported on 10.15.4 and newer
* `Misc > Debug > ApplePanic > True`: Attempts to log kernel panics to disk
* `Misc > Debug > DisableWatchDog > True`: Disables the UEFI watchdog, can help with early boot issues
* `Misc > Debug > DisplayLevel > 2147483650`: Shows even more debug information, requires **DEBUG** version of OpenCore
* `Misc > Debug > SerialInit > False`: Needed for setting up serial output with OpenCore
* `Misc > Debug > SysReport > False`: Helpful for debugging such as dumping ACPI tables, Note that this is limited to **DEBUG** versions of OpenCore
* `Misc > Debug > Target > 67`: Shows more debug information, Note that this is limited to **DEBUG** versions of OpenCore
* `Misc > Security > ExposeSensitiveData > 6`: Shows more debug information, requires **DEBUG** version of OpenCore

* `NVRAM > 7C436110-AB2A-4BBB-A880-FE41995C9F82 > boot-args > -v`
* `NVRAM > 7C436110-AB2A-4BBB-A880-FE41995C9F82 > boot-args > debug=0x100`: this disables macOS's watchdog which helps prevents a reboot on a kernel panic
* `NVRAM > 7C436110-AB2A-4BBB-A880-FE41995C9F82 > boot-args > keepsyms=1`: This is a companion setting to debug=0x100 that tells the OS to also print the symbols on a kernel panic

# TRIM on SSDs
[up up up](#)

based on the `Configuration.pdf` of Opencore:

```text
ThirdPartyDrives
Type: plist boolean
Failsafe: false
Requirement: 10.6 (not required for older)
Description: Apply vendor patches to IOAHCIBlockStorage.kext to enable native features for third-party drives, such as TRIM on SSDs or hibernation support on 10.15 and newer.
Note: This option may be avoided on user preference. NVMe SSDs are compatible without the change. For AHCI SSDs on modern macOS version there is a dedicated built-in utility called trimforce. Starting from 10.15 this utility creates EnableTRIM variable in APPLE_BOOT_VARIABLE_GUID namespace with 01 00 00 00 value.
```

this means that once you boot with Opencore you need to enable TRIM on all SSDs with the command: `sudo trimforce enable`

# Audio
[up up up](#)

* Sound card is `Realtek ALC255` which is drived by `AppleALC` on layout-id ~~30 or~~ 99. I have noticed that on layout-id 30 internal microphone and heaphones microphone is too low so I switched back to layout-id 99.

kext patches in `OC/Kexts` applied:

* `AppleALC.kext` Native macOS HD audio for not officially supported codecs

`config.plist` patch applied:

* Patch `Devices > PciRoot(0x0)/Pci(0x1f,0x3)`


All information about the devices has been retrieved from hackingtool. Made some changes on the audio and igpu device

* `$HACK/bin/gfxutil -f HDEF` - `Properties > PciRoot(0x0)/Pci(0x1f,0x3)`

```xml
<key>PciRoot(0x0)/Pci(0x1f,0x3)</key>
<dict>
   <key>AAPL,slot-name</key>
   <string>Internal</string>
   <key>device_type</key>
   <string>Audio device</string>
   <key>hda-gfx</key>
   <string>onboard-1</string>
   <key>hda-idle-support</key>
   <string>1</string>
   <key>layout-id</key>
   <integer>99</integer>
   <key>model</key>
   <string>Realtek ALC255 Audio Controller</string>
</dict>
```

~~`layout-id` 30 can be used too.~~ **I have noticed that on layout-id 30 internal microphone and heaphones microphone is too low so I switched back to layout-id 99.**

# Bluetooth
[up up up](#)

The card in the laptop is `Intel® Dual Band Wireless-AC 8260`

* Bluetooth works if using a VM to inject the FW or use injectors

* `IntelBluetoothFirmware.kext`
* `IntelBluetoothInjector.kext`

# Ethernet
[up up up](#)

* Xiaomi-Air does not have an Ethernet. A USB one can be used and supported natively such as the [`TP-LINK UE300`](https://www.tp-link.com/us/products/details/cat-5523_UE300.html)

# Graphics
[up up up](#)

* Discrete card is `Nvidia GeForce 940MX`, ~~disabled by `SSDT-DDGPU.aml`~~ disabled by disable-external-gpu whatever green configuration because macOS doesn't support Optimus technology.
* Supported card is `Intel HD Graphics 520` supported with edits in `config.plist`

kext patches applied:

* `WhateverGreen.kext` Various patches necessary for certain ATI/AMD/Intel/Nvidia GPUs

ACPI patches applied:

* `SSDT-BKEY.aml` Native brightness hotkey support

`config.plist` patch applied:

* Patch `Devices > PciRoot(0x0)/Pci(0x2,0x0)`

# Keyboard
[up up up](#)

kext patches applied:

* `VoodooPS2Controller.kext` RehabMan and now Acidanthera work on keyboard
* `VoodooInput.kext` VoodooPS2Controller is now two kexts

# Touchpad
[up up up](#)

kext patches applied:

* `VoodooPS2Controller.kext` RehabMan and now Acidanthera work on keyboard
* `VoodooInput.kext` VoodooPS2Controller is now two kexts


# USB Mapping
[up up up](#)

[USB Mapping](https://dortania.github.io/OpenCore-Post-Install/usb/intel-mapping/intel.html) and [corpnewt/USBMap](https://github.com/corpnewt/USBMap)

> **Important Note**: on clover I have been using exporting ports from Hackingtool and assuming that the TypeC port is of type 10 (meaning that when flipping the device it does change the ACPI port). This allowed sleep to work. This does not seem to be true. I **think** that the port is of type 9 (after testing it with actual type c devices) and the only ACPI port is HS03/SS03. However by using this sleep breaks (machine get stuck on 10.15.7). In order to fix that I need to change the type of the port to 10 and introduce two other ACPI ports HS02/SS02. The other change from hacking tool is [this](https://dortania.github.io/OpenCore-Post-Install/universal/sleep.html#fixing-usb) `USB maps with macOS Catalina(10.15) and newer: You may find that even with USB mapping, your sleep breaks. one possible solution is renaming the IOClass value from AppleUSBMergeNub to AppleUSBHostMergeProperties. See here for more info: Changes in Catalina's USB IOClass` which does not seem to affect sleep.

## USB Mapping that does not work
[up up up](#)

this is possibly correct but does not work

```bash
$ cd /Downloads/USBMap-master
$ ./USBMap.command

Current Controllers:

 - XHC@14 @ _SB.PCI0.XHC
  \-> RHUB @ _SB.PCI0.XHC.RHUB

D. Discover Ports
P. Edit & Create USBMap.kext
R. Reset All Detected Ports
H. Generate ACPI To Reset RHUBs (May Conflict With Existing SSDT-USB-Reset.aml!)

  #######################################################
 #                  Edit USB Ports                     #
#######################################################

    ----- XHC@14 Controller -----
[#] 1. HS01 | 14100000 | Type 3
    Right2
    - SMART USB 8GB T
[ ] 2. HS02 | 14200000 | Type 3
[#] 3. HS03 | 14200000 | Type 9
    TypeC
    - USB2.0 Hub
        - USB 2.0 Hub
        - USB 2.0 BILLBOARD
        - USB Billboard Device
        - USB 10/100/1000 LAN
[#] 4. HS04 | 14300000 | Type 3
    Left2
    - SMART USB 8GB T
[#] 5. HS05 | 14500000 | Type 255
    Webcam
    - XiaoMi USB 2.0 Webcam
[ ] 6. HS06 | 14600000 | Type 3
[#] 7. HS07 | 14700000 | Type 255
    Bluetooth
[ ] 8. HS08 | 14800000 | Type 3
[ ] 9. HS09 | 14900000 | Type 3
[ ] 10. HS10 | 14a00000 | Type 3
[ ] 11. USR1 | 14b00000 | Type 3
[ ] 12. USR2 | 14c00000 | Type 3
[#] 13. SS01 | 14400000 | Type 3
    Right3
    - USB 10/100/1000 LAN
[ ] 14. SS02 | 14e00000 | Type 9
[#] 15. SS03 | 14500000 | Type 9
    TypeC
    - USB3.0 Hub
        - USB 10/100/1000 LAN
[#] 16. SS04 | 14600000 | Type 3
    Left3
    - DataTraveler 3.0
[ ] 17. SS05 | 14100000 | Type 3
[ ] 18. SS06 | 14200000 | Type 3

Populated:
XHC: 8
```

```bash
mv /Downloads/USBMap-master/Results/USBMap.kext /Volumes/EFI/EFI/OC/Kexts
\rm -rf /Volumes/EFI/EFI/OC/Kexts/USBInjectAll.kext

Kernel > XhciPortLimit: False
```

## USB Mapping that works
[up up up](#)

```bash
  #######################################################
 #                  Edit USB Ports                     #
#######################################################

    ----- XHC@14 Controller -----
[#] 1. HS01 | 14100000 | Type 3
    Right USB 3.x Type A, 2.0 personality
    - SMART USB 8GB T
[#] 2. HS02 | 14200000 | Type 10
    USB 3.x Type C 2.0 personality (does not exist)
[#] 3. HS03 | 14200000 | Type 10
    USB 3.x Type C 2.0 personality
[#] 4. HS04 | 14300000 | Type 3
    Left USB 3.x Type A, 2.0 personality
    - SMART USB 8GB T
[#] 5. HS05 | 14400000 | Type 255
    Internal USB 2.x, Webcam, 2.0 personality
    - XiaoMi USB 2.0 Webcam
[ ] 6. HS06 | 14500000 | Type 3
[#] 7. HS07 | 14600000 | Type 255
    Internal USB 2.x, Bluetooth, 2.0 personality
[#] 8. SS01 | 14400000 | Type 3
    Right USB 3.x Type A, 3.0 personality
    - USB 10/100/1000 LAN
[#] 9. SS02 | 14900000 | Type 10
    USB 3.x Type C 3.0 personality (incorrect see notes)
[#] 10. SS03 | 14800000 | Type 10
    USB 3.x Type C 3.0 personality
[#] 11. SS04 | 14600000 | Type 3
    Left USB 3.x Type A, 3.0 personality
    - DataTraveler 3.0

Populated:
XHC: 10

Please make your selection:

C:1:Right USB 3.x Type A, 2.0 personality
C:4:Left USB 3.x Type A, 2.0 personality
T:1,4:3

2
3
C:2:USB 3.x Type C 2.0 personality (incorrect see notes)
C:3:USB 3.x Type C 2.0 personality
T:2,3:10

C:5:Internal USB 2.x, Webcam, 2.0 personality
C:7:Internal USB 2.x, Bluetooth, 2.0 personality
T:5,7:255

C:8:Right USB 3.x Type A, 3.0 personality
C:11:Left USB 3.x Type A, 3.0 personality
T:8,11:3

9
10
C:9:USB 3.x Type C 3.0 personality (incorrect see notes)
C:10:USB 3.x Type C 3.0 personality
T:9,10:10
```



# Sleep
[up up up](#)

see sleep wake logs

```bash
$ pmset -g log | grep -e "Sleep.*due to" -e "Wake.*due to"
```

## Laptop Lid Detection

[Other Culprits /  Displays ](https://dortania.github.io/OpenCore-Post-Install/universal/sleep.html#displays)

> In my case when lid is closed the laptop seems that it goes to sleep. However when it wakes up then it looses USB ports.

To avoid this disable lid sleep:

```
sudo pmset lidwake 0
```

## getting ready to fix sleep

[Fixing Sleep](https://dortania.github.io/OpenCore-Post-Install/universal/sleep.html#preparations)

```bash
pmset -g
sudo pmset autopoweroff 0
sudo pmset powernap 0
sudo pmset standby 0
sudo pmset proximitywake 0
```


# Power Management
[up up up](#)

[Optimizing Power Management](https://dortania.github.io/OpenCore-Post-Install/universal/pm.html#enabling-x86platformplugin)

```bash
./CPUFriendFriend.command

  #######################################################
 #                  CPUFriendFriend                    #
#######################################################

Current CPU:    Intel(R) Core(TM) i5-6200U CPU @ 2.30GHz
Current Board:  Mac-473D31EABEB93F9B
Current SMBIOS: MacBookPro13,1

Low Frequency Mode (LFM):

This is the lowest frequency-voltage operating point for your processor. Refer to Intel's ARK site for your processor's LFM setting. If no LFM is defined for your processor, use the default.

Frequency   :   Hex Value
  800MHz      :     0x08
  900MHz      :     0x09
  1000MHz     :     0x0A
  1100MHz     :     0x0B
  1200MHz     :     0x0C
  1300MHz     :     0x0D

Current Setting:    0D (1300 MHz)

Enter the value for your CPU: 08

Building CPUFriendDataProvider.
Energy Performance Preference (EPP):
HWP EPP adjustment configures the intel p_state preference policy.

EPP Ranges:
  0x00-0x3F    :    Performance
  0x40-0x7F    :    Balanced Performance
  0x80-0xBF    :    Balanced Power Savings
  0xC0-0xFF    :    Power
Settings found in modern Apple computers:
  0x00         :    Modern iMac
  0x20         :    Modern Mac Mini
  0x80         :    Modern MacBook Air
  0x90         :    Modern MacBook Pro

Current Setting: 80 (Balanced Power Savings)

Enter the new EPP value in hex: 80

  #######################################################
 #                  CPUFriendFriend                    #
#######################################################

Building CPUFriendDataProvider.
Perf Bias:
Perf-Bias is a performance and energy bias hint used to specify power preference.  Expressed as a range, 0 represents preference for performance, 15 represents preference for maximum power saving.

Perf Bias Range:
  0x00-0x15
Settings found in modern Apple computers:
  0x01              :    Modern iMac
  0x05              :    Modern MacBook Pro & Mac Mini
  0x07              :    Modern MacBook Air

Current Setting: 05

Enter the new PerfBias value in hex: 05

Building CPUFriendDataProvider.
Additional Energy Savings Options:
The MacBook Air SMBIOS includes additional properties for power savings, these properties include the following:


  * Power Reduced Video Playback
  * Thermally Optimized Xcode
  * Power Optimized Screensavers
  * Power Optimized Slideshows
  * Power Optimized PhotoBooth
  * Power Optimized Visualizers

Enable these features (y/N): y
```

```bash
mv Results/CPUFriendDataProvider.kext /Volumes/EFI/EFI/OC/Kexts/
wget https://github.com/acidanthera/CPUFriend/releases/download/1.2.2/CPUFriend-1.2.2-RELEASE.zip && unzip CPUFriend-1.2.2-RELEASE.zip
mv CPUFriend.kext /Volumes/EFI/EFI/OC/Kexts/
```

# `kexts`
[up up up](#)

used

* [OpenCore-0.6.2-RELEASE.zip](https://github.com/acidanthera/OpenCorePkg/releases/download/0.6.2/OpenCore-0.6.2-RELEASE.zip)
* [OcBinaryData](https://github.com/acidanthera/OcBinaryData)
* [VirtualSMC-1.1.7-RELEASE.zip](https://github.com/acidanthera/VirtualSMC/releases/download/1.1.7/VirtualSMC-1.1.7-RELEASE.zip) (without `SMCLightSensor.kext` and `SMCDellSensors.kext`)
* [Lilu-1.4.8-RELEASE.zip](https://github.com/acidanthera/Lilu/releases/download/1.4.8/Lilu-1.4.8-RELEASE.zip)
* [WhateverGreen-1.4.3-RELEASE.zip](https://github.com/acidanthera/WhateverGreen/releases/download/1.4.3/WhateverGreen-1.4.3-RELEASE.zip)
* [AppleALC-1.5.3-RELEASE.zip](https://github.com/acidanthera/AppleALC/releases/download/1.5.3/AppleALC-1.5.3-RELEASE.zip)
* [RehabMan-USBInjectAll-2018-1108.zip](https://bitbucket.org/RehabMan/os-x-usb-inject-all/downloads/RehabMan-USBInjectAll-2018-1108.zip)
* [VoodooPS2Controller-2.1.8-RELEASE.zipp](https://github.com/acidanthera/VoodooPS2/releases/download/2.1.8/VoodooPS2Controller-2.1.8-RELEASE.zip)
* [NVMeFix-1.0.4-RELEASE.zip](https://github.com/acidanthera/NVMeFix/releases/download/1.0.4/NVMeFix-1.0.4-RELEASE.zip)
* [CPUFriend-1.2.2-RELEASE.zip](https://github.com/acidanthera/CPUFriend/releases/download/1.2.2/CPUFriend-1.2.2-RELEASE.zip)
* [corpnewt/CPUFriendFriend](https://github.com/corpnewt/CPUFriendFriend)
* [RehabMan/OS-X-Null-Ethernet](https://github.com/RehabMan/OS-X-Null-Ethernet)

# Power Management
[up up up](#)

**Frebruary 2020**

I used a custom `CPUFriendDataProvider` based on [corpnewt/CPUFriendFriend](https://github.com/corpnewt/CPUFriendFriend).

The procedure I followed:

1. Check @ [Intel® Core™ i5-6200U Processor](https://ark.intel.com/content/www/us/en/ark/products/88193/intel-core-i5-6200u-processor-3m-cache-up-to-2-80-ghz.html) and get the Configurable TDP-down Frequency which is 800Mhz which is 08 in HEX

2. check @ [corpnewt/CPUFriendFriend](https://github.com/corpnewt/CPUFriendFriend) table and assume you want 0x80 for Balance power

3. run the script:

```shell
$ git clone https://github.com/corpnewt/CPUFriendFriend.git
$ cd CPUFriendFriend
$ ./CPUFriendFriend.command

#######################################################
#                  CPUFriendFriend                    #
#######################################################

Current Board:  Mac-473D31EABEB93F9B
Current SMBIOS: MacBookPro13,1

Current Frequency Vector:

1 of 2: 0D (1300 MHz)

Enter the new min hex freq (800Mhz would be 08, 1300Mhz would be 0D):08


#######################################################
#                  CPUFriendFriend                    #
#######################################################

Current Board:  Mac-473D31EABEB93F9B
Current SMBIOS: MacBookPro13,1

EPP Range:
  0x00-0x3F    :    Performance
  0x40-0x7F    :    Balance performance
  0x80-0xBF    :    Balance power
  0xC0-0xFF    :    Power

1 of 2: EPP 80 (Balanced Power)

Enter the new EPP value in hex:80

#######################################################
#                  CPUFriendFriend                    #
#######################################################

Current Board:  Mac-473D31EABEB93F9B
Current SMBIOS: MacBookPro13,1

Current Frequency Vector:

2 of 2: 0D (1300 MHz)

Enter the new min hex freq (800Mhz would be 08, 1300Mhz would be 0D):08


#######################################################
#                  CPUFriendFriend                    #
#######################################################

Current Board:  Mac-473D31EABEB93F9B
Current SMBIOS: MacBookPro13,1

EPP Range:
  0x00-0x3F    :    Performance
  0x40-0x7F    :    Balance performance
  0x80-0xBF    :    Balance power
  0xC0-0xFF    :    Power

2 of 2: EPP 80 (Balanced Power)

Enter the new EPP value in hex:80
```

install the updated `CPUFriendDataProvider.kext`

# General
[up up up](#)

consult [this link](https://www.tonymacx86.com/threads/guide-native-power-management-for-laptops.175801/)

stock settings

```shell
$ pmset -g
System-wide power settings:
Currently in use:
 standby              1
 halfdim              1
 hibernatefile        /var/vm/sleepimage
 powernap             1
 gpuswitch            2
 disksleep            10
 sleep                1
 autopoweroffdelay    28800
 hibernatemode        3
 autopoweroff         1
 ttyskeepawake        1
 displaysleep         2
 tcpkeepalive         1
 standbydelay         10800
```

**I did not do any edits you could try**

```shell
$ sudo pmset -a hibernatemode 0
$ sudo pmset -a standby 0
$ sudo pmset -a autopoweroff 0
$ pmset -g
System-wide power settings:
Currently in use:
 standby              0
 halfdim              1
 hibernatefile        /var/vm/sleepimage
 powernap             1
 gpuswitch            2
 disksleep            10
 sleep                1
 autopoweroffdelay    28800
 hibernatemode        0
 autopoweroff         0
 ttyskeepawake        1
 displaysleep         2
 tcpkeepalive         1
 standbydelay         10800
```

## `AppleIntelInfo.kext`
[up up up](#)

In order to log logCStates, logIGPU, logIPGStyle, logIntelRegs, logMSRs

Also on PowerManagement Rehabman has a great [guide](https://www.tonymacx86.com/threads/guide-native-power-management-for-laptops.175801/)

```bash
cd git
git clone https://github.com/Piker-Alpha/AppleIntelInfo.git AppleIntelInfo.git
open AppleIntelInfo.xcodeproj
Product > Build
Product > Build For > Running
get it from
~/Library/Developer/Xcode/DerivedData/AppleIntelInfo-foszpapuujmtjtcxjpclaslwzafu/Build/Products/Debug/AppleIntelInfo.kext/
sudo chown -R root:wheel AppleIntelInfo.kext
sudo chmod -R 755 AppleIntelInfo.kext
sudo kextload AppleIntelInfo.kext
sudo kextunload AppleIntelInfo.kext
sudo cat /tmp/AppleIntelInfo.dat
```

## Work in Progress
[up up up](#)

~~Performance Tuning~~

* ~~In my guide I have used the one I found in the original port from JahStories which I converted it in the format of CPUFriend.~~
* ~~See this [post `CPU Power management`](https://github.com/daliansky/XiaoMi-Pro/issues/22) on how to create one. And this [post `Problem with CPU CPUFriendDataProvider and Geekbench score`](https://github.com/daliansky/XiaoMi-Pro/issues/53) on an optimized one. I know they are from the Pro model but it is the closest I have found to a guide.~~
* ~~Check this [freqVectosEdits](https://pikeralpha.wordpress.com/2017/03/11/freqvectorsedit-v3-1-released/) on the subject as well~~
* ~~finally check [syscl/CPUTune](https://github.com/syscl/CPUTune)~~
* ~~Check thi [CPUFriendFriend python](https://github.com/corpnewt/CPUFriendFriend) to create CPUFriendDataProvider~~

# Check disks with `smartclt`
[up up up](#)

do a check with `smartctl`:

**Samsung SSD 850 EVO M.2 500GB**

```shell_session
$ smartctl -a disk1
smartctl 7.0 2018-12-30 r4883 [Darwin 18.2.0 x86_64] (local build)
Copyright (C) 2002-18, Bruce Allen, Christian Franke, www.smartmontools.org

=== START OF INFORMATION SECTION ===
Model Family:     Samsung based SSDs
Device Model:     Samsung SSD 850 EVO M.2 500GB
Serial Number:    S33DNX0JA09605B
LU WWN Device Id: 5 002538 d4259e1f4
Firmware Version: EMT21B6Q
User Capacity:    500,107,862,016 bytes [500 GB]
Sector Size:      512 bytes logical/physical
Rotation Rate:    Solid State Device
Form Factor:      M.2
Device is:        In smartctl database [for details use: -P show]
ATA Version is:   ACS-2, ATA8-ACS T13/1699-D revision 4c
SATA Version is:  SATA 3.1, 6.0 Gb/s (current: 6.0 Gb/s)
Local Time is:    Sun Jan 20 12:23:04 2019 EET
SMART support is: Available - device has SMART capability.
SMART support is: Enabled

=== START OF READ SMART DATA SECTION ===
SMART overall-health self-assessment test result: PASSED

General SMART Values:
Offline data collection status:  (0x00)   Offline data collection activity
               was never started.
               Auto Offline Data Collection: Disabled.
Self-test execution status:      (   0)   The previous self-test routine completed
               without error or no self-test has ever
               been run.
Total time to complete Offline
data collection:     (    0) seconds.
Offline data collection
capabilities:         (0x53) SMART execute Offline immediate.
               Auto Offline data collection on/off support.
               Suspend Offline collection upon new
               command.
               No Offline surface scan supported.
               Self-test supported.
               No Conveyance Self-test supported.
               Selective Self-test supported.
SMART capabilities:            (0x0003)   Saves SMART data before entering
               power-saving mode.
               Supports SMART auto save timer.
Error logging capability:        (0x01)   Error logging supported.
               General Purpose Logging supported.
Short self-test routine
recommended polling time:   (   2) minutes.
Extended self-test routine
recommended polling time:   ( 265) minutes.
SCT capabilities:           (0x003d)   SCT Status supported.
               SCT Error Recovery Control supported.
               SCT Feature Control supported.
               SCT Data Table supported.

SMART Attributes Data Structure revision number: 1
Vendor Specific SMART Attributes with Thresholds:
ID# ATTRIBUTE_NAME          FLAG     VALUE WORST THRESH TYPE      UPDATED  WHEN_FAILED RAW_VALUE
  5 Reallocated_Sector_Ct   0x0033   100   100   010    Pre-fail  Always       -       0
  9 Power_On_Hours          0x0032   099   099   000    Old_age   Always       -       259
 12 Power_Cycle_Count       0x0032   099   099   000    Old_age   Always       -       741
177 Wear_Leveling_Count     0x0013   099   099   000    Pre-fail  Always       -       1
179 Used_Rsvd_Blk_Cnt_Tot   0x0013   100   100   010    Pre-fail  Always       -       0
181 Program_Fail_Cnt_Total  0x0032   100   100   010    Old_age   Always       -       0
182 Erase_Fail_Count_Total  0x0032   100   100   010    Old_age   Always       -       0
183 Runtime_Bad_Block       0x0013   100   100   010    Pre-fail  Always       -       0
187 Uncorrectable_Error_Cnt 0x0032   100   100   000    Old_age   Always       -       0
190 Airflow_Temperature_Cel 0x0032   066   045   000    Old_age   Always       -       34
195 ECC_Error_Rate          0x001a   200   200   000    Old_age   Always       -       0
199 CRC_Error_Count         0x003e   100   100   000    Old_age   Always       -       0
235 POR_Recovery_Count      0x0012   099   099   000    Old_age   Always       -       122
241 Total_LBAs_Written      0x0032   099   099   000    Old_age   Always       -       1086065911

SMART Error Log Version: 1
No Errors Logged

SMART Self-test log structure revision number 1
No self-tests have been logged.  [To run self-tests, use: smartctl -t]

SMART Selective self-test log data structure revision number 1
 SPAN  MIN_LBA  MAX_LBA  CURRENT_TEST_STATUS
    1        0        0  Not_testing
    2        0        0  Not_testing
    3        0        0  Not_testing
    4        0        0  Not_testing
    5        0        0  Not_testing
  255        0    65535  Read_scanning was never started
Selective self-test flags (0x0):
  After scanning selected spans, do NOT read-scan remainder of disk.
If Selective self-test is pending on power-up, resume after 0 minute delay.
```
