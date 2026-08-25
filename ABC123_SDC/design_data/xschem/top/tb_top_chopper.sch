v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -300 260 -300 300 { lab=VSS}
N 170 -90 170 -50 { lab=VSS}
N 170 -170 170 -150 { lab=V_Si}
N 220 -420 220 -380 { lab=VDD}
N 240 -430 240 -370 { lab=DOUT_CLOAD}
N 220 -340 220 -300 { lab=VSS}
N 140 -360 220 -360 {lab=V_Si}
N 920 -120 920 -110 {lab=VSS}
N 290 -360 290 -210 {lab=V_pre_gate}
N 260 -360 290 -360 {lab=V_pre_gate}
N 140 -360 140 -170 {lab=V_Si}
N 140 -170 170 -170 {lab=V_Si}
N -300 180 -300 200 {lab=V_Ri}
N -300 180 -120 180 {lab=V_Ri}
N 170 -170 310 -170 {lab=V_Si}
N 390 170 480 170 {lab=V_no_buff_r}
N 480 230 480 240 {lab=VSS}
N 790 -180 920 -180 {lab=V_no_buff_s}
N -1070 -80 -1020 -80 {lab=VIN_1}
N -960 -80 -920 -80 {lab=#net1}
N -1080 -170 -1020 -170 {lab=VIN_2}
N -960 -170 -920 -170 {lab=#net2}
N -820 -170 -760 -170 {lab=#net3}
N -150 -170 -100 -170 {lab=DOUT_CLOAD}
N -820 -70 -780 -70 {lab=#net4}
N -180 -70 -150 -70 {lab=#net5}
N -260 30 -260 70 { lab=VDD}
N -240 20 -240 80 { lab=VDD}
N -260 110 -260 150 { lab=VSS}
N -190 90 -190 140 {lab=#net6}
N -220 90 -190 90 {lab=#net6}
N -300 90 -260 90 {lab=V_Ri}
N -300 90 -300 180 {lab=V_Ri}
N -190 140 -120 140 {lab=#net6}
N 180 170 290 170 {lab=#net7}
N 180 240 290 210 {lab=#net8}
N 610 -180 700 -180 {lab=#net9}
N 610 -110 690 -140 {lab=#net10}
N 290 -210 310 -210 {lab=V_pre_gate}
N -780 -70 -630 -110 {lab=#net4}
N -760 -170 -630 -150 {lab=#net3}
N -330 -120 -210 -170 {lab=#net11}
N -330 -50 -230 -70 {lab=#net12}
C {devices/vsource.sym} -400 -470 0 0 {name=VCC value=3.3}
C {devices/vsource.sym} -480 -470 0 0 {name=VSS value=0}
C {devices/gnd.sym} -480 -440 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} -400 -440 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 390 210 0 1 {name=p1 sig_type=std_logic lab=VIN_1}
C {devices/lab_pin.sym} -480 -500 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -400 -500 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 790 -140 0 1 {name=p7 sig_type=std_logic lab=VIN_2}
C {devices/lab_pin.sym} -130 -170 3 1 {name=p12 sig_type=std_logic lab=DOUT_CLOAD}
C {devices/lab_pin.sym} -870 -220 1 0 {name=p14 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -1070 -80 0 0 {name=p16 sig_type=std_logic lab=VIN_1}
C {devices/lab_pin.sym} -870 -30 3 0 {name=p17 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -1080 -170 0 0 {name=p20 sig_type=std_logic lab=VIN_2}
C {devices/capa.sym} -300 230 0 0 {name=C_TEST
m=1
value=2p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} -300 300 0 0 {name=l8 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 340 130 1 0 {name=l5 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 340 250 3 0 {name=l6 sig_type=std_logic lab=VSS}
C {devices/capa.sym} 170 -120 0 0 {name=C_SENS
m=1
value=2p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 170 -50 0 0 {name=l7 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 740 -220 1 0 {name=l11 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 740 -100 3 0 {name=l12 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 220 -420 0 0 {name=l24 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 220 -300 0 0 {name=l39 sig_type=std_logic lab=VSS}
C {devices/capa.sym} 920 -150 0 1 {name=C_Delta
spice_ignore = 0 
m=1
value=1f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 920 -110 0 0 {name=l13 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -300 140 0 0 {name=p2 sig_type=std_logic lab=V_Ri}
C {devices/lab_pin.sym} 140 -260 0 0 {name=p4 sig_type=std_logic lab=V_Si}
C {devices/lab_pin.sym} 290 -330 2 0 {name=p5 sig_type=std_logic lab=V_pre_gate}
C {devices/capa.sym} 480 200 0 0 {name=C_Delta2
spice_ignore = 0 
m=1
value=1f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 480 240 0 0 {name=l15 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 840 -180 1 0 {name=p9 sig_type=std_logic lab=V_no_buff_s}
C {devices/lab_pin.sym} 420 170 1 0 {name=p11 sig_type=std_logic lab=V_no_buff_r}
C {ammeter.sym} -990 -80 3 0 {name=V_iref savecurrent=true spice_ignore=0}
C {ammeter.sym} -990 -170 3 0 {name=V_isens savecurrent=true spice_ignore=0}
C {ammeter.sym} -180 -170 3 0 {name=V_dout savecurrent=true spice_ignore=0}
C {devices/code.sym} -720 -530 0 0 {name=Transfer_func_sweep only_toplevel=false spice_ignore=0 value="
.ic v(v_si) = 3.3
.ic v(v_ri) = 0
*.save all
.save v(DOUT_CLOAD) i(VCC)
*.OPTION CSHUNT=0.01e-12
.OPTION ABSTOL=1e-15.
.OPTION GMIN=1.0e-12.
.OPTION ITL1=1e5
.OPTION RSHUNT=1e12
.OPTION RELTOL=1e-5

.option TEMP=27
.control

alter C_SENS 2.5p
tran 1n 10m
wrdata /foss/designs/SSCS-Chipathon-2026-ABC123-team/ABC123_SDC/sim_data/SDC_CIN_2_5P.txt v(DOUT_CLOAD)
wrdata /foss/designs/SSCS-Chipathon-2026-ABC123-team/ABC123_SDC/sim_data/SDC_CIN_2_5P_PWR.txt i(VCC)

*wrdata /foss/designs/SDC_techmigration_May2026/sim_data/SDC_CINsweep_v6p3_GF.txt tran1.v(DOUT_CLOAD) tran2.v(DOUT_CLOAD) tran3.v(DOUT_CLOAD) tran4.v(DOUT_CLOAD) tran5.v(DOUT_CLOAD) tran6.v(DOUT_CLOAD) tran7.v(DOUT_CLOAD) tran8.v(DOUT_CLOAD) tran9.v(DOUT_CLOAD) tran10.v(DOUT_CLOAD) tran11.v(DOUT_CLOAD) tran12.v(DOUT_CLOAD) tran13.v(DOUT_CLOAD) tran14.v(DOUT_CLOAD) tran15.v(DOUT_CLOAD) tran16.v(DOUT_CLOAD)
*wrdata /foss/designs/SDC_techmigration_May2026/sim_data/SDC_CINsweep_v6p3_GF_PWR.txt tran16.i(VCC)
*rusage time totalcputime
*rusage everything > sim_stats.log
.endc
"}
C {devices/lab_pin.sym} 240 -430 0 1 {name=p10 sig_type=std_logic lab=DOUT_CLOAD}
C {devices/code.sym} -860 -530 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice cap_mim
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
.lib $::180MCU_MODELS/sm141064.ngspice mimcap_typical
* .lib $::180MCU_MODELS/sm141064.ngspice res_statistical
"}
C {devices/lab_pin.sym} -70 -190 0 0 {name=l3 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -70 -150 0 0 {name=l4 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -200 -90 0 0 {name=l9 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -200 -50 0 0 {name=l10 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -260 30 0 0 {name=l14 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -260 150 0 0 {name=l16 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -240 20 0 1 {name=l17 sig_type=std_logic lab=VDD}
C {ABC123_SDC/design_data/xschem/DFF/DFF.sym} -870 -120 0 0 {name=x1}
C {ABC123_SDC/design_data/xschem/BUFF/BUFF.sym} -200 -70 0 0 {name=x5}
C {ABC123_SDC/design_data/xschem/BUFF/BUFF.sym} -70 -170 0 0 {name=x6}
C {ABC123_SDC/design_data/xschem/TGATE/TGATE.sym} -240 90 0 0 {name=x7}
C {ABC123_SDC/design_data/xschem/OSC/OSC.sym} 340 200 0 0 {name=x4}
C {ABC123_SDC/design_data/xschem/OSC/OSC.sym} 740 -150 0 0 {name=x2}
C {ABC123_SDC/design_data/xschem/TGATE/TGATE.sym} 240 -360 0 0 {name=x3}
C {ABC123_SDC/design_data/xschem/CHOPPER/chopper.sym} 30 210 0 0 {name=x8}
C {devices/vsource.sym} -300 -470 0 0 {name=Vcont value=0.1}
C {devices/gnd.sym} -300 -440 0 0 {name=Vcont1 lab=GND
value=0.1}
C {lab_wire.sym} -300 -500 0 0 {name=p8 sig_type=std_logic lab=Vcont}
C {lab_wire.sym} 290 250 0 0 {name=p13 sig_type=std_logic lab=Vcont}
C {devices/gnd.sym} -680 170 0 0 {name=Vcont3 lab=GND
value=0.1}
C {lab_wire.sym} -680 110 0 0 {name=p15 sig_type=std_logic lab=chp1}
C {devices/gnd.sym} -600 290 0 0 {name=Vcont2 lab=GND
value=0.1}
C {lab_wire.sym} -600 230 0 0 {name=p18 sig_type=std_logic lab=chp2}
C {vsource.sym} -680 140 0 0 {name=V3 value="PULSE(0 3.3 0 1p 1p 50u 100u)" savecurrent=false}
C {vsource.sym} -600 260 0 0 {name=V4 value="PULSE(3.3 0 0 1p 1p 50u 100u)" savecurrent=false}
C {lab_wire.sym} -120 240 0 0 {name=p19 sig_type=std_logic lab=chp1}
C {lab_wire.sym} -120 280 0 0 {name=p21 sig_type=std_logic lab=chp2}
C {ABC123_SDC/design_data/xschem/CHOPPER/chopper.sym} 460 -140 0 0 {name=x9}
C {lab_wire.sym} 310 -110 0 0 {name=p22 sig_type=std_logic lab=chp1}
C {lab_wire.sym} 310 -70 0 0 {name=p23 sig_type=std_logic lab=chp2}
C {lab_wire.sym} 690 -100 0 0 {name=p24 sig_type=std_logic lab=Vcont}
C {devices/lab_pin.sym} 30 330 0 0 {name=l18 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 460 -20 0 0 {name=l19 sig_type=std_logic lab=VSS}
C {ABC123_SDC/design_data/xschem/CHOPPER/chopper.sym} -480 -80 0 0 {name=x10}
C {lab_wire.sym} -630 -50 0 0 {name=p25 sig_type=std_logic lab=chp1}
C {lab_wire.sym} -630 -10 0 0 {name=p26 sig_type=std_logic lab=chp2}
C {devices/lab_pin.sym} -480 40 0 0 {name=l20 sig_type=std_logic lab=VSS}
