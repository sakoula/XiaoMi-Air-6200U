// Fixing Bightness Hotkey
// based on
// https://www.tonymacx86.com/threads/guide-patching-dsdt-ssdt-for-laptop-backlight-control.152659/
// PS2K changed to KBD0

DefinitionBlock("", "SSDT", 2, "hack", "_BCKS", 0)
{
    External(ZQ1C, MethodObj)
    External(ZQ1D, MethodObj)

    External(_SB.PCI0.LPCB.PS2M, DeviceObj)

    External(_SB.PCI0.LPCB, DeviceObj)
    External(_SB.PCI0.LPCB.EC, DeviceObj)
    External(_SB.PCI0.LPCB.KBD0, DeviceObj)
    Scope(_SB.PCI0.LPCB.EC)
    {
        // In DSDT, native _Q1C and _Q1D are renamed ZQ1C/ZQ1D
        // As a result, calls to these methods land here.
        Method (_Q1C, 0, NotSerialized)
        {
            // Brightness Up
            Notify(\_SB.PCI0.LPCB.KBD0, 0x0406)
        }

        Method (_Q1D, 0, NotSerialized)
        {
            // Brightness Down
            Notify(\_SB.PCI0.LPCB.KBD0, 0x0405)
        }
    }
}
