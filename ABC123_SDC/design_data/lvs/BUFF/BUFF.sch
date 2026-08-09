v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
N -140 -60 -100 -60 { lab=VIN}
N -140 -10 -140 50 { lab=VIN}
N -140 50 -100 50 { lab=VIN}
N -60 -10 -60 20 { lab=MID_BUFF}
N -200 -10 -140 -10 { lab=VIN}
N -60 -60 -30 -60 { lab=VDD}
N -30 -110 -30 -60 { lab=VDD}
N -60 50 -30 50 { lab=VSS}
N -30 50 -30 100 { lab=VSS}
N -60 100 -30 100 { lab=VSS}
N -60 80 -60 100 { lab=VSS}
N 50 100 50 130 { lab=VSS}
N -60 -10 60 -10 { lab=MID_BUFF}
N -140 -60 -140 -10 { lab=VIN}
N 50 -160 50 -110 { lab=VDD}
N -60 -30 -60 -10 { lab=MID_BUFF}
N 60 -60 100 -60 { lab=MID_BUFF}
N 60 -10 60 50 { lab=MID_BUFF}
N 60 50 100 50 { lab=MID_BUFF}
N 140 -10 140 20 { lab=VOUT}
N 140 -110 140 -90 { lab=VDD}
N 140 -60 170 -60 { lab=VDD}
N 170 -110 170 -60 { lab=VDD}
N 140 -110 170 -110 { lab=VDD}
N 140 50 170 50 { lab=VSS}
N 170 50 170 100 { lab=VSS}
N 140 100 170 100 { lab=VSS}
N 140 80 140 100 { lab=VSS}
N 140 -10 200 -10 { lab=VOUT}
N 60 -60 60 -10 { lab=MID_BUFF}
N 140 -30 140 -10 { lab=VOUT}
N 50 100 140 100 {
lab=VSS}
N 50 -110 140 -110 {
lab=VDD}
N -60 -110 -60 -90 {
lab=VDD}
N -60 -110 -30 -110 {
lab=VDD}
N -30 -110 50 -110 {
lab=VDD}
N -30 100 50 100 {
lab=VSS}
N -70 -60 -60 -60 {lab=VDD}
C {devices/ipin.sym} -200 -10 0 0 {name=p1 lab=VIN}
C {devices/iopin.sym} 50 -160 3 0 {name=p2 lab=VDD}
C {devices/iopin.sym} 50 130 1 0 {name=p4 lab=VSS}
C {devices/opin.sym} 200 -10 0 0 {name=p5 lab=VOUT}
C {devices/lab_pin.sym} 40 -10 3 0 {name=p3 lab=MID_BUFF}
C {symbols/pfet_03v3.sym} -80 -60 0 0 {name=M1
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
C {symbols/nfet_03v3.sym} -80 50 0 0 {name=M2
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
C {symbols/pfet_03v3.sym} 120 -60 0 0 {name=M3
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
C {symbols/nfet_03v3.sym} 120 50 0 0 {name=M4
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
