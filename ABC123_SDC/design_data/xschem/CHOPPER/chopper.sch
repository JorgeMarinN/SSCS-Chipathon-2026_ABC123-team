v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 810 1030 810 1050 {lab=vin_n}
N 810 1080 1010 1080 {lab=VSS}
N 1010 1030 1010 1050 {lab=vin_n}
N 1180 1030 1180 1050 {lab=vin_p}
N 1180 1030 1180 1050 {lab=vin_p}
N 1420 1030 1420 1050 {lab=vin_p}
N 810 1000 810 1030 {lab=vin_n}
N 810 1000 1010 1000 {lab=vin_n}
N 1010 1000 1010 1030 {lab=vin_n}
N 1050 1080 1140 1080 {lab=chopper2}
N 1180 1110 1180 1170 {lab=vin_nn}
N 810 1170 1180 1170 {lab=vin_nn}
N 810 1110 810 1170 {lab=vin_nn}
N 1420 1110 1420 1210 {lab=vin_pp}
N 1010 1210 1420 1210 {lab=vin_pp}
N 1010 1110 1010 1210 {lab=vin_pp}
N 810 1170 810 1250 {lab=vin_nn}
N 810 940 810 1000 {lab=vin_n}
N 1420 1210 1420 1250 {lab=vin_pp}
N 1180 1000 1180 1030 {lab=vin_p}
N 1180 1000 1420 1000 {lab=vin_p}
N 1420 1000 1420 1030 {lab=vin_p}
N 1460 1080 1510 1080 {lab=chopper1}
N 720 1080 770 1080 {lab=chopper1}
N 1420 950 1420 1000 {lab=vin_p}
N 1180 1080 1420 1080 {lab=VSS}
C {symbols/nfet_03v3.sym} 790 1080 0 0 {name=M2
L=0.28u
W=6u
nf=1
m=10
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {lab_pin.sym} 810 1230 0 0 {name=p1 sig_type=std_logic lab=vin_nn
}
C {lab_pin.sym} 810 940 0 0 {name=p2 sig_type=std_logic lab=vin_n
}
C {lab_pin.sym} 1090 1080 1 0 {name=p3 sig_type=std_logic lab=chopper2
}
C {lab_pin.sym} 1420 1250 0 0 {name=p4 sig_type=std_logic lab=vin_pp
}
C {lab_pin.sym} 720 1080 1 0 {name=p6 sig_type=std_logic lab=chopper1}
C {lab_pin.sym} 1510 1080 1 0 {name=p5 sig_type=std_logic lab=chopper1}
C {lab_pin.sym} 1420 950 0 0 {name=p7 sig_type=std_logic lab=vin_p
}
C {lab_pin.sym} 900 1080 1 0 {name=p8 sig_type=std_logic lab=VSS
}
C {lab_pin.sym} 1290 1080 1 0 {name=p9 sig_type=std_logic lab=VSS
}
C {ipin.sym} 1760 990 0 0 {name=p11 lab=vin_n
}
C {ipin.sym} 1740 1050 0 0 {name=p13 lab=vin_p
}
C {iopin.sym} 1710 1130 0 0 {name=p15 lab=VSS
}
C {ipin.sym} 1720 1190 0 0 {name=p17 lab=chopper1
}
C {ipin.sym} 1720 1240 0 0 {name=p19 lab=chopper2
}
C {opin.sym} 1610 1310 0 0 {name=p20 lab=vin_nn}
C {opin.sym} 1610 1350 0 0 {name=p21 lab=vin_pp}
C {symbols/nfet_03v3.sym} 1030 1080 0 1 {name=M1
L=0.28u
W=6u
nf=1
m=10
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 1160 1080 0 0 {name=M3
L=0.28u
W=6u
nf=1
m=10
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 1440 1080 0 1 {name=M4
L=0.28u
W=6u
nf=1
m=10
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
