xload init_rect/_0_0std_0_0cells_0_0NAND2X2
box 22 12 28 32
paint ndiffusion
box 23 13 23 13
label "Y" right ndiffusion
box 22 48 28 63
paint pdiffusion
box 23 49 23 49
label "Vdd" right pdiffusion
box 20 9 22 12
paint polysilicon
box 20 12 22 32
paint ntransistor
box 20 32 22 35
paint polysilicon
box 21 33 21 33
label "B" right polysilicon
box 20 45 22 48
paint polysilicon
box 21 46 21 46
label "B" right polysilicon
box 20 48 22 63
paint ptransistor
box 20 63 22 66
paint polysilicon
box 14 12 20 32
paint ndiffusion
box 14 48 20 63
paint pdiffusion
box 15 49 15 49
label "Y" right pdiffusion
box 12 9 14 12
paint polysilicon
box 12 12 14 32
paint ntransistor
box 12 32 14 35
paint polysilicon
box 13 33 13 33
label "A" right polysilicon
box 12 45 14 48
paint polysilicon
box 13 46 13 46
label "A" right polysilicon
box 12 48 14 63
paint ptransistor
box 12 63 14 66
paint polysilicon
box 6 12 12 32
paint ndiffusion
box 7 13 7 13
label "GND" right ndiffusion
box 6 48 12 63
paint pdiffusion
box 7 49 7 49
label "Vdd" right pdiffusion
box 24 67 27 70
paint m1
box 25 68 25 68
label "GND" right m1
port class input
port make
box 18 67 21 70
paint m1
box 19 68 19 68
label "Vdd" right m1
port class input
port make
box 12 67 15 70
paint m1
box 13 68 13 68
label "B" right m1
port class input
port make
box 6 10 9 13
paint m1
box 7 11 7 11
label "Y" right m1
port class output
port make
box 6 67 9 70
paint m1
box 7 68 7 68
label "A" right m1
port class input
port make
proc lcell { x } { load "_0_0cell_0_0g${x}x0" }
