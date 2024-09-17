* Default supply nodes 
.global vdd
.global gnd

* Set Vdd to 1.8V, GND to 0V
vpwr0 vdd 0 dc 1.8v
vpwr1 gnd 0 dc 0.0v

* include nfet and pfet models
.inc /usr/local/cad/conf/sky130l/models.sp

* include circuit model
.inc or4.spice

* set the voltage of "in" to be a piecewise linear  (PWL)
* curve. The rest of the parameters are (time,voltage) pairs. 
vtst00 in00 0 PWL 0 0 17.5n 0 18n 1.8
vtst01 in01 0 PWL 0 0 11.5n 0 12n 1.8
vtst10 in10 0 PWL 0 0 5.5n 0 6n 1.8
vtst11 in11 0 PWL 0 0 2.5n 0 3n 1.8 8.5n 01.8 9n 0 14.5n 0 15n 1.8 

* Save the output in "gnuplot" friendly format
* Print out the voltages for in and out
* You can also say v(*) for all the voltages
*
.print tran file=or4.plot format=gnuplot v(in00) v(in01) v(in10) v(in11) v(out)

* Run a transient simulation with 1ps timestep
* for 50 nanoseconds
*
.tran 1p 21n

.end
