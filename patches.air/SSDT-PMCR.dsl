// Maintained by: stevezhengshiqi
// Edited by: sakoula
// updated 20181228
// updated 20190718 (from daliansky/XiaoMi-Pro-Hackintosh repository)
// Reference: https://github.com/syscl/XPS9350-macOS/blob/master/DSDT/patches/syscl_PPMCnPMCR.txt by syscl
// PPMC and PMCR combine together for macOS to load LPCB correctly

DefinitionBlock ("", "SSDT", 2, "hack", "_PMCR", 0x00000000)
{
    External (_SB_.PCI0, DeviceObj)

    Scope (_SB.PCI0)
    {
        Device (PMCR)
        {
            Name (_ADR, 0x001F0002)  // _ADR: Address
        }
    }
}

