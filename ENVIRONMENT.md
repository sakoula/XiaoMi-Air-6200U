# Working with a Hackintosh

This is how I setup my environment in order to work with hackintoshes.

# Table of Contents

* [environment directory structure](#environment-directory-structure)
  * [iasl](#iasl)
  * [patchmatic and MaciASL](#patchmatic-and-maciasl)
  * [xzhih/one-key-hidpi](#xzhihone-key-hidpi)
  * [syscl/Enable-HiDPI-OSX](#sysclenable-hidpi-osx)
  * [Benjamin-Dobell/nvidia-update.sh](#benjamin-dobellnvidia-updatesh)
  * [vulgo/webdriver.sh](#vulgowebdriversh)
  * [syscl/CPUTune](#sysclcputune)
  * [avibrazil/RDM](#avibrazilrdm)
  * [gfxutl](#gfxutl)
  * [Intel FB-Patcher v1.6.8](#intel-fb-patcher-v168)
  * [DarwinDumper](#darwindumper)
  * [macserial](#macserial)
  * [ACPIDebug.kext](#acpidebugkext)
  * [Clover laptop config.plist and hotpatch](#clover-laptop-configplist-and-hotpatch)
  * [DSDT patches for HP ProBook/EliteBook/ZBook series laptops](#dsdt-patches-for-hp-probookelitebookzbook-series-laptops)
  * [RehabMan's laptop patch repository](#rehabmans-laptop-patch-repository)
  * [black-dragon74/OSX-Debug.git gen_debug.sh](#black-dragon74osx-debuggit-gen_debugsh)
  * [ekalinin/github-markdown-toc](#ekaliningithub-markdown-toc)
  * [RehabMan-MaciASL-2018-0507.zip](#rehabman-maciasl-2018-0507zip)
  * [RehabMan-patchmatic-2018-0507.zip](#rehabman-patchmatic-2018-0507zip)
  * [mount_efi.sh](#mount_efish)
  * [hack_tools](#hack_tools)
  * [IOJones](#iojones)
  * [IORegistryExplorer.app v2.1](#ioregistryexplorerapp-v21)
* [where to install kexts](#where-to-install-kexts)
* [LiluFriend](#lilufriend)
* [where to install kexts <strong>January 2019</strong>](#where-to-install-kexts-january-2019)
* [create DSL of stock tables](#create-dsl-of-stock-tables)
* [compile DSL](#compile-dsl)
* [string conversion](#string-conversion)
* [LSPCI using WMI (WMIC)](#lspci-using-wmi-wmic)
* [clover unhide all volumes with F3](#clover-unhide-all-volumes-with-f3)
* [AppleHDA patching](#applehda-patching)
* [references](#references)
  * [macOS guides on Xiaomi](#macos-guides-on-xiaomi)
  * [macOS guides on other hardware](#macos-guides-on-other-hardware)
  * [Troubleshooting with lid](#troubleshooting-with-lid)
  * [linux guides](#linux-guides)
  * [Interesting Hackintosh Sites](#interesting-hackintosh-sites)
  * [Guides etc](#guides-etc)
  * [DSDT related references](#dsdt-related-references)


<!--
* This line is a placeholder to generate the table of contents in jekyll
{:toc}

[TOC]
-->

# environment directory structure
[up up up](#)

define a `HACK` environment variable for all your hackintosh work. Add `$HACK/bin` for all the hack binaries.

binaries 

* `$HACK/bin` *compiled versions of tools including MaciASL, IOJones, IORegistryExplorer etc*
* `$HACK/git` *git repositories used*

## `iasl`
[up up up](#)

goto [RehabMan/Intel-iasl](https://github.com/RehabMan/Intel-iasl) and

```bash
mkdir -p $HACK/git/Rehabman.git
cd $HACK/git/Rehabman.git
git clone https://github.com/RehabMan/Intel-iasl.git iasl.git
cd iasl.git
make
cd $HACK
mkdir bin && cd bin
cp $HACK/git/Rehabman.git/iasl.git/generate/unix/bin/* $HACK/bin
```

## `patchmatic` and `MaciASL`
[up up up](#)

check [RehabMan/OS-X-MaciASL-patchmatic](https://github.com/RehabMan/OS-X-MaciASL-patchmatic)

and download [RehabMan-MaciASL-2018-0507.zip, RehabMan-patchmatic-2018-0507.zip](https://bitbucket.org/RehabMan/os-x-maciasl-patchmatic/downloads/)

```bash
mv MaciASL.app /Applications
mv /Downloads/patchmatic $HACK/bin
```

## `xzhih/one-key-hidpi`
[up up up](#)

This script can simulate macOS HiDPI on a non-retina display, and have a "Native" Scaled in System Preferences. Home page is [here](https://zhih.me/one-key-hidpi/)

```bash
cd $HACK/git
git clone https://github.com/xzhih/one-key-hidpi.git one-key-hidpi.git 
```

## `syscl/Enable-HiDPI-OSX`
[up up up](#)

Hola, this is an ongoing project targets at enable the support of HiDPI for display with a high resolution under macOS. 

```bash
cd $HACK/git
git clone https://github.com/syscl/Enable-HiDPI-OSX.git Enable-HiDPI-OSX.git
```

## `Benjamin-Dobell/nvidia-update.sh`
[up up up](#)

```bash
cd $HACK/git
git clone https://github.com/Benjamin-Dobell/nvidia-update.git nvidia-update.git
cd nvidia-update.git
cp nvidia-update.sh $HACK/bin
```

## `vulgo/webdriver.sh`
[up up up](#)

```bash
cd $HACK/git
git clone https://github.com/vulgo/webdriver.sh.git webdriver.sh.git
cd webdriver.sh.git
cp webdriver $HACK/bin
```

## `syscl/CPUTune`
[up up up](#)

An open source kernel extension enables dynamic CPU performance tuning at runtime for macOS.

```bash
cd $HACK/git
git clone https://github.com/syscl/CPUTune.git CPUTune.git
```

## `avibrazil/RDM`
[up up up](#)

```bash
cd $HACK/git
git clone https://github.com/avibrazil/RDM.git RDM.git
cd RDM.git
make
mv RDM.app $HACK/bin
```

## `gfxutl`
[up up up](#)

Download [1.77b.RELEASE.zip](https://github.com/acidanthera/gfxutil/releases/download/1.77b/1.77b.RELEASE.zip)

```bash
unzip 1.77b.RELEASE.zip
mv gfxutil $HACK/bin
$HACK/bin/gfxutil -f IGPU
$HACK/bin/gfxutil -f HDEF
```

## `Intel FB-Patcher v1.6.8`
[up up up](#)

Download [Intel FB-Patcher v1.6.8](https://www.tonymacx86.com/threads/release-intel-fb-patcher-v1-6-8.254559/)

```bash
unzip FBPatcher.zip
mv FBPatcher.app $HACK/bin
open $HACK/bin/FBPatcher.app
```

## `DarwinDumper`
[up up up](#)

Download [DarwinDumper_v3.0.4.zip](https://bitbucket.org/blackosx/darwindumper/downloads/DarwinDumper_v3.0.4.zip)

**Chrome consider this a malware, so I passed on it**

## `macserial`
[up up up](#)

Download [macserial-2.0.4-mac.zip](https://github.com/acidanthera/macserial/releases/download/2.0.4/macserial-2.0.4-mac.zip)

```bash
unzip macserial-2.0.4-mac.zip
mv macserial $HACK/bin
$HACK/bin/macserial
```

## `ACPIDebug.kext`
[up up up](#)

A kernel extension and DSDT patches to enable debug tracing from ACPI code (DSDT) to system.log

you can see what is going on [here](https://github.com/RehabMan/OS-X-ACPI-Debug) and download it [RehabMan-Debug-2015-1230.zip](https://bitbucket.org/RehabMan/os-x-acpi-debug/downloads/)

```bash
mv /Downloads/RehabMan-Debug-2015-1230.zip $HACK/sources/kexts
```

## Clover laptop config.plist and hotpatch
[up up up](#)

```bash
cd $HACK/git/Rehabman.git
git clone https://github.com/RehabMan/OS-X-Clover-Laptop-Config.git OS-X-Clover-Laptop-Config.git 
```

This project contains config.plist files for common laptops with Intel graphics. (from README.md)

## DSDT patches for HP ProBook/EliteBook/ZBook series laptops
[up up up](#)

```bash
cd $HACK/git/Rehabman.git
git clone https://github.com/RehabMan/HP-ProBook-4x30s-DSDT-Patch.git HP-ProBook-4x30s-DSDT-Patch.git 
```

This set of patches/makefile can be used to patch your HP ProBook/EliteBook/ZBook DSDTs. There are also post install scripts that can be used to create and install the kexts the are required for this laptop series. (from README.md)

## RehabMan's laptop patch repository
[up up up](#)

```bash
cd $HACK/git/Rehabman.git
git clone https://github.com/RehabMan/Laptop-DSDT-Patch.git Laptop-DSDT-Patch.git
```

This set of patches can be used in DSDT Editor or (preferably) MaciASL to apply some common patches to your laptop for running OS X. These patches are common for Sandy Bridge or Ivy Bridge laptops. (from README.md)

## black-dragon74/OSX-Debug.git `gen_debug.sh`
[up up up](#)


## `ekalinin/github-markdown-toc`
[up up up](#)

gh-md-toc — is for you if you want to generate TOC for README.md or GitHub's wiki page and don't want to install any additional software.

```bash
cd $HACK/bin
curl https://raw.githubusercontent.com/ekalinin/github-markdown-toc/master/gh-md-toc -o gh-md-toc
chmod a+x gh-md-toc
$HACK/bin/gh-md-toc ./README.md
```

## RehabMan-MaciASL-2018-0507.zip 
[up up up](#)

from [here](https://bitbucket.org/RehabMan/os-x-maciasl-patchmatic/downloads/)

```bash
cd ~/Downloads
wget https://bitbucket.org/RehabMan/os-x-maciasl-patchmatic/downloads/RehabMan-MaciASL-2018-0507.zip
unzip RehabMan-MaciASL-2018-0507.zip
mv /Downloads/MaciASL.app $HACK/bin
```

## RehabMan-patchmatic-2018-0507.zip
[up up up](#)

from [here](https://bitbucket.org/RehabMan/os-x-maciasl-patchmatic/downloads/)

```bash
cd ~/Downloads
wget https://bitbucket.org/RehabMan/os-x-maciasl-patchmatic/downloads/RehabMan-patchmatic-2018-0507.zip
unzip RehabMan-patchmatic-2018-0507.zip
mv /Downloads/patchmatic $HACK/bin
```

## `mount_efi.sh`
[up up up](#)

```bash
cd ~/Downloads
wget https://raw.githubusercontent.com/RehabMan/hack-tools/master/mount_efi.sh
# make edits to support a second argument
mv /Downloads/mount_efi.sh $HACK/bin
```

## `hack_tools`
[up up up](#)

tools for various reasons:

* `mount_efi.sh`
* `_install_subs.sh`
* `update_lilufriend.sh`
* `create_lilufriend.sh`
* `template_kexts/LiluFriendLiteTemplate.kext`
* `template_kexts/LiluFriendTemplate.kext`


```bash
mkdir -p $HACK/git/Rehabman.git
cd $HACK/git/Rehabman.git
git clone https://github.com/RehabMan/hack-tools.git hack-tools.git
cd hack-tools.git
# make edits to mount_efi.sh to support second argument
# make edits to _install_sub.sh
# make edits to update_lilufriend.sh
# make edits to create_lilufriend.sh
# make edits to template_kexts/LiluFriendLiteTemplate.kext
# make edits to template_kexts/LiluFriendTemplate.kext
cp mount_efi.sh $HACK/bin
cp _install_subs.sh $HACK/bin
cp update_lilufriend.sh $HACK/bin
cp create_lilufriend.sh $HACK/bin
cp -r template_kexts $HACK/bin
```

## IOJones
[up up up](#)

from [here](https://sourceforge.net/projects/iojones/postdownload)

unzip it in `$HACK/bin`

## IORegistryExplorer.app v2.1
[up up up](#)

Interim (IORegistryExplorer.app_v3+ is broken; it can't open files it creates)
IORegistryExplorer.app_v2.1; extracted from the Snow Leopard Retail Install Disc_v10.6.3

download from [here](https://www.tonymacx86.com/threads/guide-how-to-make-a-copy-of-ioreg.58368/)

unzip it in `$HACK/bin`

# where to install kexts
[up up up](#)

According to the [second post paragraph titled Installing Kexts](https://www.tonymacx86.com/threads/guide-booting-the-os-x-installer-on-laptops-with-clover.148093/#post-917904) and this [sakoula's post](https://www.tonymacx86.com/threads/guide-booting-the-os-x-installer-on-laptops-with-clover.148093/page-400#post-1801414):

The kernelcache is an optimised and pre-linked version of the kernel with its extensions (kexts), which is then stored in /System/Library/PrelinkedKernels/prelinkedkernel, which is pointed to from its more traditional location of /System/Library/Caches/com.apple.kext.caches/Startup/kernelcache (definition from [here](https://eclecticlight.co/2018/08/23/booting-the-mac-the-kernel-and-extensions/)). 

According to [this article](https://www.tonymacx86.com/threads/guide-lenovo-z50-70-z40-70-g50-70-g40-70-using-clover-uefi.261787/page-4#post-1830517) Rehabman says:

> Yes. Some kexts don't work well when injected (some don't work at all).
It is also next to impossible to verify that the set of kexts a user has in EFI are compatible with each other. The output of kextcache provides excellent diagnostics of user mistakes/mismatches.
>
>I tend to use injection early in the development process especially if I'm testing across multiple versions (recently tested the NUC8 with 4 different macOS versions, tweaking things here and there, and it was handy to have everything on USB, and injecting kexts from there as I was updating them, and testing with each of the 4 versions of macOS).
>
>Then when I finalize, I install everything to /L/E.

So always place your kexts in `/L/E`

On the clover installation on the hard disk have all the configuration plus the bare minimum in kexts/Other directory in order to boot the installer or recovery plus `SystemParameters/InjectKexts="Detect"` in order to avoid clover injecting the kexts if already in the kernel cache.

A backup USB stick needs the exact same configuration as the hard disk.

With `SystemParameters/InjectKexts="Detect"` kexts in `EFI/Clover/kexts` are not injected when `FakeSMC.kext` or `VirtualSMC.kext` is in kernal cache.

Because `FakeSMC.kext` is always a "kext you need", you will always install it to the system volume, which will put it in kernel cache. Kernel cache, of course, will not have `FakeSMC.kext` when booting the installer or recovery, so in these cases the kexts in `EFI/Clover/kexts` *will* be injected as you would expect.

After putting kexts in `/L/E` then run `chown -R root:wheel ACPIBatteryManager.kext AppleALC.kext CPUFriend.kext CPUFriendDataProvider.kext CodecCommander.kext HibernationFixup.kext Lilu.kext NullEthernet.kext SATA-unsupported.kext USBPorts.kext VirtualSMC.kext VoodooPS2Controller.kext WhateverGreen.kext`, `chmod -r 755  ACPIBatteryManager.kext AppleALC.kext CPUFriend.kext CPUFriendDataProvider.kext CodecCommander.kext HibernationFixup.kext Lilu.kext NullEthernet.kext SATA-unsupported.kext USBPorts.kext VirtualSMC.kext VoodooPS2Controller.kext WhateverGreen.kext` and `sudo kextcache -i /`

# `LiluFriend`
[up up up](#)

In order to have all the kexts installed in /L/E like Rehabman is writing you need for Lilu kexts and especially for CPUFriend Data provider LiluFriend: 

> It's highly recommended to let the bootloader inject CPUFriend, otherwise you'll need LiluFriend to ensure CPUFriend will work properly. Also, theoretically both ACPI_SMC_PlatformPlugin.kext and X86PlatformPlugin.kext should be untouched. You'd better use the original ones. (Well, CPUFriend will hook configResourceCallback(unsigned int, int, void const*, unsigned int, void*) in either ACPI_SMC_PlatformPlugin or X86PlatformPlugin, which parses IOKit personalities from Resources, so no problem to use a modified one if you do not really care for the signature, which will be restored in an upcoming system upgrade anyway) [reference](https://github.com/PMheart/LiluFriend)

> Hi. For now, yes. I haven't found a better solution yet.Installing everything to /L/E uses Apple's native way, otherwise no. Clover's kext injection can be just for necessary and convenience. (installer/recovery)Also, it's simply wrong to leave lots of kexts outside kernel cache (Using the current way to inject kexts). A kernel cache should be the right eventual place where all kexts should go into. [reference](https://www.insanelymac.com/forum/topic/324146-lilufriend-fixing-lilu-does-not-function-correctly-under-system-locations/)

`LiluFriend.kext/Contents/Info.plist`:

```xml
  <key>OSBundleLibraries</key>
  <dict>
    <key>com.apple.kpi.bsd</key>
    <string>12.0.0</string>
    <key>com.apple.kpi.iokit</key>
    <string>12.0.0</string>
    <key>com.apple.kpi.libkern</key>
    <string>12.0.0</string>
    <key>com.apple.kpi.mach</key>
    <string>12.0.0</string>
    <key>com.apple.kpi.unsupported</key>
    <string>12.0.0</string>
    <key>as.vit9696.Lilu</key>
    <string>1.2.0</string>
    <key>org.vanilla.driver.CPUFriend</key>
    <string>1.0</string>
    <key>org.vanilla.driver.CPUFriendDataProvider</key>
    <string>1.0.0</string>
    <key>as.vit9696.AppleALC</key>
    <string>1.0</string>
    <key>as.vit9696.WhateverGreen</key>
    <string>1.0</string>
  </dict>
```

added in `CPUFriendDataProvider.kext/Contents/Info.plist` in order for `kextcache -i` not to have an warning

```xml
<key>OSBundleCompatibleVersion</key>
<string>1.0.0</string>
```

based on the [post](https://www.tonymacx86.com/threads/guide-lenovo-z50-70-z40-70-g50-70-g40-70-using-clover-uefi.261787/page-4#post-1830517) the procedure to install is:

> It has to contain references to each Lilu plugin (and Lilu itself) in its OSBundleLibraries dictionary, so yes, any change to the set of Lilu kexts installed results in a change to the LiluFriend (or LiluFriendLite) Info.plist. This is why I install all kexts first (with a cache rebuild), then generate LiluFriendLite, then install it, then rebuild cache again. It is quick and easy with the create_lilufriend.sh script.

Proccess you need to follow for LiluFriend:

1. move all kexts except `LiluFriend.kext` to `/L/E`
2. rebuild caches with `sudo kextcache -i /`
3. copy `LiluFriend.kext` to `/L/E`
4. rebuild caches again `sudo kextcache -i /`

**Note:** In order to construct the `LiluFriend.kext` and install it you can use [RehabMan/hack-tools](https://github.com/RehabMan/hack-tools) which are installed in `$HACK/bin`. Check the scripts there si a `LiluFriend.kext` and a codeless `LiluFriendLite.kext` by Rehabman. The procedure of the script is:

1. move all kexts except `LiluFriend.kext` or `LiluFriendLite.kext` to `/L/E`
2. rebuild caches with `sudo kextcache -i /`
3. run `$HACK/bin/create_lilufriend.sh` to generate on the running directory `LiluFriend.kext` or `LiluFriendLite.kext`
4. inspect `LiluFriend.kext/Contents/Info.plist` and `LiluFriendLite.kext/Contents/Info.plist`
5. copy `LiluFriend.kext` or `LiluFriendLite.kext` to `/L/E`
6. rebuild caches again `sudo kextcache -i /`

# where to install kexts **January 2019**
[up up up](#)

It turns out that various kexts do not work always from the system location (`/L/E`). From the kernel logs I have seen that LiluFriend does not load (10.13.6). Also based on [this](https://www.tonymacx86.com/threads/lenovo-v330-15ikb.250671/page-5) it seems that VoodooI2C do no work from the system locations unless you disable some kexts that they be loaded. So I decided to inject everything from clover 'Other' directory and remove the Detect from clover Inject kexts

check this also XXX

```
https://www.tonymacx86.com/threads/guide-lenovo-z50-70-z40-70-g50-70-g40-70-using-clover-uefi.261787/page-4#post-1830517

It has to contain references to each Lilu plugin (and Lilu itself) in its OSBundleLibraries dictionary, so yes, any change to the set of Lilu kexts installed results in a change to the LiluFriend (or LiluFriendLite) Info.plist. This is why I install all kexts first (with a cache rebuild), then generate LiluFriendLite, then install it, then rebuild cache again. It is quick and easy with the create_lilufriend.sh script.
```

# create DSL of stock tables
[up up up](#)

get the ACPI tables by hitting F4 in clover on a fat32 stick or on the default EFI partition. Tables will be saved in `CLOVER/ACPI/origin`. Hit F2 in clover to save the preboot file in `CLOVER/misc/preboot.log`.

create DSL files for both stock `ACPI.air.bios.a06`

refs.txt

```text
External(_GPE.MMTB, MethodObj, 0)
External(_SB.PCI0.LPCB.H_EC.ECWT, MethodObj, 2)
External(_SB.PCI0.LPCB.H_EC.ECRD, MethodObj, 1)
External(_SB.PCI0.LPCB.H_EC.ECMD, MethodObj, 1)
External(_SB.PCI0.PEG0.PEGP.SGPO, MethodObj, 2)
External(_SB.PCI0.GFX0.DD02._BCM, MethodObj, 1)
External(_SB.PCI0.SAT0.SDSM, MethodObj, 4)
External(_GPE.VHOV, MethodObj, 3)
External(_SB.PCI0.XHC.RHUB.TPLD, MethodObj, 2)
```

```shell
cd ACPI.air.bios.a06/
../bin/iasl -da -dl -fe refs.txt DSDT.aml SSDT*.aml >iasl.output.txt 2>&1
cd ..
mkdir patches.air
cp ACPI.air.bios.a06/*dsl patches.air/
```

I always use ACPI 6.1 (it is referenced in [patchmatic repo](https://github.com/RehabMan/OS-X-MaciASL-patchmatic))

# compile DSL

```bash
../bin/iasl -ve DSDT.dsl
../bin/iasl -p SSDT-USBX -ve SSDT-USBX.dsl
../bin/iasl -p SSDT-XHC -ve SSDT-XHC.dsl
```

# string conversion 
[up up up](#)

for `config.plist` you always use base64 format. Useful commands:

```bash
echo -n GFX0 | openssl base64 # R0ZYMA==
echo R0ZYMA== | openssl base64 -d # GFX0
```

for `clover configurator` you always use hex format. Useful commands:

```bash
echo -n GFX0|xxd -g 100 -p # 47465830
echo 47465830 | xxd -r -g 100 -p # GFX0
```

```bash
$ echo -n GFX0|xxd
00000000: 4746 5830                                GFX0

$ echo -n GFX0|xxd -b
00000000: 01000111 01000110 01011000 00110000                    GFX0

$ echo -n "00000000: 4746 5830" | xxd -r
GFX0
```

# LSPCI using WMI (WMIC)

```powershell
gwmi win32_pnpentity | where{$_.deviceid -match "PCI"} | select name,deviceid
```

* [LSPCI using WMI ( WMIC )](http://iforgotthis.blogspot.com/2015/05/lspci-using-wmi-wmic.html)
* [Device Identification Strings](https://docs.microsoft.com/en-us/windows-hardware/drivers/install/device-identification-strings)
* [DevCon Find](https://docs.microsoft.com/en-us/windows-hardware/drivers/devtest/devcon-find)

# clover unhide all volumes with F3
[up up up](#)

to unhide hidden entries in clover press [F3](https://www.insanelymac.com/forum/topic/326527-create-custom-entries-to-hide-preboot-and-recovery-apfs-volumes-fusion-drive-installation-with-clover-configurator/)

also check this for [preboot partitions](https://www.insanelymac.com/forum/topic/331816-how-to-remove-boot-osx-install-option-from-clover-after-update/)

# AppleHDA patching
[up up up](#)

references

* [COMPLETE APPLEHDA PATCHING GUIDE](https://osxlatitude.com/forums/topic/1946-complete-applehda-patching-guide/)
* [AppleHDA Patching Guide](https://www.johnstray.id.au/acer-z3-605/applehda-patching-guide/)
* [A Beginner's Guide: How to Patch AppleHDA for Laptops](https://www.elitemacx86.com/threads/a-beginners-guide-how-to-patch-applehda-for-laptops.184/)
* [https://www.tonymacx86.com/threads/solved-balance-control-mute-headphone-applealc.214360/page-2](https://www.tonymacx86.com/threads/solved-balance-control-mute-headphone-applealc.214360/page-2)

# references
[up up up](#)

## macOS guides on Xiaomi
[up up up](#)

* [[Guide] XiaoMi Mi Notebook Air 13"](https://www.insanelymac.com/forum/topic/319656-guide-xiaomi-mi-notebook-air-13/)
* [XiaoMi NoteBook Pro for macOS Mojave & High Sierra](https://github.com/daliansky/XiaoMi-Pro)
* [Xiaomi-Notebook-Air-6200u](https://github.com/johnnync13/Xiaomi-Notebook-Air-6200u)
* [XiaoMi NoteBook Air for macOS High Sierra & Sierra](https://github.com/whtiehack/XiaoMi-Air)
* [Successfull Xiaomi Notebook Air 6200u](https://www.tonymacx86.com/threads/successfull-xiaomi-notebook-air-6200u.258081/)

## macOS guides on other hardware
[up up up](#)

* [[Guide] HP Pavilion 15-AB216TX Mojave SOS](https://www.tonymacx86.com/threads/guide-hp-pavilion-15-ab216tx-mojave.260900/)
* [DSDT Patching for Dummies - SnowLeo with 100% vanilla /S/L/E](https://forum.thinkpads.com/viewtopic.php?t=85344)
* [T450-Hackintosh/ALC3232/tools/](https://github.com/shmilee/T450-Hackintosh/tree/master/ALC3232/tools)
* [Guide HP using Clover UEFI hotpatch](https://www.tonymacx86.com/threads/guide-hp-probook-elitebook-zbook-using-clover-uefi-hotpatch.232948/)
* [Guide DELL Inspiron 7560 High Sierra installation](https://www.tonymacx86.com/threads/guide-dell-inspiron-7560-high-sierra-installation.242174/page-4)

## Troubleshooting with lid
[up up up](#)

* [Sleep by lid close & Wake by lid openening?](https://www.tonymacx86.com/threads/sleep-by-lid-close-wake-by-lid-openening.212641/)
* [Rehabmans CodecCommander.](https://www.tonymacx86.com/threads/rehabmans-codeccommander.226487/)
* [How to make a SSDT for HD530 Sleep/Wake problem with Pike's code?](https://www.tonymacx86.com/threads/how-to-make-a-ssdt-for-hd530-sleep-wake-problem-with-pikes-code.212261/)
* [Debugging sleep issues](https://pikeralpha.wordpress.com/2017/01/12/debugging-sleep-issues/)

## linux guides
[up up up](#)

* [Xiaomi Air 13: minimal Ubuntu installation and power optimization steps](https://github.com/Golovin-Andrey/xiaomi-mi-13-ubuntu)

## Interesting Hackintosh Sites
[up up up](#)

* [hackintosher guides](https://hackintosher.com/)

## Guides etc
[up up up](#)

* [Device management namespace objects](https://docs.microsoft.com/en-us/windows-hardware/drivers/bringup/device-management-namespace-objects)
* [A Guide on Fixing Sleep Issues](https://www.insanelymac.com/forum/topic/306737-a-guide-on-fixing-sleep-issues/)
* [[How-To] make a legacy kext](https://www.insanelymac.com/forum/topic/157881-how-to-make-a-legacy-kext-marvell-yukon-88e8056/)
* [(GUIDE) Getting your Busratio](https://www.insanelymac.com/forum/topic/240542-guide-getting-your-busratio/)
* [[How To] Tips for Finding Vendor and Device ID's](https://www.insanelymac.com/forum/topic/36764-how-to-tips-for-finding-vendor-and-device-ids/)
* [Create Custom Entries to Hide Preboot and Recovery APFS Volumes, Fusion Drive Installation with Clover Configurator](https://www.insanelymac.com/forum/topic/326527-create-custom-entries-to-hide-preboot-and-recovery-apfs-volumes-fusion-drive-installation-with-clover-configurator/)
* [[HOWTO] Show PCI Cards on System Profiler - using EFI strings](https://www.insanelymac.com/forum/topic/134842-howto-show-pci-cards-on-system-profiler-using-efi-strings/)
* [Setting the preferred sleep mode [hibernation or deep sleep (S4) / RAM sleep (S3)]](https://www.insanelymac.com/forum/topic/211308-setting-the-preferred-sleep-mode-hibernation-or-deep-sleep-s4-ram-sleep-s3/)
* [[How To] Remotely Run Windows From a DS](https://www.insanelymac.com/forum/topic/156030-how-to-remotely-run-windows-from-a-ds/)
* [([HowTo] Change your Machine Name in System Profiler)](https://www.insanelymac.com/forum/topic/18046-howto-change-your-machine-name-in-system-profiler/)

## DSDT related references
[up up up](#)

* [_REG (Region)](http://wiki.phoenix.com/wiki/index.php/REG)
* [ae_bad_parameter](https://www.tonymacx86.com/threads/acpi-error-ae_bad_parameter-setup-works-fine.227195/)
* [No handler for Region RAM EmbeddedControl](https://www.google.com/search?q=No+handler+for+Region+%5BRAM_%5D++%5BEmbeddedControl%5D&ei=6b9_W_rcOIm4kwWu05zwAQ&start=20&sa=N&biw=1147&bih=1036)
* [[Bug 192501] New: Xiaomi Air 13 ACPI errors in dmesg](http://acpi-bugzilla.narkive.com/KskbRRFO/bug-192501-new-xiaomi-air-13-acpi-errors-in-dmesg)
* [ACPI Error: AE_BAD_PARAMETER (setup works fine)](https://www.tonymacx86.com/threads/acpi-error-ae_bad_parameter-setup-works-fine.227195/)
* [ACPI for Developers](https://github.com/Bumblebee-Project/Bumblebee/wiki/ACPI-for-Developers)
* [ACPI-Introduction](https://acpica.org/sites/acpica/files/ACPI-Introduction.pdf)


