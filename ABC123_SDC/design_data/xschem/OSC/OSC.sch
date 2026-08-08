v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -320 90 -320 120 { lab=VSS}
N -320 -80 -320 -50 { lab=VDD}
N -400 -20 -370 -20 { lab=SENS_IN}
N -140 -20 -100 -20 {
lab=N1}
N -180 0 -140 0 {
lab=N1}
N -140 -20 -140 0 {
lab=N1}
N -180 -20 -140 -20 {
lab=N1}
N -320 90 -50 90 {
lab=VSS}
N -320 60 -320 90 { lab=VSS}
N -50 60 -50 90 {
lab=VSS}
N -320 -80 -50 -80 {
lab=VDD}
N -320 -100 -320 -80 { lab=VDD}
N -50 -80 -50 -50 {
lab=VDD}
N -140 -100 -140 -20 {
lab=N1}
N 90 -20 130 -20 {
lab=Pre_buff}
N 90 0 130 0 {
lab=Pre_buff}
N 130 -20 130 0 {
lab=Pre_buff}
N 130 -20 190 -20 {
lab=Pre_buff}
N -50 -80 240 -80 {
lab=VDD}
N 240 -80 240 -50 {
lab=VDD}
N -50 90 240 90 {
lab=VSS}
N 240 60 240 90 {
lab=VSS}
N -420 -20 -400 -20 { lab=SENS_IN}
N -400 110 430 110 {
lab=SENS_IN}
N 430 -20 430 110 {
lab=SENS_IN}
N 380 -20 430 -20 {
lab=SENS_IN}
N 380 0 410 0 {
lab=CON_CV}
N 410 -50 410 0 {
lab=CON_CV}
N 130 -100 130 -20 {
lab=Pre_buff}
N 130 -100 260 -100 {
lab=Pre_buff}
N 310 -100 320 -100 {
lab=N2}
N 290 -130 290 -120 {lab=VDD}
N 290 -80 290 -70 {lab=VSS}
N -420 30 -370 30 {lab=Vcont}
N -100 30 -100 60 {lab=Vcont}
N 190 30 190 60 {lab=Vcont}
N -390 30 -390 80 {lab=Vcont}
N -390 80 190 80 {lab=Vcont}
N -100 60 -100 80 {lab=Vcont}
N 190 60 190 80 {lab=Vcont}
N -400 -20 -400 110 {lab=SENS_IN}
C {devices/ipin.sym} -420 -20 0 0 {name=p1 lab=SENS_IN}
C {devices/iopin.sym} -320 -100 3 0 {name=p2 lab=VDD}
C {devices/iopin.sym} -320 120 1 0 {name=p3 lab=VSS}
C {devices/opin.sym} -140 -100 3 0 {name=p4 lab=N1}
C {devices/opin.sym} 320 -100 0 0 {name=p5 lab=N2}
C {devices/iopin.sym} 410 -50 3 0 {name=p6 lab=CON_CV}
C {devices/lab_pin.sym} 290 -130 1 0 {name=l25 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 290 -70 3 0 {name=l29 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 200 -100 1 0 {name=p8 sig_type=std_logic lab=Pre_buff}
C {devices/ipin.sym} -420 30 0 0 {name=p9 lab=Vcont}
C {OSC_STAGE/OSC_STAGE.sym} -300 0 0 0 {name=x4}
C {OSC_STAGE/OSC_STAGE.sym} -30 0 0 0 {name=x2}
C {OSC_STAGE/OSC_STAGE.sym} 260 0 0 0 {name=x3}
C {BUFF/BUFF.sym} 290 -100 0 0 {name=x1}
