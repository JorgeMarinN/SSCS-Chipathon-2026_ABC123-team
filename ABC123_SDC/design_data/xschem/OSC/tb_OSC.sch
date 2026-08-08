v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {This is a test to check the oscillator's performance when sweeping either
the load capacitance, the temperature or both.

It aims to check the linearity of the oscillators period against these variables
Further study of the results must be done with the use of the python codes

THE OUTPUT FILES ARE QUITE HEAVY (AROUND 300MB EACH) if you're low on storage,
use another device since the python codes also create a .csv file of the same
size} -370 -390 0 0 0.4 0.4 {}
N 100 40 100 80 { lab=VSS}
N 100 -40 260 -40 { lab=V_Sens}
N 360 -40 440 -40 {lab=V_OUT}
N 440 -40 440 -10 {lab=V_OUT}
N 440 50 440 60 {lab=VSS}
N 100 -80 260 -80 {lab=V_Sens}
N 100 -40 100 -20 {lab=V_Sens}
N 100 -80 100 -40 {lab=V_Sens}
N 230 -0 260 -0 {lab=VSS}
C {devices/capa.sym} 100 10 0 0 {name=C_TEST
m=1
value=2p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 100 80 0 0 {name=l8 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 310 -120 1 0 {name=l3 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 310 0 3 0 {name=l4 sig_type=std_logic lab=VSS}
C {devices/capa.sym} 440 20 0 0 {name=C1
m=1
value=1f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 440 60 3 0 {name=p26 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 440 -40 2 0 {name=p7 sig_type=std_logic lab=V_OUT}
C {devices/code.sym} -210 -90 0 0 {name=C_sweep only_toplevel=false spice_ignore=0 value="
vvdd vdd 0 dc 3.3
vvss vss 0 0
*.option temp = 200
.ic v(V_Sens) = 3.3
.ic v(N1) = 0
.save v(V_OUT)
*.save v(V_1) v(x1.v_1_int) v(v_2) v(x1.v_3) v(x1.v_4) v(x1.v_5)

*.option method=gear
.OPTION CSHUNT=0.05e-12
.OPTION ABSTOL=1e-15.
.OPTION GMIN=1.0e-12.
.OPTION ITL1=1e5
.OPTION RSHUNT=1e12
.OPTION RELTOL=1e-5

.control

    compose vin_var start=2p stop=5.02p step=0.1p
    foreach val $&vin_var
      alter C_TEST $val
      tran 0.4n 130u 10u
	* plot v(V_OUT)
  run	
   end
*wrdata /foss/designs/SDC_GF/data_VCO_CSWEEP_GF.txt tran1.v(V_OUT) tran2.v(V_OUT) tran3.v(V_OUT) tran4.v(V_OUT) tran5.v(V_OUT) tran6.v(V_OUT) tran7.v(V_OUT) tran8.v(V_OUT) tran9.v(V_OUT) tran10.v(V_OUT) tran11.v(V_OUT) tran12.v(V_OUT) tran13.v(V_OUT) tran14.v(V_OUT) tran15.v(V_OUT) tran16.v(V_OUT) tran17.v(V_OUT)  tran18.v(V_OUT) tran19.v(V_OUT) tran20.v(V_OUT) tran21.v(V_OUT) tran22.v(V_OUT) tran23.v(V_OUT) tran24.v(V_OUT) tran25.v(V_OUT) tran26.v(V_OUT) tran27.v(V_OUT) tran28.v(V_OUT) tran29.v(V_OUT) tran30.v(V_OUT) tran31.v(V_OUT)
wrdata /foss/designs/SSCS-Chipathon-2026_ABC123-team/sim_data/data_OSC_CSWEEP.txt tran1.v(V_OUT) tran2.v(V_OUT) tran3.v(V_OUT) tran4.v(V_OUT) tran5.v(V_OUT) tran6.v(V_OUT) tran7.v(V_OUT) tran8.v(V_OUT) tran9.v(V_OUT) tran10.v(V_OUT) tran11.v(V_OUT) tran12.v(V_OUT) tran13.v(V_OUT) tran14.v(V_OUT) tran15.v(V_OUT) tran16.v(V_OUT) tran17.v(V_OUT)  tran18.v(V_OUT) tran19.v(V_OUT) tran20.v(V_OUT) tran21.v(V_OUT) tran22.v(V_OUT) tran23.v(V_OUT) tran24.v(V_OUT) tran25.v(V_OUT) tran26.v(V_OUT) tran27.v(V_OUT) tran28.v(V_OUT) tran29.v(V_OUT) tran30.v(V_OUT) tran31.v(V_OUT)

plot tran1.v(V_OUT) (tran15.v(V_OUT)+4) (tran31.v(V_OUT)+8)

.endc


"}
C {devices/code.sym} -85 -90 0 0 {name=T_sweep only_toplevel=false spice_ignore=1 value="
vvdd vdd 0 dc 3.3
vvss vss 0 0
*.option temp = -40
.save v(V_OUT)
*.save v(V_1) v(x1.v_1_int) v(v_2) v(x1.v_3) v(x1.v_4) v(x1.v_5)

*.option method=gear
.OPTION CSHUNT=0.05e-12
.OPTION ABSTOL=1e-15.
.OPTION GMIN=1.0e-12.
.OPTION ITL1=1e5
.OPTION RSHUNT=1e12
.OPTION RELTOL=1e-5
.ic v(V_sens)=1.2

* Corrected Temperature Sweep
.control
    
    compose temp_vec start=-36 stop=126 step=9

    let vector_sizing = length(temp_vec)
    let Vthp_saved = unitvec(vector_sizing)
    let Vthn_saved = unitvec(vector_sizing)

    save @m.x1.x1.x1.xM1.m0[vth]
    save @m.x1.x1.x1.xM2.m0[vth]
   
    let index = 0

    foreach val $&temp_vec
      
        set temp = $val
    
      
        tran 1n 6u 1u
	let vthP = @m.x1.x1.x1.xM1.m0[vth]
	let vthN = @m.x1.x1.x1.xM2.m0[vth]
	meas tran duty_cycle AVG v_out
	
	let vthp_saved[index] = mean(vthP)
	let vthn_saved[index] = mean(vthN)
	let index = index + 1
        run
        * Verification: Print the actual simulation temperature
        rusage temp
    end

    * 3. Plotting results
    *wrdata /foss/designs/SDC_GF/data_VCO_TEMPSWEEP_GF.txt tran1.v(V_OUT) tran2.v(V_OUT) tran3.v(V_OUT) tran4.v(V_OUT) tran5.v(V_OUT) tran6.v(V_OUT) tran7.v(V_OUT) tran8.v(V_OUT) tran9.v(V_OUT) tran10.v(V_OUT) tran11.v(V_OUT) tran12.v(v_out) tran13.v(V_OUT) tran14.v(V_OUT) tran15.v(V_OUT) tran16.v(V_OUT) tran17.v(V_OUT) tran18.v(v_out) tran19.v(V_OUT) 
    plot tran1.v(V_OUT) (tran9.v(V_OUT)+4) (tran18.v(V_OUT)+8)
    setplot const
    setscale temp_vec
    plot vthp_saved vthn_saved
.endc

"}
C {devices/code.sym} -205 70 0 0 {name=T&C_sweep only_toplevel=false spice_ignore=1 value="
vvdd vdd 0 dc 3.3
vvss vss 0 0
.save v(V_OUT)

* Simulator Options
.OPTION CSHUNT=0.05e-12 
.OPTION ABSTOL=1e-15 
.OPTION GMIN=1.0e-12 
.OPTION ITL1=1e5 
.OPTION RSHUNT=1e12 
.OPTION RELTOL=1e-5
.ic v(V_sens)=3.3

.control
   
    compose temp_vec start=-36 stop=126 step=18
    compose cap_vec start=8p stop=8.32p step=0.04p
    
   
    set appendwrite
    let out_file = /foss/designs/SDC_GF/nested_VCO_data_IHP.txt
    
    * Optional: Create a mapping file for Python post-processing
    echo index, temp, cap > /foss/designS/SDC_GF/sweep_map_GF.csv
    let run_idx = 0

    * 3. Nested Loops
    foreach t_val $&temp_vec
        set temp = $t_val
        foreach c_val $&cap_vec
            alter C_TEST $c_val
            
            
            tran 0.1n 30u 20u
         

            wrdata /foss/designs/SDC_GF/Nested_SWEEP_VCO_GF.txt v(V_OUT)
            
            * Console feedback (No quotes used to avoid nesting conflicts)
            echo Iteration: Index=$&run_idx Temp=$t_val C_test=$c_val
            
            * Log to map file
            echo $&run_idx, $t_val, $c_val >> /foss/designs/SDC_GF/sweep_map_GF.csv
            
            let run_idx = run_idx + 1
        end
    end
    
    * Cleanup: unset appendwrite so future manual simulations don't keep appending
    unset appendwrite
.endc
"}
C {devices/code.sym} -80 70 0 0 {name=MODELS only_toplevel=true
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
C {devices/code.sym} -335 70 0 0 {name=V_sweep only_toplevel=false spice_ignore=1 value="
vvdd vdd 0 dc 3.3
vvss vss 0 0
.save v(V_OUT)

* Simulator Options
.OPTION CSHUNT=0.05e-12 
.OPTION ABSTOL=1e-15 
.OPTION GMIN=1.0e-12 
.OPTION ITL1=1e5 
.OPTION RSHUNT=1e12 
.OPTION RELTOL=1e-5
.OPTION temp = 27
.ic v(V_sens)=3.3

.control
   
    compose voltage_vec start=3 stop=3.6 step=0.1
    set appendwrite
    let out_file = /foss/designs/Traspaso_IHP/VCO_data_Vsweep_SKY.txt

    foreach v_val $&voltage_vec
        alter vvdd $v_val
            tran 0.1n 30u 20u

            wrdata /foss/designs/SDC_techmigration_May2026/sim_data/VCO_data_Vsweep_SKY.txt v(V_OUT)
             end
    
    plot tran1.v(V_out) tran2.v(V_out) tran3.v(V_out) tran4.v(V_out) tran5.v(V_out) tran6.v(V_out) tran7.v(V_out ) tran8.v(V_out) 
.endc
"
}
C {devices/lab_pin.sym} 110 -80 1 0 {name=p1 sig_type=std_logic lab=V_Sens}
C {devices/lab_pin.sym} 230 0 3 0 {name=l1 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 360 -80 2 0 {name=p2 sig_type=std_logic lab=N1}
C {OSC/OSC.sym} 310 -50 0 0 {name=x1}
