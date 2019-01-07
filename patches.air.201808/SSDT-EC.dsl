// Inject Fake EC device
// most likely it is not required
// https://www.tonymacx86.com/threads/guide-usb-power-property-injection-for-sierra-and-later.222266/
DefinitionBlock("", "SSDT", 2, "hack", "EC", 0)
{
    Device(_SB.EC)
    {
        Name(_HID, "EC000000")
    }
}
