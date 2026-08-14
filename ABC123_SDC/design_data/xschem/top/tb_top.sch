v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {This test extract the transfer function of the system, it saves in a txt file the results to be 
analyzed through a python script found in the "CODIGOS" folder, } -740 360 0 0 0.4 0.4 {}
N -640 250 -640 290 { lab=VSS}
N -140 220 -140 260 { lab=VSS}
N -140 140 -140 160 { lab=V_Si}
N -90 -110 -90 -70 { lab=VDD}
N -70 -120 -70 -60 { lab=DOUT_CLOAD}
N -90 -30 -90 10 { lab=VSS}
N -170 -50 -90 -50 {lab=V_Si}
N 230 160 230 170 {lab=VSS}
N -20 100 0 100 {lab=V_pre_gate}
N -20 -50 -20 100 {lab=V_pre_gate}
N -50 -50 -20 -50 {lab=V_pre_gate}
N -170 -50 -170 140 {lab=V_Si}
N -170 140 -140 140 {lab=V_Si}
N -640 170 -640 190 {lab=V_Ri}
N -640 170 -500 170 {lab=V_Ri}
N -640 130 -640 170 {lab=V_Ri}
N -140 140 0 140 {lab=V_Si}
N -400 130 -310 130 {lab=V_no_buff_r}
N -310 190 -310 200 {lab=VSS}
N 100 100 230 100 {lab=V_no_buff_s}
N -720 -80 -670 -80 {lab=VIN_1}
N -610 -80 -570 -80 {lab=#net1}
N -730 -170 -670 -170 {lab=VIN_2}
N -610 -170 -570 -170 {lab=#net2}
N -470 -170 -410 -170 {lab=#net3}
N -350 -170 -300 -170 {lab=DOUT_CLOAD}
N -470 -70 -430 -70 {lab=#net4}
N -380 -70 -350 -70 {lab=#net5}
N -600 20 -600 60 { lab=VDD}
N -580 10 -580 70 { lab=VDD}
N -600 100 -600 140 { lab=VSS}
N -530 130 -500 130 {lab=#net6}
N -530 80 -530 130 {lab=#net6}
N -560 80 -530 80 {lab=#net6}
N -640 80 -600 80 {lab=V_Ri}
N -640 80 -640 130 {lab=V_Ri}
C {devices/vsource.sym} -210 -330 0 0 {name=VCC value=3.3}
C {devices/vsource.sym} -290 -330 0 0 {name=VSS value=0}
C {devices/gnd.sym} -290 -300 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} -210 -300 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} -400 170 0 1 {name=p1 sig_type=std_logic lab=VIN_1}
C {devices/lab_pin.sym} -290 -360 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -210 -360 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 100 140 0 1 {name=p7 sig_type=std_logic lab=VIN_2}
C {devices/lab_pin.sym} -330 -170 3 1 {name=p12 sig_type=std_logic lab=DOUT_CLOAD}
C {devices/lab_pin.sym} -520 -220 1 0 {name=p14 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -720 -80 0 0 {name=p16 sig_type=std_logic lab=VIN_1}
C {devices/lab_pin.sym} -520 -30 3 0 {name=p17 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -730 -170 0 0 {name=p20 sig_type=std_logic lab=VIN_2}
C {devices/capa.sym} -640 220 0 0 {name=C_TEST
m=1
value=2p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} -640 290 0 0 {name=l8 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -450 90 1 0 {name=l5 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -450 210 3 0 {name=l6 sig_type=std_logic lab=VSS}
C {devices/capa.sym} -140 190 0 0 {name=C_SENS
m=1
value=2p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} -140 260 0 0 {name=l7 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 50 60 1 0 {name=l11 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 50 180 3 0 {name=l12 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -90 -110 0 0 {name=l24 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -90 10 0 0 {name=l39 sig_type=std_logic lab=VSS}
C {devices/capa.sym} 230 130 0 1 {name=C_Delta
spice_ignore = 0 
m=1
value=1f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 230 170 0 0 {name=l13 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -640 130 0 0 {name=p2 sig_type=std_logic lab=V_Ri}
C {devices/lab_pin.sym} -170 50 0 0 {name=p4 sig_type=std_logic lab=V_Si}
C {devices/lab_pin.sym} -20 -20 2 0 {name=p5 sig_type=std_logic lab=V_pre_gate}
C {devices/capa.sym} -310 160 0 0 {name=C_Delta2
spice_ignore = 0 
m=1
value=1f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} -310 200 0 0 {name=l15 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 150 100 1 0 {name=p9 sig_type=std_logic lab=V_no_buff_s}
C {devices/lab_pin.sym} -370 130 1 0 {name=p11 sig_type=std_logic lab=V_no_buff_r}
C {ammeter.sym} -640 -80 3 0 {name=V_iref savecurrent=true spice_ignore=0}
C {ammeter.sym} -640 -170 3 0 {name=V_isens savecurrent=true spice_ignore=0}
C {ammeter.sym} -380 -170 3 0 {name=V_dout savecurrent=true spice_ignore=0}
C {devices/code.sym} -530 -390 0 0 {name=Transfer_func_sweep only_toplevel=false spice_ignore=0 value="
.ic v(v_si) = 3.3
.ic v(v_ri) = 0
.save v(DOUT_CLOAD) i(VCC)
*.OPTION CSHUNT=0.01e-12
.OPTION ABSTOL=1e-15.
.OPTION GMIN=1.0e-12.
.OPTION ITL1=1e5
.OPTION RSHUNT=1e12
.OPTION RELTOL=1e-5

.option TEMP=27
.control
compose vin_var start=2p stop=5.02p step=0.2p
foreach val $&vin_var
  alter C_SENS $val
  save v(DOUT_CLOAD)
  tran 0.1n 50u 20u
  run
end
wrdata /foss/designs/SDC_techmigration_May2026/sim_data/SDC_CINsweep_v6p3_GF.txt tran1.v(DOUT_CLOAD) tran2.v(DOUT_CLOAD) tran3.v(DOUT_CLOAD) tran4.v(DOUT_CLOAD) tran5.v(DOUT_CLOAD) tran6.v(DOUT_CLOAD) tran7.v(DOUT_CLOAD) tran8.v(DOUT_CLOAD) tran9.v(DOUT_CLOAD) tran10.v(DOUT_CLOAD) tran11.v(DOUT_CLOAD) tran12.v(DOUT_CLOAD) tran13.v(DOUT_CLOAD) tran14.v(DOUT_CLOAD) tran15.v(DOUT_CLOAD) tran16.v(DOUT_CLOAD)
wrdata /foss/designs/SDC_techmigration_May2026/sim_data/SDC_CINsweep_v6p3_GF_PWR.txt tran16.i(VCC)
rusage time totalcputime
rusage everything > sim_stats.log
.endc
"}
C {devices/lab_pin.sym} -70 -120 0 1 {name=p10 sig_type=std_logic lab=DOUT_CLOAD}
C {SDC_GF/SDC_pts/Phase_Detector.sym} -520 -120 0 0 {name=x1}
C {SDC_GF/Osc_pts/Osc_GF_MARTIM_var_v2.sym} -450 160 0 0 {name=x4}
C {SDC_GF/SDC_pts/Transmission_Gate.sym} -70 -50 0 0 {name=x2}
C {SDC_GF/Osc_pts/Osc_GF_MARTIM_var_v2.sym} 50 130 0 0 {name=x3}
C {devices/code.sym} -670 -390 0 0 {name=MODELS only_toplevel=true
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
C {SDC_GF/Osc_pts/Buffer.sym} -270 -170 0 0 {name=x5}
C {devices/lab_pin.sym} -270 -190 0 0 {name=l3 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -270 -150 0 0 {name=l4 sig_type=std_logic lab=VSS}
C {SDC_GF/Osc_pts/Buffer.sym} -400 -70 0 0 {name=x6}
C {devices/lab_pin.sym} -400 -90 0 0 {name=l9 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -400 -50 0 0 {name=l10 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -600 20 0 0 {name=l14 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -600 140 0 0 {name=l16 sig_type=std_logic lab=VSS}
C {SDC_GF/SDC_pts/Transmission_Gate.sym} -580 80 0 0 {name=x7}
C {devices/lab_pin.sym} -580 10 0 1 {name=l17 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 0 180 3 0 {name=l18 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -500 210 3 0 {name=l19 sig_type=std_logic lab=VSS}
C {top/SDC_top.sym} 320 -770 0 0 {name=x100}
C {devices/lab_pin.sym} 360 -340 1 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 360 -20 3 0 {name=p13 sig_type=std_logic lab=VSS}
