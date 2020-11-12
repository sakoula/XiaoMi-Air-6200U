// sakoula Thu Oct 22 18:41:57 EEST 2020
// GPRW/UPRW/LANC Instant Wake Patch
// https://dortania.github.io/OpenCore-Post-Install/usb/misc/instant-wake.html
// Similar idea to the "Fixing Shutdown/Restart" section, macOS will instant
// wake if either USB or power states change while sleeping. To fix this we
// need to reroute the GPRW/UPRW/LANC calls to a new SSDT, verify you have
// instant wake issues before trying the below.
// it was happening to me:
// pmset -g log | grep -e "Sleep.*due to" -e "Wake.*due to"
// 2020-10-25 20:14:04 +0200 Sleep                 Entering DarkWake state due to 'Software Sleep pid=172':TCPKeepAlive=active Using AC (Charge:91%) 45 secs
// 2020-10-25 20:14:49 +0200 Wake                  DarkWake to FullWake from Invalid [CDNVA] : due to HID Activity Using AC (Charge:91%)
// 2020-10-25 21:02:35 +0200 Sleep                 Entering Sleep state due to 'Software Sleep pid=171':TCPKeepAlive=active Using AC (Charge:100%)
// 2020-10-27 11:09:36 +0200 Sleep                 Entering Sleep state due to 'Software Sleep pid=170':TCPKeepAlive=active Using AC (Charge:88%) 11 secs
// 2020-10-27 11:09:47 +0200 Wake                  Wake from Normal Sleep [CDNVA] : due to GLAN XDCI/HID Activity Using AC (Charge:88%) 65 secs
// 2020-10-27 11:10:52 +0200 Sleep                 Entering Sleep state due to 'Software Sleep pid=170':TCPKeepAlive=active Using AC (Charge:89%) 10 secs
// 2020-10-27 11:11:02 +0200 Wake                  Wake from Normal Sleep [CDNVA] : due to GLAN XDCI/HID Activity Using AC (Charge:89%)

/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200528 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 *
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASLUtDDFM.aml, Sun Oct 25 20:20:51 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000065 (101)
 *     Revision         0x02
 *     Checksum         0x87
 *     OEM ID           "DRTNIA"
 *     OEM Table ID     "GPRW"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20200528 (538969384)
 */
DefinitionBlock ("", "SSDT", 2, "DRTNIA", "GPRW", 0x00000000)
{
    External (XPRW, MethodObj)    // 2 Arguments

    Method (GPRW, 2, NotSerialized)
    {
        If (_OSI ("Darwin"))
        {
            If ((0x6D == Arg0))
            {
                Return (Package (0x02)
                {
                    0x6D,
                    Zero
                })
            }

            If ((0x0D == Arg0))
            {
                Return (Package (0x02)
                {
                    0x0D,
                    Zero
                })
            }
        }

        Return (XPRW (Arg0, Arg1))
    }
}



