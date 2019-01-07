// Maintained by: sakoula
// Reference: daliansky/XiaoMi-Pro
// updated 20181228
// Cosmetic Strings for Xiaomi Mi Notebook Air 13.3''
// you may use software like pci-z to determine the hardware
// XXX incomplete work

DefinitionBlock ("", "SSDT", 2, "hack", "_PCIList", 0x00000000)
{
    External (_SB_.PCI0.HDEF, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.I2C0, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.I2C1, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.IGPU, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.IMEI, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.PPMC, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.RP01.PXSX, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.RP05.PXSX, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.RP09.PXSX, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.SBUS, DeviceObj)    // (from opcode)

    Method (_SB.PCI0.HDEF._DSM, 4, NotSerialized)
    {
        If (LEqual (Arg2, Zero))
        {
            Return (Buffer() { 0x03 })
        }

        Return (Package()
        {
            "AAPL,slot-name",
            Buffer() { "PCI-Express" },
            "hda-gfx",
            Buffer() { "onboard-1" },
            "model",
            Buffer() { "Realtek ALC255 Audio Controller" }
        })
    }

    Method (_SB.PCI0.I2C0._DSM, 4, NotSerialized)
    {
        If (LEqual (Arg2, Zero))
        {
            Return (Buffer() { 0x03 })
        }

        Return (Package()
        {
            "AAPL,slot-name",
            Buffer() { "PCI-Express" },
            "device_type",
            Buffer() { "I2C" },
            "model",
            Buffer() { "Sunrise Point-LP Serial IO I2C Controller #0" }
        })
    }

    Method (_SB.PCI0.I2C1._DSM, 4, NotSerialized)
    {
        If (LEqual (Arg2, Zero))
        {
            Return (Buffer() { 0x03 })
        }

        Return (Package()
        {
            "AAPL,slot-name",
            Buffer() { "PCI-Express" },
            "device_type",
            Buffer() { "I2C" },
            "model",
            Buffer() { "Sunrise Point-LP Serial IO I2C Controller #1" }
        })
    }

    Method (_SB.PCI0.IGPU._DSM, 4, NotSerialized)
    {
        If (LEqual (Arg2, Zero))
        {
            Return (Buffer() { 0x03 })
        }

        Return (Package()
        {
            "AAPL,slot-name",
            Buffer() { "PCI-Express" },
            "hda-gfx",
            Buffer() { "onboard-1" },
            "model",
            Buffer() { "Intel HD Graphics 520" }
        })
    }

    Method (_SB.PCI0.IMEI._DSM, 4, NotSerialized)
    {
        If (LEqual (Arg2, Zero))
        {
            Return (Buffer() { 0x03 })
        }

        Return (Package()
        {
            "AAPL,slot-name",
            Buffer() { "PCI-Express" },
            "device_type",
            Buffer() { "IMEI" },
            "model",
            Buffer() { "Sunrise Point-LP CSME HECI #1" }
        })
    }

    Method (_SB.PCI0.RP01.PXSX._DSM, 4, NotSerialized)
    {
        If (LEqual (Arg2, Zero))
        {
            Return (Buffer() { 0x03 })
        }

        Return (Package()
        {
            "AAPL,slot-name",
            Buffer() { "PCI-Express" },
            "model",
            Buffer() { "NVIDIA GM108M GeForce 940MX" }
        })
    }

    Method (_SB.PCI0.RP05.PXSX._DSM, 4, NotSerialized)
    {
        If (LEqual (Arg2, Zero))
        {
            Return (Buffer() { 0x03 })
        }

        Return (Package()
        {
            "AAPL,slot-name",
            Buffer() { "M.2 key B" },
            "model",
            Buffer() { "Sunrise Point-LP PCI Express Root Port #5" }
        })
    }

    Method (_SB.PCI0.RP09.PXSX._DSM, 4, NotSerialized)
    {
        If (LEqual (Arg2, Zero))
        {
            Return (Buffer() { 0x03 })
        }

        Return (Package()
        {
            "AAPL,slot-name",
            Buffer() { "M.2 key M" },
            "model",
            Buffer() { "NVMe SSD Controller PM961" }
        })
    }

    Method (_SB.PCI0.PPMC._DSM, 4, NotSerialized)
    {
        If (LEqual (Arg2, Zero))
        {
            Return (Buffer() { 0x03 })
        }

        Return (Package()
        {
            "AAPL,slot-name",
            Buffer() { "PCI-Express" },
            "device_type",
            Buffer() { "PCHPMC Controlle" },
            "model",
            Buffer() { "Sunrise Point-LP PMC" }
        })
    }

    Method (_SB.PCI0.SBUS._DSM, 4, NotSerialized)
    {
        If (LEqual (Arg2, Zero))
        {
            Return (Buffer() { 0x03 })
        }

        Return (Package()
        {
            "AAPL,slot-name",
            Buffer() { "PCI-Express" },
            "model",
            Buffer() { "Sunrise Point-LP SMBus" }
        })
    }
}

