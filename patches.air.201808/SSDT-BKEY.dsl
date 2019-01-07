// Fixing Bightness Hotkey
// based on the DSL edits of 2.1.JahStories
// read and understand
// https://www.tonymacx86.com/threads/guide-patching-dsdt-ssdt-for-laptop-backlight-control.152659/

DefinitionBlock("", "SSDT", 2, "hack", "_BKEY", 0)
{
    External(ZQ1C, MethodObj)
    External(ZQ1D, MethodObj)

    External(_SB.PCI0.LPCB.PS2M, DeviceObj)

    External(_SB.PCI0.LPCB, DeviceObj)
    External(_SB.PCI0.LPCB.EC0, DeviceObj)
    Scope(_SB.PCI0.LPCB.EC0)
    {
        // In DSDT, native _Q1C and _Q1D are renamed ZQ1C/ZQ1D
        // As a result, calls to these methods land here.
        Method (_Q1C, 0, NotSerialized)
        {
            // stock
            Notify (PS2M, 0x0206)
            Notify (PS2M, 0x0286)
        }

        Method (_Q1D, 0, NotSerialized)
        {
            // stock
            Notify (PS2M, 0x0205)
            Notify (PS2M, 0x0285)
        }
    }
}
