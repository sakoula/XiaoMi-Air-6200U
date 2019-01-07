    Method (_PTS, 1, NotSerialized)  // _PTS: Prepare To Sleep
    {
        Store (0x99, SMIP)
        Store (Zero, \_SB.PCI0.LPCB.AG3E)
        If (LEqual (Arg0, 0x05))
        {
            Store (Zero, SLPE)
            Sleep (0x10)
        }
        Else
        {
            If (CondRefOf (\_SB.PCI0.RP01.PXSX._ON))
            {
                \_SB.PCI0.RP01.PXSX._ON ()
            }

            Store (Zero, P80D)
            P8XH (Zero, Arg0)
            \_SB.PCI0.LPCB.EC0.ECPS (Arg0)
            If (LEqual (Arg0, One))
            {
                H2OP (0x51)
            }

            If (LEqual (Arg0, 0x03))
            {
                H2OP (0x53)
            }

            If (LEqual (Arg0, 0x04))
            {
                H2OP (0x54)
            }

            ADBG (Concatenate ("_PTS=", ToHexString (Arg0)))
            If (LEqual (TBTS, One))
            {
                If (LAnd (LEqual (FFTB (), One), LEqual (AICS, One)))
                {
                    SXTB ()
                }

                Reset (WFEV)
            }

            If (LEqual (Arg0, 0x03))
            {
                If (CondRefOf (\_PR.DTSE))
                {
                    If (LAnd (\_PR.DTSE, LGreater (TCNT, One)))
                    {
                        TRAP (0x02, 0x1E)
                    }
                }
            }

            If (LEqual (DBGS, Zero)){}
            If (CondRefOf (\_SB.TPM.PTS))
            {
                \_SB.TPM.PTS (Arg0)
            }
        }
    }
