v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
N -100 -70 -60 -70 { lab=VIN}
N -100 -20 -100 40 { lab=VIN}
N -100 40 -60 40 { lab=VIN}
N -20 -20 -20 10 { lab=VOUT}
N -20 -120 -20 -100 { lab=VDD}
N -160 -20 -100 -20 { lab=VIN}
N -20 -70 10 -70 { lab=VDD}
N 10 -120 10 -70 { lab=VDD}
N -20 -120 10 -120 { lab=VDD}
N -20 40 10 40 { lab=VSS}
N 10 40 10 90 { lab=VSS}
N -20 90 10 90 { lab=VSS}
N -20 70 -20 90 { lab=VSS}
N -20 90 -20 120 { lab=VSS}
N -20 -20 40 -20 { lab=VOUT}
N -100 -70 -100 -20 { lab=VIN}
N -20 -150 -20 -120 { lab=VDD}
N -20 -40 -20 -20 { lab=VOUT}
C {devices/ipin.sym} -160 -20 0 0 {name=p1 lab=VIN}
C {devices/iopin.sym} -20 -150 3 0 {name=p2 lab=VDD}
C {devices/iopin.sym} -20 120 1 0 {name=p4 lab=VSS}
C {devices/opin.sym} 40 -20 0 0 {name=p5 lab=VOUT}
C {symbols/pfet_03v3.sym} -40 -70 0 0 {name=M1
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
C {symbols/nfet_03v3.sym} -40 40 0 0 {name=M2
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
