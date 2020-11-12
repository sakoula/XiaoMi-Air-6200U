/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-3.aml, Sat Aug 11 00:50:48 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000236 (566)
 *     Revision         0x01
 *     Checksum         0x2D
 *     OEM ID           "XIAOMI"
 *     OEM Table ID     "SKL-ULT"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20161222 (538317346)
 */
DefinitionBlock ("", "SSDT", 1, "XIAOMI", "SKL-ULT", 0x00000000)
{
    /*
     * External declarations were imported from
     * a reference file -- refs.txt
     */

    External (_GPE.VHOV, MethodObj)    // Imported: 3 Arguments
    External (_SB_.GGOV, MethodObj)    // 1 Arguments (from opcode)
    External (_SB_.PCI0.IGPU.DD02._BCM, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.LPCB.H_EC.ECMD, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.LPCB.H_EC.ECRD, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.LPCB.H_EC.ECWT, MethodObj)    // Imported: 2 Arguments
    External (_SB_.PCI0.PEG0.PEGP.SGPO, MethodObj)    // Imported: 2 Arguments
    External (_SB_.PCI0.XHC_.RHUB.TPLD, MethodObj)    // Imported: 2 Arguments
    External (_SB_.SGOV, MethodObj)    // 2 Arguments (from opcode)
    External (ADBG, MethodObj)    // 1 Arguments (from opcode)
    External (EIDF, FieldUnitObj)    // (from opcode)

    Scope (\)
    {
        Device (EIAD)
        {
            Name (_HID, EisaId ("INT3399"))  // _HID: Hardware ID
            Name (_S0W, Zero)  // _S0W: S0 Device Wake State
            Method (_STA, 0, Serialized)  // _STA: Status
            {
                ADBG ("EIAD STA")
                If (LEqual (EIDF, One))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                Name (PECE, Zero)
                Name (PECD, Zero)
                Name (DFUE, Zero)
                Name (DFUD, Zero)
                Name (OLDV, Zero)
                Name (PECV, Zero)
                Name (DFUV, Zero)
                If (LEqual (Arg0, ToUUID ("adf03c1f-ee76-4f23-9def-cdae22a36acf")))
                {
                    If (LEqual (One, ToInteger (Arg1)))
                    {
                        Switch (ToInteger (Arg2))
                        {
                            Case (Zero)
                            {
                                ADBG ("EIAD F:0")
                                Return (Buffer (One)
                                {
                                     0x0F                                           
                                })
                            }
                            Case (One)
                            {
                                ADBG ("EIAD F:1")
                                If (Zero)
                                {
                                    Store (DerefOf (Index (Arg3, Zero)), PECE)
                                    Store (DerefOf (Index (Arg3, One)), PECD)
                                    Store (\_SB.GGOV (Ones), OLDV)
                                    \_SB.SGOV (Ones, PECE)
                                    If (LGreater (PECD, Zero))
                                    {
                                        Sleep (PECD)
                                        \_SB.SGOV (Ones, OLDV)
                                    }
                                }

                                Return (Zero)
                            }
                            Case (0x02)
                            {
                                ADBG ("EIAD F:2")
                                If (Zero)
                                {
                                    Store (DerefOf (Index (Arg3, Zero)), DFUE)
                                    Store (DerefOf (Index (Arg3, One)), DFUD)
                                    Store (\_SB.GGOV (Ones), OLDV)
                                    \_SB.SGOV (Ones, DFUE)
                                    If (LGreater (DFUD, Zero))
                                    {
                                        Sleep (DFUD)
                                        \_SB.SGOV (Ones, OLDV)
                                    }
                                }

                                Return (Zero)
                            }
                            Case (0x03)
                            {
                                ADBG ("EIAD F:3")
                                If (Zero)
                                {
                                    Store (\_SB.GGOV (Ones), DFUV)
                                    Store (One, PECV)
                                }

                                Return (Package (0x02)
                                {
                                    PECV, 
                                    DFUV
                                })
                            }

                        }

                        Return (Zero)
                    }

                    Return (Zero)
                }

                Return (Zero)
            }
        }
    }
}

