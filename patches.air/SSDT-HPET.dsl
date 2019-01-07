// Maintained by: stevezhengshiqi
// Edited by: sakoula
// updated 20181228
// Disable HPET device by passing value 0 to HPTE
// to to behave more like a real Mac

DefinitionBlock ("", "SSDT", 2, "hack", "_HPET", 0x00000000)
{
    External (_SB_.PCI0.LPCB.HPET, DeviceObj)

    Scope (_SB.PCI0.LPCB.HPET)
    {
        Name (HPTE, Zero)
    }
}

