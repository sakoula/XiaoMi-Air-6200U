// Maintained by: sakoula
// updated 20181228
// Inject Fake EC device
// most likely it is not required
// https://www.tonymacx86.com/threads/guide-usb-power-property-injection-for-sierra-and-later.222266/
// sakoula, in the thread it says that:
// If your computer has an ECDT in ACPI (or similar), you should not rename anything along
// the EC path, including the EC itself. Use a "Fake EC" instead
// as described below. You can check if you have ECDT by extracting ACPI
// with Clover (F4) and checking for ECDT.aml in EFI/Clover/ACPI/origin.
DefinitionBlock("", "SSDT", 2, "hack", "_EC", 0)
{
    Device(_SB.EC)
    {
        Name(_HID, "EC000000")
    }
}
