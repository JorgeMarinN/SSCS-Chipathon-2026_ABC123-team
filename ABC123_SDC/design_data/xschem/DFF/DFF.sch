v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -330 -40 -280 -40 {
lab=CLK}
N -410 -180 -280 -180 {
lab=IN}
N -410 -180 -410 100 {
lab=IN}
N -410 100 -280 100 {
lab=IN}
N -240 130 -240 170 {
lab=GND}
N 60 130 60 170 {
lab=GND}
N 270 130 270 170 {
lab=GND}
N 130 170 270 170 {
lab=GND}
N -170 170 60 170 {
lab=GND}
N -240 100 -170 100 {
lab=GND}
N -170 100 -170 170 {
lab=GND}
N -240 170 -170 170 {
lab=GND}
N 60 100 130 100 {
lab=GND}
N 130 100 130 170 {
lab=GND}
N 60 170 130 170 {
lab=GND}
N 340 100 340 170 {
lab=GND}
N 270 170 340 170 {
lab=GND}
N 480 -10 480 30 {
lab=GND}
N 590 30 690 30 {
lab=GND}
N 690 -10 690 30 {
lab=GND}
N 590 30 590 170 {
lab=GND}
N 480 30 590 30 {
lab=GND}
N 340 170 590 170 {
lab=GND}
N 690 -40 750 -40 {
lab=GND}
N 750 -40 750 30 {
lab=GND}
N 690 30 750 30 {
lab=GND}
N 420 -40 420 30 {
lab=GND}
N 420 -40 480 -40 {
lab=GND}
N 420 30 480 30 {
lab=GND}
N 890 -10 890 70 {
lab=NODE4}
N 830 170 890 170 {
lab=GND}
N 890 130 890 170 {
lab=GND}
N 830 100 890 100 {
lab=GND}
N 830 100 830 170 {
lab=GND}
N 590 170 830 170 {
lab=GND}
N 830 -40 890 -40 {
lab=GND}
N 830 -40 830 100 {
lab=GND}
N 930 -40 1030 -40 {
lab=NDIFF}
N 930 100 1030 100 {
lab=CLK}
N -240 -250 -240 -210 {
lab=VDD}
N -180 -250 60 -250 {
lab=VDD}
N 60 -250 60 -210 {
lab=VDD}
N 690 -250 690 -210 {
lab=VDD}
N 480 -250 480 -210 {
lab=VDD}
N 420 -250 480 -250 {
lab=VDD}
N 420 -180 480 -180 {
lab=VDD}
N 420 -250 420 -180 {
lab=VDD}
N 120 -250 420 -250 {
lab=VDD}
N 690 -180 750 -180 {
lab=VDD}
N 750 -250 750 -180 {
lab=VDD}
N 690 -250 750 -250 {
lab=VDD}
N 480 -250 690 -250 {
lab=VDD}
N 60 -180 120 -180 {
lab=VDD}
N 120 -250 120 -180 {
lab=VDD}
N 60 -250 120 -250 {
lab=VDD}
N -240 -180 -180 -180 {
lab=VDD}
N -180 -250 -180 -180 {
lab=VDD}
N -240 -250 -180 -250 {
lab=VDD}
N -240 -40 -180 -40 {
lab=VDD}
N -180 -180 -180 -40 {
lab=VDD}
N 60 -40 120 -40 {
lab=VDD}
N 120 -180 120 -40 {
lab=VDD}
N -240 -150 -240 -70 {
lab=#net1}
N -240 30 -240 70 {
lab=NDIFF}
N -240 30 -80 30 {
lab=NDIFF}
N -240 -10 -240 30 {
lab=NDIFF}
N -80 -180 -80 30 {
lab=NDIFF}
N -80 -180 20 -180 {
lab=NDIFF}
N -80 30 -80 100 {
lab=NDIFF}
N -80 100 20 100 {
lab=NDIFF}
N -30 -40 20 -40 {
lab=CLK}
N 60 -150 60 -70 {
lab=NODE2}
N 60 30 60 70 {
lab=PDIFF}
N 60 30 170 30 {
lab=PDIFF}
N 60 -10 60 30 {
lab=PDIFF}
N 170 -40 170 30 {
lab=PDIFF}
N 170 -40 230 -40 {
lab=PDIFF}
N 180 100 230 100 {
lab=CLK}
N 270 -10 270 70 {
lab=NODE3}
N 480 -110 480 -70 {
lab=ND}
N 270 -110 270 -70 {
lab=ND}
N 480 -140 480 -110 {
lab=ND}
N 690 -80 690 -70 {
lab=D}
N 480 -140 650 -140 {
lab=ND}
N 480 -150 480 -140 {
lab=ND}
N 650 -180 650 -140 {
lab=ND}
N 650 -140 650 -40 {
lab=ND}
N 520 -80 690 -80 {
lab=D}
N 690 -110 690 -80 {
lab=D}
N 520 -180 520 -80 {
lab=D}
N 520 -80 520 -40 {
lab=D}
N 690 -110 890 -110 {
lab=D}
N 690 -150 690 -110 {
lab=D}
N 890 -110 890 -70 {
lab=D}
N 270 -40 340 -40 {
lab=GND}
N 270 -110 480 -110 {
lab=ND}
N 340 -40 340 100 {lab=GND}
N 270 100 340 100 {
lab=GND}
C {devices/ipin.sym} 100 -310 0 0 {name=p1 lab=IN}
C {devices/ipin.sym} 180 -310 0 0 {name=p2 lab=CLK}
C {devices/iopin.sym} 50 -370 0 0 {name=p3 lab=VDD}
C {devices/iopin.sym} 140 -370 0 0 {name=p4 lab=GND}
C {devices/opin.sym} 140 -340 0 0 {name=p5 lab=ND}
C {devices/opin.sym} 60 -340 0 0 {name=p6 lab=D}
C {lab_pin.sym} -410 -40 0 0 {name=p7 sig_type=std_logic lab=IN
}
C {lab_pin.sym} -330 -40 0 0 {name=p8 sig_type=std_logic lab=CLK
}
C {lab_pin.sym} -30 -40 0 0 {name=p9 sig_type=std_logic lab=CLK
W=0.22u}
C {lab_pin.sym} 180 100 0 0 {name=p10 sig_type=std_logic lab=CLK
}
C {lab_pin.sym} 170 -40 1 0 {name=p12 sig_type=std_logic lab=PDIFF
}
C {lab_pin.sym} 270 -110 1 0 {name=p13 sig_type=std_logic lab=ND
}
C {lab_pin.sym} 890 -110 1 0 {name=p14 sig_type=std_logic lab=D
}
C {lab_pin.sym} -240 -250 2 1 {name=p15 sig_type=std_logic lab=VDD

}
C {lab_pin.sym} -240 170 2 1 {name=p16 sig_type=std_logic lab=GND

}
C {lab_pin.sym} 1030 -40 2 0 {name=p17 sig_type=std_logic lab=NDIFF
}
C {lab_pin.sym} 1030 100 0 1 {name=p18 sig_type=std_logic lab=CLK
}
<<<<<<< HEAD
C {lab_pin.sym} -120 30 1 0 {name=p21 sig_type=std_logic lab=NDIFF
=======
C {lab_pin.sym} -130 30 1 0 {name=p21 sig_type=std_logic lab=NDIFF
>>>>>>> origin/main
W=0.22u}
C {lab_pin.sym} 60 -110 2 0 {name=p23 sig_type=std_logic lab=NODE2
W=0.22u}
C {lab_pin.sym} 270 30 2 0 {name=p24 sig_type=std_logic lab=NODE3
W=0.22u}
C {lab_pin.sym} 890 30 2 0 {name=p25 sig_type=std_logic lab=NODE4
W=0.22u}
C {symbols/pfet_03v3.sym} -260 -180 0 0 {name=M3
L=0.28u
W=1.87u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} -260 -40 0 0 {name=M4
L=0.28u
W=1.87u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} -260 100 0 0 {name=M9
L=0.28u
W=1.87u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 40 -180 0 0 {name=M1
L=0.28u
W=1.87u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 40 -40 0 0 {name=M2
L=0.28u
W=1.87u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 670 -180 0 0 {name=M5
L=0.28u
W=1.87u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 500 -180 0 1 {name=M6
L=0.28u
W=1.87u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 40 100 0 0 {name=M7
L=0.28u
W=1.87u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 250 100 0 0 {name=M8
L=0.28u
W=1.87u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 250 -40 0 0 {name=M10
L=0.28u
W=1.87u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 670 -40 0 0 {name=M11
L=0.28u
W=1.87u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 500 -40 0 1 {name=M12
L=0.28u
W=1.87u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 910 -40 0 1 {name=M13
L=0.28u
W=1.87u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 910 100 0 1 {name=M14
L=0.28u
W=1.87u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
