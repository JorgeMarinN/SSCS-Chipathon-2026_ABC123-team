v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 30 -90 50 -90 { lab=VOUT}
N -150 -200 -150 -120 {
lab=VDD}
N -260 -90 -190 -90 { lab=VIN}
N 10 60 10 90 {lab=VSS}
N -150 -60 -150 90 {lab=VSS}
N -10 -130 -10 -70 {lab=CON_CV}
N 30 -90 30 -70 {lab=VOUT}
N -110 -90 30 -90 {lab=VOUT}
N -150 90 0 90 {lab=VSS}
N 0 90 10 90 {lab=VSS}
C {devices/ipin.sym} -260 -90 0 0 {name=p1 lab=VIN}
C {devices/iopin.sym} -150 -200 0 0 {name=p2 lab=VDD}
C {devices/opin.sym} 50 -90 0 0 {name=p4 lab=VOUT}
C {devices/iopin.sym} -10 -130 3 0 {name=p5 lab=CON_CV}
C {devices/iopin.sym} -60 90 1 0 {name=p6 lab=VSS}
C {devices/ipin.sym} -190 -50 0 0 {name=p3 lab=Vcont}
C {OSC_INV/OSC_INV.sym} -160 -90 0 0 {name=x1}
C {OSC_CAP/OSC_CAP.sym} 10 0 0 0 {name=x2}
