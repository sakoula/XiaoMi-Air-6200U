// USB power properties via USBX device
DefinitionBlock("", "SSDT", 2, "hack", "USBX", 0)
{
    Device(_SB.USBX)
    {
        Name(_ADR, 0)
        Method (_DSM, 4)
        {
            If (!Arg2) { Return (Buffer() { 0x03 } ) }
            Return (Package()
            {
                // these values from iMac17,1
                // which are the same with the values found in JahStories DSDT
                "kUSBSleepPortCurrentLimit", 2100,
                "kUSBSleepPowerSupply", 5100,
                "kUSBWakePortCurrentLimit", 2100,
                "kUSBWakePowerSupply", 5100,
            })
        }
    }

    // sakoula keep all of them. I tried to delete some of them and I end up not being able to go to sleep
    Device (UIAC)
    {
        Name (_HID, "UIA00000")  // _HID: Hardware ID

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
                        "UsbConnector", 0x03,
                        "port", Buffer() { 0x02, 0x00, 0x00, 0x00 }
                    },

                    // not found from 2.1.JahStories perhaps typec? or hub?
                    "HS03", Package ()
                    {
                        "UsbConnector", 0x03,
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
                        "UsbConnector", 0x03,
                        "port", Buffer() { 0x0E, 0x00, 0x00, 0x00 }
                    },

                    // not found from 2.1.JahStories perhaps typec? or hub?
                    "SS03", Package ()
                    {
                        "UsbConnector", 0x03,
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

