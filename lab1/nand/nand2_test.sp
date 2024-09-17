* Default supply nodes 
.global vdd
.global gnd

* Set Vdd to 1.8V, GND to 0V
vpwr0 vdd 0 dc 1.8v
vpwr1 gnd 0 dc 0.0v

* include nfet and pfet models
.inc /usr/local/cad/conf/sky130l/models.sp

* include circuit model
.inc nand2.spice

* set the voltage of "in" to be a piecewise linear  (PWL)
* curve. The rest of the parameters are (time,voltage) pairs. 
vtst0 in0 0 PWL 0 0 4.5n 0 5n 1.8 9.5n 1.8 10n 0 14.5n 0 15n 1.8
vtst1 in1 0 PWL 0 0 9.5n 0 10n 1.8

* Save the output in "gnuplot" friendly format
* Print out the voltages for in and out
* You can also say v(*) for all the voltages
*
.print tran file=nand2.plot format=gnuplot v(in0) v(in1) v(out)

* Run a transient simulation with 1ps timestep
* for 50 nanoseconds
*
.tran 1p 25n

.end
