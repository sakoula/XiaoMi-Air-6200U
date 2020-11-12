# Xiaomi Mi Air 13.3'' Skylake-U 2016 for macOS Mojave & High Sierra

# Table of Contents

<!-- MarkdownTOC -->

- [hardware specs](#hardware-specs)
- [directory structure](#directory-structure)
- [A09 Bios Update I5 6200U](#a09-bios-update-i5-6200u)
- [A06 Bios Update I5 6200U August 27th 2017](#a06-bios-update-i5-6200u-august-27th-2017)
- [DSDT patching \(active patches\)](#dsdt-patching-active-patches)
   - [`DSDT.dsl`](#dsdtdsl)
   - [`patches.air.clover/SSDT-XOSI.dsl`](#patchesaircloverssdt-xosidsl)
   - [`patches.air.clover/SSDT-RMNE.dsl`](#patchesaircloverssdt-rmnedsl)
   - [`patches.air.clover/SSDT-SMBUS.dsl`](#patchesaircloverssdt-smbusdsl)
   - [`patches.air.clover/SSDT-RMCF.dsl`](#patchesaircloverssdt-rmcfdsl)
   - [`patches.air.clover/SSDT-PTSWAK.dsl`](#patchesaircloverssdt-ptswakdsl)
   - [`patches.air.clover/SSDT-GPRW.dsl`](#patchesaircloverssdt-gprwdsl)
   - [`patches.air.clover/SSDT-RMDT.dsl`](#patchesaircloverssdt-rmdtdsl)
   - [`patches.air.clover/SSDT-DMAC.dsl`](#patchesaircloverssdt-dmacdsl)
   - [`patches.air.clover/SSDT-HPET.dsl`](#patchesaircloverssdt-hpetdsl)
   - [`patches.air.clover/SSDT-MEM2.dsl`](#patchesaircloverssdt-mem2dsl)
   - [`patches.air.clover/SSDT-PMCR.dsl`](#patchesaircloverssdt-pmcrdsl)
   - [`patches.air.clover/SSDT-LPC.dsl`](#patchesaircloverssdt-lpcdsl)
   - [`patches.air.clover/SSDT-BCKS.dsl`](#patchesaircloverssdt-bcksdsl)
- [DSDT patching \(work in progress patches\) :icecream:](#dsdt-patching-work-in-progress-patches-icecream)
   - [`patches.air.clover/SSDT-SLEEP.dsl` :icecream:](#patchesaircloverssdt-sleepdsl-icecream)
   - [`patches.air.clover/SSDT-I2C.dsl` :icecream:](#patchesaircloverssdt-i2cdsl-icecream)
   - [`patches.air.clover/SSDT-PNPOC14.dsl` :icecream:](#patchesaircloverssdt-pnpoc14dsl-icecream)
- [DSDT patching \(retired patches\)](#dsdt-patching-retired-patches)
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
- [`Clover selection and installation`](#clover-selection-and-installation)
- [`Clover Config`](#clover-config)
   - [`ACPI`](#acpi)
   - [`ACPI`](#acpi-1)
   - [`CPU`](#cpu)
   - [`Devices`](#devices)
   - [`GUI`](#gui)
   - [`Graphics`](#graphics)
   - [`KernelAndKextPatches`](#kernelandkextpatches)
   - [`RtVariables`](#rtvariables)
   - [`SMBIOS`](#smbios)
   - [`SystemParameters`](#systemparameters)
- [`kexts`](#kexts)
- [Power Management](#power-management)
- [General](#general)
   - [`AppleIntelInfo.kext`](#appleintelinfokext)
   - [Work in Progress](#work-in-progress)
- [Check disks with `smartclt`](#check-disks-with-smartclt)
- [Known Issues / Work in Progress](#known-issues--work-in-progress)
- [`patches.air` DSDT hotpatches](#patchesair-dsdt-hotpatches)
- [`patches.pro` DSDT hotpatches](#patchespro-dsdt-hotpatches)
- [`patches.air.johnnync13` DSDT hotpatches](#patchesairjohnnync13-dsdt-hotpatches)
- [PNP devices in DSDT](#pnp-devices-in-dsdt)

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

* `$HACK/air/DETAILS.clover.md` *very detailed technical details on how to patch a XiaMi-Air*
* `$HACK/air/README.clover.md` *github readme*
* `$HACK/air/CHANGELOG.md` *github changelog*
* `$HACK/air/ENVIRONMENT.air.md` *my environment to work with hackintoshes*


patches:

* `$HACK/air/patches.air.clover` work in progress directory with all required patches for XiaoMi-Air: *DSDT.DSL, SSDT\*.DSL, hotfixes, config.plist*
* `$HACK/air/patches.air.2.1.JahStories.clover` directory with all required patches for XiaoMi-Air from [2.1.JahStories repo](https://www.insanelymac.com/forum/files/file/675-xiaomi-notebook-air-13-filespack/) *DSDT.DSL, SSDT\*.DSL *
* `$HACK/air/patches.pro.clover` directory with all required patches for XiaoMi-Pro from [repository](https://github.com/daliansky/XiaoMi-Pro): *SSDT\*.DSL, hotfixes, config.plist, kexts from XiaMi-Pro repo*
* ~~`$HACK/air/patches.pro.201808` directory with all required patches for XiaoMi-Pro from [repository](https://github.com/daliansky/XiaoMi-Pro) (*deprecated* August 2018): *SSDT\*.DSL, hotfixes, config.plist from XiaMi-Pro repo from August 2018*~~

`$HACK/air/sources.clover`:

* `$HACK/air/sources.clover/ACPI.air.2.1.JahStories.zip` *ACPI tables from [insanelymac post version 2.1](https://www.insanelymac.com/forum/topic/319656-guide-xiaomi-mi-notebook-air-13/)*
* `$HACK/air/sources.clover/ACPI.air.bios.a05.zip` *ACPI tables from A05 BIOS extracted using Clover F4*
* `$HACK/air/sources.clover/ACPI.air.bios.a0.zip` *ACPI tables from A06 BIOS using Clover F4*
* `$HACK/air/sources.clover/ACPI.pro.201808.zip` *ACPI tables for XiaoMi-Pro extracted from August 2018 from [daliansky/XiaoMi-Pro](https://github.com/daliansky/XiaoMi-Pro)*
* `$HACK/air/sources.clover/air.baseline.20180829.zip` *Xiaomi-Air working hackintosh EFI and kexts on August 2018 10.13.x*
* `$HACK/air/sources.clover/JahStories.XiaoMi.Notebook.Air.13.(2.0).zip` *all files from [insanelymac post version 2.0](https://www.insanelymac.com/forum/files/file/675-xiaomi-notebook-air-13-filespack/)*
* `$HACK/air/sources.clover/JahStories.XiaoMi.Notebook.Air.13.(2.1).zip` *all files from [insanelymac post version 2.1](https://www.insanelymac.com/forum/files/file/675-xiaomi-notebook-air-13-filespack/)*
* `$HACK/air/sources.clover/Mi Notebook Air 13 (2016) A06 Bios update i5 6200U August 27th 2017.rar` *Bios A06*
* `$HACK/air/sources.clover/TouchPad_Synaptics_v19.2.17.14.zip`  *Windows synaptics driver*
* `$HACK/air/sources.clover/OcQuirks Rev 15 - Designare Z390.zip` *Provider for CLOVER/drivers/UEFI*
* `$HACK/air/sources.clover/Catalina Fresh Install.zip` *Provider for CLOVER/drivers/UEFI*
* `$HACK/air/sources.clover/AppleSupport-2.0.9-RELEASE.zip` *Provider for CLOVER/drivers/UEFI FileVault*
* `$HACK/air/sources.clover/windows.systeminfo` *systeminfo from windows*
* `$HACK/air/sources.clover/kexts` *updated list with source kexts used*
* `$HACK/air/release` *the latest released files*

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

## `DSDT.dsl`
[up up up](#)

open with MaciASL the `patches.air/DSDT.dsl`. In the preferences use the `ACPI 6.2a` and try to compile. If you have only warnings you are good to proceed.

Because we are hotpatching here you should not use the `DSDT.aml` in the clover directory. If you need to use it for debugging purposes then you need to put it in `CLOVER/ACPI/patched` and check the clover setting `config.plist/ACPI/DSDT/Fixes/FixRegions=true)` to fix the *Floating Regions* as described in [Rehabman's guide](https://www.tonymacx86.com/threads/guide-patching-laptop-dsdt-ssdts.152573/)

## `patches.air.clover/SSDT-XOSI.dsl`
[up up up](#)

copy `cp $HACK/git/Rehabman.git/OS-X-Clover-Laptop-Config.git/hotpatch/SSDT-XOSI.dsl patches.air.clover/SSDT-XOSI.dsl` and edit `patches.air.clover/SSDT-XOSI.dsl`

compare it with the *XiaoMi-Pro*

apply clover renames (OSIN first because there is some type of bug on the DSDT patching when applying only the second one):

* change OSIN to XSIN (SSDT-XOSI.dsl) `T1NJTg==` to `WFNJTg==`
* change _OSI to XOSI (SSDT-XOSI.dsl) `X09TSQ==` to `WE9TSQ==`

This XOSI simulates "Windows 2015" (which is Windows 10)

## `patches.air.clover/SSDT-RMNE.dsl`
[up up up](#)

Fake an ethernet card to make the system still allow Mac App Store access, work with NullEthernet.kext.

add `SSDT-RMNE.dsl` from NullEthernet.kext repository or `https://github.com/RehabMan/OS-X-Null-Ethernet/blob/master/SSDT-RMNE.dsl`

> *XiaoMi-Pro* uses DTGP method, I do not think it is required so I sticked to the stock

## `patches.air.clover/SSDT-SMBUS.dsl`
[up up up](#)

copy `cp $HACK/git/Rehabman.git/OS-X-Clover-Laptop-Config.git/hotpatch/SSDT-SMBUS.dsl patches.air.clover/SSDT-SMBUS.dsl` and edit `patches.air.clover/SSDT-SMBUS.dsl`

apply clover renames:

* change SAT0 to SATA (SSDT-SMBUS.dsl) `U0FUMA==` to `U0FUQQ==`

> *XiaoMi-Pro* does not use it any more. It is possibly needed

## `patches.air.clover/SSDT-RMCF.dsl`
[up up up](#)

`cp $HACK/git/Rehabman.git/OS-X-Clover-Laptop-Config.git/hotpatch/SSDT-RMCF.dsl patches.air.clover/SSDT-RMCF.dsl` and edit it using *XiaoMi-Pro* as a reference

## `patches.air.clover/SSDT-PTSWAK.dsl`
[up up up](#)

> *XiaoMi-Pro* does not use it any more. It is possibly needed

`cp $HACK/git/Rehabman.git/OS-X-Clover-Laptop-Config.git/hotpatch/SSDT-PTSWAK.dsl patches.air.clover/SSDT-PTSWAK.dsl` and compare it with *XiaoMi-Pro*

Overriding _PTS and _WAK. I modified the address of discrete card to fit *Xiaomi-Air*.

apply clover renames:

* change Method(_PTS,1,N) to ZPTS (SSDT-PTSWAK.dsl) `X1BUUwE=` to `WlBUUwE=`
* change Method(_WAK,1,S) to ZWAK (SSDT-PTSWAK.dsl) `X1dBSwk=` to `WldBSwk=`

## `patches.air.clover/SSDT-GPRW.dsl`
[up up up](#)

`cp $HACK/git/Rehabman.git/OS-X-Clover-Laptop-Config.git/hotpatch/SSDT-GPRW.dsl patches.air.clover/SSDT-GPRW.dsl` and compare it with *XiaoMi-Pro*

For solving instant wake by hooking GPRW

apply clover renames:

* change Method(GPRW,2,N) to XPRW (SSDT-GPRW.dsl) `R1BSVwI=` to `WFBSVwI=`

## `patches.air.clover/SSDT-RMDT.dsl`
[up up up](#)

`cp $HACK/git/Rehabman.git/OS-X-Clover-Laptop-Config.git/hotpatch/SSDT-RMDT.dsl patches.air.clover/SSDT-RMDT.dsl`

Facility for writing trace output to system.log, Use in conjunction with ACPIDebug.kext

## `patches.air.clover/SSDT-DMAC.dsl`
[up up up](#)

Add missing DMAC Device to enhace performance like a real Mac. Inspired by [syscl](https://github.com/syscl/XPS9350-macOS/tree/master/DSDT/patches). Found it in *XiaoMi-Pro* repository.

## `patches.air.clover/SSDT-HPET.dsl`
[up up up](#)

Disable HPET device by passing value 0 to HPTE to to behave more like a real Mac. Found it in *XiaoMi-Pro* repository.

> updated 20190801 (based on [daliansky/XiaoMi-Pro-Hackintosh](https://github.com/daliansky/XiaoMi-Pro-Hackintosh) repository)

## `patches.air.clover/SSDT-MEM2.dsl`
[up up up](#)

Add missing MEM2 Device to enhace performance like a real Mac. Inspired by [syscl](https://github.com/syscl/XPS9350-macOS/tree/master/DSDT/patches). Found it in *XiaoMi-Pro* repository.

> updated 20190801 (based on [daliansky/XiaoMi-Pro-Hackintosh](https://github.com/daliansky/XiaoMi-Pro-Hackintosh) repository)

## `patches.air.clover/SSDT-PMCR.dsl`
[up up up](#)

Add missing PMCR Device to enhace performance like a real Mac. Inspired by [syscl](https://github.com/syscl/XPS9350-macOS/tree/master/DSDT/patches). (PPMC and PMCR combine together for macOS to load LPCB correctly). Found it in *XiaoMi-Pro* repository.

in the *XiaoMi-Pro* DSDT.dsl there is no PMCR device, but there is one in *Xiaomi-air*

> updated 20190801 (based on [daliansky/XiaoMi-Pro-Hackintosh](https://github.com/daliansky/XiaoMi-Pro-Hackintosh) repository)

## `patches.air.clover/SSDT-LPC.dsl`
[up up up](#)

`cp $HACK/git/Rehabman.git/OS-X-Clover-Laptop-Config.git/hotpatch/SSDT-LPC.dsl patches.air.clover/SSDT-LPC.dsl`

To fix unsupported 8-series LPC devices. looked in ioreg and look for LPC. mine is 0x9d48 which is included here

*XiaoMi-Pro* is not using it.

## `patches.air.clover/SSDT-BCKS.dsl`
[up up up](#)

based on [post](https://www.tonymacx86.com/threads/guide-patching-dsdt-ssdt-for-laptop-backlight-control.152659/)

apply clover renames:

* change _Q1C to ZQ1C (brightness hotkey) (SSDT-BKEY.dsl) `X1ExQw==` to `WlExQw==`
* change _Q1D to ZQ1D (brightness hotkey) (SSDT-BKEY.dsl) `X1ExRA==` to `WlExRA==`

# DSDT patching (work in progress patches) :icecream:
[up up up](#)

## `patches.air.clover/SSDT-SLEEP.dsl` :icecream:
[up up up](#)

this is from the 2.1, keep it for now do not include it. It may be related to the shutdown fix

There is a discussion on this on [Pike's Universum](https://pikeralpha.wordpress.com/2017/01/12/debugging-sleep-issues/)

## `patches.air.clover/SSDT-I2C.dsl` :icecream:
[up up up](#)

Does it really works?

## `patches.air.clover/SSDT-PNPOC14.dsl` :icecream:
[up up up](#)

this is probably from *XiaoMi-Pro* repository trying to disable WMI devices perhaps, found a [reference](https://www.tonymacx86.com/threads/guide-using-clover-to-hotpatch-acpi.200137/page-51#post-1834603). Do not use it for now.

# DSDT patching (retired patches)
[up up up](#)

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

# `Clover selection and installation`
[up up up](#)

**February 2020**: Currently using `Clover_v2.5k_r5099.pkg`. Turns out that `Clover_v2.5k_r5100.pkg` to `Clover_v2.5k_r5103.pkg` has a problem on both Mojave and Catalina with VirtualSMC and SMCBatteryManager. I think based on the changes I see on Github has to do with some type of DSDT patching. Perhaps I do some patches that I should not and Clover is mixed up. So the effect is that the battery reporting is not working (perhaps other as well) and I see the following on the boot logs:

```
$ log show --source --debug --info --last boot | grep -E 'kernel:|loginwindow:|ACPIDebug:'
2020-02-26 09:24:23.000053+0200 0x0        Default     0x0                  0      0    kernel: PMAP: PCID enabled
2020-02-26 09:24:23.000056+0200 0x0        Default     0x0                  0      0    kernel: PMAP: Supervisor Mode Execute Protection enabled
2020-02-26 09:24:23.000058+0200 0x0        Default     0x0                  0      0    kernel: PMAP: Supervisor Mode Access Protection enabled
2020-02-26 09:24:23.001959+0200 0x0        Default     0x0                  0      0    kernel: Darwin Kernel Version 19.3.0: Thu Jan  9 20:58:23 PST 2020; root:xnu-6153.81.5~1/RELEASE_X86_64
2020-02-26 09:24:23.005426+0200 0x0        Default     0x0                  0      0    kernel: pmap_startup() delaying init/free of page nums > 0x200000
2020-02-26 09:24:23.034828+0200 0x0        Default     0x0                  0      0    kernel: pmap_startup() init/release time: 29399 microsec
2020-02-26 09:24:23.034831+0200 0x0        Default     0x0                  0      0    kernel: pmap_startup() delayed init/release of 631594 pages
2020-02-26 09:24:23.034835+0200 0x0        Default     0x0                  0      0    kernel: vm_page_bootstrap: 1391665 free pages, 689103 wired pages, (up to 631594 of which are delayed free)
2020-02-26 09:24:23.059319+0200 0x0        Default     0x0                  0      0    kernel: kext submap [0x<private> - 0x<private>], kernel text [0x<private> - 0x<private>]
2020-02-26 09:24:23.059323+0200 0x0        Default     0x0                  0      0    kernel: zone leak detection enabled
2020-02-26 09:24:23.059326+0200 0x0        Default     0x0                  0      0    kernel: zalloc: allocating memory for zone names buffer
2020-02-26 09:24:23.059387+0200 0x0        Default     0x0                  0      0    kernel: "vm_compressor_mode" is 4
2020-02-26 09:24:23.059793+0200 0x0        Default     0x0                  0      0    kernel: oslog_init completed, 16 chunks, 8 io pages
2020-02-26 09:24:23.059807+0200 0x0        Default     0x0                  0      0    kernel: standard timeslicing quantum is 10000 us
2020-02-26 09:24:23.059809+0200 0x0        Default     0x0                  0      0    kernel: standard background quantum is 2500 us
2020-02-26 09:24:23.059841+0200 0x0        Default     0x0                  0      0    kernel: WQ[wql_init]: init linktable with max:262144 elements (8388608 bytes)
2020-02-26 09:24:23.059853+0200 0x0        Default     0x0                  0      0    kernel: WQ[wqp_init]: init prepost table with max:262144 elements (8388608 bytes)
2020-02-26 09:24:23.059899+0200 0x0        Default     0x0                  0      0    kernel: mig_table_max_displ = 53
2020-02-26 09:24:23.153550+0200 0x0        Default     0x0                  0      0    kernel: TSC Deadline Timer supported and enabled
2020-02-26 09:24:23.153869+0200 0x65       Default     0x0                  0      0    kernel: kdp_core zlib memory 0x7000
2020-02-26 09:24:23.770805+0200 0x65       Default     0x0                  0      0    kernel: "name" not a kext
2020-02-26 09:24:23.771493+0200 0x65       Default     0x0                  0      0    kernel: "FailedCLUT" not a kext
2020-02-26 09:24:23.778383+0200 0x65       Default     0x0                  0      0    kernel: "FailedImage" not a kext
2020-02-26 09:24:23.834996+0200 0x71       Default     0x0                  0      0    kernel: PMRD: PMTraceWorker <private>
2020-02-26 09:24:23.835038+0200 0x71       Default     0x0                  0      0    kernel: PMRD: changePowerStateToPriv(4)
2020-02-26 09:24:23.835140+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) ACPI:
2020-02-26 09:24:23.835315+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) RSDP 0x000000007CEFD014 000024 (v02 XIAOMI)
2020-02-26 09:24:23.836526+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)
2020-02-26 09:24:23.836590+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) ACPI:
2020-02-26 09:24:23.838873+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)
2020-02-26 09:24:23.838974+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) ACPI:
2020-02-26 09:24:23.841258+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)
2020-02-26 09:24:23.850033+0200 0x73       Default     0x0                  0      0    kernel: Warning - kext com.apple.driver.usb.AppleUSBHostPlatformProperties declares no com.apple.kpi.* dependencies. If it uses any KPIs, the link may fail with undefined symbols.
2020-02-26 09:24:23.854465+0200 0x74       Default     0x0                  0      0    kernel: PMRD: power event 7 args <private> 0x0
2020-02-26 09:24:23.854512+0200 0x74       Default     0x0                  0      0    kernel: PMRD: destroyed capability client set <private>
2020-02-26 09:24:23.854514+0200 0x74       Default     0x0                  0      0    kernel: PMRD: sysPowerDownHandler message kIOMessageSystemCapabilityChange
2020-02-26 09:24:23.854516+0200 0x74       Default     0x0                  0      0    kernel: PMRD: sysPowerDownHandler cap f -> f (flags 1)
2020-02-26 09:24:23.854538+0200 0x74       Default     0x0                  0      0    kernel: PMRD: sysPowerDownHandler message kIOMessageSystemCapabilityChange
2020-02-26 09:24:23.854539+0200 0x74       Default     0x0                  0      0    kernel: PMRD: sysPowerDownHandler cap f -> f (flags 2)
2020-02-26 09:24:23.854542+0200 0x74       Default     0x0                  0      0    kernel: PMRD: tellChangeUp OFF_STATE->ON_STATE
2020-02-26 09:24:23.854546+0200 0x74       Default     0x0                  0      0    kernel: PMRD: PowerChangeDone: OFF_STATE->ON_STATE
2020-02-26 09:24:23.854549+0200 0x74       Default     0x0                  0      0    kernel: PMRD: PowerChangeDone: ON_STATE->ON_STATE
2020-02-26 09:24:23.854552+0200 0x74       Default     0x0                  0      0    kernel: PMRD: PowerChangeDone: ON_STATE->ON_STATE
2020-02-26 09:24:23.859096+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) ACPI:
2020-02-26 09:24:23.859271+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) DSDT 0x000000007CE9A000 01CD2E (v02 XIAOMI SKL-ULT  00000000 INTL 20180427)
2020-02-26 09:24:23.861382+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)
2020-02-26 09:24:23.861460+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) ACPI:
2020-02-26 09:24:23.861632+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) FACS 0x000000007CE68000 000040
2020-02-26 09:24:23.862477+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)
2020-02-26 09:24:23.862532+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) ACPI:
2020-02-26 09:24:23.862706+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) FACS 0x000000007CE68000 000040
2020-02-26 09:24:23.863550+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)
2020-02-26 09:24:23.863611+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) ACPI:
2020-02-26 09:24:23.863784+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) TCPA 0x000000007CEFC000 000032 (v02 XIAOMI SKL-ULT  00000000 ACPI 00040000)
2020-02-26 09:24:23.875922+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)
2020-02-26 09:24:23.876037+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) ACPI:
2020-02-26 09:24:23.876212+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) UEFI 0x000000007CEFB000 000236 (v01 XIAOMI SKL-ULT  00000001 ACPI 00040000)
2020-02-26 09:24:23.878323+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)
2020-02-26 09:24:23.878385+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) ACPI:
2020-02-26 09:24:23.878557+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) UEFI 0x000000007CEFA000 000042 (v01 XIAOMI SKL-ULT  00000002 ACPI 00040000)
2020-02-26 09:24:23.880668+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)
2020-02-26 09:24:23.880798+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) ACPI:
2020-02-26 09:24:23.880971+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) SSDT 0x000000007CE98000 0004B7 (v02 XIAOMI SKL-ULT  00001000 ACPI 00040000)
2020-02-26 09:24:23.883082+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)
2020-02-26 09:24:23.883144+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) ACPI:
2020-02-26 09:24:23.883317+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) SSDT 0x000000007CE96000 00004B (v02 XIAOMI SKL-ULT  00003000 ACPI 00040000)
2020-02-26 09:24:23.890374+0200 0x73       Default     0x0                  0      0    kernel: calling mpo_policy_init for Lilu
2020-02-26 09:24:23.892047+0200 0x73       Default     0x0                  0      0    kernel: Security policy loaded: Lilu Kernel Extension 1.4.1 (Lilu)
2020-02-26 09:24:23.895447+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)
2020-02-26 09:24:23.895537+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) ACPI:
2020-02-26 09:24:23.895710+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) TPM2 0x000000007CEF7000 000034 (v03 XIAOMI SKL-ULT  00000000 ACPI 00040000)
2020-02-26 09:24:23.897823+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)
2020-02-26 09:24:23.897885+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) ACPI:
2020-02-26 09:24:23.898058+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) MSDM 0x000000007CEF6000 000055 (v03 XIAOMI SKL-ULT  00000001 ACPI 00040000)
2020-02-26 09:24:23.900168+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)
2020-02-26 09:24:23.901551+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) ACPI:
2020-02-26 09:24:23.901723+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) SSDT 0x000000007CE8F000 005030 (v02 XIAOMI SKL-ULT  00003000 ACPI 00040000)
2020-02-26 09:24:23.903834+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)
2020-02-26 09:24:23.903895+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) ACPI:
2020-02-26 09:24:23.904067+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) DBGP 0x000000007CEEF000 000034 (v01 XIAOMI SKL-ULT  00000001 ACPI 00040000)
2020-02-26 09:24:23.916193+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)
2020-02-26 09:24:23.916276+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) ACPI:
2020-02-26 09:24:23.916450+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) DBG2 0x000000007CEEE000 000054 (v00 XIAOMI SKL-ULT  00000000 ACPI 00040000)
2020-02-26 09:24:23.918563+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)
2020-02-26 09:24:23.918631+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) ACPI:
2020-02-26 09:24:23.918803+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) ASF! 0x000000007CEED000 0000A5 (v32 XIAOMI SKL-ULT  00000001 ACPI 00040000)
2020-02-26 09:24:23.920914+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)
2020-02-26 09:24:23.920975+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) ACPI:
2020-02-26 09:24:23.921147+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) ASPT 0x000000007CEEC000 000034 (v07 XIAOMI SKL-ULT  00000001 ACPI 00040000)
2020-02-26 09:24:23.923258+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)
2020-02-26 09:24:23.923318+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) ACPI:
2020-02-26 09:24:23.923491+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) BOOT 0x000000007CEEB000 000028 (v01 XIAOMI SKL-ULT  00000001 ACPI 00040000)
2020-02-26 09:24:23.935620+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)
2020-02-26 09:24:23.935720+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) ACPI:
2020-02-26 09:24:23.935893+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) DBGP 0x000000007CEEA000 000034 (v01 XIAOMI SKL-ULT  00000001 ACPI 00040000)
2020-02-26 09:24:23.938010+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)
2020-02-26 09:24:23.938070+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) ACPI:
2020-02-26 09:24:23.938243+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) HPET 0x000000007CEE8000 000038 (v01 XIAOMI SKL-ULT  00000001 ACPI 00040000)
2020-02-26 09:24:23.940354+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)
2020-02-26 09:24:23.940420+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) ACPI:
2020-02-26 09:24:23.940592+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) LPIT 0x000000007CEE7000 000094 (v01 XIAOMI SKL-ULT  00000000 ACPI 00040000)
2020-02-26 09:24:23.942703+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)
2020-02-26 09:24:23.942771+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) ACPI:
2020-02-26 09:24:23.942943+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) APIC 0x000000007CEE6000 0000BC (v03 XIAOMI SKL-ULT  00000001 ACPI 00040000)
2020-02-26 09:24:23.945055+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)
2020-02-26 09:24:23.955142+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) ACPI:
2020-02-26 09:24:23.955316+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) MCFG 0x000000007CEE5000 00003C (v01 XIAOMI SKL-ULT  00000001 ACPI 00040000)
2020-02-26 09:24:23.957428+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)
2020-02-26 09:24:23.957517+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) ACPI:
2020-02-26 09:24:23.957690+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) SSDT 0x000000007CE8D000 000209 (v01 XIAOMI SKL-ULT  00000000 ACPI 00040000)
2020-02-26 09:24:23.959802+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)
2020-02-26 09:24:23.960108+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) ACPI:
2020-02-26 09:24:23.960280+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) SSDT 0x000000007CE8B000 000ECB (v02 XIAOMI SKL-ULT  00001000 ACPI 00040000)
2020-02-26 09:24:23.962391+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)
2020-02-26 09:24:23.962474+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) ACPI:
2020-02-26 09:24:23.962646+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) SSDT 0x000000007CE89000 00019A (v02 XIAOMI SKL-ULT  00001000 ACPI 00040000)
2020-02-26 09:24:23.964758+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)
2020-02-26 09:24:23.965058+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) ACPI:
2020-02-26 09:24:23.975257+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) SSDT 0x000000007CE87000 000E73 (v02 XIAOMI SKL-ULT  00003000 ACPI 00040000)
2020-02-26 09:24:23.977370+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)
2020-02-26 09:24:23.978375+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) ACPI:
2020-02-26 09:24:23.978549+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) SSDT 0x000000007CE82000 00381B (v01 XIAOMI SKL-ULT  00001000 ACPI 00040000)
2020-02-26 09:24:23.980660+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)
2020-02-26 09:24:23.980729+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) ACPI:
2020-02-26 09:24:23.980902+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) FPDT 0x000000007CEE4000 000044 (v01 XIAOMI SKL-ULT  00000002 ACPI 00040000)
2020-02-26 09:24:23.983018+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)
2020-02-26 09:24:23.983079+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) ACPI:
2020-02-26 09:24:23.983251+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) BGRT 0x000000007CEBD000 000038 (v01 XIAOMI SKL-ULT  00000001 ACPI 00040000)
2020-02-26 09:24:23.995379+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)
2020-02-26 09:24:23.995470+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) ACPI:
2020-02-26 09:24:23.995644+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) SSDT 0x000000007CE81000 0000CE (v02 hack   _XOSI    00000000 INTL 20180427)
2020-02-26 09:24:23.997756+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)
2020-02-26 09:24:23.997822+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) ACPI:
2020-02-26 09:24:23.997994+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) SSDT 0x000000007CE80000 00008A (v02 hack   _SMBUS   00000000 INTL 20180427)
2020-02-26 09:24:24.000106+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)
2020-02-26 09:24:24.000176+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) ACPI:
2020-02-26 09:24:24.000349+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) SSDT 0x000000007CE7F000 0000D4 (v02 hack   _RMNE    00001000 INTL 20180427)
2020-02-26 09:24:24.002459+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)
2020-02-26 09:24:24.002573+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) ACPI:
2020-02-26 09:24:24.002747+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) SSDT 0x000000007CE7E000 00038F (v02 hack   _RMCF    00000000 INTL 20180427)
2020-02-26 09:24:24.004859+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)
2020-02-26 09:24:24.004955+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) ACPI:
2020-02-26 09:24:24.005128+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) SSDT 0x0000000064F6D000 000272 (v02 hack   _PTSWAK  00000000 INTL 20180427)
2020-02-26 09:24:24.017255+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)
2020-02-26 09:24:24.017340+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) ACPI:
2020-02-26 09:24:24.017515+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) SSDT 0x0000000064F6C000 000050 (v02 hack   _PMCR    00000000 INTL 20180427)
2020-02-26 09:24:24.019625+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)
2020-02-26 09:24:24.019693+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) ACPI:
2020-02-26 09:24:24.019866+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) SSDT 0x0000000064F6B000 000094 (v02 hack   _MEM2    00000000 INTL 20180427)
2020-02-26 09:24:24.021976+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)
2020-02-26 09:24:24.022059+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) ACPI:
2020-02-26 09:24:24.022232+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) SSDT 0x0000000064F6A000 000186 (v02 hack   _LPC     00000000 INTL 20180427)
2020-02-26 09:24:24.024342+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)
2020-02-26 09:24:24.024405+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) ACPI:
2020-02-26 09:24:24.024578+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) SSDT 0x0000000064F69000 000066 (v02 hack   _HPET    00000000 INTL 20180427)
2020-02-26 09:24:24.036708+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)
2020-02-26 09:24:24.041694+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) ACPI:
2020-02-26 09:24:24.041869+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) SSDT 0x0000000064F68000 000086 (v02 hack   _GPRW    00000000 INTL 20180427)
2020-02-26 09:24:24.043979+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)
2020-02-26 09:24:24.058926+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) ACPI:
2020-02-26 09:24:24.059101+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) SSDT 0x0000000064F67000 000072 (v02 hack   _DMAC    00000000 INTL 20180427)
2020-02-26 09:24:24.061212+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)
2020-02-26 09:24:24.066053+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) ACPI:
2020-02-26 09:24:24.066226+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) SSDT 0x0000000064F66000 0000CD (v02 hack   _BCKS    00000000 INTL 20180427)
2020-02-26 09:24:24.068337+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)
2020-02-26 09:24:24.083169+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) ACPI:
2020-02-26 09:24:24.083344+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) SSDT 0x0000000064F65000 000053 (v01 PmRef  CpuPm    00003000 INTL 20120320)
2020-02-26 09:24:24.085455+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)
2020-02-26 09:24:24.113207+0200 0x73       Default     0x0                  0      0    kernel: (CodecCommander) CodecCommander: Version 2.7.1 starting on OS X Darwin 19.3.
2020-02-26 09:24:24.157797+0200 0x73       Default     0x0                  0      0    <IOTimeSyncFamily`IOTimeSyncClockManager::init(OSDictionary*)> kernel: (IOTimeSyncFamily) IOTimeSyncClockManager::init created and initing
2020-02-26 09:24:24.157824+0200 0x73       Default     0x0                  0      0    <AppleCredentialManager`AppleCredentialManager::init(OSDictionary*)> kernel: (AppleCredentialManager) AppleCredentialManager: init: called, instance = <private>.
2020-02-26 09:24:24.173977+0200 0x73       Default     0x0                  0      0    <AppleCredentialManager`AppleCredentialManager::init(OSDictionary*)> kernel: (AppleCredentialManager) AssertMacros: value (value: 0x0), ---, file: /BuildRoot/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager/AppleCredentialManager-336.40.1/AppleCredentialManager/AppleCredentialManager.cpp:67
2020-02-26 09:24:24.194810+0200 0x73       Default     0x0                  0      0    <AppleCredentialManager`AppleCredentialManager::init(OSDictionary*)> kernel: (AppleCredentialManager) AppleCredentialManager: init: Embedded OS: 0 (over KernelRelay: NO, over SEPManager: NO), in BaseSystem: NO, in InternalSystem: NO.
2020-02-26 09:24:24.203776+0200 0x73       Default     0x0                  0      0    <AppleCredentialManager`Env_SetVariable> kernel: (AppleCredentialManager) ACM: Env_SetVariable: set var[6].
2020-02-26 09:24:24.211796+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) ACPI:
2020-02-26 09:24:24.211968+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) 22 ACPI AML tables successfully acquired and loaded
2020-02-26 09:24:24.213404+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)
2020-02-26 09:24:24.229510+0200 0x73       Default     0x0                  0      0    <AppleCredentialManager`Env_SetVariable> kernel: (AppleCredentialManager) ACM: Env_SetVariable (len=1): new data:
2020-02-26 09:24:24.230638+0200 0x73       Default     0x0                  0      0    <AppleCredentialManager`Env_SetVariable> kernel: (AppleCredentialManager) 00
2020-02-26 09:24:24.230723+0200 0x73       Default     0x0                  0      0    <AppleCredentialManager`Env_SetVariable> kernel: (AppleCredentialManager)
2020-02-26 09:24:24.235908+0200 0x73       Default     0x0                  0      0    <AppleCredentialManager`InitCredentialEngine> kernel: (AppleCredentialManager) ACM: InitCredentialEngine: Global credential set created, CS[10].
2020-02-26 09:24:24.249210+0200 0x7a       Default     0x0                  0      0    <AppleACPIPlatform`AppleACPICPU::startSerialized(IOService*, unsigned int, unsigned int)> kernel: (AppleACPIPlatform) AppleACPICPU: ProcessorId=1 LocalApicId=0 Enabled
2020-02-26 09:24:24.255875+0200 0x73       Default     0x0                  0      0    <AppleCredentialManager`Env_SetVariable> kernel: (AppleCredentialManager) ACM: Env_SetVariable: set var[5].
2020-02-26 09:24:24.262063+0200 0x73       Default     0x0                  0      0    <AppleCredentialManager`Env_SetVariable> kernel: (AppleCredentialManager) ACM: Env_SetVariable (len=1): new data:
2020-02-26 09:24:24.263189+0200 0x73       Default     0x0                  0      0    <AppleCredentialManager`Env_SetVariable> kernel: (AppleCredentialManager) 00
2020-02-26 09:24:24.263274+0200 0x73       Default     0x0                  0      0    <AppleCredentialManager`Env_SetVariable> kernel: (AppleCredentialManager)
2020-02-26 09:24:24.268595+0200 0x7a       Default     0x0                  0      0    <AppleACPIPlatform`AppleACPICPU::startSerialized(IOService*, unsigned int, unsigned int)> kernel: (AppleACPIPlatform) AppleACPICPU: ProcessorId=2 LocalApicId=2 Enabled
2020-02-26 09:24:24.275414+0200 0x7a       Default     0x0                  0      0    kernel: cpu_data_alloc(1) <private> desc_table: <private> ldt: <private> int_stack: 0x<private>-0x<private>
2020-02-26 09:24:24.275420+0200 0x7a       Default     0x0                  0      0    <AppleACPIPlatform`AppleACPICPU::startSerialized(IOService*, unsigned int, unsigned int)> kernel: (AppleACPIPlatform) AppleACPICPU: ProcessorId=3 LocalApicId=1 Enabled
2020-02-26 09:24:24.281899+0200 0x73       Default     0x0                  0      0    <AppleCredentialManager`ACMFirstResponderKernelService::init(ACMKernelService* (*) [6], IOService*, IOCommandGate*)> kernel: (AppleCredentialManager) ACMFirstResponderKernelService: init: called, .
2020-02-26 09:24:24.288245+0200 0x73       Default     0x0                  0      0    <AppleCredentialManager`AppleCredentialManager::init(OSDictionary*)> kernel: (AppleCredentialManager) AppleCredentialManager: init: returning, result = true, instance = <private>.
2020-02-26 09:24:24.295562+0200 0x7a       Default     0x0                  0      0    kernel: cpu_data_alloc(2) <private> desc_table: <private> ldt: <private> int_stack: 0x<private>-0x<private>
2020-02-26 09:24:24.295570+0200 0x7a       Default     0x0                  0      0    <AppleACPIPlatform`AppleACPICPU::startSerialized(IOService*, unsigned int, unsigned int)> kernel: (AppleACPIPlatform) AppleACPICPU: ProcessorId=4 LocalApicId=3 Enabled
2020-02-26 09:24:24.302066+0200 0x7a       Default     0x0                  0      0    kernel: cpu_data_alloc(3) <private> desc_table: <private> ldt: <private> int_stack: 0x<private>-0x<private>
2020-02-26 09:24:24.302072+0200 0x7a       Default     0x0                  0      0    <AppleACPIPlatform`AppleACPICPU::startSerialized(IOService*, unsigned int, unsigned int)> kernel: (AppleACPIPlatform) AppleACPICPU: ProcessorId=5 LocalApicId=255 Disabled
2020-02-26 09:24:24.308828+0200 0x7a       Default     0x0                  0      0    <AppleACPIPlatform`AppleACPICPU::startSerialized(IOService*, unsigned int, unsigned int)> kernel: (AppleACPIPlatform) AppleACPICPU: ProcessorId=6 LocalApicId=255 Disabled
2020-02-26 09:24:24.315342+0200 0x7a       Default     0x0                  0      0    <AppleACPIPlatform`AppleACPICPU::startSerialized(IOService*, unsigned int, unsigned int)> kernel: (AppleACPIPlatform) AppleACPICPU: ProcessorId=7 LocalApicId=255 Disabled
2020-02-26 09:24:24.321819+0200 0x7a       Default     0x0                  0      0    <AppleACPIPlatform`AppleACPICPU::startSerialized(IOService*, unsigned int, unsigned int)> kernel: (AppleACPIPlatform) AppleACPICPU: ProcessorId=8 LocalApicId=255 Disabled
2020-02-26 09:24:24.334489+0200 0x65       Default     0x0                  0      0    kernel: calling mpo_policy_init for AMFI
2020-02-26 09:24:24.341099+0200 0x65       Default     0x0                  0      0    kernel: Security policy loaded: Apple Mobile File Integrity (AMFI)
2020-02-26 09:24:24.346796+0200 0x65       Default     0x0                  0      0    kernel: calling mpo_policy_init for Sandbox
2020-02-26 09:24:24.352977+0200 0x65       Default     0x0                  0      0    kernel: Security policy loaded: Seatbelt sandbox policy (Sandbox)
2020-02-26 09:24:24.358728+0200 0x65       Default     0x0                  0      0    kernel: calling mpo_policy_init for Quarantine
2020-02-26 09:24:24.364876+0200 0x65       Default     0x0                  0      0    kernel: Security policy loaded: Quarantine policy (Quarantine)
2020-02-26 09:24:24.365074+0200 0x65       Info        0x0                  0      0    <AppleSystemPolicy`ASPVnodeCache::ASPVnodeCache()> kernel: (AppleSystemPolicy) Initializing vnode cache
2020-02-26 09:24:24.371035+0200 0x65       Default     0x0                  0      0    kernel: calling mpo_policy_init for TMSafetyNet
2020-02-26 09:24:24.377606+0200 0x65       Default     0x0                  0      0    kernel: Security policy loaded: Safety net for Time Machine (TMSafetyNet)
2020-02-26 09:24:24.378024+0200 0x65       Default     0x0                  0      0    <AppleImage4`img4_start> kernel: (AppleImage4) Darwin Image4 Validator Version 2.2.0: Thu Jan 23 00:24:01 PST 2020; root:AppleImage4-61.60.4~1383/AppleImage4/RELEASE_X86_64
2020-02-26 09:24:24.481025+0200 0x7b       Default     0x0                  0      0    kernel: Started cpu 2 (lapic id 00000002)
2020-02-26 09:24:24.481836+0200 0x7c       Default     0x0                  0      0    kernel: Started cpu 1 (lapic id 00000001)
2020-02-26 09:24:24.482555+0200 0x7d       Default     0x0                  0      0    kernel: Started cpu 3 (lapic id 00000003)
2020-02-26 09:24:24.484237+0200 0x8d       Default     0x0                  0      0    <AppleAPIC`AppleAPICInterruptController::start(IOService*)> kernel: (AppleAPIC) IOAPIC: Version 0x20 Vectors 64:111
2020-02-26 09:24:24.492443+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) ACPI:
2020-02-26 09:24:24.492443+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) ACPI:
2020-02-26 09:24:24.492616+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) Executed 30 blocks of module-level executable AML code
2020-02-26 09:24:24.492616+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) Executed 30 blocks of module-level executable AML code
2020-02-26 09:24:24.494136+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)
2020-02-26 09:24:24.494136+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)
2020-02-26 09:24:24.518872+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`AppleACPIPlatformExpert::resolveSystemStateSupport()> kernel: (AppleACPIPlatform) ACPI: sleep states S3 S4 S5
2020-02-26 09:24:24.524709+0200 0x71       Default     0x0                  0      0    kernel: PMRD: setSleepSupported(1)
2020-02-26 09:24:24.524720+0200 0x74       Default     0x0                  0      0    kernel: PMRD: power event 7 args <private> 0x0
2020-02-26 09:24:24.524730+0200 0x74       Default     0x0                  0      0    kernel: PMRD: destroyed capability client set <private>
2020-02-26 09:24:24.524738+0200 0x74       Default     0x0                  0      0    kernel: PMRD: PowerChangeDone: ON_STATE->ON_STATE
2020-02-26 09:24:24.534166+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`newObjectFromACPIObject(acpi_object const*)> kernel: (AppleACPIPlatform) ACPI: cannot translate ACPI object 14
2020-02-26 09:24:24.534174+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`newObjectFromACPIObject(acpi_object const*)> kernel: (AppleACPIPlatform) ACPI: cannot translate ACPI object 14
2020-02-26 09:24:24.534180+0200 0x71       Default     0x0                  0      0    <AppleACPIPlatform`newObjectFromACPIObject(acpi_object const*)> kernel: (AppleACPIPlatform) ACPI: cannot translate ACPI object 14
2020-02-26 09:24:24.555402+0200 0x8f       Default     0x0                  0      0    <IOPCIFamily`IOPCIConfigurator::createRoot()> kernel: (IOPCIFamily) pci (build 21:27:54 Jan  9 2020), flags 0x20c3080
2020-02-26 09:24:24.556563+0200 0x74       Default     0x0                  0      0    kernel: PMRD: PowerChangeDone: ON_STATE->ON_STATE
2020-02-26 09:24:24.556592+0200 0x74       Default     0x0                  0      0    kernel: PMRD: PMTrace found PCI host bridge PCI0->AppleACPIPCI
2020-02-26 09:24:24.556613+0200 0x74       Default     0x0                  0      0    kernel: PMRD: PowerChangeDone: ON_STATE->ON_STATE
2020-02-26 09:24:24.559659+0200 0x74       Default     0x0                  0      0    kernel: PMRD: Clamshell opened
2020-02-26 09:24:24.559666+0200 0x74       Default     0x0                  0      0    kernel: PMRD: clamshell closed 0, disabled 1, desktopMode 0, ac 1 sleepDisabled 0
2020-02-26 09:24:24.559669+0200 0x74       Default     0x0                  0      0    kernel: PMRD: clamshell closed 0, disabled 1, desktopMode 0, ac 1 sleepDisabled 0
2020-02-26 09:24:24.559671+0200 0x74       Default     0x0                  0      0    kernel: PMRD: clamshell tickled 0 lastSleepReason 0
2020-02-26 09:24:24.560166+0200 0xa5       Default     0x0                  0      0    <IOHIDFamily`IOHIDEventService::start(IOService*)> kernel: (IOHIDFamily) HID: Legacy shim 2
2020-02-26 09:24:24.562019+0200 0x98       Default     0x0                  0      0    <AppleACPIEC`AppleACPIEC::start(IOService*)> kernel: (AppleACPIEC) ACPI: no ECDT
2020-02-26 09:24:24.562466+0200 0x8f       Default     0x0                  0      0    <IOPCIFamily`IOPCIConfigurator::createRoot()> kernel: (IOPCIFamily) pci (build 21:27:54 Jan  9 2020), flags 0x20c3080
2020-02-26 09:24:24.562503+0200 0xad       Default     0x0                  0      0    <IOHIDFamily`IOHIDEventService::start(IOService*)> kernel: (IOHIDFamily) HID: Legacy shim 2
2020-02-26 09:24:24.562636+0200 0x8f       Default     0x0                  0      0    <IOPCIFamily`IOPCIConfigurator::configure(unsigned int)> kernel: (IOPCIFamily) [ PCI configuration begin ]
2020-02-26 09:24:24.562725+0200 0x8f       Default     0x0                  0      0    kernel: kPEDisableScreen -1
2020-02-26 09:24:24.562803+0200 0x74       Default     0x0                  0      0    kernel: PMRD: power event 7 args <private> 0x0
2020-02-26 09:24:24.562834+0200 0x74       Default     0x0                  0      0    kernel: PMRD: destroyed capability client set <private>
2020-02-26 09:24:24.562851+0200 0x74       Default     0x0                  0      0    kernel: PMRD: PowerChangeDone: ON_STATE->ON_STATE
2020-02-26 09:24:24.568676+0200 0x8f       Default     0x0                  0      0    kernel: initialize_screen: b=7FA0000000, w=00000780, h=00000438, r=00001E00, d=00000001
2020-02-26 09:24:24.568873+0200 0x8f       Default     0x0                  0      0    kernel: kPEEnableScreen 1
2020-02-26 09:24:24.568876+0200 0x8f       Default     0x0                  0      0    <IOPCIFamily`IOPCIConfigurator::configure(unsigned int)> kernel: (IOPCIFamily) console relocated to 0x7fa0000000
2020-02-26 09:24:24.573134+0200 0x74       Default     0x0                  0      0    kernel: PMRD: PowerChangeDone: ON_STATE->ON_STATE
2020-02-26 09:24:24.573183+0200 0x74       Default     0x0                  0      0    kernel: PMRD: PowerChangeDone: ON_STATE->ON_STATE
2020-02-26 09:24:24.575394+0200 0x8f       Default     0x0                  0      0    <IOPCIFamily`IOPCIConfigurator::configure(unsigned int)> kernel: (IOPCIFamily) [ PCI configuration end, bridges 4, devices 12 ]
2020-02-26 09:24:24.601228+0200 0x74       Default     0x0                  0      0    kernel: PMRD: PowerChangeDone: ON_STATE->ON_STATE
2020-02-26 09:24:24.601272+0200 0x74       Default     0x0                  0      0    kernel: PMRD: PowerChangeDone: ON_STATE->ON_STATE
2020-02-26 09:24:24.618256+0200 0xbf       Default     0x0                  0      0    kernel: (kernel) SMCSuperIO:    ssio @ failed to detect supported SuperIO chip
2020-02-26 09:24:24.619804+0200 0xbb       Default     0x0                  0      0    <IOAHCIFamily`IOAHCIPortMultiplierGlobals::IOAHCIPortMultiplierGlobals()> kernel: (IOAHCIFamily) [AHCI][PML][00000000]+IOAHCIPortMultiplierGlobals::IOAHCIPortMultiplierGlobals
2020-02-26 09:24:24.619808+0200 0xbb       Default     0x0                  0      0    <IOAHCIFamily`IOAHCIPortMultiplierGlobals::IOAHCIPortMultiplierGlobals()> kernel: (IOAHCIFamily) [AHCI][PML][00000000]-IOAHCIPortMultiplierGlobals::IOAHCIPortMultiplierGlobals
2020-02-26 09:24:24.625341+0200 0xc9       Default     0x0                  0      0    <IONVMeFamily`IONVMeDebugAssert> kernel: (IONVMeFamily) AppleNVMe Assert failed: ( 0 != data )
2020-02-26 09:24:24.627623+0200 0xc9       Default     0x0                  0      0    <IONVMeFamily`IONVMeDebugAssert> kernel: (IONVMeFamily) ReleaseIDNode
2020-02-26 09:24:24.628029+0200 0xc9       Default     0x0                  0      0    <IONVMeFamily`IONVMeDebugAssert> kernel: (IONVMeFamily) file: /BuildRoot/Library/Caches/com.apple.xbs/Sources/IONVMeFamily/IONVMeFamily-470.80.1/IONVMeController.cpp
2020-02-26 09:24:24.628248+0200 0x74       Default     0x0                  0      0    kernel: PMRD: PowerChangeDone: ON_STATE->ON_STATE
2020-02-26 09:24:24.628273+0200 0x74       Default     0x0                  0      0    kernel: PMRD: PowerChangeDone: ON_STATE->ON_STATE
2020-02-26 09:24:24.628830+0200 0x73       Default     0x0                  0      0    <IOTimeSyncFamily`IOTimeSyncClockManager::start(IOService*)> kernel: (IOTimeSyncFamily) IOTimeSyncClockManager::start starting
2020-02-26 09:24:24.628863+0200 0x73       Default     0x0                  0      0    <CoreAnalyticsFamily`CoreAnalyticsHub::start(IOService*)> kernel: (CoreAnalyticsFamily) virtual bool CoreAnalyticsHub::start(IOService *)::97:CoreAnalyticsHub start
2020-02-26 09:24:24.628977+0200 0x73       Default     0x0                  0      0    <CoreAnalyticsFamily`CoreAnalyticsHub::start(IOService*)> kernel: (CoreAnalyticsFamily) virtual bool CoreAnalyticsHub::start(IOService *)::97:CoreAnalyticsHub start
2020-02-26 09:24:24.629056+0200 0x73       Default     0x0                  0      0    <AppleCredentialManager`AppleCredentialManager::start(IOService*)> kernel: (AppleCredentialManager) AppleCredentialManager: start: called, instance = <private>.
2020-02-26 09:24:24.629211+0200 0xc9       Default     0x0                  0      0    <IONVMeFamily`IONVMeDebugAssert> kernel: (IONVMeFamily) line: 5416
2020-02-26 09:24:24.630145+0200 0xc9       Default     0x0                  0      0    <IONVMeFamily`IONVMeDebugAssert> kernel: (IONVMeFamily)
2020-02-26 09:24:24.630385+0200 0x73       Default     0x0                  0      0    <AppleCredentialManager`AppleCredentialManager::start(IOService*)> kernel: (AppleCredentialManager) AppleCredentialManager: start: started, instance = <private>.
2020-02-26 09:24:24.630628+0200 0x73       Default     0x0                  0      0    <AppleCredentialManager`AppleCredentialManager::start(IOService*)> kernel: (AppleCredentialManager) AppleCredentialManager: start: returning, result = true, instance = <private>.
2020-02-26 09:24:24.631618+0200 0x74       Default     0x0                  0      0    kernel: PMRD: power event 7 args <private> 0x0
2020-02-26 09:24:24.631626+0200 0x74       Default     0x0                  0      0    kernel: PMRD: destroyed capability client set <private>
2020-02-26 09:24:24.631630+0200 0x74       Default     0x0                  0      0    kernel: PMRD: PowerChangeDone: ON_STATE->ON_STATE
2020-02-26 09:24:24.632429+0200 0xc9       Default     0x0                  0      0    <IONVMeFamily`IONVMeController::CreateSubmissionQueue(unsigned short, unsigned char)> kernel: (IONVMeFamily) virtual IOReturn IONVMeController::CreateSubmissionQueue(uint16_t, uint8_t)::2816:SQ index=0 entrysize=64
2020-02-26 09:24:24.632872+0200 0xdc       Default     0x0                  0      0    <apfs`log_debug> kernel: (apfs) apfs_module_start:1683: load: com.apple.filesystems.apfs, v1412.81.1, apfs-1412.81.1, 2020/01/09
2020-02-26 09:24:24.632873+0200 0xc9       Default     0x0                  0      0    <IONVMeFamily`IONVMeController::CreateSubmissionQueue(unsigned short, unsigned char)> kernel: (IONVMeFamily) virtual IOReturn IONVMeController::CreateSubmissionQueue(uint16_t, uint8_t)::2816:SQ index=0 entrysize=64
2020-02-26 09:24:24.632888+0200 0xc9       Default     0x0                  0      0    <IONVMeFamily`IONVMeController::CreateSubmissionQueue(unsigned short, unsigned char)> kernel: (IONVMeFamily) virtual IOReturn IONVMeController::CreateSubmissionQueue(uint16_t, uint8_t)::2816:SQ index=1 entrysize=64
2020-02-26 09:24:24.633118+0200 0xc9       Default     0x0                  0      0    <IONVMeFamily`IONVMeController::CreateSubmissionQueue(unsigned short, unsigned char)> kernel: (IONVMeFamily) virtual IOReturn IONVMeController::CreateSubmissionQueue(uint16_t, uint8_t)::2816:SQ index=1 entrysize=64
2020-02-26 09:24:24.636113+0200 0x74       Default     0x0                  0      0    kernel: PMRD: power event 7 args <private> 0x0
2020-02-26 09:24:24.636121+0200 0x74       Default     0x0                  0      0    kernel: PMRD: destroyed capability client set <private>
2020-02-26 09:24:24.636126+0200 0x74       Default     0x0                  0      0    kernel: PMRD: PowerChangeDone: ON_STATE->ON_STATE
2020-02-26 09:24:24.699154+0200 0x73       Default     0x0                  0      0    <AppleKeyStore`AppleKeyStore::start(IOService*)> kernel: (AppleKeyStore) AppleKeyStore starting (BUILT: Jan  9 2020 22:48:19)
2020-02-26 09:24:24.708987+0200 0x73       Default     0x0                  0      0    <AppleKeyStore`AppleKeyStore::start(IOService*)> kernel: (AppleKeyStore) AppleKeyStore::start: _kernel_relay_enable = 0
2020-02-26 09:24:24.719502+0200 0x73       Default     0x0                  0      0    <AppleKeyStore`AppleKeyStore::start(IOService*)> kernel: (AppleKeyStore) AppleKeyStore::start: _sep_enabled = 0
2020-02-26 09:24:24.729647+0200 0x73       Default     0x0                  0      0    kernel: IOGetBootKeyStoreData: data at address 0 size 0
2020-02-26 09:24:24.729698+0200 0x74       Default     0x0                  0      0    kernel: PMRD: PowerChangeDone: ON_STATE->ON_STATE
2020-02-26 09:24:24.729725+0200 0x74       Default     0x0                  0      0    kernel: PMRD: PowerChangeDone: ON_STATE->ON_STATE
2020-02-26 09:24:24.729999+0200 0x73       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) ACPI Error:
2020-02-26 09:24:24.730000+0200 0x73       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) ACPI Error:
2020-02-26 09:24:24.730186+0200 0xe9       Default     0x0                  0      0    <AppleSmartBatteryManager`AppleSmartBatteryManager::start(IOService*)> kernel: (AppleSmartBatteryManager) Provider is IOSMBusController
2020-02-26 09:24:24.730214+0200 0xe9       Default     0x0                  0      0    <AppleSmartBatteryManager`AppleSmartBattery::clearBatteryState(bool)> kernel: (AppleSmartBatteryManager) Clearing out battery data
2020-02-26 09:24:24.730224+0200 0xe9       Default     0x0                  0      0    <AppleSmartBatteryManager`AppleSmartBattery::pollBatteryState(int)> kernel: (AppleSmartBatteryManager) Starting poll type 1
2020-02-26 09:24:24.730225+0200 0xe9       Default     0x0                  0      0    <AppleSmartBatteryManager`AppleSmartBattery::transactionCompletion(void*, int, unsigned long long, unsigned char*)> kernel: (AppleSmartBatteryManager) Restarting poll type 1
2020-02-26 09:24:24.730227+0200 0xe9       Default     0x0                  0      0    <AppleSmartBatteryManager`AppleSmartBattery::smcKeysToDictionary(smcToRegistry*) const> kernel: (AppleSmartBatteryManager) smcKeysToDictionary without SMC driver
2020-02-26 09:24:24.730228+0200 0xe9       Default     0x0                  0      0    <AppleSmartBatteryManager`AppleSmartBattery::smcKeysToDictionary(smcToRegistry*) const> kernel: (AppleSmartBatteryManager) smcKeysToDictionary without SMC driver
2020-02-26 09:24:24.730229+0200 0xe9       Default     0x0                  0      0    <AppleSmartBatteryManager`AppleSmartBattery::smcKeysToDictionary(smcToRegistry*) const> kernel: (AppleSmartBatteryManager) smcKeysToDictionary without SMC driver
2020-02-26 09:24:24.730254+0200 0xe9       Default     0x0                  0      0    <AppleSmartBatteryManager`AppleSmartBatteryManager::start(IOService*)> kernel: (AppleSmartBatteryManager) AppleSmartBatteryManager started
2020-02-26 09:24:24.730270+0200 0x74       Default     0x0                  0      0    kernel: PMRD: PowerChangeDone: ON_STATE->ON_STATE
2020-02-26 09:24:24.730304+0200 0x74       Default     0x0                  0      0    kernel: PMRD: PowerChangeDone: ON_STATE->ON_STATE
2020-02-26 09:24:24.730372+0200 0x73       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) [GBIF]
2020-02-26 09:24:24.730544+0200 0x73       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)  Namespace lookup failure, AE_NOT_FOUND
2020-02-26 09:24:24.731652+0200 0x73       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)  (20160930/psargs-463)
2020-02-26 09:24:24.739529+0200 0x73       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) [_BIF] @00029 #002D:
2020-02-26 09:24:24.740263+0200 0x73       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)
2020-02-26 09:24:24.747993+0200 0x73       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)
2020-02-26 09:24:24.765801+0200 0x73       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)     Local1:
2020-02-26 09:24:24.766249+0200 0x73       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) ffffff8031c19730
2020-02-26 09:24:24.766969+0200 0x73       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) <Obj>
2020-02-26 09:24:24.767586+0200 0x73       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)  Integer
2020-02-26 09:24:24.767947+0200 0x73       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)  000000000000008D
2020-02-26 09:24:24.768552+0200 0x73       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)
2020-02-26 09:24:24.777869+0200 0x73       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)     Local6:
2020-02-26 09:24:24.778254+0200 0x73       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) ffffff8031c1c140
2020-02-26 09:24:24.778836+0200 0x73       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) <Obj>
2020-02-26 09:24:24.779391+0200 0x73       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)  Integer
2020-02-26 09:24:24.779649+0200 0x73       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)  0000000000000000
2020-02-26 09:24:24.780309+0200 0x73       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)
2020-02-26 09:24:24.789758+0200 0x73       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)     Local7:
2020-02-26 09:24:24.790165+0200 0x73       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) ffffff8031c1ccd0
2020-02-26 09:24:24.790834+0200 0x73       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) <Obj>
2020-02-26 09:24:24.791453+0200 0x73       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)  Integer
2020-02-26 09:24:24.791789+0200 0x73       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)  0000000000000014
2020-02-26 09:24:24.792354+0200 0x73       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)
2020-02-26 09:24:24.802121+0200 0x73       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)
2020-02-26 09:24:24.811445+0200 0x73       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) No Arguments are initialized for method [_BIF]
2020-02-26 09:24:24.823090+0200 0x73       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)
2020-02-26 09:24:24.832868+0200 0x73       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) ACPI Error:
2020-02-26 09:24:24.832874+0200 0xe2       Default     0x0                  0      0    <AppleSmartBatteryManager`AppleSmartBattery::readAdapterInfo()> kernel: (AppleSmartBatteryManager) readAdapterInfo without SMC driver
2020-02-26 09:24:24.832886+0200 0xe2       Default     0x0                  0      0    <AppleSmartBatteryManager`AppleSmartBattery::clearBatteryState(bool)> kernel: (AppleSmartBatteryManager) Clearing out battery data
2020-02-26 09:24:24.832891+0200 0xe2       Default     0x0                  0      0    <AppleSmartBatteryManager`AppleSmartBattery::handlePollingFinished(bool)> kernel: (AppleSmartBatteryManager) SmartBattery: abort polling
2020-02-26 09:24:24.832897+0200 0x74       Default     0x0                  0      0    kernel: PMRD: clamshell closed 0, disabled 1, desktopMode 0, ac 1 sleepDisabled 0
2020-02-26 09:24:24.833228+0200 0x73       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) Method parse/execution failed
2020-02-26 09:24:24.834080+0200 0x73       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) [\_SB.PCI0.LPCB.EC.BAT0._BIF] (Node ffffff8032e29de0)
2020-02-26 09:24:24.835613+0200 0x73       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) , AE_NOT_FOUND
2020-02-26 09:24:24.836040+0200 0x73       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)  (20160930/psparse-632)
2020-02-26 09:24:25.129016+0200 0x10b      Info        0x0                  0      0    <AppleSystemPolicy`AppleSystemPolicy::init(OSDictionary*)> kernel: (AppleSystemPolicy) Per file malware scanning is: disabled
2020-02-26 09:24:25.129194+0200 0x76       Info        0x0                  0      0    <IOHIDFamily`IOHIDDevice::start(IOService*)> kernel: (IOHIDFamily) IOHIDKeyboardEventDevice:0x1000002e3 start
2020-02-26 09:24:25.133227+0200 0x112      Debug       0x0                  0      0    <IOHIDFamily`IOHIDDevice::createInterface(unsigned int)> kernel: (IOHIDFamily) IOHIDKeyboardEventDevice:0x1000002e3 creating interfaces
2020-02-26 09:24:25.140510+0200 0x76       Info        0x0                  0      0    <IOHIDFamily`IOHIDDevice::start(IOService*)> kernel: (IOHIDFamily) IOHIDPointingEventDevice:0x1000002e9 start
2020-02-26 09:24:25.140847+0200 0x65       Info        0x0                  0      0    kernel: Reinit'd ND information for interface lo0
2020-02-26 09:24:25.140862+0200 0x116      Debug       0x0                  0      0    <IOHIDFamily`IOHIDDevice::createInterface(unsigned int)> kernel: (IOHIDFamily) IOHIDPointingEventDevice:0x1000002e9 creating interfaces
2020-02-26 09:24:25.583285+0200 0x150      Info        0x0                  0      0    <IOHIDFamily`IOHIDDevice::start(IOService*)> kernel: (IOHIDFamily) VoodooInputSimulatorDevice:0x10000031c start
2020-02-26 09:24:25.626242+0200 0x150      Info        0x0                  0      0    <IOHIDFamily`IOHIDDevice::start(IOService*)> kernel: (IOHIDFamily) VoodooInputActuatorDevice:0x10000031e start
2020-02-26 09:24:25.626361+0200 0x151      Debug       0x0                  0      0    <IOHIDFamily`IOHIDDevice::createInterface(unsigned int)> kernel: (IOHIDFamily) VoodooInputSimulatorDevice:0x10000031c creating interfaces
2020-02-26 09:24:25.626589+0200 0x153      Debug       0x0                  0      0    <IOHIDFamily`IOHIDDevice::createInterface(unsigned int)> kernel: (IOHIDFamily) VoodooInputActuatorDevice:0x10000031e creating interfaces
2020-02-26 09:24:25.630283+0200 0x154      Debug       0x0                  0      0    <IOHIDFamily`IOHIDDevice::handleOpen(IOService*, unsigned int, void*)> kernel: (IOHIDFamily) VoodooInputActuatorDevice:0x10000031e open by AppleActuatorHIDEventDriver 0x100000323 (0x0)
2020-02-26 09:24:25.632289+0200 0x152      Debug       0x0                  0      0    <IOHIDFamily`IOHIDDevice::handleOpen(IOService*, unsigned int, void*)> kernel: (IOHIDFamily) VoodooInputSimulatorDevice:0x10000031c open by AppleMultitouchTrackpadHIDEventDriver 0x100000324 (0x0)
2020-02-26 09:24:25.635449+0200 0x12e      Info        0x0                  0      0    <IOHIDFamily`IOHIDDevice::start(IOService*)> kernel: (IOHIDFamily) IOHIDPointingEventDevice:0x10000032a start
2020-02-26 09:24:25.635807+0200 0x156      Debug       0x0                  0      0    <IOHIDFamily`IOHIDDevice::createInterface(unsigned int)> kernel: (IOHIDFamily) IOHIDPointingEventDevice:0x10000032a creating interfaces
2020-02-26 09:24:25.987871+0200 0x65       Debug       0x0                  0      0    <Sandbox`schedule_before_userret> kernel: (Sandbox) schedule_before_userret(101): 1/4 tasks scheduled
2020-02-26 09:24:26.014613+0200 0x65       Debug       0x0                  0      0    <Sandbox`schedule_before_userret> kernel: (Sandbox) schedule_before_userret(101): 2/4 tasks scheduled
2020-02-26 09:24:26.047631+0200 0x65       Debug       0x0                  0      0    <Sandbox`schedule_before_userret> kernel: (Sandbox) schedule_before_userret(101): 3/4 tasks scheduled
2020-02-26 09:24:27.329441+0200 0x194      Debug       0x0                  0      0    <Sandbox`__removable_volume_init_block_invoke> kernel: (Sandbox) identified disk3 as removable
2020-02-26 09:24:27.329639+0200 0x196      Debug       0x0                  0      0    <Sandbox`__removable_volume_init_block_invoke> kernel: (Sandbox) identified disk3s1 as removable
2020-02-26 09:24:27.329749+0200 0x197      Debug       0x0                  0      0    <Sandbox`__removable_volume_init_block_invoke> kernel: (Sandbox) identified disk3s2 as removable
2020-02-26 09:24:28.521426+0200 0x181      Info        0x0                  0      0    kernel: Reinit'd ND information for interface lo0
2020-02-26 09:24:28.521443+0200 0x181      Info        0x0                  0      0    kernel: Reinit'd ND information for interface lo0
2020-02-26 09:24:34.604031+0200 0x2b2      Default     0x0                  0      0    <ALF`sockwall_cntl_updaterules> kernel: (ALF) ALF, old data swfs_pid_entry <private>, updaterules_msg <private>, updaterules_state <private>
2020-02-26 09:24:34.636655+0200 0x74       Default     0x0                  0      0    kernel: PMRD: power event 4 args 0x1d9c1147ccdc695f 0x0
2020-02-26 09:24:34.657001+0200 0x74       Default     0x0                  0      0    kernel: PMRD: power event 6 args 0x1d9c1147d0992dbf 0x0
2020-02-26 09:24:34.657004+0200 0x74       Default     0x0                  0      0    kernel: PMRD: power event 6 args 0x1d9c1147d0992dbf 0x0
2020-02-26 09:24:34.657019+0200 0x74       Default     0x0                  0      0    kernel: PMRD: destroyed capability client set 0x1d9c1147cf00460f
2020-02-26 09:24:34.657033+0200 0x74       Default     0x0                  0      0    kernel: PMRD: PowerChangeDone: ON_STATE->ON_STATE
2020-02-26 09:24:34.657417+0200 0x74       Default     0x0                  0      0    kernel: PMRD: power event 12 args 0x1d9c1147cd9d367f 0x0
2020-02-26 09:24:34.657419+0200 0x74       Default     0x0                  0      0    kernel: PMRD: SleepWake UUID queued: D2BCEB6C-83AB-4F0F-B482-DB2A1EAA4A10
2020-02-26 09:24:34.658356+0200 0x23c      Default     0x0                  0      0    <AppleSmartBatteryManager`AppleSmartBattery::pollBatteryState(int)> kernel: (AppleSmartBatteryManager) Starting poll type 1
2020-02-26 09:24:34.658358+0200 0x23c      Default     0x0                  0      0    <AppleSmartBatteryManager`AppleSmartBattery::transactionCompletion(void*, int, unsigned long long, unsigned char*)> kernel: (AppleSmartBatteryManager) Restarting poll type 1
2020-02-26 09:24:34.658361+0200 0x23c      Default     0x0                  0      0    <AppleSmartBatteryManager`AppleSmartBattery::smcKeysToDictionary(smcToRegistry*) const> kernel: (AppleSmartBatteryManager) smcKeysToDictionary without SMC driver
2020-02-26 09:24:34.658362+0200 0x23c      Default     0x0                  0      0    <AppleSmartBatteryManager`AppleSmartBattery::smcKeysToDictionary(smcToRegistry*) const> kernel: (AppleSmartBatteryManager) smcKeysToDictionary without SMC driver
2020-02-26 09:24:34.658363+0200 0x23c      Default     0x0                  0      0    <AppleSmartBatteryManager`AppleSmartBattery::smcKeysToDictionary(smcToRegistry*) const> kernel: (AppleSmartBatteryManager) smcKeysToDictionary without SMC driver
2020-02-26 09:24:34.661221+0200 0x2a5      Default     0x0                  0      0    kernel: Waiting for DSMOS...
2020-02-26 09:24:34.692819+0200 0x2c9      Default     0x0                  0      0    kernel: ifnet_attach: All kernel threads created for interface en0 have been scheduled at least once. Proceeding.
2020-02-26 09:24:34.718332+0200 0xe2       Default     0x0                  0      0    <AppleSmartBatteryManager`AppleSmartBattery::readAdapterInfo()> kernel: (AppleSmartBatteryManager) readAdapterInfo without SMC driver
2020-02-26 09:24:34.718355+0200 0xe2       Default     0x0                  0      0    <AppleSmartBatteryManager`AppleSmartBattery::clearBatteryState(bool)> kernel: (AppleSmartBatteryManager) Clearing out battery data
2020-02-26 09:24:34.718355+0200 0x74       Default     0x0                  0      0    kernel: PMRD: clamshell closed 0, disabled 1, desktopMode 0, ac 1 sleepDisabled 0
2020-02-26 09:24:34.718358+0200 0x74       Default     0x0                  0      0    kernel: PMRD: clamshell closed 0, disabled 1, desktopMode 0, ac 1 sleepDisabled 0
2020-02-26 09:24:34.718375+0200 0xe2       Default     0x0                  0      0    <AppleSmartBatteryManager`AppleSmartBattery::handlePollingFinished(bool)> kernel: (AppleSmartBatteryManager) SmartBattery: abort polling
2020-02-26 09:24:34.887690+0200 0x269      Error       0x0                  0      0    <Sandbox`kernel_report> kernel: (Sandbox) Sandbox: distnoted(123) deny(1) file-read-metadata /usr/sbin/distnoted
2020-02-26 09:24:34.913518+0200 0x74       Default     0x0                  0      0    kernel: PMRD: power event 5 args 0x1d9c1147ccdc695f 0x0
2020-02-26 09:24:34.916444+0200 0x23c      Default     0x0                  0      0    kernel: PMRD: setAggressiveness(0) kPMMinutesToSleep = 0
2020-02-26 09:24:34.916457+0200 0x23c      Default     0x0                  0      0    kernel: PMRD: setAggressiveness(0) kPMMinutesToDim = 0
2020-02-26 09:24:34.916830+0200 0x74       Default     0x0                  0      0    kernel: PMRD: aggressiveness changed: system 0->0, display 0
2020-02-26 09:24:34.916832+0200 0x74       Default     0x0                  0      0    kernel: PMRD: idle time -> 0 secs (ena 0)
2020-02-26 09:24:34.916833+0200 0x74       Default     0x0                  0      0    kernel: PMRD: extra sleep timer changed
2020-02-26 09:24:34.919084+0200 0x23c      Default     0x0                  0      0    kernel: PMRD: setDisableClamShellSleep(0)
2020-02-26 09:24:34.932185+0200 0x34a      Default     0x0                  0      0    kernel: PMRD: assertionsUser 0x40
2020-02-26 09:24:34.959146+0200 0x352      Default     0x0                  0      0    <ALF`sockwall_cntl_updaterules> kernel: (ALF) ALF, old data swfs_pid_entry <private>, updaterules_msg <private>, updaterules_state <private>
2020-02-26 09:24:34.979544+0200 0x352      Default     0x0                  0      0    <IOTimeSyncFamily`IOTimeSyncClockManager::addgPTPServices()> kernel: (IOTimeSyncFamily) IOTimeSyncClockManager::addgPTPServices adding services
2020-02-26 09:24:34.979546+0200 0x352      Default     0x0                  0      0    <IOTimeSyncFamily`IOTimeSyncClockManager::addgPTPServices()> kernel: (IOTimeSyncFamily) IOTimeSyncClockManager::addgPTPServices requesting matching
2020-02-26 09:24:34.987843+0200 0x294      Info        0x0                  0      0    <Sandbox`file_set_size> kernel: (Sandbox) successfully truncated syncroots to 0 bytes
2020-02-26 09:24:34.987915+0200 0x294      Info        0x0                  0      0    <Sandbox`file_set_size> kernel: (Sandbox) successfully truncated syncroot_ancestors to 0 bytes
2020-02-26 09:24:34.998862+0200 0x294      Info        0x0                  0      0    <Sandbox`file_set_size> kernel: (Sandbox) successfully truncated network-exemptions to 0 bytes
2020-02-26 09:24:35.036121+0200 0x292      Default     0x0                  0      0    <ALF`sockwall_cntl_updaterules> kernel: (ALF) ALF, old data swfs_pid_entry <private>, updaterules_msg <private>, updaterules_state <private>
2020-02-26 09:24:35.048501+0200 0x2e5      Error       0x0                  0      0    <Sandbox`kernel_report> kernel: (Sandbox) Sandbox: bluetoothd(117) deny(1) file-read-metadata /usr
2020-02-26 09:24:35.068492+0200 0x292      Default     0x0                  0      0    kernel: _dlil_attach_flowswitch_nexus: en0 1500 1500
2020-02-26 09:24:35.068533+0200 0x34a      Default     0x0                  0      0    kernel: PMRD: assertionsUser 0x50
2020-02-26 09:24:35.081560+0200 0x292      Default     0x0                  0      0    kernel: _dlil_attach_flowswitch_nexus kern_nexus_ifattach host failed 45 en0
2020-02-26 09:24:35.092346+0200 0x292      Info        0x0                  0      0    kernel: in6_ifattach: en0 is not multicast capable, IPv6 not enabled
2020-02-26 09:24:35.169528+0200 0x263      Default     0x0                  0      0    <AppleActuatorDriver`AppleActuatorDeviceUserClient::start(IOService*)> kernel: (AppleActuatorDriver) AppleActuatorDeviceUserClient::start Entered
2020-02-26 09:24:35.235502+0200 0x32e      Error       0x0                  0      0    <Sandbox`kernel_report> kernel: (Sandbox) Sandbox: contextstored(173) deny(1) file-read-data /private/var/root/Library/Preferences/.GlobalPreferences.plist
2020-02-26 09:24:35.235735+0200 0x32e      Error       0x0                  0      0    <Sandbox`kernel_report> kernel: (Sandbox) Sandbox: contextstored(173) deny(1) file-read-data /Library/Preferences/.GlobalPreferences.plist
2020-02-26 09:24:35.236255+0200 0x292      Default     0x0                  0      0    kernel: in6_domifattach: in6_ifattach_prelim returned 22 if=en0
2020-02-26 09:24:35.245459+0200 0x292      Info        0x0                  0      0    kernel: in6_ifattach: en0 is not multicast capable, IPv6 not enabled
2020-02-26 09:24:35.269195+0200 0x1ef      Error       0x0                  0      0    <Sandbox`kernel_report> kernel: (Sandbox) Sandbox: bluetoothd(117) deny(1) mach-lookup com.apple.server.bluetooth
2020-02-26 09:24:35.318727+0200 0xe2       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) ACPI Error:
2020-02-26 09:24:35.318729+0200 0xe2       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) ACPI Error:
2020-02-26 09:24:35.319090+0200 0xe2       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) [GBIF]
2020-02-26 09:24:35.319091+0200 0xe2       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) [GBIF]
2020-02-26 09:24:35.319273+0200 0xe2       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)  Namespace lookup failure, AE_NOT_FOUND
2020-02-26 09:24:35.319275+0200 0xe2       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)  Namespace lookup failure, AE_NOT_FOUND
2020-02-26 09:24:35.320434+0200 0xe2       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)  (20160930/psargs-463)
2020-02-26 09:24:35.320436+0200 0xe2       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)  (20160930/psargs-463)
2020-02-26 09:24:35.331438+0200 0xe2       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) [_BIF] @00029 #002D:
2020-02-26 09:24:35.331440+0200 0xe2       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) [_BIF] @00029 #002D:
2020-02-26 09:24:35.332091+0200 0xe2       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)
2020-02-26 09:24:35.332092+0200 0xe2       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)
2020-02-26 09:24:35.342324+0200 0xe2       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)
2020-02-26 09:24:35.342326+0200 0xe2       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)
2020-02-26 09:24:35.354281+0200 0x388      Default     0x0                  0      0    <CoreAnalyticsFamily`CoreAnalyticsUserClient::initWithTask(task*, void*, unsigned int, OSDictionary*)> kernel: (CoreAnalyticsFamily) virtual bool CoreAnalyticsUserClient::initWithTask(task_t, void *, UInt32, OSDictionary *)::195:success
2020-02-26 09:24:35.363515+0200 0x388      Default     0x0                  0      0    <CoreAnalyticsFamily`CoreAnalyticsUserClient::initWithTask(task*, void*, unsigned int, OSDictionary*)> kernel: (CoreAnalyticsFamily) virtual bool CoreAnalyticsUserClient::initWithTask(task_t, void *, UInt32, OSDictionary *)::195:success
2020-02-26 09:24:35.363538+0200 0x388      Info        0x0                  0      0    <CoreAnalyticsFamily`CoreAnalyticsUserClient::start(IOService*)> kernel: (CoreAnalyticsFamily) virtual bool CoreAnalyticsUserClient::start(IOService *)::150:success
2020-02-26 09:24:35.363541+0200 0x388      Default     0x0                  0      0    <CoreAnalyticsFamily`CoreAnalyticsHub::setClient(CoreAnalyticsUserClient*)> kernel: (CoreAnalyticsFamily) IOReturn CoreAnalyticsHub::setClient(CoreAnalyticsUserClient *)::245:adding userClient
2020-02-26 09:24:35.363970+0200 0x388      Default     0x0                  0      0    <CoreAnalyticsFamily`CoreAnalyticsHub::setClient(CoreAnalyticsUserClient*)> kernel: (CoreAnalyticsFamily) IOReturn CoreAnalyticsHub::setClient(CoreAnalyticsUserClient *)::245:adding userClient
2020-02-26 09:24:35.363973+0200 0x388      Default     0x0                  0      0    <CoreAnalyticsFamily`CoreAnalyticsHub::newUserClient(task*, void*, unsigned int, OSDictionary*, IOUserClient**)> kernel: (CoreAnalyticsFamily) virtual IOReturn CoreAnalyticsHub::newUserClient(task_t, void *, UInt32, OSDictionary *, IOUserClient **)::222:Successfully opened
2020-02-26 09:24:35.364207+0200 0x388      Default     0x0                  0      0    <CoreAnalyticsFamily`CoreAnalyticsHub::newUserClient(task*, void*, unsigned int, OSDictionary*, IOUserClient**)> kernel: (CoreAnalyticsFamily) virtual IOReturn CoreAnalyticsHub::newUserClient(task_t, void *, UInt32, OSDictionary *, IOUserClient **)::222:Successfully opened
2020-02-26 09:24:35.369836+0200 0x388      Default     0x0                  0      0    <CoreAnalyticsFamily`CoreAnalyticsUserClient::clientMemoryForType(unsigned int, unsigned int*, IOMemoryDescriptor**)> kernel: (CoreAnalyticsFamily) virtual IOReturn CoreAnalyticsUserClient::clientMemoryForType(UInt32, IOOptionBits *, IOMemoryDescriptor **)::292: got memory descriptor with 16432
2020-02-26 09:24:35.376471+0200 0xe2       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)     Local1:
2020-02-26 09:24:35.376473+0200 0xe2       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)     Local1:
2020-02-26 09:24:35.376702+0200 0xe2       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) ffffff803365b690
2020-02-26 09:24:35.376703+0200 0xe2       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) ffffff803365b690
2020-02-26 09:24:35.377401+0200 0xe2       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) <Obj>
2020-02-26 09:24:35.377402+0200 0xe2       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) <Obj>
2020-02-26 09:24:35.377869+0200 0xe2       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)  Integer
2020-02-26 09:24:35.377870+0200 0xe2       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)  Integer
2020-02-26 09:24:35.378103+0200 0xe2       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)  000000000000008D
2020-02-26 09:24:35.378104+0200 0xe2       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)  000000000000008D
2020-02-26 09:24:35.378570+0200 0xe2       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)
2020-02-26 09:24:35.378571+0200 0xe2       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)
2020-02-26 09:24:35.389067+0200 0xe2       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)     Local6:
2020-02-26 09:24:35.389069+0200 0xe2       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)     Local6:
2020-02-26 09:24:35.389531+0200 0xe2       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) ffffff8033651780
2020-02-26 09:24:35.389532+0200 0xe2       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) ffffff8033651780
2020-02-26 09:24:35.389764+0200 0xe2       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) <Obj>
2020-02-26 09:24:35.389765+0200 0xe2       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) <Obj>
2020-02-26 09:24:35.389999+0200 0xe2       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)  Integer
2020-02-26 09:24:35.390000+0200 0xe2       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)  Integer
2020-02-26 09:24:35.390233+0200 0xe2       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)  0000000000000000
2020-02-26 09:24:35.390234+0200 0xe2       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)  0000000000000000
2020-02-26 09:24:35.390473+0200 0xe2       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)
2020-02-26 09:24:35.390476+0200 0xe2       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)
2020-02-26 09:24:35.391178+0200 0x388      Default     0x0                  0      0    <CoreAnalyticsFamily`CoreAnalyticsUserClient::clientMemoryForType(unsigned int, unsigned int*, IOMemoryDescriptor**)> kernel: (CoreAnalyticsFamily) virtual IOReturn CoreAnalyticsUserClient::clientMemoryForType(UInt32, IOOptionBits *, IOMemoryDescriptor **)::292: got memory descriptor with 16432
2020-02-26 09:24:35.442129+0200 0xe2       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)     Local7:
2020-02-26 09:24:35.442131+0200 0xe2       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)     Local7:
2020-02-26 09:24:35.442484+0200 0xe2       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) ffffff8033651730
2020-02-26 09:24:35.442486+0200 0xe2       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) ffffff8033651730
2020-02-26 09:24:35.442985+0200 0xe2       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) <Obj>
2020-02-26 09:24:35.442987+0200 0xe2       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) <Obj>
2020-02-26 09:24:35.443487+0200 0xe2       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)  Integer
2020-02-26 09:24:35.443489+0200 0xe2       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)  Integer
2020-02-26 09:24:35.443728+0200 0xe2       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)  0000000000000014
2020-02-26 09:24:35.443729+0200 0xe2       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)  0000000000000014
2020-02-26 09:24:35.444229+0200 0xe2       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)
2020-02-26 09:24:35.444230+0200 0xe2       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)
2020-02-26 09:24:35.454041+0200 0xe2       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)
2020-02-26 09:24:35.454043+0200 0xe2       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)
2020-02-26 09:24:35.463561+0200 0xe2       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) No Arguments are initialized for method [_BIF]
2020-02-26 09:24:35.463563+0200 0xe2       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) No Arguments are initialized for method [_BIF]
2020-02-26 09:24:35.474258+0200 0xe2       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)
2020-02-26 09:24:35.474260+0200 0xe2       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)
2020-02-26 09:24:35.483529+0200 0xe2       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) ACPI Error:
2020-02-26 09:24:35.483531+0200 0xe2       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) ACPI Error:
2020-02-26 09:24:35.483888+0200 0xe2       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) Method parse/execution failed
2020-02-26 09:24:35.483890+0200 0xe2       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) Method parse/execution failed
2020-02-26 09:24:35.484781+0200 0xe2       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) [\_SB.PCI0.LPCB.EC.BAT0._BIF] (Node ffffff8032e29de0)
2020-02-26 09:24:35.484783+0200 0xe2       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) [\_SB.PCI0.LPCB.EC.BAT0._BIF] (Node ffffff8032e29de0)
2020-02-26 09:24:35.486346+0200 0xe2       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) , AE_NOT_FOUND
2020-02-26 09:24:35.486347+0200 0xe2       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) , AE_NOT_FOUND
2020-02-26 09:24:35.486764+0200 0xe2       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)  (20160930/psparse-632)
2020-02-26 09:24:35.486766+0200 0xe2       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)  (20160930/psparse-632)
2020-02-26 09:24:35.497484+0200 0x74       Default     0x0                  0      0    kernel: PMRD: clamshell closed 0, disabled 1, desktopMode 0, ac 1 sleepDisabled 0
2020-02-26 09:24:35.497488+0200 0x74       Default     0x0                  0      0    kernel: PMRD: clamshell closed 0, disabled 1, desktopMode 0, ac 1 sleepDisabled 0
2020-02-26 09:24:35.536955+0200 0x6f       Default     0x0                  0      0    <AppleActuatorDriver`AppleActuatorDeviceUserClient::stop(IOService*)> kernel: (AppleActuatorDriver) AppleActuatorDeviceUserClient::stop Entered
2020-02-26 09:24:35.542620+0200 0x367      Error       0x0                  0      0    <Sandbox`kernel_report> kernel: (Sandbox) Sandbox: tccd(125) deny(1) network-outbound /private/var/run/systemkeychaincheck.socket
2020-02-26 09:24:35.548021+0200 0x32a      Default     0x0                  0      0    <AppleActuatorDriver`AppleActuatorDeviceUserClient::start(IOService*)> kernel: (AppleActuatorDriver) AppleActuatorDeviceUserClient::start Entered
2020-02-26 09:24:35.611192+0200 0x1f2      Error       0x0                  0      0    <Sandbox`kernel_report> kernel: (Sandbox) Sandbox: contextstored(173) deny(1) mach-lookup com.apple.tccd.system
2020-02-26 09:24:35.850088+0200 0x28c      Default     0x0                  0      0    <AppleKeyStore`AppleKeyStoreUserClient::effective_bag_handle(int, int*) const> kernel: (AppleKeyStore) unexpected session: 100000 uid: -1 requested by: 60
2020-02-26 09:24:35.861182+0200 0x28c      Default     0x0                  0      0    <AppleKeyStore`AppleKeyStoreUserClient::externalMethod(unsigned int, IOExternalMethodArguments*, IOExternalMethodDispatch*, OSObject*, void*)> kernel: (AppleKeyStore) AppleKeyStore: operation failed (pid: 60 sel: 7 ret: e00002c2 '-536870206', -1, 100000)
2020-02-26 09:24:35.932552+0200 0x3e0      Info        0x0                  0      0    <AppleSystemPolicy`AppleSystemPolicy::setBlockedHashes(unsigned long long, syspolicyd_blocked_hash_entry*, unsigned long long)> kernel: (AppleSystemPolicy) Got new blocked hash data: 1 hashes
2020-02-26 09:24:35.932554+0200 0x3e0      Info        0x0                  0      0    <AppleSystemPolicy`BlockData::setBlockedHashes(unsigned long long, syspolicyd_blocked_hash_entry const*)> kernel: (AppleSystemPolicy) Setting 1 new blocked hashes
2020-02-26 09:24:35.932569+0200 0x3e0      Info        0x0                  0      0    <AppleSystemPolicy`AppleSystemPolicy::setBlockedTeams(unsigned long long, syspolicyd_blocked_team_entry*, unsigned long long)> kernel: (AppleSystemPolicy) Got new blocked team data: 1 teams
2020-02-26 09:24:35.932570+0200 0x3e0      Info        0x0                  0      0    <AppleSystemPolicy`BlockData::setBlockedTeams(unsigned long long, syspolicyd_blocked_team_entry const*)> kernel: (AppleSystemPolicy) Setting 1 new blocked teams
2020-02-26 09:24:36.066445+0200 0x294      Info        0x0                  0      0    <Sandbox`file_set_size> kernel: (Sandbox) successfully truncated homedirs to 22 bytes
2020-02-26 09:24:36.066595+0200 0x294      Info        0x0                  0      0    <Sandbox`file_set_size> kernel: (Sandbox) successfully truncated homedir_ancestors to 16 bytes
2020-02-26 09:24:36.432157+0200 0x234      Default     0x0                  0      0    kernel: Notice - new kext com.apple.driver.KextExcludeList, v15.1.1 matches prelinked kext but can't determine if executables are the same (no UUIDs).
2020-02-26 09:24:36.481628+0200 0x19e      Default     0x0                  0      0    <Sandbox`sb_report> kernel: (Sandbox) Sandbox: 1 duplicate report for contextstored deny(1) mach-lookup com.apple.tccd.system
2020-02-26 09:24:36.481631+0200 0x19e      Error       0x0                  0      0    <Sandbox`kernel_report> kernel: (Sandbox) Sandbox: coreduetd(91) deny(1) mach-lookup com.apple.tccd
2020-02-26 09:24:36.481807+0200 0x19e      Error       0x0                  0      0    <Sandbox`kernel_report> kernel: (Sandbox) Sandbox: coreduetd(91) deny(1) mach-lookup com.apple.tccd.system
2020-02-26 09:24:36.482138+0200 0x19e      Error       0x0                  0      0    <Sandbox`kernel_report> kernel: (Sandbox) Sandbox: coreduetd(91) deny(1) mach-lookup com.apple.tccd
2020-02-26 09:24:36.482264+0200 0x19e      Error       0x0                  0      0    <Sandbox`kernel_report> kernel: (Sandbox) Sandbox: coreduetd(91) deny(1) mach-lookup com.apple.tccd.system
2020-02-26 09:24:36.496468+0200 0x19e      Error       0x0                  0      0    <Sandbox`kernel_report> kernel: (Sandbox) Sandbox: coreduetd(91) deny(1) mach-lookup com.apple.tccd
2020-02-26 09:24:36.496713+0200 0x19e      Error       0x0                  0      0    <Sandbox`kernel_report> kernel: (Sandbox) Sandbox: coreduetd(91) deny(1) mach-lookup com.apple.tccd.system
2020-02-26 09:24:36.497741+0200 0xe2       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) ACPI Error:
2020-02-26 09:24:36.497743+0200 0xe2       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) ACPI Error:
2020-02-26 09:24:36.498110+0200 0xe2       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) [GBIF]
2020-02-26 09:24:36.498111+0200 0xe2       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) [GBIF]
2020-02-26 09:24:36.498294+0200 0xe2       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)  Namespace lookup failure, AE_NOT_FOUND
2020-02-26 09:24:36.498295+0200 0xe2       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)  Namespace lookup failure, AE_NOT_FOUND
2020-02-26 09:24:36.499448+0200 0xe2       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)  (20160930/psargs-463)
2020-02-26 09:24:36.499450+0200 0xe2       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)  (20160930/psargs-463)
2020-02-26 09:24:36.510418+0200 0xe2       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) [_BIF] @00029 #002D:
2020-02-26 09:24:36.510420+0200 0xe2       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform) [_BIF] @00029 #002D:
2020-02-26 09:24:36.511066+0200 0xe2       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)
2020-02-26 09:24:36.511066+0200 0xe2       Default     0x0                  0      0    <AppleACPIPlatform`AcpiOsVprintf> kernel: (AppleACPIPlatform)
2020-02-26 09:24:36.511905+0200 0x234      Default     0x0                  0      0    kernel: Matching service count = 14
2020-02-26 09:24:36.512299+0200 0x234      Default     0x0                  0      0    kernel: Matching service count = 21
2020-02-26 09:24:36.514103+0200 0x234      Default     0x0                  0      0    kernel: Matching service count = 36
2020-02-26 09:24:36.514267+0200 0x234      Default     0x0                  0      0    kernel: XiaoMi USB 2.0 Webcam: family specific matching fails
2020-02-26 09:24:36.514269+0200 0x234      Default     0x0                  0      0    kernel: AppleUSBInterface: family specific matching fails
2020-02-26 09:24:36.514272+0200 0x234      Default     0x0                  0      0    kernel: CDC Communications Control: family specific matching fails
2020-02-26 09:24:36.514274+0200 0x234      Default     0x0                  0      0    kernel: AppleUSBInterface: family specific matching fails
2020-02-26 09:24:36.514276+0200 0x234      Default     0x0                  0      0    kernel: AppleUSBInterface: family specific matching fails
2020-02-26 09:24:36.514278+0200 0x234      Default     0x0                  0      0    kernel: AppleUSBInterface: family specific matching fails
2020-02-26 09:24:36.514280+0200 0x234      Default     0x0                  0      0    kernel: AppleUSBInterface: family specific matching fails
2020-02-26 09:24:36.514281+0200 0x234      Default     0x0                  0      0    kernel: Matching service count = 37
```

~~**we are moving to a newer clover** : I have read in many places including [here](https://www.tonymacx86.com/threads/guide-hp-elite-8300-hp-6300-pro-using-clover-uefi-hotpatch.265384/) that RehabMan's clover fork is more stable so this is the one we are going to use.~~

*Continue* > *Continue* > *Change Install Location* > *Install macOS Catalina* > *Customize*

*Clover for UEFI booting only*, *Install Clover in the ESP*

*Install RC scripts on target volume* **Only on the hard disk for NVRAM emulation**

*Install Clover Preference Pane* **Only on the hard disk**

> Create `EFI/CLOVER/drivers/UEFI` or Erase all files in `EFI/CLOVER/drivers/UEFI` if exitsts and copy the ones from the release directory

`EFI/CLOVER/drivers/UEFI` will have the following:

* ApfsDriverLoader.efi
* AppleGenericInput.efi
* AppleUiSupport.efi
* AudioDxe.efi
* EmuVariableUefi.efi
* FwRuntimeServices.efi
* HFSPlus.efi
* OcQuirks.efi
* OcQuirks.plist
* UsbKbDxe.efi
* UsbMouseDxe.efi
* VirtualSmc.efi

These files come from:

* [Designare Z390](https://www.tonymacx86.com/threads/success-gigabyte-designare-z390-thunderbolt-3-i7-9700k-amd-rx-580.267551/page-1131#post-2046300). Use the `OcQuirks Rev 15 - Designare Z390.zip` and `Catalina Fresh Install.zip`
* [Filevault](https://fewtarius.gitbook.io/laptopguide/extras/enabling-filevault). Use the `AppleSupport-2.0.9-RELEASE.zip`



# `Clover Config`
[up up up](#)

In general I prefer the Clover Configurator although it it not reccomended

## `ACPI`
[up up up](#)

* `AutoMerge > YES`
* `FixHeaders > YES`
* ~~`FixMCFG > YES`~~ *removed from XiaoMi-Pro and I removed it too*

* `DSDT > DropOEM_DSM > NO`

* `DSDT > Fixes > AddDTGP > YES`
* `DSDT > Fixes > AddMCHC > YES`
* `DSDT > Fixes > FixADP1 > YES`
* `DSDT > Fixes > FixTMR > YES`
* `DSDT > Fixes > AddPNLF > YES` *check for backlight absed on whatevergreen FAQ*
* `DSDT > Fixes > FixRegions > YES` *only when using custom DSDT.aml*

* `DSDT > Patches`

```xml
<key>Patches</key>
<array>
   <dict>
      <key>Comment</key>
      <string>change OSIN to XSIN (SSDT-XOSI.dsl)</string>
      <key>Disabled</key>
      <false/>
      <key>Find</key>
      <data>T1NJTg==</data>
      <key>Replace</key>
      <data>WFNJTg==</data>
   </dict>
   <dict>
      <key>Comment</key>
      <string>change _OSI to XOSI (SSDT-XOSI.dsl)</string>
      <key>Disabled</key>
      <false/>
      <key>Find</key>
      <data>X09TSQ==</data>
      <key>Replace</key>
      <data>WE9TSQ==</data>
   </dict>
   <dict>
      <key>Comment</key>
      <string>change EC0 to EC (SSDT-USBX.dsl)</string>
      <key>Disabled</key>
      <false/>
      <key>Find</key>
      <data>RUMwXw==</data>
      <key>Replace</key>
      <data>RUNfXw==</data>
   </dict>
   <dict>
      <key>Comment</key>
      <string>change _DSM to XDSM</string>
      <key>Disabled</key>
      <false/>
      <key>Find</key>
      <data>X0RTTQ==</data>
      <key>Replace</key>
      <data>WERTTQ==</data>
   </dict>
   <dict>
      <key>Comment</key>
      <string>remove ^^^GFX0.GLID (KLID)</string>
      <key>Disabled</key>
      <false/>
      <key>Find</key>
      <data>Xl5eR0ZYMC5HTElEIChLTElEKQ==</data>
      <key>Replace</key>
      <data>ICAgICAgICAgICAgICAgICAgIA==</data>
   </dict>
   <dict>
      <key>Comment</key>
      <string>change SAT0 to SATA (SSDT-SMBUS.dsl)</string>
      <key>Disabled</key>
      <false/>
      <key>Find</key>
      <data>U0FUMA==</data>
      <key>Replace</key>
      <data>U0FUQQ==</data>
   </dict>
   <dict>
      <key>Comment</key>
      <string>change Method(_PTS,1,N) to ZPTS (SSDT-PTSWAK.dsl)</string>
      <key>Disabled</key>
      <false/>
      <key>Find</key>
      <data>X1BUUwE=</data>
      <key>Replace</key>
      <data>WlBUUwE=</data>
   </dict>
   <dict>
      <key>Comment</key>
      <string>change Method(_WAK,1,S) to ZWAK (SSDT-PTSWAK.dsl)</string>
      <key>Disabled</key>
      <false/>
      <key>Find</key>
      <data>X1dBSwk=</data>
      <key>Replace</key>
      <data>WldBSwk=</data>
   </dict>
   <dict>
      <key>Comment</key>
      <string>change Method(GPRW,2,N) to XPRW (SSDT-GPRW.dsl)</string>
      <key>Disabled</key>
      <false/>
      <key>Find</key>
      <data>R1BSVwI=</data>
      <key>Replace</key>
      <data>WFBSVwI=</data>
   </dict>
   <dict>
      <key>Comment</key>
      <string>change _Q1C to ZQ1C (brightness hotkey) (SSDT-BKEY.dsl)</string>
      <key>Disabled</key>
      <false/>
      <key>Find</key>
      <data>X1ExQw==</data>
      <key>Replace</key>
      <data>WlExQw==</data>
   </dict>
   <dict>
      <key>Comment</key>
      <string>change _Q1D to ZQ1D (brightness hotkey) (SSDT-BKEY.dsl)</string>
      <key>Disabled</key>
      <false/>
      <key>Find</key>
      <data>X1ExRA==</data>
      <key>Replace</key>
      <data>WlExRA==</data>
   </dict>
</array>
```

The following are disabled patches mostly due to the fact that WhetEverGreen does the same functionality:

```xml
<key>Patches</key>
<array>
   <dict>
      <key>Comment</key>
      <string>change HDAS to HDEF</string>
      <key>Disabled</key>
      <true/>
      <key>Find</key>
      <data>SERBUw==</data>
      <key>Replace</key>
      <data>SERFRg==</data>
   </dict>
   <dict>
      <key>Comment</key>
      <string>change HECI to IMEI</string>
      <key>Disabled</key>
      <true/>
      <key>Find</key>
      <data>SEVDSQ==</data>
      <key>Replace</key>
      <data>SU1FSQ==</data>
   </dict>
   <dict>
      <key>Comment</key>
      <string>change GFX0 to IGPU</string>
      <key>Disabled</key>
      <true/>
      <key>Find</key>
      <data>R0ZYMA==</data>
      <key>Replace</key>
      <data>SUdQVQ==</data>
   </dict>
   <dict>
      <key>Comment</key>
      <string>change MATH._STA and LDR2._STA to XSTA</string>
      <key>Disabled</key>
      <true/>
      <key>Find</key>
      <data>X1NUQQCgDZNQ</data>
      <key>Replace</key>
      <data>WFNUQQCgDZNQ</data>
   </dict>
</array>
```

* `DropTables > Signature > DMAR`

* `SSDT > DropOem > No`
* `SSDT > Generate > PluginType > YES`
* `SSDT > NoOemTableId > NO`

## `ACPI`
[up up up](#)

* `Arguments > darkwake=0 dart=0 gfxrst=1 -cdfon -v`
* `DefaultVolume > LastBootedVolume`
* `HibernationFixup > YES`
* `Legacy > PBR`
* `NeverHibernate > NO`
* `NoEarlyProgress > YES`
* `RtcHibernateAware > YES`
* `Secure > NO`
* `Timeout > 4`

## `CPU`
[up up up](#)

* `HWPEnable > YES` *this apply only in skylake architecture*
* `UseARTFrequency > NO` *do not pass any specific arguments*

## `Devices`
[up up up](#)

* `Audio > Inject > NO`

* `SetIntelBacklight > YES`
* `SetIntelMaxBacklight > YES`

* `USB > AddClockID > YES`
* `USB > FixOwnership > YES`
* `USB > Inject > NO`

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

* `$HACK/bin/gfxutil -f SBUS` - `Properties > DevicePath = PciRoot(0x0)/Pci(0x1f,0x4)`

```xml
<key>PciRoot(0x0)/Pci(0x1f,0x4)</key>
<dict>
   <key>AAPL,slot-name</key>
   <string>Internal</string>
   <key>device_type</key>
   <string>SMBus</string>
   <key>model</key>
   <string>Sunrise Point-LP SMBus</string>
</dict>
```

* `$HACK/bin/gfxutil -f PPMC` - `Properties > DevicePath = PciRoot(0x0)/Pci(0x1f,0x2)`

```xml
<key>PciRoot(0x0)/Pci(0x1f,0x2)</key>
<dict>
   <key>AAPL,slot-name</key>
   <string>Internal</string>
   <key>device_type</key>
   <string>Memory controller</string>
   <key>model</key>
   <string>Sunrise Point-LP PMC</string>
</dict>
```

* `$HACK/bin/gfxutil -f IMEI` - `Properties > DevicePath = PciRoot(0x0)/Pci(0x16,0x0)`

```xml
<key>PciRoot(0x0)/Pci(0x16,0x0)</key>
<dict>
   <key>AAPL,slot-name</key>
   <string>Internal</string>
   <key>device_type</key>
   <string>IMEI</string>
   <key>model</key>
   <string>Sunrise Point-LP CSME HECI #1</string>
</dict>
```

* `$HACK/bin/gfxutil -f XHC` - `Properties > DevicePath = PciRoot(0x0)/Pci(0x14,0x0)`

used what hackingtool provided the rest is being handled by the USB.kext:

```xml
<key>PciRoot(0x0)/Pci(0x14,0x0)</key>
<dict>
   <key>AAPL,slot-name</key>
   <string>Internal</string>
   <key>device_type</key>
   <string>USB controller</string>
   <key>model</key>
   <string>Sunrise Point-LP USB 3.0 xHCI Controller</string>
</dict>
```

this is what I had before

```xml
<key>PciRoot(0x0)/Pci(0x14,0x0)</key>
<dict>
    <key>AAPL,current-available</key>
    <data>NAgAAA==</data>
    <key>AAPL,current-extra</key>
    <data>mAgAAA==</data>
    <key>AAPL,current-extra-in-sleep</key>
    <data>QAYAAA==</data>
    <key>AAPL,max-port-current-in-sleep</key>
    <data>NAgAAA==</data>
    <key>AAPL,slot-name</key>
    <string>PCI-Express</string>
    <key>model</key>
    <string>Sunrise Point-LP USB 3.0 xHCI Controller</string>
    <key>name</key>
    <string>pci8086,9d2f</string>
    <key>subsystem-id</key>
    <data>cHIAAA==</data>
    <key>subsystem-vendor-id</key>
    <data>hoAAAA==</data>
</dict>
```

* `$HACK/bin/gfxutil -f IGPU` - `Properties > DevicePath = PciRoot(0x0)/Pci(0x2,0x0)` *my edits pro are slightly different*


```xml
<key>PciRoot(0x0)/Pci(0x2,0x0)</key>
<dict>
   <key>AAPL,ig-platform-id</key>
   <data>AAAWGQ==</data>
   <key>AAPL,slot-name</key>
   <string>PCI-Express</string>
   <key>device-id</key>
   <data>FhkAAA==</data>
   <key>disable-external-gpu</key>
   <data>AQAAAA==</data>
   <key>framebuffer-con1-enable</key>
   <data>AQAAAA==</data>
   <key>framebuffer-con1-type</key>
   <data>AAgAAA==</data>
   <key>framebuffer-fbmem</key>
   <data>AACQAA==</data>
   <key>framebuffer-patch-enable</key>
   <data>AQAAAA==</data>
   <key>framebuffer-pipecount</key>
   <data>AgAAAA==</data>
   <key>framebuffer-portcount </key>
   <data>AgAAAA==</data>
   <key>framebuffer-stolenmem</key>
   <data>AAAwAQ==</data>
   <key>framebuffer-unifiedmem</key>
   <data>AAAAgA==</data>
   <key>hda-gfx</key>
   <string>onboard-1</string>
</dict>
```

* edits from hackingtool:

```xml
<key>PciRoot(0x0)/Pci(0x0,0x0)</key>
<dict>
   <key>AAPL,slot-name</key>
   <string>Internal</string>
   <key>device_type</key>
   <string>Host bridge</string>
   <key>model</key>
   <string>Xeon E3-1200 v5/E3-1500 v5/6th Gen Core Processor Host Bridge/DRAM Registers</string>
</dict>
<key>PciRoot(0x0)/Pci(0x17,0x0)</key>
<dict>
   <key>AAPL,slot-name</key>
   <string>Internal</string>
   <key>device_type</key>
   <string>SATA controller</string>
   <key>model</key>
   <string>Sunrise Point-LP SATA Controller [AHCI mode]</string>
</dict>
<key>PciRoot(0x0)/Pci(0x1c,0x0)</key>
<dict>
   <key>AAPL,slot-name</key>
   <string>Internal</string>
   <key>device_type</key>
   <string>PCI bridge</string>
   <key>model</key>
   <string>Sunrise Point-LP PCI Express Root Port #1</string>
</dict>
<key>PciRoot(0x0)/Pci(0x1c,0x4)</key>
<dict>
   <key>AAPL,slot-name</key>
   <string>Internal</string>
   <key>device_type</key>
   <string>PCI bridge</string>
   <key>model</key>
   <string>Sunrise Point-LP PCI Express Root Port #5</string>
</dict>
<key>PciRoot(0x0)/Pci(0x1c,0x4)/Pci(0x0,0x0)</key>
<dict>
   <key>AAPL,slot-name</key>
   <string>Internal@2,0,0</string>
   <key>device_type</key>
   <string>Network controller</string>
   <key>model</key>
   <string>Wireless 8260</string>
</dict>
<key>PciRoot(0x0)/Pci(0x1d,0x0)</key>
<dict>
   <key>AAPL,slot-name</key>
   <string>Internal</string>
   <key>device_type</key>
   <string>PCI bridge</string>
   <key>model</key>
   <string>Sunrise Point-LP PCI Express Root Port #9</string>
</dict>
<key>PciRoot(0x0)/Pci(0x1d,0x0)/Pci(0x0,0x0)</key>
<dict>
   <key>AAPL,slot-name</key>
   <string>Internal@3,0,0</string>
   <key>device_type</key>
   <string>Non-Volatile memory controller</string>
   <key>model</key>
   <string>NVMe SSD Controller SM951/PM951</string>
</dict>
<key>PciRoot(0x0)/Pci(0x1f,0x0)</key>
<dict>
   <key>AAPL,slot-name</key>
   <string>Internal</string>
   <key>device_type</key>
   <string>ISA bridge</string>
   <key>model</key>
   <string>Wildcat Point-LP LPC Controller</string>
</dict>
```

* ~~unknown copied from PRO retired~~

```xml
<key>PciRoot(0x0)/Pci(0x1c,0x0)</key>
<dict>
    <key>reg-ltrovr</key>
    <data>AAQAAAAAAAA=</data>
</dict>
<key>PciRoot(0x0)/Pci(0x1c,0x4)</key>
<dict>
    <key>reg-ltrovr</key>
    <data>AAQAAAAAAAA=</data>
</dict>
<key>PciRoot(0x0)/Pci(0x1c,0x7)</key>
<dict>
    <key>reg-ltrovr</key>
    <data>AAQAAAAAAAA=</data>
</dict>
<key>PciRoot(0x0)/Pci(0x1c,0x8)</key>
<dict>
    <key>reg-ltrovr</key>
    <data>AAQAAAAAAAA=</data>
</dict>
```

* ~~these are the I2C controllers but I do not enter them from Pro retired~~

these are not revelant since the new driver supports multitouch

```xml
<key>PciRoot(0x0)/Pci(0x15,0x0)</key>
<dict>
    <key>AAPL,slot-name</key>
    <string>PCI-Express</string>
    <key>device_type</key>
    <string>I2C</string>
    <key>model</key>
    <string>Sunrise Point-LP Serial IO I2C Controller #0</string>
</dict>
<key>PciRoot(0x0)/Pci(0x15,0x1)</key>
<dict>
    <key>AAPL,slot-name</key>
    <string>PCI-Express</string>
    <key>device_type</key>
    <string>I2C</string>
    <key>model</key>
    <string>Sunrise Point-LP Serial IO I2C Controller #1</string>
</dict>
```

## `GUI`
[up up up](#)

```xml
<key>GUI</key>
<dict>
    <key>Hide</key>
    <array>
        <string>Preboot</string>
        <string>Recovery</string>
    </array>
    <key>Mouse</key>
    <dict>
        <key>Enabled</key>
        <false/>
    </dict>
    <key>Scan</key>
    <dict>
        <key>Entries</key>
        <true/>
        <key>Legacy</key>
        <false/>
        <key>Linux</key>
        <true/>
        <key>Tool</key>
        <true/>
    </dict>
    <key>ScreenResolution</key>
    <string>1920x1080</string>
    <key>Theme</key>
    <string>embedded</string>
</dict>
```

## `Graphics`
[up up up](#)

```xml
<key>Graphics</key>
<dict>
    <key>EDID</key>
    <dict>
        <key>Inject</key>
        <true/>
    </dict>
    <key>Inject</key>
    <dict>
        <key>ATI</key>
        <false/>
        <key>Intel</key>
        <false/>
        <key>NVidia</key>
        <false/>
    </dict>
</dict>
```

## `KernelAndKextPatches`
[up up up](#)

```xml
<key>KernelPm</key> <true/>
```

```xml
<key>KernelToPatch</key>
<array>
    <dict>
        <key>Comment</key>
        <string>MSR 0xE2 _xcpm_idle instant reboot(c) Pike R. Alpha</string>
        <key>Find</key>
        <data>ILniAAAADzA=</data>
        <key>Replace</key>
        <data>ILniAAAAkJA=</data>
    </dict>
    <dict>
        <key>Comment</key>
        <string>Disable panic kext logging on 10.13 release kernel (credit vit9696)</string>
        <key>Find</key>
        <data>igKEwHRE</data>
        <key>MatchOS</key>
        <string>10.13.x</string>
        <key>Replace</key>
        <data>igKEwOtE</data>
    </dict>
    <dict>
        <key>Comment</key>
        <string>Disable panic kext logging on 10.14 release kernel (credit vit9696)</string>
        <key>Find</key>
        <data>igKEwHRC</data>
        <key>MatchOS</key>
        <string>10.14.x</string>
        <key>Replace</key>
        <data>igKEwOtC</data>
    </dict>
</array>
```

```xml
<key>KextsToPatch</key>
<array>
    <dict>
        <key>Comment</key>
        <string>Prevent Apple I2C kexts from attaching to I2C controllers, credit CoolStar</string>
        <key>Find</key>
        <data>SU9LaXQ=</data>
        <key>InfoPlistPatch</key>
        <true/>
        <key>Name</key>
        <string>com.apple.driver.AppleIntelLpssI2C</string>
        <key>Replace</key>
        <data>SU9LaXM=</data>
    </dict>
    <dict>
        <key>Comment</key>
        <string>Prevent Apple I2C kexts from attaching to I2C controllers, credit CoolStar</string>
        <key>Find</key>
        <data>SU9LaXQ=</data>
        <key>InfoPlistPatch</key>
        <true/>
        <key>Name</key>
        <string>com.apple.driver.AppleIntelLpssI2CController</string>
        <key>Replace</key>
        <data>SU9LaXM=</data>
    </dict>
    <dict>
        <key>Comment</key>
        <string>Enable TRIM for SSD</string>
        <key>Find</key>
        <data>AEFQUExFIFNTRAA=</data>
        <key>InfoPlistPatch</key>
        <false/>
        <key>Name</key>
        <string>com.apple.iokit.IOAHCIBlockStorage</string>
        <key>Replace</key>
        <data>AAAAAAAAAAAAAAA=</data>
    </dict>
</array>
```

## `RtVariables`
[up up up](#)

```xml
<key>RtVariables</key>
<dict>
    <key>BooterConfig</key>
    <string>0x28</string>
    <key>CsrActiveConfig</key>
    <string>0x67</string>
    <key>ROM</key>
    <string>UseMacAddr0</string>
</dict>
```

## `SMBIOS`
[up up up](#)

**MacBookPro13,1**

## `SystemParameters`
[up up up](#)

```xml
<key>SystemParameters</key>
<dict>
    <key>InjectKexts</key>
    <string>YES</string>
    <key>InjectSystemID</key>
    <true/>
</dict>
```

On a USB Flash Drive recover:

If placed kexts on `/L/E` then:

```xml
<key>SystemParameters</key>
<dict>
    <key>InjectKexts</key>
    <string>Detect</string>
    <key>InjectSystemID</key>
    <true/>
</dict>
```

If placed kexts on `EFI/CLOVER/kexts/Other` then:

```xml
<key>SystemParameters</key>
<dict>
    <key>InjectKexts</key>
    <string>YES</string>
    <key>InjectSystemID</key>
    <true/>
</dict>
```

# `kexts`
[up up up](#)

used

* `Clover_v2.5k_r5099.pkg` - `From [Github](https://github.com/CloverHackyColor/CloverBootloader/releases) Site`
* `as.vit9696.VirtualSMC (1.0.9)`  - `VirtualSMC-1.0.9-RELEASE.zip` **used VirtualSMC.kext and SMCBatteryManager.kext**
* `com.rehabman.driver.ACPIDebug (0.1.4)` - `RehabMan-Debug-2015-1230.zip`
* `s.vit9696.Lilu (1.4.1)` - `Lilu-1.4.1-RELEASE.zip`
* `as.vit9696.WhateverGreen (1.3.6)` - `WhateverGreen-1.3.6-RELEASE.zip`
* `as.lvs1974.HibernationFixup (1.3.2)` - `HibernationFixup-1.3.2-RELEASE.zip`
* `as.vit9696.AppleALC (1.4.6)` - `AppleALC-1.4.6-RELEASE.zip`
* `org.tw.CodecCommander (2.7.1)` - `RehabMan-CodecCommander-2018-1003.zip`
* ~~`org.rehabman.driver.AppleSmartBatteryManager (1.90.1)` - `RehabMan-Battery-2018-1005.zip`~~ updated 20190801 [VirtualSMC+SMCBatteryManager is recommended](https://github.com/daliansky/XiaoMi-Pro-Hackintosh/pull/204)
* `org.rehabman.driver.NullEthernet (1.0.6)` - `RehabMan-NullEthernet-2016-1220.zip`
* `VoodooPS2Controller-2.1.1.zip` - `VoodooPS2Controller-2.1.1-RELEASE.zip`
* `VoodooInput-1.0.2.zip` - `VoodooInput-1.0.2-RELEASE.zip`
* `org.vanilla.driver.CPUFriend (1.2.0)` - `CPUFriend-1.2.0-RELEASE.zip`
* ~~`CPUFriendDataProvider.kext.JahStories.zip` based on `MiNote13-FrequenciesInjector-MPB13.1-I56200U.kext` from 2.1.JahStories`~~
* `CPUFriendDataProvider.kext.corpnewt.800.80.zip` based on [corpnewt/CPUFriendFriend](https://github.com/corpnewt/CPUFriendFriend) min hex freq 800Mhz=08 and EPP Range: (0x80-0xBF:Balance power) = 80
* `AppleIntelInfo.kext` - [Replacement for AppleIntelCPUPowerManagementInfo.kext](https://github.com/Piker-Alpha/AppleIntelInfo)
* `SATA-unsupported.kext` *from [RehabMan/hack-tools](https://github.com/RehabMan/hack-tools/tree/master/kexts)*
* `USBPorts.kext` created with [FB-Patcher](https://www.insanelymac.com/forum/topic/335018-intel-fb-patcher-v168/) very similar to the procedure from Rehabman's USBInjectAll
* `LiluFriend.kext` - `LiluFriend.1.1.0.RELEASE.zip`
* `LiluFriendLite.kext` - `LiluFriendLite.kext.zip`
* `com.zxystd.IntelBluetoothFirmware (1.0.2)` - `IntelBluetooth.1.0.2.zip`
* ~~`org.netkas.driver.FakeSMC (1800)` - `RehabMan-FakeSMC-2018-0905.zip`~~
* ~~`com.rehabman.driver.USBInjectAll (0.7.1)` - `RehabMan-USBInjectAll-2018-1108.zip`~~

not used

* `DisableTurboBoostBattery.kext` - `from 2.1.JahStories` and [reference here](https://github.com/qwerty12/DisableTurboBoostBattery)
* `MiNote13-FrequenciesInjector-MPB13.1-I56200U.kext` - `from JahStories migrated to CPU Friend`

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

# Known Issues / Work in Progress
[up up up](#)

* ~~ include more devices in `SSDT-PXSX.dsl` ~~
* Make sure that the Properties injection is working right. It may be related with the USB related warning I see in the beggining.
* ~~I2C devices not shown in IOREG as shown in [voodooi2c](https://voodooi2c.github.io/#GPIO%20Pinning/GPIO%20Pinning)~~ **February 2020**: New VoodooPS2 driver supports multitouch.
* ~~VoodooI2C is not working for Multitouch Gestures~~ **February 2020**: New VoodooPS2 driver supports multitouch.
* Use `Piker-Alpha/freqVectorsEdit.sh` to create `CPUFriendDataProvider.kext`. Check also [stevezhengshiqi's process](https://github.com/daliansky/XiaoMi-Pro/issues/22). Also check [syscl/CPUTune](https://github.com/syscl/CPUTune)
* When sleeping by closing LID on wake loosing USB
* Shutdown is not working as expected. The on/off button's led stays up and the keyboard light is on when touching it. In order to switch off you have to hold the shutdown key for 4 seconds.
* use DTGP in all hotpatches as [described here](https://github.com/daliansky/XiaoMi-Pro/issues/133)
* use macserial to make sure your machine is working right
* verify the card is off upon boot
* fix all ACPI errors upon boot (check sakoula edits on DSDT.dsl)
* use DisableTurboBoostBattery from [here](https://github.com/qwerty12/DisableTurboBoostBattery) *2.1.JahStories* and and `CPUTune.kext`
* After Sleep distorted or know audio from Headphones Port *work in progress using ALCPlugFix*
* Cannot boot windows disk from Clover, loosing the mouse
* No audio output from HDMI port *I am not using it so ignore for now*

# `patches.air` DSDT hotpatches
[up up up](#)

```
SSDT-DDGPU.dsl
SSDT-XOSI.dsl
SSDT-RMNE.dsl
SSDT-EC.dsl
SSDT-USB.dsl
SSDT-XHC.dsl
SSDT-SMBUS.dsl
SSDT-PCIList.dsl
SSDT-RMCF.dsl
SSDT-PSTWAK.dsl
SSDT-GPRW.dsl
SSDT-PNLF.dsl
SSDT-RMDT.dsl
SSDT-SATA.dsl
SSDT-LPC.dsl

SSDT-BKEY.dsl
```

# `patches.pro` DSDT hotpatches
[up up up](#)

```
SSDT-DDGPU.dsl
SSDT-XOSI.dsl
SSDT-RMNE.dsl
SSDT-EC.dsl
SSDT-USBX.dsl
SSDT-RMCF.dsl
SSDT-PTSWAK.dsl
SSDT-GPRW.dsl
SSDT-PNLF.dsl
SSDT-PXSX.dsl
SSDT-DMAC.dsl
SSDT-HPET.dsl
SSDT-MEM2.dsl
SSDT-PMCR.dsl

SSDT-LGPA.dsl
```

# `patches.air.johnnync13` DSDT hotpatches
[up up up](#)

```
SSDT-XOSI.dsl
ssdt-rmne.dsl
SSDT-SMBUS.dsl
SSDT-MEM2.dsl
SSDT-PMCR.dsl
SSDT-PNLF.dsl
SSDT-PTSWAK.dsl
SSDT-DMAC.dsl
SSDT-GPRW.dsl
SSDT-HPET.dsl
SSDT-RMCF.dsl
SSDT-USBX.dsl
SSDT-LPC.dsl

SSDT-I2C.dsl
SSDT-KBD0.dsl
SSDT-PNP0C14.dsl
SSDT-PXSX.dsl
```

# PNP devices in DSDT
[up up up](#)

```
Scope (_SB)
Device (PCI0)
Name (_HID, EisaId ("PNP0A08"))  // _HID: Hardware ID
Name (_CID, EisaId ("PNP0A03"))  // _CID: Compatible ID

Scope (_SB.PCI0)
Device (PRRE)
Name (_HID, EisaId ("PNP0C02"))  // _HID: Hardware ID
Name (_UID, "PCHRESV")  // _UID: Unique ID

Scope (_SB.PCI0)
Device (IOTR)
Name (_HID, EisaId ("PNP0C02"))  // _HID: Hardware ID
Name (_UID, "IoTraps")  // _UID: Unique ID

Scope (_SB)
Device (LNKA)
Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
Name (_UID, One)  // _UID: Unique ID
Device (LNKB)
Name (_UID, 0x02)  // _UID: Unique ID
...
Device (LNKH)
Name (_UID, 0x08)  // _UID: Unique ID

Scope (_SB.PCI0)
Device (SIRC)
Name (_HID, EisaId ("PNP0C02"))  // _HID: Hardware ID
Name (_STA, 0x03)  // _STA: Status
Name (_UID, 0x05)  // _UID: Unique ID

Scope (_SB.PCI0.LPCB)
Device (HPET)
Name (_HID, EisaId ("PNP0103"))  // _HID: Hardware ID
Name (_UID, Zero)  // _UID: Unique ID

Scope (_SB.PCI0.LPCB)
Device (IPIC)
Name (_HID, EisaId ("PNP0000"))  // _HID: Hardware ID

Scope (_SB.PCI0.LPCB)
Device (MATH)
Name (_HID, EisaId ("PNP0C04"))  // _HID: Hardware ID

Scope (_SB.PCI0.LPCB)
Device (LDRC)
Name (_HID, EisaId ("PNP0C02"))  // _HID: Hardware ID

Scope (_SB.PCI0.LPCB)
Device (LDR2)
Name (_HID, EisaId ("PNP0C02"))  // _HID: Hardware ID
Name (_UID, "LPC_DEV")  // _UID: Unique ID

Scope (_SB.PCI0.LPCB)
Device (RTC)
Name (_HID, EisaId ("PNP0B00"))  // _HID: Hardware ID

Scope (_SB.PCI0.LPCB)
Device (TIMR)
Name (_HID, EisaId ("PNP0100"))  // _HID: Hardware ID

Scope (_SB.PCI0.LPCB)
Device (CWDT)
Name (_HID, EisaId ("INT3F0D"))  // _HID: Hardware ID
Name (_CID, EisaId ("PNP0C02"))  // _CID: Compatible ID

Scope (_SB)
Device (WMTF)
Name (_HID, "PNP0C14")  // _HID: Hardware ID
Name (_UID, "TBFP")  // _UID: Unique ID

Scope (_SB.PCI0)
Device (PDRC)
Name (_HID, EisaId ("PNP0C02"))  // _HID: Hardware ID
Name (_UID, One)  // _UID: Unique ID

Scope (_SB)
Device (PEPD)
Name (_HID, "INT33A1")  // _HID: Hardware ID
Name (_CID, EisaId ("PNP0D80"))  // _CID: Compatible ID
Name (_UID, One)  // _UID: Unique ID

Scope (_SB.PCI0.LPCB)
Device (EC0)
Name (_HID, EisaId ("PNP0C09"))  // _HID: Hardware ID
Name (_GPE, 0x4F)  // _GPE: General Purpose Events
Name (\ECOK, Zero)
Method (_STA, 0, NotSerialized)  // _STA: Status

Scope (_SB.PCI0.LPCB.EC0)
Device (BAT0)
Name (_HID, EisaId ("PNP0C0A"))  // _HID: Hardware ID
Name (_UID, Zero)  // _UID: Unique ID
Name (_DDN, "0")  // _DDN: DOS Device Name
Method (_PCL, 0, NotSerialized)  // _PCL: Power Consumer List

Scope (_SB.PCI0.LPCB)
Device (KBD0)
Name (_HID, "TIMI1601")  // _HID: Hardware ID
Name (_CID, EisaId ("PNP0303"))  // _CID: Compatible ID
Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings

Scope (_SB)
Device (LID0)
Name (_HID, EisaId ("PNP0C0D"))  // _HID: Hardware ID
Method (_STA, 0, NotSerialized)  // _STA: Status

Scope (_SB)
Device (SLPB)
Name (_HID, EisaId ("PNP0C0E"))  // _HID: Hardware ID
Name (_STA, 0x0B)  // _STA: Status

Scope (_SB)
Device (AMW0)
Name (_HID, EisaId ("PNP0C14"))  // _HID: Hardware ID
Name (_UID, "WST")  // _UID: Unique ID
Name (WLMP, Zero)
Name (WMID, Zero)

Scope (_SB)
Device (WMID)
Name (_HID, "PNP0C14")  // _HID: Hardware ID
Name (_UID, "WOSD")  // _UID: Unique ID

Scope (_SB.PCI0.I2C1)
Device (TPD0)
Name (_ADR, One)  // _ADR: Address
Name (_HID, "ELAN0501")  // _HID: Hardware ID
Name (_CID, "PNP0C50")  // _CID: Compatible ID
Name (_UID, One)  // _UID: Unique ID
Name (_S0W, 0x03)  // _S0W: S0 Device Wake State
Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    If (LEqual (Arg0, ToUUID ("3cdff6f7-4267-4555-ad05-b30a3d8938de") /* HID I2C Device */))

Scope (_SB.PCI0.I2C1)
Device (TPD1)
Name (_HID, "SYN1B7F")  // _HID: Hardware ID
Name (_CID, "PNP0C50")  // _CID: Compatible ID
Name (_S0W, 0x03)  // _S0W: S0 Device Wake State
Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    If (LEqual (Arg0, ToUUID ("3cdff6f7-4267-4555-ad05-b30a3d8938de") /* HID I2C Device */))
```


