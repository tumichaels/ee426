xload init_rect/_0_0std_0_0cells_0_0NAND2X2
box 22 4 27 24
paint ndiffusion
box 23 5 23 5
label "Y" right ndiffusion
box 22 31 27 46
paint pdiffusion
box 23 32 23 32
label "Vdd" right pdiffusion
box 20 2 22 4
paint polysilicon
box 20 4 22 24
paint ntransistor
box 20 24 22 26
paint polysilicon
box 21 25 21 25
label "B" right polysilicon
box 20 29 22 31
paint polysilicon
box 21 30 21 30
label "B" right polysilicon
box 20 31 22 46
paint ptransistor
box 20 46 22 48
paint polysilicon
box 15 4 20 24
paint ndiffusion
box 15 31 20 46
paint pdiffusion
box 16 32 16 32
label "Y" right pdiffusion
box 13 2 15 4
paint polysilicon
box 13 4 15 24
paint ntransistor
box 13 24 15 26
paint polysilicon
box 14 25 14 25
label "A" right polysilicon
box 13 29 15 31
paint polysilicon
box 14 30 14 30
label "A" right polysilicon
box 13 31 15 46
paint ptransistor
box 13 46 15 48
paint polysilicon
box 8 4 13 24
paint ndiffusion
box 9 5 9 5
label "GND" right ndiffusion
box 8 31 13 46
paint pdiffusion
box 9 32 9 32
label "Vdd" right pdiffusion
box 32 48 36 52
paint m1
box 33 49 33 49
label "GND" right m1
port class input
port make
box 24 48 28 52
paint m1
box 25 49 25 49
label "Vdd" right m1
port class input
port make
box 16 48 20 52
paint m1
box 17 49 17 49
label "B" right m1
port class input
port make
box 8 4 12 8
paint m1
box 9 5 9 5
label "Y" right m1
port class output
port make
box 8 48 12 52
paint m1
box 9 49 9 49
label "A" right m1
port class input
port make
proc lcell { x } { load "_0_0cell_0_0g${x}x0" }
