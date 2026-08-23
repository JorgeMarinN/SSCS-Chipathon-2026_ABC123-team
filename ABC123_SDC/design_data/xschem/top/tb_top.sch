v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -390 -110 -390 -70 { lab=VSS}
N -390 -190 -390 -170 { lab=CSENS}
N -390 90 -390 130 { lab=VSS}
N -390 10 -390 30 {lab=CREF}
N 230 50 230 60 {lab=VSS}
N 100 -10 230 -10 {lab=DOUT_CLOAD}
C {devices/vsource.sym} -210 -330 0 0 {name=VCC value=3.3}
C {devices/vsource.sym} -290 -330 0 0 {name=VSS value=0}
C {devices/gnd.sym} -290 -300 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} -210 -300 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} -290 -360 0 0 {name=p3 sig_type=std_logic lab=Vss}
C {devices/lab_pin.sym} -210 -360 0 0 {name=p6 sig_type=std_logic lab=Vdd}
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
*compose vin_var start=2p stop=2p step=0.2p
foreach val $&vin_var
  alter C_SENS $val
  save v(DOUT_CLOAD)
  *tran 1n 500u 200u
  tran 1n 50u 20u
  run
end
wrdata /foss/designs/SSCS-Chipathon-2026_ABC123-team/sim_data/data_SDC_CSWEEP.txt tran1.v(DOUT_CLOAD) tran2.v(DOUT_CLOAD) tran3.v(DOUT_CLOAD) tran4.v(DOUT_CLOAD) tran5.v(DOUT_CLOAD) tran6.v(DOUT_CLOAD) tran7.v(DOUT_CLOAD) tran8.v(DOUT_CLOAD) tran9.v(DOUT_CLOAD) tran10.v(DOUT_CLOAD) tran11.v(DOUT_CLOAD) tran12.v(DOUT_CLOAD) tran13.v(DOUT_CLOAD) tran14.v(DOUT_CLOAD) tran15.v(DOUT_CLOAD) tran16.v(DOUT_CLOAD)
wrdata /foss/designs/SSCS-Chipathon-2026_ABC123-team/sim_data/data_SDC_PWR.txt tran16.i(VCC)
rusage time totalcputime
rusage everything > sim_stats.log
.endc
"}
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
C {top/SDC_top.sym} -50 0 0 0 {name=x8}
C {devices/lab_pin.sym} 150 -10 1 1 {name=p8 sig_type=std_logic lab=DOUT_CLOAD}
C {devices/lab_pin.sym} 100 -30 0 1 {name=p13 sig_type=std_logic lab=CCOREF_OUT
}
C {devices/lab_pin.sym} 100 -50 0 1 {name=p15 sig_type=std_logic lab=CCOSENS_OUT
}
C {devices/lab_pin.sym} 100 -70 0 1 {name=p18 sig_type=std_logic lab=Vss}
C {devices/lab_pin.sym} 100 -90 0 1 {name=p19 sig_type=std_logic lab=Vdd}
C {devices/lab_pin.sym} -200 90 0 0 {name=l20 sig_type=std_logic lab=VSS}
C {devices/capa.sym} -390 -140 0 0 {name=C_SENS
m=1
value=2p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} -390 -70 0 0 {name=l21 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -390 -190 0 0 {name=l22 sig_type=std_logic lab=CSENS}
C {devices/capa.sym} -390 60 0 0 {name=C_TEST1
m=1
value=2p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} -390 130 0 0 {name=l7 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -200 50 0 0 {name=l11 sig_type=std_logic lab=CSENS}
C {devices/lab_pin.sym} -200 70 0 0 {name=l12 sig_type=std_logic lab=CREF}
C {devices/lab_pin.sym} -390 10 0 0 {name=l13 sig_type=std_logic lab=CREF}
C {devices/capa.sym} 230 20 0 1 {name=C_Delta
spice_ignore = 0 
m=1
value=1f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 230 60 0 0 {name=l3 sig_type=std_logic lab=VSS}
