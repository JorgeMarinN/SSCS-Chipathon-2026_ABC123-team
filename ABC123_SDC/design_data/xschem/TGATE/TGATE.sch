v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 70 -20 70 60 { lab=VIN}
N 130 -20 130 60 { lab=VOUT}
N -60 -140 -60 100 { lab=CTR}
N 100 -100 100 -70 { lab=VSS}
N 100 30 100 60 { lab=VDD}
N 20 -20 70 -20 { lab=VIN}
N 130 -20 180 -20 { lab=VOUT}
N -60 -140 100 -140 { lab=CTR}
N -60 100 -40 100 { lab=CTR}
N 70 -100 70 -20 { lab=VIN}
N 130 -100 130 -20 { lab=VOUT}
N -10 40 -10 80 {lab=VDD}
N 20 100 100 100 {lab=#net1}
N -10 120 -10 150 {lab=VSS}
C {devices/lab_pin.sym} 20 -20 0 0 {name=l1 sig_type=std_logic lab=VIN}
C {devices/lab_pin.sym} 180 -20 0 1 {name=l2 sig_type=std_logic lab=VOUT}
C {devices/lab_pin.sym} 100 -70 3 0 {name=l3 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 100 30 1 0 {name=l4 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -10 150 0 0 {name=l5 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -10 40 0 0 {name=l6 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -60 -140 0 0 {name=l7 sig_type=std_logic lab=CTR}
C {devices/ipin.sym} -20 -240 0 0 {name=p1 lab=VIN}
C {devices/iopin.sym} 10 -240 0 0 {name=p2 lab=VDD}
C {devices/iopin.sym} 10 -210 0 0 {name=p3 lab=VSS}
C {devices/ipin.sym} -20 -210 0 0 {name=p4 lab=CTR}
C {devices/opin.sym} 100 -240 0 0 {name=p5 lab=VOUT}
C {symbols/nfet_03v3.sym} 100 -120 1 0 {name=M1
L=0.28u
W=2.4u
*3.74u
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
C {symbols/pfet_03v3.sym} 100 80 3 0 {name=M2
L=0.28u
W=7.2u
*11.22u
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
C {INV/INV.sym} -10 100 0 0 {name=x1}
