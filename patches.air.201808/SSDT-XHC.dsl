DefinitionBlock ("", "SSDT", 2, "hack", "_XHC", 0x00000000)
{
    Method (_SB.PCI0.XHC._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If (LNot (Arg2))
        {
            Return (Buffer { 0x03 })
        }

        Store (Package()
            {
                "name",
                Buffer() {"pci8086,9d2f"},
                "AAPL,slot-name",
                Buffer() { "PCI-Express" },
                "model",
                Buffer() { "Sunrise Point-LP USB 3.0 xHCI Controller" },
                "RM,pr2-force",
                Buffer() { 0x00, 0x00, 0x00, 0x00 },
                "AAPL,current-available",
                Buffer() { 0x34, 0x08, 0x00, 0x00 },
                "AAPL,current-extra",
                Buffer() { 0x80, 0x0C, 0x00, 0x00 },
                "AAPL,current-extra-in-sleep",
                Buffer() { 0x28, 0x0A, 0x00, 0x00 },
                "AAPL,max-port-current-in-sleep",
                Buffer() { 0x34, 0x08, 0x00, 0x00 }
            }, Local0)
        If (LOr (LOr (CondRefOf (\_SB.PCI0.RMD2), CondRefOf (\_SB.PCI0.RMD3)), CondRefOf (\_SB.PCI0.RMD4)))
        {
            CreateDWordField (DerefOf (Index (Local0, One)), Zero, PR2F)
            Store (0x3FFF, PR2F)
        }

        Return (Local0)
    }
}
