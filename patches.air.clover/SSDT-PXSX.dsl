// Maintained by: sakoula
// Reference: daliansky/XiaoMi-Pro
// updated 20181228
// Cosmetic Strings for Xiaomi Mi Notebook Air 13.3''
// you may use software like pci-z to determine the hardware
// XXX incomplete work

DefinitionBlock ("", "SSDT", 2, "hack", "_PXSX", 0x00000000)
{
    External (_SB_.PCI0.RP01.PXSX, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.RP05.PXSX, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.RP09.PXSX, DeviceObj)    // (from opcode)
    External (DTGP, MethodObj)    // 5 Arguments

    Method (_SB.PCI0.RP01.PXSX._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        Local0 = Package (0x04)
            {
                "AAPL,slot-name",
                Buffer (0x0C)
                {
                    "PCI-Express"
                },

                "model",
                Buffer ()
                {
                    "NVIDIA GM108M GeForce 940MX"
                }
            }
        DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
        Return (Local0)
    }

    Method (_SB.PCI0.RP05.PXSX._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        Local0 = Package (0x04)
            {
                "AAPL,slot-name",
                Buffer ()
                {
                    "M.2 key B"
                },

                "model",
                Buffer (0x2A)
                {
                    "Sunrise Point-LP PCI Express Root Port #5"
                }
            }
        DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
        Return (Local0)
    }

    Method (_SB.PCI0.RP09.PXSX._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        Local0 = Package (0x04)
            {
                "AAPL,slot-name",
                Buffer ()
                {
                    "M.2 key M"
                },

                "model",
                Buffer ()
                {
                    "NVMe SSD Controller PM961"
                }
            }
        DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
        Return (Local0)
    }
}

