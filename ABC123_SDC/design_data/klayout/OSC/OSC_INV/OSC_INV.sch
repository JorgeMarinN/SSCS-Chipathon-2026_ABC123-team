v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -80 -60 -40 -60 { lab=VIN}
N -80 -10 -80 50 { lab=VIN}
N -80 50 -40 50 { lab=VIN}
N 0 -10 0 20 { lab=VOUT}
N 0 -110 0 -90 { lab=#net1}
N -140 -10 -80 -10 { lab=VIN}
N 0 -60 30 -60 { lab=VDD}
N 0 50 30 50 { lab=VSS}
N 30 50 30 100 { lab=VSS}
N 0 80 0 100 { lab=#net2}
N 0 100 0 130 { lab=#net2}
N 0 -10 60 -10 { lab=VOUT}
N -80 -60 -80 -10 { lab=VIN}
N 0 -140 0 -110 { lab=#net1}
N 0 -30 0 -10 { lab=VOUT}
N 30 100 30 160 {lab=VSS}
N 0 160 30 160 {lab=VSS}
N 30 160 30 190 {lab=VSS}
N -0 190 30 190 {lab=VSS}
N 0 -200 30 -200 {lab=VDD}
N -0 -170 30 -170 {lab=VDD}
N -330 110 -40 110 {lab=#net3}
N -330 110 -330 160 {lab=#net3}
N -290 160 -260 160 {lab=VSS}
N -260 160 -260 190 {lab=VSS}
N -290 190 -260 190 {lab=VSS}
N -40 110 -40 150 {lab=#net3}
N -40 150 -40 160 {lab=#net3}
N 30 -200 30 -60 {lab=VDD}
N -320 -170 -290 -170 {lab=VDD}
N -320 -200 -320 -170 {lab=VDD}
N -320 -200 -290 -200 {lab=VDD}
N -290 -140 -250 -140 {lab=#net4}
N -250 -170 -250 -140 {lab=#net4}
N -290 -140 -290 130 {lab=#net4}
N -440 160 -330 160 {lab=#net3}
N -480 130 -440 130 {lab=#net3}
N -440 130 -440 160 {lab=#net3}
N -480 -170 -450 -170 {lab=VDD}
N -450 -200 -450 -170 {lab=VDD}
N -480 -200 -450 -200 {lab=VDD}
N -480 -140 -480 130 {lab=#net3}
N -510 160 -480 160 {lab=VSS}
N -510 160 -510 190 {lab=VSS}
N -510 190 -480 190 {lab=VSS}
N -480 190 10 190 {lab=VSS}
N -480 -200 10 -200 {lab=VDD}
N -250 -170 -40 -170 {lab=#net4}
C {devices/ipin.sym} -140 -10 0 0 {name=p8 lab=VIN}
C {devices/opin.sym} 60 -10 0 0 {name=p9 lab=VOUT}
C {devices/iopin.sym} 0 -200 3 0 {name=p10 lab=VDD}
C {devices/iopin.sym} 0 190 1 0 {name=p11 lab=VSS}
C {devices/ipin.sym} -520 -170 0 0 {name=p5 lab=Vcont}
C {symbols/nfet_03v3.sym} -20 160 0 0 {name=M4
L=2.5u
W=0.42u
nf=1
m=8
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} -20 -170 0 0 {name=M5
L=2.5u	
W=0.42u
nf=1
m=8
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} -310 160 0 0 {name=M6
L=2.5u
W=0.42u
nf=1
m=4
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} -270 -170 0 1 {name=M7
L=2.5u
W=0.42u
nf=1
m=4
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} -460 160 0 1 {name=M8
L=2.5u
W=0.42u
nf=1
m=4
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} -500 -170 0 0 {name=M9
L=2.5u
W=0.42u
nf=1
m=4
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} -20 -60 0 0 {name=M1
L=2.5u	
W=15.825u
nf=1
m=10
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} -20 50 0 0 {name=M2
L=2.5u
W=6.33u
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
