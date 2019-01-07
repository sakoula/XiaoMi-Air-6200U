/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-PXSX.aml, Sun Dec 30 13:02:43 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000002BD (701)
 *     Revision         0x02
 *     Checksum         0xB0
 *     OEM ID           "hack"
 *     OEM Table ID     "_PXSX"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "_PXSX", 0x00000000)
{
    External (_SB_.PCI0.RP09.PXSX, DeviceObj)    // (from opcode)
    External (DTGP, MethodObj)    // 5 Arguments (from opcode)

    Method (_SB.PCI0.RP01.PXSX._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        Store (Package (0x04)
            {
                "AAPL,slot-name", 
                Buffer (0x0C)
                {
                    "PCI-Express"
                }, 

                "model", 
                Buffer (0x15)
                {
                    "Controlador NVME"
                }
            }, Local0)
        DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
        Return (Local0)
    }

    Method (_SB.PCI0.RP05.PXSX._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        Store (Package (0x04)
            {
                "AAPL,slot-name", 
                Buffer (0x0A)
                {
                    "M.2 key B"
                }, 

                "model", 
                Buffer (0x2A)
                {
                    "Sunrise Point-LP PCI Express Root Port #5"
                }
            }, Local0)
        DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
        Return (Local0)
    }

    Method (_SB.PCI0.RP08.PXSX._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        Store (Package (0x04)
            {
                "AAPL,slot-name", 
                Buffer (0x0C)
                {
                    "PCI-Express"
                }, 

                "model", 
                Buffer (0x21)
                {
                    "Intel Dual Band Wireless-AC 8265"
                }
            }, Local0)
        DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
        Return (Local0)
    }

    Scope (_SB.PCI0.RP09.PXSX)
    {
        Name (NVME, One)
        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            If (LEqual (NVME, One))
            {
                Store (Package (0x08)
                    {
                        "AAPL,slot-name", 
                        Buffer (0x0A)
                        {
                            "M.2 key M"
                        }, 

                        "model", 
                        Buffer (0x2A)
                        {
                            "Sunrise Point-LP PCI Express Root Port #9"
                        }, 

                        "use-msi", 
                        One, 
                        "nvme-LPSR-during-S3-S4", 
                        One
                    }, Local0)
            }
            Else
            {
                Store (Package (0x06)
                    {
                        "AAPL,slot-name", 
                        Buffer (0x0A)
                        {
                            "M.2 key M"
                        }, 

                        "model", 
                        Buffer (0x2A)
                        {
                            "Sunrise Point-LP PCI Express Root Port #9"
                        }, 

                        "use-msi", 
                        One
                    }, Local0)
            }

            DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
            Return (Local0)
        }
    }
}

