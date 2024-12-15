xload init_rect/_0_0cell_0_0g0n_0x0
box 14 7 20 12
paint ndiffusion
box 15 8 15 8
label "out" right ndiffusion
box 14 28 20 34
paint pdiffusion
box 15 29 15 29
label "out" right pdiffusion
box 12 4 14 7
paint polysilicon
box 12 7 14 12
paint ntransistor
box 12 12 14 15
paint polysilicon
box 13 13 13 13
label "in(0)" right polysilicon
box 12 25 14 28
paint polysilicon
box 13 26 13 26
label "in(0)" right polysilicon
box 12 28 14 34
paint ptransistor
box 12 34 14 37
paint polysilicon
box 6 7 12 12
paint ndiffusion
box 7 8 7 8
label "GND" right ndiffusion
box 6 28 12 34
paint pdiffusion
box 7 29 7 29
label "Vdd" right pdiffusion
box 18 37 21 40
paint m1
box 19 38 19 38
label "GND" right m1
port class input
port make
box 12 37 15 40
paint m1
box 13 38 13 38
label "Vdd" right m1
port class input
port make
box 6 10 9 13
paint m1
box 7 11 7 11
label "out" right m1
port class output
port make
box 6 37 9 40
paint m1
box 7 38 7 38
label "in(0)" right m1
port class input
port make
proc lcell { x } { load "_0_0cell_0_0g${x}x0" }
