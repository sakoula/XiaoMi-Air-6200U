// sakoula Thu Oct 22 18:41:57 EEST 2020
// Fixing Shutdown/Restart
// https://dortania.github.io/OpenCore-Post-Install/usb/misc/shutdown.html
// So an odd quirk you may run into with macOS is that when you shutdown,
// your PC may instead restart itself. This is actually due to a missing S5
// call that powers down the controller. Of course Windows and Linux implement
// hacks to get around this but macOS has no such fixes, instead we need to
// do the dirty work and fix their ACPI writing. Don't worry, this won't
// harm other OSes.
// requires _PTS to ZPTS Patch

/* Powers down the USB controller which is needed for proper shutdown.
 * When done incorrectly, macOS will not power down USB as it needs an
 * explicit call for S5 for proper shotdown procedure.
 * Do note this SSDT requires an ACPI hot patch for _PTS to ZPTS as
 * we're rerouting the old calls.
 * Source for SSDT: Rehabman
 */

DefinitionBlock ("", "SSDT", 2, "Slav", "ZPTS", 0x00000000)
{
    External (_SB_.PCI0.XHC_.PMEE, FieldUnitObj)
    External (ZPTS, MethodObj)    // 1 Arguments

    Method (_PTS, 1, NotSerialized)  // _PTS: Prepare To Sleep
    {
        ZPTS (Arg0)
        If ((0x05 == Arg0))
        {
            \_SB.PCI0.XHC.PMEE = Zero
        }
    }
}
