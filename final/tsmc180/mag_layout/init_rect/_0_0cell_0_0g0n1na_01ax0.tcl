xload init_rect/_0_0cell_0_0g0n1na_01ax0
box 57 38 63 44
paint pdiffusion
box 58 39 58 39
label "#7" right pdiffusion
box 53 22 57 25
paint polysilicon
box 54 23 54 23
label "out" right polysilicon
box 53 35 57 38
paint polysilicon
box 54 36 54 36
label "out" right polysilicon
box 53 38 57 44
paint ptransistor
box 53 44 57 47
paint polysilicon
box 51 38 53 44
paint pdiffusion
box 57 16 63 22
paint ndiffusion
box 58 17 58 17
label "#7" right ndiffusion
box 47 38 51 50
paint pdiffusion
box 48 39 48 39
label "Vdd" right pdiffusion
box 45 50 47 53
paint polysilicon
box 53 13 57 16
paint polysilicon
box 53 16 57 22
paint ntransistor
box 45 22 47 25
paint polysilicon
box 46 23 46 23
label "in(0)" right polysilicon
box 45 35 47 38
paint polysilicon
box 46 36 46 36
label "in(0)" right polysilicon
box 45 38 47 50
paint ptransistor
box 51 16 53 22
paint ndiffusion
box 41 38 45 50
paint pdiffusion
box 39 50 41 53
paint polysilicon
box 47 12 51 22
paint ndiffusion
box 48 13 48 13
label "GND" right ndiffusion
box 39 22 41 25
paint polysilicon
box 40 23 40 23
label "in(1)" right polysilicon
box 39 35 41 38
paint polysilicon
box 40 36 40 36
label "in(1)" right polysilicon
box 39 38 41 50
paint ptransistor
box 45 9 47 12
paint polysilicon
box 45 12 47 22
paint ntransistor
box 35 38 39 50
paint pdiffusion
box 41 12 45 22
paint ndiffusion
box 31 19 35 22
paint ndiffusion
box 32 20 32 20
label "out" right ndiffusion
box 31 38 35 41
paint pdiffusion
box 32 39 32 39
label "out" right pdiffusion
box 29 41 31 44
paint polysilicon
box 39 9 41 12
paint polysilicon
box 39 12 41 22
paint ntransistor
box 29 16 31 19
paint polysilicon
box 29 19 31 22
paint ntransistor
box 29 22 31 25
paint polysilicon
box 30 23 30 23
label "#7" right polysilicon
box 29 35 31 38
paint polysilicon
box 30 36 30 36
label "#7" right polysilicon
box 29 38 31 41
paint ptransistor
box 35 12 39 22
paint ndiffusion
box 25 19 29 22
paint ndiffusion
box 18 38 29 41
paint pdiffusion
box 12 16 25 19
paint polysilicon
box 12 19 25 22
paint ntransistor
box 12 22 25 25
paint polysilicon
box 13 23 13 23
label "Vdd" right polysilicon
box 12 35 18 38
paint polysilicon
box 13 36 13 36
label "GND" right polysilicon
box 12 38 18 41
paint ptransistor
box 12 41 18 44
paint polysilicon
box 6 19 12 22
paint ndiffusion
box 7 20 7 20
label "GND" right ndiffusion
box 6 38 12 41
paint pdiffusion
box 7 39 7 39
label "Vdd" right pdiffusion
box 60 57 63 60
paint m1
box 61 58 61 58
label "GND" right m1
port class input
port make
box 42 57 45 60
paint m1
box 43 58 43 58
label "Vdd" right m1
port class input
port make
box 24 57 27 60
paint m1
box 25 58 25 58
label "in(1)" right m1
port class input
port make
box 6 10 9 13
paint m1
box 7 11 7 11
label "out" right m1
port class output
port make
box 6 57 9 60
paint m1
box 7 58 7 58
label "in(0)" right m1
port class input
port make
proc lcell { x } { load "_0_0cell_0_0g${x}x0" }
