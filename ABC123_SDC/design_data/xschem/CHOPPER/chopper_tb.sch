v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 110 1130 440 1130 {lab=vin_n}
N 200 1170 440 1170 {lab=vin_p}
N 280 1230 440 1230 {lab=#net1}
N 370 1270 440 1270 {lab=#net2}
N 740 1160 800 1160 {lab=vin_nn}
N 740 1230 800 1230 {lab=vin_pp}
N 800 1160 910 1160 {lab=vin_nn}
C {SDC_techmigration_May2026/SDC_GF/SDC_pts/chopper.sym} 590 1200 0 0 {name=x1}
C {gnd.sym} 590 1320 0 0 {name=l1 lab=GND}
C {gnd.sym} 370 1330 0 0 {name=l2 lab=GND}
C {gnd.sym} 280 1290 0 0 {name=l3 lab=GND}
C {gnd.sym} 110 1190 0 0 {name=l5 lab=GND}
C {lab_pin.sym} 800 1230 2 0 {name=p1 sig_type=std_logic lab=vin_pp}
C {lab_pin.sym} 800 1160 2 0 {name=p2 sig_type=std_logic lab=vin_nn}
C {devices/code.sym} -110 970 0 0 {name=MODELS only_toplevel=true
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
C {devices/code.sym} -100 1130 0 0 {name=transient only_toplevel=false value="
.save v(DOUT_CLOAD)
*.OPTION CSHUNT=0.01e-12
.OPTION ABSTOL=1e-15.
.OPTION GMIN=1.0e-12.
.OPTION ITL1=1e5
.OPTION RSHUNT=1e12
.OPTION RELTOL=1e-5

.option TEMP=27
.control
  save all
  tran 1n 2m

  plot vin_n vin_p vin_nn vin_pp
.endc
"}
C {gnd.sym} 200 1230 0 0 {name=l6 lab=GND}
C {lab_pin.sym} 310 1130 1 0 {name=p3 sig_type=std_logic lab=vin_n}
C {lab_pin.sym} 380 1170 1 0 {name=p4 sig_type=std_logic lab=vin_p}
C {capa.sym} 800 1260 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"
spice_ignore=true}
C {capa.sym} 910 1190 0 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"
spice_ignore=true}
C {gnd.sym} 800 1290 0 0 {name=l4 lab=GND
spice_ignore=true}
C {gnd.sym} 910 1220 0 0 {name=l7 lab=GND
spice_ignore=true}
C {gnd.sym} 90 1060 0 0 {name=l8 lab=GND
spice_ignore=true}
C {sqwsource.sym} 90 970 0 0 {name=V9 vhi=2 freq=1e2
spice_ignore=true}
C {vsource.sym} 90 1030 0 0 {name=V11 value=0.65 savecurrent=false
spice_ignore=true}
C {gnd.sym} 190 1050 0 0 {name=l9 lab=GND
spice_ignore=true}
C {sqwsource.sym} 190 960 0 0 {name=V12 vhi=-2 freq=1e2
spice_ignore=true}
C {vsource.sym} 190 1020 0 0 {name=V13 value=2.65 savecurrent=false
spice_ignore=true}
C {vsource.sym} 110 1160 0 0 {name=V3 value="PULSE(0 3.3 0 1p 1p 10u 20u)" savecurrent=false}
C {vsource.sym} 200 1200 0 0 {name=V4 value="PULSE(3.3 0 0 1p 1p 10u 20u)" savecurrent=false}
C {vsource.sym} 280 1260 0 0 {name=V1 value="PULSE(0 3.3 0 1p 1p 50u 100u)" savecurrent=false}
C {vsource.sym} 370 1300 0 0 {name=V2 value="PULSE(3.3 0 0 1p 1p 50u 100u)" savecurrent=false}
