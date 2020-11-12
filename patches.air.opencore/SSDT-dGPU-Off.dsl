// sakoula Thu Oct 22 18:41:57 EEST 2020
// Disabling laptop dGPUs (SSDT-dGPU-Off/NoHybGfx)
// https://dortania.github.io/Getting-Started-With-ACPI/Laptops/laptop-disable.html
// So with laptops, we can hide the dGPU from macOS with the little boot-
// arg called -wegnoegpu from WhateverGreen. But one small problem,
// the dGPU is still pulling power draining your battery slowly.

/* Based off of Rebaman's work:
*  https://github.com/RehabMan/OS-X-Clover-Laptop-Config/blob/master/hotpatch/SSDT-DDGPU.dsl
*/
DefinitionBlock("", "SSDT", 2, "DRTNIA", "dGPU-Off", 0)
{
//External(_SB.PCI0.PEG0.PEGP._OFF, MethodObj) // ACPI Path of dGPU
External(_SB.PCI0.RP01.PXSX._OFF, MethodObj) // ACPI Path of dGPU

    Device(RMD1)
    {
        Name(_HID, "RMD10000") // _HID: Hardware ID
        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            If (_OSI ("Darwin"))
            {
                Return (0x0F)
            }
            Else
            {
                Return (Zero)
            }
        }

        Method(_INI)
        {
            If (_OSI ("Darwin"))
            {
               // disable discrete graphics (Nvidia/Radeon) if it is present
               //If (CondRefOf(\_SB.PCI0.PEG0.PEGP._OFF)) { \_SB.PCI0.PEG0.PEGP._OFF() }
               If (CondRefOf(\_SB.PCI0.RP01.PXSX._OFF)) { \_SB.PCI0.RP01.PXSX._OFF() }
            }
            Else
            {
            }
        }
    }
}
