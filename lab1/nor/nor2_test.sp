* Default supply nodes 
.global vdd
.global gnd

* Set Vdd to 1.8V, GND to 0V
vpwr0 vdd 0 dc 1.8v
vpwr1 gnd 0 dc 0.0v

* include nfet and pfet models
.inc /usr/local/cad/conf/sky130l/models.sp

* include circuit model
.inc nor2.spice

* set the voltage of "in" to be a piecewise linear  (PWL)
* curve. The rest of the parameters are (time,voltage) pairs. 
vtst1 in1 0 PWL 0 0 1.5n 0 2n 1.8 3.5n 1.8 4n 0 5.5n 0 6n 1.8 8n 1.8
vtst2 in2 0 PWL 0 0 3.5n 0 4n 1.8 6n 1.8 8n 1.8

* Save the output in "gnuplot" friendly format
* Print out the voltages for in and out
* You can also say v(*) for all the voltages
*
.print tran file=test.plot format=gnuplot v(in1) v(in2) v(out)

* Run a transient simulation with 1ps timestep
* for 50 nanoseconds
*
.tran 1p 25n

.end
