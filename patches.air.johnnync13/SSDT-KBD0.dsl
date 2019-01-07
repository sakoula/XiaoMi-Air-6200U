/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-KBD0.aml, Sun Dec 30 13:02:43 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000000B0 (176)
 *     Revision         0x02
 *     Checksum         0x6A
 *     OEM ID           "hack"
 *     OEM Table ID     "Xiaomi"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "Xiaomi", 0x00000000)
{
    External (_SB_.PCI0.LPCB.EC__, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.KBD0, DeviceObj)    // (from opcode)

    Scope (_SB.PCI0.LPCB.EC)
    {
        Name (ACIO, Zero)
        Name (DCIO, Zero)
        Method (_Q1C, 0, NotSerialized)  // _Qxx: EC Query
        {
            Notify (\_SB.PCI0.LPCB.KBD0, 0x0406)
        }

        Method (_Q1D, 0, NotSerialized)  // _Qxx: EC Query
        {
            Notify (\_SB.PCI0.LPCB.KBD0, 0x0405)
        }
    }
}

