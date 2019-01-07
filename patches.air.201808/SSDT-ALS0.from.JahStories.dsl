// ALS0 device from DSL.2.1.JahStories

DefinitionBlock("", "SSDT", 2, "hack", "_ALS0", 0)
{
    External(_SB.PCI0.LPCB, DeviceObj)
    Scope(_SB.PCI0.LPCB)
    {
        Device (ALS0)
        {
            Name (_HID, "ACPI0008")  // _HID: Hardware ID
            Name (_CID, "smc-als")  // _CID: Compatible ID
            Name (BUFF, Buffer (){})
            CreateByteField (BUFF, Zero, OB0)
            CreateByteField (BUFF, One, OB1)
            CreateWordField (BUFF, Zero, ALSI)
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Method (_ALI, 0, NotSerialized)  // _ALI: Ambient Light Illuminance
            {
                Store (0x0A, OB0)
                Store (Zero, OB1)
                Store (ALSI, Local0)
                Return (Local0)
            }

            Name (_ALR, Package (0x05)  // _ALR: Ambient Light Response
            {
                Package() { 0x0A, 0 },
                Package() { 0x14, 0x0A },
                Package() { 0x32, 0x50 },
                Package() { 0x5A, 0x012C },
                Package() { 0x64, 0x03E8 }
            })
        }

        Method (DTGP, 5, NotSerialized)
        {
            If (LEqual (Arg0, ToUUID ("a0b5b7c6-1318-441c-b0c9-fe695eaf949b")))
            {
                If (LEqual (Arg1, One))
                {
                    If (LEqual (Arg2, Zero))
                    {
                        Store (Buffer (One)
                            {
                                 0x03
                            }, Arg4)
                        Return (One)
                    }

                    If (LEqual (Arg2, One))
                    {
                        Return (One)
                    }
                }
            }

            Store (Buffer (One)
                {
                     0x00
                }, Arg4)
            Return (Zero)
        }

        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            Store (Package (0x06)
                {
                    "device-id",
                    Buffer (0x04)
                    {
                         0xC1, 0x9C, 0x00, 0x00
                    },

                    "name",
                    Buffer (0x0D)
                    {
                        "pci8086,9cc1"
                    },

                    "compatible",
                    Buffer (0x0D)
                    {
                        "pci8086,9cc1"
                    }
                }, Local0)
            DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
            Return (Local0)
        }

        OperationRegion (LPC0, PCI_Config, 0xA4, 0x02)
        Field (LPC0, ByteAcc, NoLock, Preserve)
        {
            AG3E,   1
        }
    }
}
