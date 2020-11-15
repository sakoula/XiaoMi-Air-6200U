// sakoula Thu Oct 22 18:41:57 EEST 2020
// Fixing Trackpads
// https://voodooi2c.github.io/#GPIO%20Pinning/GPIO%20Pinning
// use this in order to see I2C device in ioreg
// based on
// https://github.com/daliansky/XiaoMi-Pro-Hackintosh/blob/master/Changelog.md
// https://github.com/daliansky/XiaoMi-Pro-Hackintosh/issues/365
// Does not see to work November 2020, the device is not shown in IOREG
DefinitionBlock ("", "SSDT", 2, "hack", "_TPD0", 0x00000000)
{
    External (_SB_.PCI0.I2C1.TPD0, DeviceObj)

    Scope (_SB.PCI0.I2C1.TPD0)
    {
        If (_OSI ("Darwin"))
        {
            Name (OSYS, 0x07DC)
        }
    }
}

