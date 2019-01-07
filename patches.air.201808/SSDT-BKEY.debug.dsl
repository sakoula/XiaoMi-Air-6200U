// Fixing Bightness Hotkey
// based on the DSL edits of 2.1.JahStories
// read and understand
// https://www.tonymacx86.com/threads/guide-patching-dsdt-ssdt-for-laptop-backlight-control.152659/

DefinitionBlock("", "SSDT", 2, "hack", "_BKEY", 0)
{
    External (RMDT, DeviceObj)
    External (RMDT.PUSH, MethodObj)
    External (RMDT.P1, MethodObj)
    External (RMDT.P2, MethodObj)
    External (RMDT.P3, MethodObj)
    External (RMDT.P4, MethodObj)
    External (RMDT.P5, MethodObj)
    External (RMDT.P6, MethodObj)
    External (RMDT.P7, MethodObj)

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
            \RMDT.PUSH("sakoula increase")
        }

        Method (_Q1D, 0, NotSerialized)
        {
            // stock
            Notify (PS2M, 0x0205)
            Notify (PS2M, 0x0285)
            \RMDT.PUSH("sakoula decrease")
        }
    }
}
