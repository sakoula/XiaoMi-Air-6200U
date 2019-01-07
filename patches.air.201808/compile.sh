# DSDT.JahStories.mostlycleaned.workingbrightness.startfromthis.dsl
# DSDT.comments.dsl
# DSDT.dsl
# ../bin/iasl -ve DSDT.dsl

# SSDT-ALS0.from.JahStories.dsl
../bin/iasl -p SSDT-ALS0 -ve SSDT-ALS0.from.rehabman.dsl

# ../bin/iasl -ve SSDT-BKEY.dsl
../bin/iasl -p SSDT-BKEY -ve SSDT-BKEY.debug.dsl

# ../bin/iasl -ve SSDT-DDGPU.dsl
../bin/iasl -p SSDT-DDGPU -ve SSDT-DDGPU.debug.dsl

../bin/iasl -ve SSDT-EC.dsl

../bin/iasl -ve SSDT-GPRW.dsl

../bin/iasl -ve SSDT-LPC.dsl

# do not add PCIList
# ../bin/iasl -ve SSDT-PCIList.dsl

../bin/iasl -ve SSDT-PNLF.dsl
# ../bin/iasl -p SSDT-PNLF -ve SSDT-PNLF.from.JahStories.dsl

# ../bin/iasl -ve SSDT-PSTWAK.dsl
../bin/iasl -p SSDT-PSTWAK -ve SSDT-PSTWAK.debug.dsl

../bin/iasl -ve SSDT-RMCF.dsl

../bin/iasl -ve SSDT-RMDT.dsl

../bin/iasl -ve SSDT-RMNE.dsl

../bin/iasl -ve SSDT-SATA.dsl

# ../bin/iasl -p SSDT-SLEEP -ve SSDT-SLEEP.from.JahStories.dsl

../bin/iasl -ve SSDT-SMBUS.dsl

../bin/iasl -ve SSDT-USB.dsl

../bin/iasl -ve SSDT-XHC.dsl

../bin/iasl -ve SSDT-XOSI.dsl
