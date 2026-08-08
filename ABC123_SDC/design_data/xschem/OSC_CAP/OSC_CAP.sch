v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 10 20 220 20 { lab=BOT}
N -130 -40 -60 -40 { lab=TOP_V}
N 150 -40 220 -40 { lab=TOP_B}
N 10 20 10 60 { lab=BOT}
N -130 -80 -130 -40 { lab=TOP_V}
N 150 -80 150 -40 { lab=TOP_B}
N -200 20 10 20 { lab=BOT}
N -200 -40 -130 -40 { lab=TOP_V}
N 80 -40 150 -40 { lab=TOP_B}
C {devices/iopin.sym} -130 -80 3 0 {name=p1 lab=TOP_V}
C {devices/iopin.sym} 150 -80 3 0 {name=p2 lab=TOP_B}
C {devices/iopin.sym} 10 60 1 0 {name=p3 lab=BOT}
C {symbols/cap_mim_2f0fF.sym} 80 -10 0 0 {name=C2
*W=25e-6
*L=77e-6
W=21.25e-6
L=20e-6
model=cap_mim_2f0fF
spiceprefix=X
m=1}
C {symbols/cap_mim_2f0fF.sym} 220 -10 0 0 {name=C4
*W=25e-6
*L=77e-6
W=21.25e-6
L=20e-6
model=cap_mim_2f0fF
spiceprefix=X
m=1}
C {symbols/cap_mim_2f0fF.sym} -200 -10 0 0 {name=C1
*W=25e-6
*L=77e-6
W=21.25e-6
L=20e-6
model=cap_mim_2f0fF
spiceprefix=X
m=2}
C {symbols/cap_mim_2f0fF.sym} -60 -10 0 0 {name=C3
*W=25e-6
*L=77e-6
W=21.25e-6
L=20e-6
model=cap_mim_2f0fF
spiceprefix=X
m=2}
