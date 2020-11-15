// sakoula Thu Oct 22 18:41:57 EEST 2020
// Fixing Trackpads (SSDT-GPI0/XOSI)
// https://dortania.github.io/Getting-Started-With-ACPI/Laptops/trackpad.html
// This SSDT is used to force enable our GPI0 for VoodooI2C to connect onto.
// With most modern laptop DSDTs, there's a variable called GPEN or GPHD
// which are used for setting the status of the GPI0 device. For us, we
// want to enable the device.
// Source: https://github.com/daliansky/OC-little
DefinitionBlock("", "SSDT", 2, "DRTNIA", "GPI0", 0)
{
    External(GPEN, FieldUnitObj)
    External(SBRG, FieldUnitObj)

    Scope (\)
    {
        If (_OSI ("Darwin"))
        {
            GPEN = One
            SBRG = One
        }
        Else
        {

        }
    }
}
