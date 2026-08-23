v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 460 1460 460 1480 { lab=CSENS}
N 510 1210 510 1250 { lab=VDD_1}
N 530 1200 530 1260 { lab=DOUT}
N 510 1290 510 1330 { lab=VSS}
N 430 1270 510 1270 {lab=CSENS}
N 580 1420 600 1420 {lab=V_pre_gate}
N 580 1270 580 1420 {lab=V_pre_gate}
N 550 1270 580 1270 {lab=V_pre_gate}
N 430 1270 430 1460 {lab=CSENS}
N 430 1460 460 1460 {lab=CSENS}
N 460 1750 460 1770 {lab=CREF}
N 460 1750 600 1750 {lab=CREF}
N 460 1710 460 1750 {lab=CREF}
N 460 1460 600 1460 {lab=CSENS}
N 700 1710 790 1710 {lab=V_no_buff_r}
N 700 1420 830 1420 {lab=V_no_buff_s}
N 910 1620 960 1620 {lab=VIN_1}
N 960 1620 1000 1620 {lab=VIN_1}
N 900 1530 960 1530 {lab=VIN_2}
N 960 1530 1000 1530 {lab=VIN_2}
N 1100 1530 1160 1530 {lab=DOUT}
N 1160 1530 1210 1530 {lab=DOUT}
N 1100 1630 1140 1630 {lab=#net1}
N 1190 1630 1220 1630 {lab=ND_buff}
N 500 1600 500 1640 { lab=VDD_1}
N 520 1590 520 1650 { lab=VDD_1}
N 500 1680 500 1720 { lab=VSS}
N 570 1710 600 1710 {lab=#net2}
N 570 1660 570 1710 {lab=#net2}
N 540 1660 570 1660 {lab=#net2}
N 460 1660 500 1660 {lab=CREF}
N 460 1660 460 1710 {lab=CREF}
N 560 1500 600 1500 {lab=VCTRL}
N 560 1790 600 1790 {lab=VCTRL}
N 380 1010 410 1010 {lab=VSS}
N 380 980 410 980 {lab=VDD_1}
N 1260 1530 1300 1530 {lab=D_buff}
N 1160 1430 1200 1430 {lab=DOUT}
N 1160 1430 1160 1530 {lab=DOUT}
N 880 1050 920 1050 {lab=VIN_2}
N 970 1050 1000 1050 {lab=CCOSENS_OUT}
N 880 1140 920 1140 {lab=VIN_1}
N 970 1140 1000 1140 {lab=CCOREF_OUT}
N 700 1460 860 1460 {lab=VIN_2}
N 700 1750 860 1750 {lab=VIN_1}
N 860 1460 860 1530 {lab=VIN_2}
N 860 1680 860 1750 {lab=VIN_1}
N 860 1620 860 1680 {lab=VIN_1}
N 860 1620 910 1620 {lab=VIN_1}
N 860 1530 900 1530 {lab=VIN_2}
C {devices/lab_pin.sym} 1050 1480 1 0 {name=p14 sig_type=std_logic lab=VDD_1}
C {devices/lab_pin.sym} 910 1620 1 0 {name=p16 sig_type=std_logic lab=VIN_1}
C {devices/lab_pin.sym} 1050 1670 3 0 {name=p17 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 900 1530 1 0 {name=p20 sig_type=std_logic lab=VIN_2}
C {devices/lab_pin.sym} 650 1670 1 0 {name=l5 sig_type=std_logic lab=VDD_1}
C {devices/lab_pin.sym} 650 1790 3 0 {name=l6 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 650 1380 1 0 {name=l11 sig_type=std_logic lab=VDD_1}
C {devices/lab_pin.sym} 650 1500 3 0 {name=l12 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 510 1210 0 0 {name=l24 sig_type=std_logic lab=VDD_1}
C {devices/lab_pin.sym} 510 1330 0 0 {name=l39 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 580 1300 2 0 {name=p5 sig_type=std_logic lab=V_pre_gate}
C {devices/lab_pin.sym} 750 1420 1 0 {name=p9 sig_type=std_logic lab=V_no_buff_s}
C {devices/lab_pin.sym} 730 1710 1 0 {name=p11 sig_type=std_logic lab=V_no_buff_r}
C {devices/lab_pin.sym} 530 1200 0 1 {name=p10 sig_type=std_logic lab=DOUT}
C {devices/lab_pin.sym} 1240 1510 0 0 {name=l3 sig_type=std_logic lab=VDD_1}
C {devices/lab_pin.sym} 1240 1550 0 0 {name=l4 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1170 1610 0 0 {name=l9 sig_type=std_logic lab=VDD_1}
C {devices/lab_pin.sym} 1170 1650 0 0 {name=l10 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 500 1600 0 0 {name=l14 sig_type=std_logic lab=VDD_1}
C {devices/lab_pin.sym} 500 1720 0 0 {name=l16 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 520 1590 0 1 {name=l17 sig_type=std_logic lab=VDD_1}
C {ipin.sym} 460 1770 3 0 {name=p15 lab=CREF}
C {ipin.sym} 460 1480 3 0 {name=p18 lab=CSENS}
C {iopin.sym} 380 980 2 0 {name=p19 lab=VDD_1}
C {iopin.sym} 380 1010 2 0 {name=p21 lab=VSS}
C {ipin.sym} 560 1790 0 0 {name=p2 lab=VCTRL}
C {devices/lab_pin.sym} 1300 1530 3 0 {name=p22 sig_type=std_logic lab=D_buff
}
C {devices/lab_pin.sym} 1220 1630 3 0 {name=p23 sig_type=std_logic lab=ND_buff
}
C {opin.sym} 1200 1430 0 0 {name=p24 lab=DOUT}
C {BUFF/BUFF.sym} 1240 1530 0 0 {name=x5}
C {BUFF/BUFF.sym} 1170 1630 0 0 {name=x6}
C {DFF/DFF.sym} 1050 1580 0 0 {name=x1}
C {OSC/OSC.sym} 650 1740 0 0 {name=x3}
C {OSC/OSC.sym} 650 1450 0 0 {name=x4}
C {TGATE/TGATE.sym} 520 1660 0 0 {name=x7}
C {TGATE/TGATE.sym} 530 1270 0 0 {name=x2}
C {ipin.sym} 770 970 0 0 {name=p3 lab=CAPBANK[0]}
C {ipin.sym} 770 1000 0 0 {name=p6 lab=CAPBANK[1]}
C {ipin.sym} 770 1030 0 0 {name=p25 lab=CAPBANK[2]}
C {ipin.sym} 960 970 0 0 {name=p26 lab=CHOP}
C {devices/lab_pin.sym} 560 1500 0 0 {name=p8 sig_type=std_logic lab=VCTRL}
C {devices/lab_pin.sym} 950 1030 0 0 {name=l1 sig_type=std_logic lab=VDD_1}
C {devices/lab_pin.sym} 950 1070 0 0 {name=l2 sig_type=std_logic lab=VSS}
C {BUFF/BUFF.sym} 950 1050 0 0 {name=x8}
C {devices/lab_pin.sym} 880 1050 0 0 {name=p27 sig_type=std_logic lab=VIN_2}
C {devices/lab_pin.sym} 950 1120 0 0 {name=l7 sig_type=std_logic lab=VDD_1}
C {devices/lab_pin.sym} 950 1160 0 0 {name=l8 sig_type=std_logic lab=VSS}
C {BUFF/BUFF.sym} 950 1140 0 0 {name=x9}
C {devices/lab_pin.sym} 880 1140 0 0 {name=p29 sig_type=std_logic lab=VIN_1}
C {opin.sym} 1000 1050 0 0 {name=p31 lab=CCOSENS_OUT}
C {opin.sym} 1000 1140 0 0 {name=p28 lab=CCOREF_OUT}
C {ipin.sym} 1410 970 0 0 {name=p30 lab=DFF_IN_SEL}
C {ipin.sym} 1410 1000 0 0 {name=p32 lab=DFF_IN1}
C {ipin.sym} 1410 1030 0 0 {name=p33 lab=DFF_IN2}
