// Maintained by: sakoula
// updated 20181228
// USB power injection via USBX device
// https://www.tonymacx86.com/threads/guide-usb-power-property-injection-for-sierra-and-later.222266/
// and injector for the USBInjectAll via UIAC
//

DefinitionBlock("", "SSDT", 2, "hack", "_UIAC", 0)
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

    // sakoula keep all of them. I tried to delete some of them and I end up not being able to go to sleep
    Device (UIAC)
    {
        Name (_HID, "UIA00000")  // _HID: Hardware ID

        // Common port connector types are USB2 = 0, USB3 = 3, internal = 255.
        // USB type C ports can be either 9 or 10, which depends on how the hardware deals with the two possible orientations of a USB type C device/cable.
        // If a USB-C uses the same SSxx in both orientations, then it has an internal switch (UsbConnector=9).
        // If a USB-C uses a different SSxx in each orientation, then it has no switch (UsbConnector=10).
        // HSxx ports that are connected to a USB3 port should be marked UsbConnector=3, not UsbConnector=0.
        // sakoula: since JahStories had 4 more devices I assume that USB-C port use different SSxx in each oritentation, and it has no switch (UsbConnector=10)
        Name (RMCF, Package (0x02)
        {

            "8086_9d2f",
            Package (0x04)
            {
                "port-count", Buffer() { 0x10, 0x00, 0x00, 0x00 },
                "ports",
                Package ()
                {
                    // USB2 right
                    "HS01", Package ()
                    {
                        "UsbConnector", 0x03,
                        "port", Buffer() { 0x01, 0x00, 0x00, 0x00 }
                    },

                    // not found from 2.1.JahStories perhaps typec? or hub?
                    "HS02", Package ()
                    {
                        //"UsbConnector", 0x03,
                        "UsbConnector", 0x10,
                        "port", Buffer() { 0x02, 0x00, 0x00, 0x00 }
                    },

                    // not found from 2.1.JahStories perhaps typec? or hub?
                    "HS03", Package ()
                    {
                        //"UsbConnector", 0x03,
                        "UsbConnector", 0x10,
                        "port", Buffer() { 0x03, 0x00, 0x00, 0x00 }
                    },

                    // USB2 left
                    "HS04", Package ()
                    {
                        "UsbConnector", 0x03,
                        "port", Buffer() { 0x04, 0x00, 0x00, 0x00 }
                    },

                    // Internal WebCam
                    "HS05", Package ()
                    {
                        "UsbConnector", 0xFF,
                        "port", Buffer() { 0x05, 0x00, 0x00, 0x00 }
                    },

                    // not found from 2.1.JahStories perhaps typec? or hub?
                    "HS06", Package ()
                    {
                        "UsbConnector", 0x03,
                        "port", Buffer() { 0x06, 0x00, 0x00, 0x00 }
                    },

                    // Internal BlueTooth
                    "HS07", Package ()
                    {
                        "UsbConnector", 0xFF,
                        "port", Buffer() { 0x07, 0x00, 0x00, 0x00 }
                    },

                    // USB3 right
                    "SS01", Package ()
                    {
                        "UsbConnector", 0x03,
                        "port", Buffer() { 0x0D, 0x00, 0x00, 0x00 }
                    },

                    // not found from 2.1.JahStories perhaps typec? or hub?
                    "SS02", Package ()
                    {
                        //"UsbConnector", 0x03,
                        "UsbConnector", 0x10,
                        "port", Buffer() { 0x0E, 0x00, 0x00, 0x00 }
                    },

                    // not found from 2.1.JahStories perhaps typec? or hub?
                    "SS03", Package ()
                    {
                        //"UsbConnector", 0x03,
                        "UsbConnector", 0x10,
                        "port", Buffer() { 0x0F, 0x00, 0x00, 0x00 }
                    },

                    // USB3 left
                    "SS04", Package ()
                    {
                        "UsbConnector", 0x03,
                        "port", Buffer() { 0x10, 0x00, 0x00, 0x00 }
                    }
                }
            }
        })
    }
}

