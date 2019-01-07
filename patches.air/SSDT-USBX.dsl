// Maintained by: sakoula
// updated 20181228
// USB power injection via USBX device
// https://www.tonymacx86.com/threads/guide-usb-power-property-injection-for-sierra-and-later.222266/
// and injector for the USBInjectAll via UIAC
//

DefinitionBlock("", "SSDT", 2, "hack", "_USBX", 0)
{
    // these values from iMac17,1
    // which are the same with the values found in JahStories DSDT
    //Device(_SB.USBX)
    //{
    //    Name(_ADR, 0)
    //    Method (_DSM, 4)
    //    {
    //        If (!Arg2) { Return (Buffer() { 0x03 } ) }
    //        Return (Package()
    //        {
    //
    //            "kUSBSleepPortCurrentLimit", 2100,
    //            "kUSBSleepPowerSupply", 5100,
    //            "kUSBWakePortCurrentLimit", 2100,
    //            "kUSBWakePowerSupply", 5100,
    //        })
    //    }
    //}

    // USB power properties via USBX device
    // https://www.tonymacx86.com/threads/guide-usb-power-property-injection-for-sierra-and-later.222266/
    Device(_SB.USBX)
    {
        Name(_ADR, 0)
        Method (_DSM, 4)
        {
            If (!Arg2) { Return (Buffer() { 0x03 } ) }
            Return (Package()
            {
                // these values from MacBookPro14,3
                "kUSBSleepPortCurrentLimit", 3000,
                "kUSBWakePortCurrentLimit", 3000,
            })
        }
    }
}

