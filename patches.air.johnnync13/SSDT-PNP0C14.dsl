/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-PNP0C14.aml, Sun Dec 30 13:02:43 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000097 (151)
 *     Revision         0x02
 *     Checksum         0xF0
 *     OEM ID           "hack"
 *     OEM Table ID     "_PNP0C14"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180810 (538445840)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "_PNP0C14", 0x00000000)
{
    External (_SB_.PCI0.WMI1, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.WMIE, DeviceObj)    // (from opcode)
    External (_SB_.WTBT, DeviceObj)    // (from opcode)

    Scope (_SB.PCI0.WMI1)
    {
        Name (_STA, Zero)  // _STA: Status
    }

    Scope (_SB.PCI0.WMIE)
    {
        Name (OSYS, 0x03E8)
    }

    Scope (_SB.WTBT)
    {
        Name (_STA, Zero)  // _STA: Status
    }
}

