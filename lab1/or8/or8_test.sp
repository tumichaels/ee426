* Default supply nodes 
.global vdd
.global gnd

* Set Vdd to 1.8V, GND to 0V
vpwr0 vdd 0 dc 1.8v
vpwr1 gnd 0 dc 0.0v

* include nfet and pfet models
.inc /usr/local/cad/conf/sky130l/models.sp

* include circuit model
.inc or8.spice

* set the voltage of "in" to be a piecewise linear  (PWL)
* curve. The rest of the parameters are (time,voltage) pairs. 
vtst000 in000 0 PWL 0 0 2.5n 0 3n 1.8
vtst001 in001 0 PWL 0 0 5.5n 0 6n 1.8
vtst010 in010 0 PWL 0 0 8.5n 0 9n 1.8
vtst011 in011 0 PWL 0 0 11.5n 0 12n 1.8
vtst100 in100 0 PWL 0 0 14.5n 0 15n 1.8
vtst101 in101 0 PWL 0 0 17.5n 0 18n 1.8
vtst110 in110 0 PWL 0 0 20.5n 0 21n 1.8
vtst111 in111 0 PWL 0 0 23.5n 0 24n 1.8

* Save the output in "gnuplot" friendly format
* Print out the voltages for in and out
* You can also say v(*) for all the voltages
*
.print tran file=test.plot format=gnuplot v(in000) v(in001) v(in010) v(in011) v(in100) v(in101) v(in110) v(in111) v(out)

* Run a transient simulation with 1ps timestep
* for 50 nanoseconds
*
.tran 1p 25n

.end
