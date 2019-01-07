# Xiaomi Mi Air 13.3'' Skylake-U 2016 for macOS Mojave & High Sierra

* This line is a placeholder to generate the table of contents in jekyll
{:toc}

[TOC]

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
* `$HACK/air/ENVIRONMENT.md` *my environment to work with hackintoshes*


patches:

* `$HACK/air/patches.air` work in progress directory with all required patches for XiaoMi-Air: *DSDT.DSL, SSDT\*.DSL, hotfixes, config.plist*
* `$HACK/air/patches.air.201808` work in progress with all required patches for XiaoMi-Air (*deprecated* August 2018): *DSDT.DSL, SSDT\*.DSL, hotfixes, config.plist*
* `$HACK/air/patches.air.2.1.JahStories` directory with all required patches for XiaoMi-Air from [2.1.JahStories repo](https://www.insanelymac.com/forum/files/file/675-xiaomi-notebook-air-13-filespack/) *DSDT.DSL, SSDT\*.DSL *
* `$HACK/air/patches.air.johnnync13` directory with all required patches for XiaoMi-Air from [johnnync13 repo](https://github.com/johnnync13/Xiaomi-Notebook-Air-1Gen) *DSDT.DSL, SSDT\*.DSL, hotfixes, config.plist*
* `$HACK/air/patches.pro` directory with all required patches for XiaoMi-Pro from [repository](https://github.com/daliansky/XiaoMi-Pro): *SSDT\*.DSL, hotfixes, config.plist, kexts from XiaMi-Pro repo*
* `$HACK/air/patches.pro.201808` directory with all required patches for XiaoMi-Pro from [repository](https://github.com/daliansky/XiaoMi-Pro) (*deprecated* August 2018): *SSDT\*.DSL, hotfixes, config.plist from XiaMi-Pro repo from August 2018*

`$HACK/air/sources`:

* `$HACK/air/sources/ACPI.air.2.1.JahStories.zip` *ACPI tables from [insanelymac post version 2.1](https://www.insanelymac.com/forum/topic/319656-guide-xiaomi-mi-notebook-air-13/)*
* `$HACK/air/sources/ACPI.air.bios.a05.zip` *ACPI tables from A05 BIOS extracted using Clover F4*
* `$HACK/air/sources/ACPI.air.bios.a0.zip` *ACPI tables from A06 BIOS using Clover F4*
* `$HACK/air/sources/ACPI.pro.201808.zip` *ACPI tables for XiaoMi-Pro extracted from August 2018 from [daliansky/XiaoMi-Pro](https://github.com/daliansky/XiaoMi-Pro)*
* `$HACK/air/sources/air.baseline.20180829.zip` *Xiaomi-Air working hackintosh EFI and kexts on August 2018 10.13.x*
* `$HACK/air/sources/JahStories.XiaoMi.Notebook.Air.13.(2.0).zip` *all files from [insanelymac post version 2.0](https://www.insanelymac.com/forum/files/file/675-xiaomi-notebook-air-13-filespack/)*
* `$HACK/air/sources/JahStories.XiaoMi.Notebook.Air.13.(2.1).zip` *all files from [insanelymac post version 2.1](https://www.insanelymac.com/forum/files/file/675-xiaomi-notebook-air-13-filespack/)*
* `$HACK/air/sources/Mi Notebook Air 13 (2016) A06 Bios update i5 6200U August 27th 2017.rar` *Bios A06*
* `$HACK/air/sources/TouchPad_Synaptics_v19.2.17.14.zip`  *Windows synaptics driver*
* `$HACK/air/sources/windows.systeminfo` *systeminfo from windows*
* `$HACK/air/sources/kexts` *updated list with source kexts used*
* `$HACK/air/EFI` *the EFI which is also downloads from the latest release*
* `$HACK/air/release` *the latest released files*

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

## `patches.air/SSDT-DDGPU.dsl` 
[up up up](#)

Reference: [[Guide] Disabling discrete graphics in dual-GPU laptops](https://www.tonymacx86.com/threads/guide-disabling-discrete-graphics-in-dual-gpu-laptops.163772/) 

you can always refer to the [general reference on hotpatching](https://www.tonymacx86.com/threads/guide-using-clover-to-hotpatch-acpi.200137/)

1. find `_OFF` method

*So, we know that _OFF is in SSDT-7-SKL-ULT.dsl. If you open SSDT-7-SKL-ULT.dsl and look for _OFF, you find it is a method inside a PowerResource macro. This is not the _OFF method we want. It is the other one*

```bash
grep _OFF patches.air/*dsl
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

copy `cp $HACK/git/Rehabman.git/OS-X-Clover-Laptop-Config.git/hotpatch/SSDT-DDGPU.dsl patches.air/SSDT-DDGPU.dsl` and edit `patches.air/SSDT-DDGPU.dsl`


## `patches.air/SSDT-XOSI.dsl`
[up up up](#)

copy `cp $HACK/git/Rehabman.git/OS-X-Clover-Laptop-Config.git/hotpatch/SSDT-XOSI.dsl patches.air/SSDT-XOSI.dsl` and edit `patches.air/SSDT-XOSI.dsl`

compare it with the *XiaoMi-Pro*

apply clover renames (OSIN first because there is some type of bug on the DSDT patching when applying only the second one):

* change OSIN to XSIN (SSDT-XOSI.dsl) `T1NJTg==` to `WFNJTg==`
* change _OSI to XOSI (SSDT-XOSI.dsl) `X09TSQ==` to `WE9TSQ==`

This XOSI simulates "Windows 2015" (which is Windows 10)

## `patches.air/SSDT-RMNE.dsl`
[up up up](#)

Fake an ethernet card to make the system still allow Mac App Store access, work with NullEthernet.kext.

add `SSDT-RMNE.dsl` from NullEthernet.kext repository or `https://github.com/RehabMan/OS-X-Null-Ethernet/blob/master/SSDT-RMNE.dsl`

> *XiaoMi-Pro* uses DTGP method, I do not think it is required so I sticked to the stock

## `DSL.pro/SSDT-PXSX.dsl` :gun:
[up up up](#)

used *XiaoMi-Pro* used only a subset that I was sure about and used also the DTGP

## `patches.air/SSDT-SMBUS.dsl`
[up up up](#)

copy `cp $HACK/git/Rehabman.git/OS-X-Clover-Laptop-Config.git/hotpatch/SSDT-SMBUS.dsl patches.air/SSDT-SMBUS.dsl` and edit `patches.air/SSDT-SMBUS.dsl`

apply clover renames:

* change SAT0 to SATA (SSDT-SMBUS.dsl) `U0FUMA==` to `U0FUQQ==`

> *XiaoMi-Pro* does not use it any more. It is possibly needed

## `patches.air/SSDT-EC.dsl`
[up up up](#)

according to this [article](https://www.tonymacx86.com/threads/guide-usb-power-property-injection-for-sierra-and-later.222266/) we do not need this so leave it in but keep it. There is an EC0 device but do not rename it. Instead inject the USBX

> *johnnync13/Xiaomi-Notebook-Air-6200u* is not using this and just renames the EC device

> article](https://www.tonymacx86.com/threads/guide-usb-power-property-injection-for-sierra-and-later.222266/) Note: If your computer has an ECDT in ACPI, you should not rename anything along the EC path, including the EC itself. Use a "Fake EC" instead as described below. You can check if you have ECDT by extracting ACPI with Clover (F4) and checking for ECDT.aml in EFI/Clover/ACPI/origin.

> Note: You may find you have an EC in your DSDT: Device with "Name (_HID, EisaId ("PNP0C09"))", even if it is not active.

## `patches.air/SSDT-USBX.dsl`
[up up up](#)

This has the `USBX` device for the power injection according to the [article](https://www.tonymacx86.com/threads/guide-usb-power-property-injection-for-sierra-and-later.222266/) 

USBX power injection device is inline with the latest *XiaoMi-Pro* edits based on the [rehadbman's recomendations](https://www.tonymacx86.com/threads/guide-usb-power-property-injection-for-sierra-and-later.222266/)

## `patches.air/SSDT-RMCF.dsl`
[up up up](#)

`cp $HACK/git/Rehabman.git/OS-X-Clover-Laptop-Config.git/hotpatch/SSDT-RMCF.dsl patches.air/SSDT-RMCF.dsl` and edit it using *XiaoMi-Pro* as a reference

## `patches.air/SSDT-PTSWAK.dsl`
[up up up](#)

`cp $HACK/git/Rehabman.git/OS-X-Clover-Laptop-Config.git/hotpatch/SSDT-PTSWAK.dsl patches.air/SSDT-PTSWAK.dsl` and compare it with *XiaoMi-Pro*

Overriding _PTS and _WAK. I modified the address of discrete card to fit *Xiaomi-Air*.

apply clover renames:

* change Method(_PTS,1,N) to ZPTS (SSDT-PTSWAK.dsl) `X1BUUwE=` to `WlBUUwE=`
* change Method(_WAK,1,S) to ZWAK (SSDT-PTSWAK.dsl) `X1dBSwk=` to `WldBSwk=`

## `patches.air/SSDT-GPRW.dsl`
[up up up](#)

`cp $HACK/git/Rehabman.git/OS-X-Clover-Laptop-Config.git/hotpatch/SSDT-GPRW.dsl patches.air/SSDT-GPRW.dsl` and compare it with *XiaoMi-Pro*

For solving instant wake by hooking GPRW

apply clover renames:

* change Method(GPRW,2,N) to XPRW (SSDT-GPRW.dsl) `R1BSVwI=` to `WFBSVwI=`

## `patches.air/SSDT-PNLF.dsl`
[up up up](#)

`cp $HACK/git/Rehabman.git/OS-X-Clover-Laptop-Config.git/hotpatch/SSDT-PNLF.dsl patches.air/SSDT-PNLF.dsl` and compare it with *XiaoMi-Pro*

## `patches.air/SSDT-RMDT.dsl`
[up up up](#)

`cp $HACK/git/Rehabman.git/OS-X-Clover-Laptop-Config.git/hotpatch/SSDT-RMDT.dsl patches.air/SSDT-RMDT.dsl`

Facility for writing trace output to system.log, Use in conjunction with ACPIDebug.kext

## `patches.air/SSDT-DMAC.dsl` 
[up up up](#)

Add missing DMAC Device to enhace performance like a real Mac. Inspired by [syscl](https://github.com/syscl/XPS9350-macOS/tree/master/DSDT/patches). Found it in *XiaoMi-Pro* and *johnnync13/Xiaomi-Notebook-Air-6200u* repositories.

## `patches.air/SSDT-HPET.dsl` 
[up up up](#)

Disable HPET device by passing value 0 to HPTE to to behave more like a real Mac. Found it in *XiaoMi-Pro* and *johnnync13/Xiaomi-Notebook-Air-6200u* repositories.

## `patches.air/SSDT-MEM2.dsl` 
[up up up](#)

Add missing MEM2 Device to enhace performance like a real Mac. Inspired by [syscl](https://github.com/syscl/XPS9350-macOS/tree/master/DSDT/patches). Found it in *XiaoMi-Pro* and *johnnync13/Xiaomi-Notebook-Air-6200u* repositories.

## `patches.air/SSDT-PMCR.dsl` 
[up up up](#)

Add missing PMCR Device to enhace performance like a real Mac. Inspired by [syscl](https://github.com/syscl/XPS9350-macOS/tree/master/DSDT/patches). (PPMC and PMCR combine together for macOS to load LPCB correctly). Found it in *XiaoMi-Pro* and *johnnync13/Xiaomi-Notebook-Air-6200u* repositories.

in the *XiaoMi-Pro* DSDT.dsl there is no PMCR device, but there is one in *Xiaomi-air*

## `patches.air/SSDT-BKEY.dsl`
[up up up](#)

to be used for brightness control instead of `SSDT-LGPA.dsl` of the *XiaoMi-Pro*

apply clover renames:

* change _Q1C to ZQ1C (brightness hotkey) (SSDT-BKEY.dsl) `X1ExQw==` to `WlExQw==`
* change _Q1D to ZQ1D (brightness hotkey) (SSDT-BKEY.dsl) `X1ExRA==` to `WlExRA==`

## `patches.air/SSDT-LPC.dsl`
[up up up](#)

`cp $HACK/git/Rehabman.git/OS-X-Clover-Laptop-Config.git/hotpatch/SSDT-LPC.dsl patches.air/SSDT-LPC.dsl`

To fix unsupported 8-series LPC devices. looked in ioreg and look for LPC. mine is 0x9d48 which is included here

*XiaoMi-Pro* is not using it. *johnnync13/Xiaomi-Notebook-Air-6200u* is using it.

# DSDT patching (work in progress patches) :gun:
[up up up](#)

## `patches.air/SSDT-SLEEP.dsl` :gun:
[up up up](#)

this is from the 2.1, keep it for now do not include it. It may be related to the shutdown fix

There is a discussion on this on [Pike's Universum](https://pikeralpha.wordpress.com/2017/01/12/debugging-sleep-issues/)

## `patches.air/SSDT-I2C.dsl` :gun:
[up up up](#)

from *johnnync13/Xiaomi-Notebook-Air-6200u*. Does it really works?

## `patches.air.johnnync13/SSDT-PNPOC14.dsl` :gun:
[up up up](#)

this is probably from *XiaoMi-Pro* repository trying to disable WMI devices perhaps, found a [reference](https://www.tonymacx86.com/threads/guide-using-clover-to-hotpatch-acpi.200137/page-51#post-1834603). Do not use it for now.

## `patches.air.johnnync13/SSDT-KBD0.dsl` :gun:
[up up up](#)

This is another way for implementaing the brightness control keys.

# DSDT patching (retired patches) :gun:
[up up up](#)

## ~~`patches.air/SSDT-ALS0.dsl`~~
[up up up](#)

not required anymore

## ~~`patches.air/SSDT-SATA.dsl`~~
[up up up](#)

Not using this dsl anymore. Instead as descibed in [[Guide] Booting the OS X installer on LAPTOPS with Clover](https://www.tonymacx86.com/threads/guide-booting-the-os-x-installer-on-laptops-with-clover.148093/) migrate to [SATA-unsupported.kext](https://github.com/RehabMan/hack-tools).

*XiaoMi-Pro* is doing the same

## ~~`patches.air/SSDT-PCIList.dsl`~~
[up up up](#)

Initially added from an older version from the *XiaoMi-Pro* repository. Ideally I need to get rid of it and use clover's `Devices > Properties` and `SSDT-PXSX.dsl`

## ~~`patches.air/SSDT-XHC.dsl`~~

This is coming from an older XiaoMi-Pro version. We do not need it everything has been implemented in `SSDT-USBX.dsl`

## ~~`patches.air/SSDT-UIAC.dsl`~~
[up up up](#)

This has the `USBX` device for the power injection according to the [article](https://www.tonymacx86.com/threads/guide-usb-power-property-injection-for-sierra-and-later.222266/) plus the injector for the USBInjectAll. I changed it based to the `XiaoMi-2.1.JahStories/EFI/CLOVER/kexts/10.13/XiaominjectXHC.kext` 

USBX power injection device is inline with the latest *XiaoMi-Pro* edits based on the [rehadbman's recomendations](https://www.tonymacx86.com/threads/guide-usb-power-property-injection-for-sierra-and-later.222266/)

> *XiaoMi-Pro* implements the injector using a kext produced from FBPatcher

from tonymac:

```text
Common port connector types are USB2 = 0, USB3 = 3, internal = 255.
USB type C ports can be either 9 or 10, which depends on how the hardware deals with the two possible orientations of a USB type C device/cable.
If a USB-C uses the same SSxx in both orientations, then it has an internal switch (UsbConnector=9).
If a USB-C uses a different SSxx in each orientation, then it has no switch (UsbConnector=10).
HSxx ports that are connected to a USB3 port should be marked UsbConnector=3, not UsbConnector=0.
sakoula: since JahStories had 4 more devices I assume that USB-C port use different SSxx in each oritentation, and it has no switch (UsbConnector=10)
```

# `Clover installation`
[up up up](#)

I have read in many places including [here](https://www.tonymacx86.com/threads/guide-hp-elite-8300-hp-6300-pro-using-clover-uefi-hotpatch.265384/) that RehabMan's clover fork is more stable so this is the one we are going to use.

*Clover for UEFI booting only*, *Install Clover in the ESP*

*UEFI Drivers* / `drivers64UEFI`:

* `ApfsDriverLoader-64.efi`
* `AppleImageLoader-64.efi`
* `AptioMemoryFix-64.efi`
* `DataHubDxe-64.efi`
* `FSInject-64.efi`
* `HFSPlus.efi` *from an external source*
* `VirtualSmc.efi` *from VirtualSMC (1.0.2)*

*FileVault 2 UEFI Drivers* / `drivers64UEFI`:

* `AppleKeyFeeder-64.efi`
* `AppleUISupport-64.efi`
* `AptioInputFix-64.efi`

*Install Clover Preference Pane*

# `Clover Config`
[up up up](#)

In general I prefer the Clover Configurator although it it not reccomended

## `ACPI`
[up up up](#)

* `AutoMerge > YES`
* `FixHeaders > YES`
* ~~`FixMCFG > YES`~~ *removed from XiaoMi-Pro* 

* `DSDT > DropOEM_DSM > NO`

* `DSDT > Fixes > AddDTGP > YES`
* `DSDT > Fixes > AddMCHC > YES`
* `DSDT > Fixes > FixADP1 > YES`
* `DSDT > Fixes > FixTMR > YES`
* `DSDT > Fixes > FixRegions > YES` *only when using custom DSDT.aml*

* `DSDT > Patches`

```xml
<key>Patches</key>
<array>
<dict>
    <key>Comment</key> <string>change OSIN to XSIN (SSDT-XOSI.dsl)</string>
    <key>Find</key> <data>T1NJTg==</data>
    <key>Replace</key> <data>WFNJTg==</data>
</dict>
<dict>
    <key>Comment</key> <string>change _OSI to XOSI (SSDT-XOSI.dsl)</string>
    <key>Find</key> <data>X09TSQ==</data> 
    <key>Replace</key> <data>WE9TSQ==</data>
</dict>
<dict>
    <key>Comment</key> <string>change _DSM to XDSM</string>
    <key>Find</key> <data>X0RTTQ==</data> 
    <key>Replace</key> <data>WERTTQ==</data>
</dict>
<dict>
    <key>Comment</key> <string>change HDAS to HDEF</string>
    <key>Find</key> <data>SERBUw==</data>
    <key>Replace</key> <data>SERFRg==</data>
</dict>
<dict>
    <key>Comment</key> <string>change HECI to IMEI</string>
    <key>Find</key> <data>SEVDSQ==</data>
    <key>Replace</key> <data>SU1FSQ==</data>
</dict>
<dict>
    <key>Comment</key> <string>change GFX0 to IGPU</string>
    <key>Find</key> <data>R0ZYMA==</data>
    <key>Replace</key> <data>SUdQVQ==</data>
</dict>
<dict>
    <key>Comment</key> <string>change SAT0 to SATA (SSDT-SMBUS.dsl)</string>
    <key>Find</key> <data>U0FUMA==</data>
    <key>Replace</key> <data>U0FUQQ==</data>
</dict>
<dict>
    <key>Comment</key> <string>change Method(_PTS,1,N) to ZPTS (SSDT-PTSWAK.dsl)</string>
    <key>Find</key> <data>X1BUUwE=</data>
    <key>Replace</key> <data>WlBUUwE=</data>
</dict>
<dict>
    <key>Comment</key> <string>change Method(_WAK,1,S) to ZWAK (SSDT-PTSWAK.dsl)</string>
    <key>Find</key> <data>X1dBSwk=</data>
    <key>Replace</key> <data>WldBSwk=</data>
</dict>
<dict>
    <key>Comment</key> <string>change Method(GPRW,2,N) to XPRW (SSDT-GPRW.dsl)</string>
    <key>Find</key> <data>R1BSVwI=</data>
    <key>Replace</key> <data>WFBSVwI=</data>
</dict>
<dict>
    <key>Comment</key> <string>change _Q1C to ZQ1C (brightness hotkey) (SSDT-BKEY.dsl)</string>
    <key>Find</key> <data>X1ExQw==</data>
    <key>Replace</key> <data>WlExQw==</data>
</dict>
<dict>
    <key>Comment</key> <string>change _Q1D to ZQ1D (brightness hotkey) (SSDT-BKEY.dsl)</string>
    <key>Find</key> <data>X1ExRA==</data>
    <key>Replace</key> <data>WlExRA==</data>
</dict>
<dict>
    <key>Comment</key> <string>change MATH._STA and LDR2._STA to XSTA</string>
    <key>Disabled</key><true/>
    <key>Find</key> <data>X1NUQQCgDZNQ</data>
    <key>Replace</key> <data>WFNUQQCgDZNQ</data>
</dict>
</array>
```

* `DropTables > Signature > DMAR`

* `SSDT > DropOem > No`
* `SSDT > Generate > PluginType > YES`
* `SSDT > NoOemTableId > NO`

## `ACPI`
[up up up](#)

* `Arguments > dart=0 igfxrst=1 -cdfon -v`
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

* `USB > AddClockID > YES`
* `USB > FixOwnership > YES`
* `USB > Inject > NO`

* `$HACK/bin/gfxutil -f HDEF` - `Properties > PciRoot(0x0)/Pci(0x1f,0x3)`

```xml
<key>PciRoot(0x0)/Pci(0x1f,0x3)</key>
<dict>
    <key>AAPL,slot-name</key>
    <string>PCI-Express</string>
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

`layout-id` 30 can be used too.

```xml
<key>PciRoot(0x0)/Pci(0x1f,0x3)</key>
<dict>
    <key>AAPL,slot-name</key>
    <string>PCI-Express</string>
    <key>hda-gfx</key>
    <string>onboard-1</string>
    <key>hda-idle-support</key>
    <string>1</string>
    <key>layout-id</key>
    <integer>30</integer>
    <key>model</key>
    <string>Realtek ALC255 Audio Controller</string>
</dict>
```

* `$HACK/bin/gfxutil -f SBUS` - `Properties > DevicePath = PciRoot(0x0)/Pci(0x1f,0x4)`

```xml
<key>PciRoot(0x0)/Pci(0x1f,0x4)</key>
<dict>
    <key>AAPL,slot-name</key>
    <string>PCI-Express</string>
    <key>model</key>
    <string>Sunrise Point-LP SMBus</string>
</dict>
```

* `$HACK/bin/gfxutil -f PPMC` - `Properties > DevicePath = PciRoot(0x0)/Pci(0x1f,0x2)`

```xml
<key>PciRoot(0x0)/Pci(0x1f,0x2)</key>
<dict>
    <key>AAPL,slot-name</key>
    <string>PCI-Express</string>
    <key>device_type</key>
    <string>PCHPMC Controller</string>
    <key>model</key>
    <string>Sunrise Point-LP PMC</string>
</dict>
```

* unknown copied from PRO

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

* `$HACK/bin/gfxutil -f IMEI` - `Properties > DevicePath = PciRoot(0x0)/Pci(0x16,0x0)`

```xml
<key>PciRoot(0x0)/Pci(0x16,0x0)</key>
<dict>
    <key>AAPL,slot-name</key>
    <string>PCI-Express</string>
    <key>device_type</key>
    <string>IMEI</string>
    <key>model</key>
    <string>Sunrise Point-LP CSME HECI #1</string>
</dict>
```

* :gun: these are the I2C controllers but I do not enter them from Pro

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

* `$HACK/bin/gfxutil -f XHC` - `Properties > DevicePath = PciRoot(0x0)/Pci(0x14,0x0)`

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

* `Clover_v2.4k_r4701.RM-4963.ca6cca7c.zip` - `Rehabman's Fork`
* `as.vit9696.VirtualSMC (1.0.2)`  - `VirtualSMC.1.0.2.RELEASE.zip` **use only main kext**
* `org.rehabman.driver.AppleSmartBatteryManager (1.90.1)` - `RehabMan-Battery-2018-1005.zip`
* `org.rehabman.driver.NullEthernet (1.0.6)` - `RehabMan-NullEthernet-2016-1220.zip`
* `org.rehabman.voodoo.driver.PS2Controller (1.9.2)` - `RehabMan-Voodoo-2018-1008.zip`
* `com.rehabman.driver.ACPIDebug (0.1.4)` - `RehabMan-Debug-2015-1230.zip`
* `as.vit9696.Lilu (1.3.1)` - `Lilu.1.3.1.RELEASE.zip`
* `as.vit9696.WhateverGreen (1.2.6)` - `WhateverGreen.1.2.6.RELEASE.zip`
* `as.lvs1974.HibernationFixup (1.2.4)` - `HibernationFixup.1.2.4.RELEASE.zip`
* `as.vit9696.AppleALC (1.3.4)` - `AppleALC.1.3.4.RELEASE.zip`
* `org.tw.CodecCommander (2.7.1)` - `RehabMan-CodecCommander-2018-1003.zip`
* `org.vanilla.driver.CPUFriend (1.1.5)` - `CPUFriend.1.1.5.RELEASE.zip`
* `CPUFriendDataProvider.kext` *based on `MiNote13-FrequenciesInjector-MPB13.1-I56200U.kext` from 2.1.JahStories`
* `AppleIntelInfo.kext` - [Replacement for AppleIntelCPUPowerManagementInfo.kext](https://github.com/Piker-Alpha/AppleIntelInfo)
* `SATA-unsupported.kext` *from [RehabMan/hack-tools](https://github.com/RehabMan/hack-tools/tree/master/kexts)*
* `USBPorts.kext` created with [FB-Patcher](https://www.insanelymac.com/forum/topic/335018-intel-fb-patcher-v168/) very similar to the procedure from Rehabman's USBInjectAll
* `LiluFriend.kext` - `LiluFriend.1.1.0.RELEASE.zip`
* ~~`org.netkas.driver.FakeSMC (1800)` - `RehabMan-FakeSMC-2018-0905.zip`~~
* ~~`com.rehabman.driver.USBInjectAll (0.7.1)` - `RehabMan-USBInjectAll-2018-1108.zip`~~
* ~~`Clover 2.4k 4813` - `Clover_v2.4k_r4813.zip`~~

not used

* `DisableTurboBoostBattery.kext` - `from 2.1.JahStories` and [reference here](https://github.com/qwerty12/DisableTurboBoostBattery)
* `MiNote13-FrequenciesInjector-MPB13.1-I56200U.kext` - `from JahStories migrated to CPU Friend`

## Power Management
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

# TODO
[up up up](#)

* include more devices in `SSDT-PXSX.dsl`
* Make sure that the Properties injection is working right. It may be related with the USB related warning I see in the beggining.
* I2C devices not shown in IOREG as shown in [voodooi2c](https://voodooi2c.github.io/#GPIO%20Pinning/GPIO%20Pinning)
* VoodooI2C is not working for Multitouch Gestures
* Use `Piker-Alpha/freqVectorsEdit.sh` to create `CPUFriendDataProvider.kext`. Check also [stevezhengshiqi's process](https://github.com/daliansky/XiaoMi-Pro/issues/22). Also check [syscl/CPUTune](https://github.com/syscl/CPUTune)
* When sleeping by closing LID on wake loosing USB
* Shutdown is not working as expected. The on/off button's led stays up and the keyboard light is on when touching it. In order to switch off you have to hold the shutdown key for 4 seconds.
* use DTGP in all hotpatches as [described here](https://github.com/daliansky/XiaoMi-Pro/issues/133)
* use macserial to make sure your machine is working right
* verify the card is off upon boot
* fix all ACPI errors upon boot (check sakoula edits on DSDT.dsl)
* use DisableTurboBoostBattery from [here](https://github.com/qwerty12/DisableTurboBoostBattery) *2.1.JahStories*
* After Sleep distorted or know audio from Headphones Port *work in progress using ALCPlugFix*
* Enable HiDPI resolutions **work in progress although the LCD is not retina and will not help*
* Cannot boot windows disk from Clover, loosing the mouse

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


