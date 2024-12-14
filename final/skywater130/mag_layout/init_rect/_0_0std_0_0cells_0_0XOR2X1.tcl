xload init_rect/_0_0std_0_0cells_0_0XOR2X1
box 22 10 27 16
paint ndiffusion
box 23 11 23 11
label "_A" right ndiffusion
box 22 23 27 31
paint pdiffusion
box 23 24 23 24
label "_A" right pdiffusion
box 20 8 22 10
paint polysilicon
box 20 10 22 16
paint ntransistor
box 20 16 22 18
paint polysilicon
box 21 17 21 17
label "A" right polysilicon
box 20 21 22 23
paint polysilicon
box 21 22 21 22
label "A" right polysilicon
box 20 23 22 31
paint ptransistor
box 20 31 22 33
paint polysilicon
box 15 10 20 16
paint ndiffusion
box 16 11 16 11
label "GND" right ndiffusion
box 15 23 20 31
paint pdiffusion
box 16 24 16 24
label "Vdd" right pdiffusion
box 13 8 15 10
paint polysilicon
box 13 10 15 16
paint ntransistor
box 13 16 15 18
paint polysilicon
box 14 17 14 17
label "B" right polysilicon
box 13 21 15 23
paint polysilicon
box 14 22 14 22
label "B" right polysilicon
box 13 23 15 31
paint ptransistor
box 13 31 15 33
paint polysilicon
box 8 10 13 16
paint ndiffusion
box 9 11 9 11
label "_B" right ndiffusion
box 8 23 13 31
paint pdiffusion
box 9 24 9 24
label "_B" right pdiffusion
box 47 6 52 16
paint ndiffusion
box 48 7 48 7
label "#9" right ndiffusion
box 47 23 52 38
paint pdiffusion
box 48 24 48 24
label "#7" right pdiffusion
box 45 4 47 6
paint polysilicon
box 45 6 47 16
paint ntransistor
box 45 16 47 18
paint polysilicon
box 46 17 46 17
label "_A" right polysilicon
box 45 21 47 23
paint polysilicon
box 46 22 46 22
label "_A" right polysilicon
box 45 23 47 38
paint ptransistor
box 45 38 47 40
paint polysilicon
box 40 6 45 16
paint ndiffusion
box 41 7 41 7
label "Y" right ndiffusion
box 40 23 45 38
paint pdiffusion
box 41 24 41 24
label "Y" right pdiffusion
box 38 4 40 6
paint polysilicon
box 38 6 40 16
paint ntransistor
box 38 16 40 18
paint polysilicon
box 39 17 39 17
label "A" right polysilicon
box 38 21 40 23
paint polysilicon
box 39 22 39 22
label "A" right polysilicon
box 38 23 40 38
paint ptransistor
box 38 38 40 40
paint polysilicon
box 33 6 38 16
paint ndiffusion
box 34 7 34 7
label "#10" right ndiffusion
box 33 23 38 38
paint pdiffusion
box 34 24 34 24
label "#8" right pdiffusion
box 72 6 77 16
paint ndiffusion
box 73 7 73 7
label "#9" right ndiffusion
box 72 23 77 38
paint pdiffusion
box 73 24 73 24
label "#8" right pdiffusion
box 70 4 72 6
paint polysilicon
box 70 6 72 16
paint ntransistor
box 70 16 72 18
paint polysilicon
box 71 17 71 17
label "_B" right polysilicon
box 70 21 72 23
paint polysilicon
box 71 22 71 22
label "_B" right polysilicon
box 70 23 72 38
paint ptransistor
box 70 38 72 40
paint polysilicon
box 65 6 70 16
paint ndiffusion
box 66 7 66 7
label "GND" right ndiffusion
box 65 23 70 38
paint pdiffusion
box 66 24 66 24
label "Vdd" right pdiffusion
box 63 4 65 6
paint polysilicon
box 63 6 65 16
paint ntransistor
box 63 16 65 18
paint polysilicon
box 64 17 64 17
label "B" right polysilicon
box 63 21 65 23
paint polysilicon
box 64 22 64 22
label "B" right polysilicon
box 63 23 65 38
paint ptransistor
box 63 38 65 40
paint polysilicon
box 58 6 63 16
paint ndiffusion
box 59 7 59 7
label "#10" right ndiffusion
box 58 23 63 38
paint pdiffusion
box 59 24 59 24
label "#7" right pdiffusion
box 80 40 84 44
paint m1
box 81 41 81 41
label "GND" right m1
port class input
port make
box 56 40 60 44
paint m1
box 57 41 57 41
label "Vdd" right m1
port class input
port make
box 32 40 36 44
paint m1
box 33 41 33 41
label "B" right m1
port class input
port make
box 8 4 12 8
paint m1
box 9 5 9 5
label "Y" right m1
port class output
port make
box 8 40 12 44
paint m1
box 9 41 9 41
label "A" right m1
port class input
port make
proc lcell { x } { load "_0_0cell_0_0g${x}x0" }
