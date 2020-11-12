// sakoula Thu Oct 22 18:41:57 EEST 2020
// Fixing USB Power
// https://dortania.github.io/OpenCore-Post-Install/usb/misc/power.html
// With Skylake and newer SMBIOS, Apple no longer provides USB power settings
// via IOUSBHostFamily, this means we need to adopt the same method real Macs
// do and supply macOS with a USBX device. This will set both the wake and
// sleep power values for all your USB ports, and can help fix many
// high power devices:

/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200528 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 *
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASL66IYgK.aml, Sun Oct 25 19:32:18 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000000D9 (217)
 *     Revision         0x02
 *     Checksum         0x02
 *     OEM ID           "DRTNIA"
 *     OEM Table ID     "SsdtUsbx"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20200528 (538969384)
 */
DefinitionBlock ("", "SSDT", 2, "DRTNIA", "SsdtUsbx", 0x00001000)
{
    Scope (\_SB)
    {
        Device (USBX)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If ((Arg2 == Zero))
                {
                    Return (Buffer (One)
                    {
                         0x03                                             // .
                    })
                }

                Return (Package (0x08)
                {
                    "kUSBSleepPowerSupply",
                    0x13EC,
                    "kUSBSleepPortCurrentLimit",
                    0x0834,
                    "kUSBWakePowerSupply",
                    0x13EC,
                    "kUSBWakePortCurrentLimit",
                    0x0834
                })
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }
}

