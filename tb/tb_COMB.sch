v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 1530 -930 2330 -530 {flags=graph
y1=-0.066103756
y2=2.0232888
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-7.1688304e-08
x2=3.634279e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
autoload=1
color="5 4"
node="Out;outp
F_DIV"
hilight_wave=-1}
B 2 1530 -1330 2330 -930 {flags=graph
y1=-0.38082238
y2=1.8658542
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-7.1688304e-08
x2=3.634279e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
color="7 8"
node="f_ref
f_vco
"
hilight_wave=-1}
B 2 1530 -1730 2330 -1330 {flags=graph
y1=-0.016
y2=1.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-7.1688304e-08
x2=3.634279e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
color="9 10 12"
node="UP;VDD up -
dn
CTRL"
hilight_wave=-1}
B 2 1530 -2130 2330 -1730 {flags=graph
y1=1.0513866
y2=1.2807101
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-7.1688304e-08
x2=3.634279e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
color=11
node="vdd
"}
B 2 1530 -400 2330 0 {flags=graph
y1=-180
y2=-3.9
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=7.8262937e+08
x2=3.288142e+09
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
autoload=1
sim_type=sp
color="5 4"
node="Out;outp db20()
F_DIV;F_DIV db20()"
hilight_wave=-1}
P 4 1 2140 -1610 {}
P 4 1 820 -360 {}
N 870 -690 870 -610 {lab=VDD}
N 870 -550 870 -510 {lab=GND}
N 990 -550 990 -530 {lab=IbiasVCO}
N 1220 -330 1270 -330 {lab=OUTn}
N 970 -350 1010 -350 {lab=CTRL}
N 1110 -250 1110 -220 {lab=GND}
N 970 -330 1010 -330 {lab=IbiasVCO}
N 1110 -450 1110 -430 {lab=VDD}
C {title.sym} 160 -30 0 0 {name=l4 author="Rajinthan R"}
C {vsource.sym} 870 -580 0 0 {name=V1 value=1.2 savecurrent=false}
C {gnd.sym} 870 -510 0 0 {name=l1 lab=GND}
C {devices/vdd.sym} 870 -690 0 0 {name=l5 lab=VDD}
C {devices/isource.sym} 990 -580 0 0 {name=I0 value=50u}
C {devices/vdd.sym} 990 -610 0 0 {name=l12 lab=VDD}
C {devices/vdd.sym} 990 -530 2 0 {name=l3 lab=IbiasVCO}
C {vsource.sym} 500 -680 0 0 {name=Vfref value="0 pulse(0 1.2 0n 0.1n 0.1n 5n 10n)" savecurrent=false}
C {lab_pin.sym} 500 -710 0 1 {name=p11 sig_type=std_logic lab=F_REF}
C {gnd.sym} 500 -650 0 0 {name=l10 lab=GND}
C {lab_pin.sym} 700 -400 0 0 {name=p8 lab=VDD}
C {lab_pin.sym} 700 -280 0 0 {name=p14 lab=GND}
C {launcher.sym} 1600 -500 0 0 {name=h1
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_COMB.raw tran
"
}
C {simulator_commands_shown.sym} 130 -1150 0 0 {name=SimulatorNGSPICE
simulator=ngspice
only_toplevel=false 
value="
.model freq_div freq_div
.include /foss/designs/frac-n-pll-vco-mixdes_2026/schematic/blocks/lc-vco/simulations/IHP_4nH_Inductor.spice
.option temp = 27
.param VDD = 1.2

.control
.options maxstep=10n reltol=1e-3 abstol=1e-6
pre_osdi /foss/designs/PLL_IHP_PDK/src/freq_div.osdi
*save all
write tb_COMB.raw
set appendwrite
  
  tran 10p 500n uic
  write tb_COMB.raw
  linearize
  fft v(outp) v(F_DIV)
  write tb_COMB.raw

*quit 0
.endc
"}
C {simulator_commands_shown.sym} 140 -1590 0 0 {
name=Libs_Ngspice1
simulator=ngspice
only_toplevel=false
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerHBT.lib hbt_typ
.lib cornerRES.lib res_typ
.lib cornerCAP.lib cap_typ_stat
.include /foss/pdks/ihp-sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
.global VDD GND


.param CP_N_L = 0.5u
.param CP_N_W = 60u
.param CP_P_M = 1
.param CP_P_L = 0.5u
.param CP_P_W = 200u
.param CP_N_M = 1
.param C_CP = 400p
"}
C {launcher.sym} 1600 -460 0 0 {name=h4
descr=SimulateNGSPICE
tclcommand="
xschem netlist; 
xschem simulate; 
xschem raw_read $netlist_dir/tb_COMB.raw tran; 
xschem redraw
"}
C {/foss/designs/PLL_IHP_PDK/src/CP.sym} 700 -340 0 0 {name=x1}
C {lab_pin.sym} 500 -560 0 1 {name=p12 sig_type=std_logic lab=Ibias}
C {gnd.sym} 500 -500 0 0 {name=l11 lab=GND}
C {isource.sym} 500 -530 0 0 {name=I1 value=10m}
C {lab_pin.sym} 630 -310 0 0 {name=p13 sig_type=std_logic lab=Ibias}
C {/foss/designs/PLL_IHP_PDK/src/PFD_std.sym} 360 -340 0 0 {name=x3}
C {lab_pin.sym} 360 -400 0 0 {name=p15 lab=VDD}
C {lab_pin.sym} 510 -360 0 1 {name=p16 lab=UP}
C {lab_pin.sym} 330 -350 0 0 {name=p17 lab=F_REF}
C {lab_pin.sym} 330 -330 0 0 {name=p18 lab=F_VCO}
C {lab_pin.sym} 510 -320 0 1 {name=p19 lab=DN}
C {lab_pin.sym} 360 -280 0 0 {name=p20 lab=GND}
C {lab_pin.sym} 630 -350 0 0 {name=p21 lab=UP}
C {lab_pin.sym} 630 -330 0 0 {name=p22 lab=DN}
C {opin.sym} 1270 -330 0 0 {name=p24 lab=OUTn
}
C {iopin.sym} 1110 -450 3 0 {name=p25 lab=VDD
}
C {iopin.sym} 970 -350 2 0 {name=p26 lab=CTRL
}
C {iopin.sym} 1110 -220 1 0 {name=p27 lab=GND
}
C {iopin.sym} 970 -330 2 0 {name=p28 lab=IbiasVCO
}
C {/foss/designs/frac-n-pll-vco-mixdes_2026/schematic/blocks/lc-vco/LC_VCO.sym} 1110 -340 0 0 {name=x4}
C {/foss/designs/PLL_IHP_PDK/src/PFD_std.sym} 360 -180 0 0 {name=x2}
C {lab_pin.sym} 360 -240 0 0 {name=p1 lab=VDD}
C {lab_pin.sym} 510 -200 0 1 {name=p2 lab=UP}
C {lab_pin.sym} 330 -190 0 0 {name=p3 lab=F_REF}
C {lab_pin.sym} 330 -170 0 0 {name=p4 lab=F_VCO}
C {lab_pin.sym} 510 -160 0 1 {name=p5 lab=DN}
C {lab_pin.sym} 360 -120 0 0 {name=p6 lab=GND}
C {lab_pin.sym} 1300 -350 0 1 {name=p23 lab=OUTp}
C {lab_pin.sym} 1200 -620 0 0 {name=p7 lab=OUTp}
C {lab_pin.sym} 1380 -620 0 1 {name=p29 lab=F_DIV}
C {lab_pin.sym} 1110 -730 0 0 {name=p30 lab=F_DIV}
C {devices/res.sym} 1140 -730 1 0 {name=R1
value=4
footprint=1206
device=resistor
m=1}
C {lab_pin.sym} 1170 -730 0 1 {name=p31 lab=F_VCO}
C {/foss/designs/PLL_IHP_PDK/src/freq_div.sym} 1230 -620 0 0 {name=n1}
C {sg13g2_stdcells/sg13g2_inv_2.sym} 1260 -350 0 0 {name=x5 VDD=VDD VSS=GND prefix=sg13g2_ }
C {lab_pin.sym} 800 -340 0 1 {name=p10 lab=CTRL}
