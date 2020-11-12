// sakoula Thu Oct 22 18:41:57 EEST 2020
// Fixing Power Management (SSDT-PLUG)
// https://dortania.github.io/Getting-Started-With-ACPI/Universal/plug.html
// The purpose of SSDT-PLUG is to allow the kernel's XCPM(XNU's CPU Power
// Management) to manage our CPU's power management. It's pretty self
// explanatory why you'd want this.

/*
 * XCPM power management compatibility table with Darwin method.
 *
 * Please note that this table is only a sample and may need to be
 * adapted to fit your board's ACPI stack. For instance, both scope
 * and device name may vary (e.g. _SB_.PR00 instead of _PR_.CPU0).
 *
 * While the table contains several examples of CPU paths, you should
 * remove all the ones irrelevant for your board.
 */
DefinitionBlock ("", "SSDT", 2, "ACDT", "CpuPlug", 0x00003000)
{
    External (_PR_.CPU0, ProcessorObj)

    Method (PMPM, 4, NotSerialized) {
       If (LEqual (Arg2, Zero)) {
           Return (Buffer (One) { 0x03 })
       }

       Return (Package (0x02)
       {
           "plugin-type",
           One
       })
    }

    If (CondRefOf (\_PR.CPU0)) {
        If ((ObjectType (\_PR.CPU0) == 0x0C)) {
            Scope (\_PR.CPU0) {
                If (_OSI ("Darwin")) {
                    Method (_DSM, 4, NotSerialized)
                    {
                        Return (PMPM (Arg0, Arg1, Arg2, Arg3))
                    }
                }
            }
        }
    }
}
