v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 690 1490 690 1510 { lab=V_Si}
N 740 1240 740 1280 { lab=VDD}
N 760 1230 760 1290 { lab=DOUT_CLOAD}
N 740 1320 740 1360 { lab=VSS}
N 660 1300 740 1300 {lab=V_Si}
N 810 1450 830 1450 {lab=V_pre_gate}
N 810 1300 810 1450 {lab=V_pre_gate}
N 780 1300 810 1300 {lab=V_pre_gate}
N 660 1300 660 1490 {lab=V_Si}
N 660 1490 690 1490 {lab=V_Si}
N 190 1520 190 1540 {lab=V_Ri}
N 190 1520 330 1520 {lab=V_Ri}
N 190 1480 190 1520 {lab=V_Ri}
N 690 1490 830 1490 {lab=V_Si}
N 430 1480 520 1480 {lab=V_no_buff_r}
N 930 1450 1060 1450 {lab=V_no_buff_s}
N 170 1270 220 1270 {lab=VIN_1}
N 220 1270 260 1270 {lab=VIN_1}
N 160 1180 220 1180 {lab=VIN_2}
N 220 1180 260 1180 {lab=VIN_2}
N 360 1180 420 1180 {lab=DOUT_CLOAD}
N 420 1180 470 1180 {lab=DOUT_CLOAD}
N 360 1280 400 1280 {lab=#net1}
N 450 1280 480 1280 {lab=ND_buff}
N 230 1370 230 1410 { lab=VDD}
N 250 1360 250 1420 { lab=VDD}
N 230 1450 230 1490 { lab=VSS}
N 300 1480 330 1480 {lab=#net2}
N 300 1430 300 1480 {lab=#net2}
N 270 1430 300 1430 {lab=#net2}
N 190 1430 230 1430 {lab=V_Ri}
N 190 1430 190 1480 {lab=V_Ri}
N 790 1530 830 1530 {lab=VCTRL}
N 290 1560 330 1560 {lab=Vctrl}
N 380 1010 410 1010 {lab=Vss}
N 380 980 410 980 {lab=Vdd}
N 520 1180 560 1180 {lab=D_buff}
N 420 1080 460 1080 {lab=DOUT_CLOAD}
N 420 1080 420 1180 {lab=DOUT_CLOAD}
C {devices/lab_pin.sym} 430 1520 0 1 {name=p1 sig_type=std_logic lab=VIN_1}
C {devices/lab_pin.sym} 410 1010 3 0 {name=p3 sig_type=std_logic lab=Vss}
C {devices/lab_pin.sym} 410 980 1 0 {name=p6 sig_type=std_logic lab=Vdd}
C {devices/lab_pin.sym} 930 1490 0 1 {name=p7 sig_type=std_logic lab=VIN_2}
C {devices/lab_pin.sym} 380 1180 3 1 {name=p12 sig_type=std_logic lab=DOUT_CLOAD}
C {devices/lab_pin.sym} 310 1130 1 0 {name=p14 sig_type=std_logic lab=Vdd}
C {devices/lab_pin.sym} 170 1270 0 0 {name=p16 sig_type=std_logic lab=VIN_1}
C {devices/lab_pin.sym} 310 1320 3 0 {name=p17 sig_type=std_logic lab=Vss}
C {devices/lab_pin.sym} 160 1180 0 0 {name=p20 sig_type=std_logic lab=VIN_2}
C {devices/lab_pin.sym} 380 1440 1 0 {name=l5 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 380 1560 3 0 {name=l6 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 880 1410 1 0 {name=l11 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 880 1530 3 0 {name=l12 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 740 1240 0 0 {name=l24 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 740 1360 0 0 {name=l39 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 660 1400 0 0 {name=p4 sig_type=std_logic lab=V_Si}
C {devices/lab_pin.sym} 810 1330 2 0 {name=p5 sig_type=std_logic lab=V_pre_gate}
C {devices/lab_pin.sym} 980 1450 1 0 {name=p9 sig_type=std_logic lab=V_no_buff_s}
C {devices/lab_pin.sym} 460 1480 1 0 {name=p11 sig_type=std_logic lab=V_no_buff_r}
C {devices/lab_pin.sym} 760 1230 0 1 {name=p10 sig_type=std_logic lab=DOUT_CLOAD}
C {SDC_GF/SDC_pts/Phase_Detector.sym} 310 1230 0 0 {name=x1}
C {SDC_GF/SDC_pts/Transmission_Gate.sym} 760 1300 0 0 {name=x2}
C {SDC_GF/Osc_pts/Buffer.sym} 500 1180 0 0 {name=x5}
C {devices/lab_pin.sym} 500 1160 0 0 {name=l3 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 500 1200 0 0 {name=l4 sig_type=std_logic lab=VSS}
C {SDC_GF/Osc_pts/Buffer.sym} 430 1280 0 0 {name=x6}
C {devices/lab_pin.sym} 430 1260 0 0 {name=l9 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 430 1300 0 0 {name=l10 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 230 1370 0 0 {name=l14 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 230 1490 0 0 {name=l16 sig_type=std_logic lab=VSS}
C {SDC_GF/SDC_pts/Transmission_Gate.sym} 250 1430 0 0 {name=x7}
C {devices/lab_pin.sym} 250 1360 0 1 {name=l17 sig_type=std_logic lab=VDD}
C {SDC_GF/Osc_pts/Osc_GF_MARTIM_var.sym} 380 1510 0 0 {name=x3}
C {SDC_GF/Osc_pts/Osc_GF_MARTIM_var.sym} 880 1480 0 0 {name=x4}
C {devices/lab_pin.sym} 190 1460 0 0 {name=p13 sig_type=std_logic lab=V_Ri}
C {ipin.sym} 190 1540 3 0 {name=p15 lab=CREF}
C {ipin.sym} 690 1510 3 0 {name=p18 lab=CSENS}
C {iopin.sym} 380 980 2 0 {name=p19 lab=VDD}
C {iopin.sym} 380 1010 2 0 {name=p21 lab=VSS}
C {ipin.sym} 290 1560 0 0 {name=p2 lab=VCTRL}
C {ipin.sym} 790 1530 0 0 {name=p8 lab=VCTRL}
C {devices/lab_pin.sym} 560 1180 3 0 {name=p22 sig_type=std_logic lab=D_buff
}
C {devices/lab_pin.sym} 480 1280 3 0 {name=p23 sig_type=std_logic lab=ND_buff
}
C {opin.sym} 460 1080 0 0 {name=p24 lab=DOUT_CLOAD}
