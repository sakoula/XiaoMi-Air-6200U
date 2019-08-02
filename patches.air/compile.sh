# DSDT.comments.dsl
# DSDT.dsl
# ../../bin/iasl -ve DSDT.dsl

# this is the original DSDT.dsl from clover
# ../../bin/iasl -p DSDT -ve DSDT.original.dsl
# this is the DSDT.dsl with my edits
../../bin/iasl -p DSDT -ve DSDT.edited.dsl
# this are the edits of johnnync13 fot I2C support
# ../../bin/iasl -p DSDT -ve DSDT.johnnync13.dsl
# ../../bin/iasl -p SSDT-PNP0C14 -ve SSDT-PNP0C14.dsl
# ../../bin/iasl -p SSDT-DDGPU -ve SSDT-DDGPU.dsl
../../bin/iasl -p SSDT-XOSI -ve SSDT-XOSI.dsl
../../bin/iasl -p SSDT-RMNE -ve SSDT-RMNE.dsl
# ../../bin/iasl -p SSDT-PXSX -ve SSDT-PXSX.dsl
../../bin/iasl -p SSDT-SMBUS -ve SSDT-SMBUS.dsl
# ../../bin/iasl -p SSDT-USBX -ve SSDT-USBX.dsl
../../bin/iasl -p SSDT-RMCF -ve SSDT-RMCF.dsl
../../bin/iasl -p SSDT-PTSWAK -ve SSDT-PTSWAK.dsl
# SSDT-PTSWAK.edited trying to fix shutdown
# ../../bin/iasl -p SSDT-PTSWAK -ve SSDT-PTSWAK.edited.dsl
../../bin/iasl -p SSDT-GPRW -ve SSDT-GPRW.dsl
# ../../bin/iasl -p SSDT-PNLF -ve SSDT-PNLF.dsl
../../bin/iasl -p SSDT-DMAC -ve SSDT-DMAC.dsl
../../bin/iasl -p SSDT-HPET -ve SSDT-HPET.dsl
../../bin/iasl -p SSDT-MEM2 -ve SSDT-MEM2.dsl
../../bin/iasl -p SSDT-PMCR -ve SSDT-PMCR.dsl
../../bin/iasl -p SSDT-LPC -ve SSDT-LPC.dsl
../../bin/iasl -p SSDT-BCKS -ve SSDT-BCKS.dsl
# only if you need debug with ACPIDebug.kext
# ../../bin/iasl -p SSDT-RMDT -ve SSDT-RMDT.dsl

# brightness keys patch based on the DSL edits of 2.1.JahStories
#../../bin/iasl -p SSDT-BKEY -ve SSDT-BKEY.dsl
# ../../bin/iasl -p SSDT-ALS0 -ve SSDT-ALS0.dsl
# ../../bin/iasl -p SSDT-SATA -ve SSDT-SATA.dsl
# ../../bin/iasl -p SSDT-PCIList -ve SSDT-PCIList.dsl
# ../../bin/iasl -p SSDT-XHC -ve SSDT-XHC.dsl
# ../../bin/iasl -p SSDT-USBX -ve SSDT-UIAC.dsl
# ../../bin/iasl -p SSDT-EC -ve SSDT-EC.dsl


