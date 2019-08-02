// Maintained by: stevezhengshiqi
// Edited by: sakoula
// updated 20181228
// updated 20190718 (from daliansky/XiaoMi-Pro-Hackintosh repository)
// Disable HPET device by passing value 0 to HPTE
// to to behave more like a real Mac

DefinitionBlock ("", "SSDT", 2, "hack", "_HPET", 0x00000000)
{
    External (_SB_.PCI0.LPCB.HPET, DeviceObj)
    External (HPTE, FieldUnitObj)

    Scope (_SB.PCI0.LPCB.HPET)
    {
        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            HPTE = Zero
        }
    }
}

