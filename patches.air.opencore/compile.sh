../../bin/iasl -p SSDT-PLUG SSDT-PLUG.dsl

../../bin/iasl -p SSDT-EC-USBX SSDT-EC-USBX.dsl

../../bin/iasl -p SSDT-PNLF SSDT-PNLF.dsl

../../bin/iasl -p SSDT-GPI0 SSDT-GPI0.dsl
# This does not seems to work
# ../../bin/iasl -p SSDT-TPD0 SSDT-TPD0.dsl

../../bin/iasl -p SSDT-dGPU-Off SSDT-dGPU-Off.dsl

../../bin/iasl -p SSDT-HPET SSDT-HPET.dsl

../../bin/iasl -p SSDT-SBUS-MCHC SSDT-SBUS-MCHC.dsl

# This is not required if useing native support for wifi
# ../../bin/iasl -p SSDT-RMNE SSDT-RMNE.dsl

../../bin/iasl -p SSDT-BKEY SSDT-BKEY.dsl

../../bin/iasl -p SSDT-GPRW SSDT-GPRW.dsl

../../bin/iasl -p SSDT-USBX SSDT-USBX.dsl

../../bin/iasl -p FixShutdown-USB-SSDT FixShutdown-USB-SSDT.dsl




