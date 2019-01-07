/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 *
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-SLEEP.aml, Thu Aug  9 09:36:48 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000008D (141)
 *     Revision         0x01
 *     Checksum         0xC0
 *     OEM ID           "Pike"
 *     OEM Table ID     "MISC"
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20160422 (538313762)
 */

// check this: https://www.tonymacx86.com/threads/how-to-make-a-ssdt-for-hd530-sleep-wake-problem-with-pikes-code.212261/
// https://pikeralpha.wordpress.com/2017/01/12/debugging-sleep-issues/
DefinitionBlock ("", "SSDT", 1, "Pike", "MISC", 0x00003000)
{
    External (_SB_.PCI0, DeviceObj)    // (from opcode)

    Scope (\_SB)
    {
        Method (LPS0, 0, NotSerialized)
        {
            Store ("Method \\_SB._LPS0 Called", Debug)
            Return (One)
        }
    }

    Scope (\_GPE)
    {
        Method (LXEN, 0, NotSerialized)
        {
            Store ("Method \\_GPE.LXEN Called", Debug)
            Return (One)
        }
    }
}

