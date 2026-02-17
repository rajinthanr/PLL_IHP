v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
L 4 540 -880 1230 -880 {}
L 4 1230 -880 1230 -150 {}
L 4 540 -150 1230 -150 {}
L 4 540 -880 540 -150 {}
L 4 1270 -880 1270 -150 {}
L 4 1270 -150 1920 -150 {}
L 4 1920 -880 1920 -150 {}
L 4 1270 -880 1920 -880 {}
N 960 -250 960 -210 {lab=GND}
N 960 -390 960 -310 {lab=net2}
N 930 -280 960 -280 {lab=GND}
N 920 -420 960 -420 {lab=GND}
N 960 -480 960 -450 {lab=Vbn}
N 960 -660 960 -620 {lab=net1}
N 960 -780 960 -720 {lab=VDD}
N 1010 -420 1030 -420 {lab=Vbn}
N 1010 -480 1010 -420 {lab=Vbn}
N 1000 -420 1010 -420 {lab=Vbn}
N 960 -480 1010 -480 {lab=Vbn}
N 650 -780 650 -720 {lab=VDD}
N 650 -530 650 -480 {lab=Vbp}
N 1330 -280 1360 -280 {lab=DN}
N 1400 -250 1400 -210 {lab=GND}
N 1400 -390 1400 -310 {lab=#net3}
N 1400 -280 1430 -280 {lab=GND}
N 1400 -420 1440 -420 {lab=GND}
N 1400 -660 1400 -620 {lab=#net4}
N 1400 -780 1400 -720 {lab=VDD}
N 1330 -420 1360 -420 {lab=Vbn}
N 1400 -510 1400 -450 {lab=CTRL}
N 1320 -590 1360 -590 {lab=Vbp}
N 1330 -690 1360 -690 {lab=UP}
N 1660 -510 1810 -510 {lab=CTRL}
N 1400 -560 1400 -510 {lab=CTRL}
N 690 -690 730 -690 {lab=GND}
N 610 -690 650 -690 {lab=VDD}
N 610 -590 650 -590 {lab=VDD}
N 1400 -690 1440 -690 {lab=VDD}
N 1400 -590 1440 -590 {lab=VDD}
N 910 -690 960 -690 {lab=VDD}
N 910 -590 960 -590 {lab=VDD}
N 1000 -690 1040 -690 {lab=GND}
N 650 -660 650 -620 {lab=#net5}
N 710 -590 730 -590 {lab=Vbp}
N 1660 -400 1660 -350 {lab=GND}
N 1660 -510 1660 -460 {lab=CTRL}
N 1400 -510 1660 -510 {lab=CTRL}
N 1000 -280 1040 -280 {lab=VDD}
N 1000 -590 1040 -590 {lab=Vbp}
N 710 -590 710 -530 {lab=Vbp}
N 690 -590 710 -590 {lab=Vbp}
N 650 -530 710 -530 {lab=Vbp}
N 650 -560 650 -530 {lab=Vbp}
N 960 -560 960 -480 {lab=Vbn}
N 650 -420 650 -370 {lab=Ibias}
C {opin.sym} 180 -210 0 0 {name=p4 lab=CTRL}
C {ipin.sym} 110 -220 0 0 {name=p12 lab=UP}
C {ipin.sym} 110 -250 0 0 {name=p1 lab=VDD}
C {ipin.sym} 110 -160 0 0 {name=p5 lab=Ibias}
C {ipin.sym} 110 -190 0 0 {name=p20 lab=DN}
C {title.sym} 160 -30 0 0 {name=l1 author="Rajinthan R"}
C {lab_pin.sym} 1030 -420 0 1 {name=p14 sig_type=std_logic lab=Vbn}
C {lab_pin.sym} 930 -280 0 0 {name=p2 sig_type=std_logic lab=GND}
C {lab_pin.sym} 960 -780 0 1 {name=p6 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 920 -420 0 0 {name=p8 sig_type=std_logic lab=GND}
C {lab_pin.sym} 960 -210 0 1 {name=p9 sig_type=std_logic lab=GND}
C {sg13g2_pr/sg13_lv_nmos.sym} 980 -420 0 1 {name=M2
l=\{CP_N_L\}
w=\{CP_N_W\}
ng=1
m=\{CP_N_M\}
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 980 -280 0 1 {name=M1
l=\{CP_N_L\}
w=\{CP_N_W\}
ng=1
m=\{CP_N_M\}
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 980 -590 0 1 {name=M3
l=\{CP_P_L\}
w=\{CP_P_W\}
ng=1
m=\{CP_P_M\}
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 980 -690 0 1 {name=M4
l=\{CP_P_L\}
w=\{CP_P_W\}
ng=1
m=\{CP_P_M\}
model=sg13_lv_pmos
spiceprefix=X
}
C {lab_pin.sym} 650 -780 0 1 {name=p15 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 650 -370 0 1 {name=p18 sig_type=std_logic lab=Ibias}
C {sg13g2_pr/sg13_lv_pmos.sym} 670 -590 0 1 {name=M7
l=\{CP_P_L\}
w=\{CP_P_W\}
ng=1
m=\{CP_P_M\}
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 670 -690 0 1 {name=M8
l=\{CP_P_L\}
w=\{CP_P_W\}
ng=1
m=\{CP_P_M\}
model=sg13_lv_pmos
spiceprefix=X
}
C {lab_pin.sym} 730 -590 0 1 {name=p19 sig_type=std_logic lab=Vbp}
C {lab_pin.sym} 1330 -420 0 0 {name=p11 sig_type=std_logic lab=Vbn}
C {lab_pin.sym} 1430 -280 0 1 {name=p13 sig_type=std_logic lab=GND}
C {lab_pin.sym} 1400 -780 0 0 {name=p16 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1330 -280 0 0 {name=p17 sig_type=std_logic lab=DN}
C {lab_pin.sym} 1440 -420 0 1 {name=p21 sig_type=std_logic lab=GND}
C {lab_pin.sym} 1400 -210 0 0 {name=p22 sig_type=std_logic lab=GND}
C {sg13g2_pr/sg13_lv_nmos.sym} 1380 -420 0 0 {name=M5
l=\{CP_N_L\}
w=\{CP_N_W\}
ng=1
m=\{CP_N_M\}
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 1380 -280 0 0 {name=M6
l=\{CP_N_L\}
w=\{CP_N_W\}
ng=1
m=\{CP_N_M\}
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 1380 -590 0 0 {name=M9
l=\{CP_P_L\}
w=\{CP_P_W\}
ng=1
m=\{CP_P_M\}
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 1380 -690 0 0 {name=M10
l=\{CP_P_L\}
w=\{CP_P_W\}
ng=1
m=\{CP_P_M\}
model=sg13_lv_pmos
spiceprefix=X
}
C {lab_pin.sym} 1320 -590 0 0 {name=p23 sig_type=std_logic lab=Vbp}
C {lab_pin.sym} 1810 -510 0 1 {name=p25 sig_type=std_logic lab=CTRL}
C {lab_pin.sym} 730 -690 0 1 {name=p26 sig_type=std_logic lab=GND}
C {lab_pin.sym} 610 -690 0 0 {name=p27 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 610 -590 0 0 {name=p28 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 920 -690 0 0 {name=p29 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 920 -590 0 0 {name=p30 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1440 -690 0 1 {name=p31 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1440 -590 0 1 {name=p32 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1040 -690 0 1 {name=p33 sig_type=std_logic lab=GND}
C {ipin.sym} 110 -130 0 0 {name=p3 lab=GND}
C {lab_pin.sym} 1660 -350 0 0 {name=p34 sig_type=std_logic lab=GND}
C {sg13g2_pr/cap_cpara.sym} 1660 -430 0 0 {name=C1 model=cparasitic C=1p  spiceprefix=X}
C {lab_pin.sym} 1040 -280 0 1 {name=p7 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1040 -590 0 1 {name=p10 sig_type=std_logic lab=Vbp}
C {lab_pin.sym} 1330 -690 0 0 {name=p24 sig_type=std_logic lab=UP}
C {lab_pin.sym} 960 -640 0 1 {name=p35 sig_type=std_logic lab=net1}
C {lab_pin.sym} 960 -360 0 1 {name=p36 sig_type=std_logic lab=net2}
C {sg13g2_pr/annotate_fet_params.sym} 1110 -860 0 0 {name=annot1 ref=M3}
C {sg13g2_pr/annotate_fet_params.sym} 1120 -300 0 0 {name=annot2 ref=M2}
C {sg13g2_pr/rsil.sym} 650 -450 0 0 {name=R1
w=0.5e-6
l=0.5e-6
model=rsil
body=sub!
spiceprefix=X
b=0
m=1
}
C {sg13g2_pr/annotate_fet_params.sym} 1810 -862.105189945283 0 0 {name=annot3 ref=M9}
C {sg13g2_pr/annotate_fet_params.sym} 1812.208120310291 -302.105189945283 0 0 {name=annot4 ref=M6}
