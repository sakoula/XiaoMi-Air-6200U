// sakoula Wed Dec 16 18:41:57 EEST 2020
// Disabled Command and Option remap by default, see SSDT-Swap-CommandOption.dsl for example to re-enable it
// https://github.com/acidanthera/VoodooPS2/releases/tag/2.1.9
// Source: https://github.com/acidanthera/VoodooPS2/blob/master/Docs/ACPI/SSDT-Swap-LeftControlCapsLock.dsl
// change PS2K to PS2M
// This sample shows how to remap the Command and Option.
DefinitionBlock ("", "SSDT", 2, "ACDT", "ps2", 0)
{
    External (_SB_.PCI0.LPCB.PS2M, DeviceObj)

    Name(_SB.PCI0.LPCB.PS2M.RMCF, Package()
    {
        "Keyboard", Package()
        {
            "Swap command and option", ">y",
        }
    })
}
//EOF
