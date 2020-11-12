// sakoula Thu Oct 22 18:41:57 EEST 2020
// Fixing IRQ Conflicts (SSDT-HPET + OC_Patches.plist)
// https://dortania.github.io/Getting-Started-With-ACPI/Universal/irq.html
// So you miss having those fancy hot-patches from Clover like FixIPIC,
// FixTMR, FixRTC, FixHPET, etc
// Well 1 very small problem, figuring out IRQ patching is a massive headache.
// I highly recommend you use SSDTTime. So head over to SSDT:
// Easy Way on how to make it.(use option C to omit conflicting legacy IRQs)

//
// Supplementary HPET _CRS from Goldfish64
// Requires the HPET's _CRS to XCRS rename
//
DefinitionBlock ("", "SSDT", 2, "CORP", "HPET", 0x00000000)
{
    External (\_SB.PCI0.LPCB, DeviceObj)    // (from opcode)
    External (\_SB.PCI0.LPCB.HPET, DeviceObj)    // (from opcode)
    Name (\_SB.PCI0.LPCB.HPET._CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
    {
        IRQNoFlags ()
            {0,8,11}
        Memory32Fixed (ReadWrite,
            0xFED00000,         // Address Base
            0x00000400,         // Address Length
            )
    })
}
