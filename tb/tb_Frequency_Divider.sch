v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 1530 -930 2330 -530 {flags=graph
y1=-0.012
y2=1.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=9.975e-14
x2=1.9999999e-07
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
y1=-0.097333465
y2=1.4626665
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=9.975e-14
x2=1.9999999e-07
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
x1=9.975e-14
x2=1.9999999e-07
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
x1=9.975e-14
x2=1.9999999e-07
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
x1=-1.3550367e+08
x2=5.3363697e+09
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
N 870 -690 870 -610 {lab=VDD}
N 870 -550 870 -510 {lab=GND}
C {title.sym} 160 -30 0 0 {name=l4 author="Rajinthan R"}
C {vsource.sym} 870 -580 0 0 {name=V1 value=1.2 savecurrent=false}
C {gnd.sym} 870 -510 0 0 {name=l1 lab=GND}
C {devices/vdd.sym} 870 -690 0 0 {name=l5 lab=VDD}
C {vsource.sym} 170 -480 0 0 {name=Vfref value="0 pulse(0 'VDD' 4n 0.1n 0.1n 5n 10n)" savecurrent=false}
C {lab_pin.sym} 170 -510 0 1 {name=p11 sig_type=std_logic lab=F_REF}
C {gnd.sym} 170 -450 0 0 {name=l10 lab=GND}
C {launcher.sym} 1600 -490 0 0 {name=h1
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_COMB.raw tran
"
}
C {simulator_commands_shown.sym} 110 -1150 0 0 {name=SimulatorNGSPICE
simulator=ngspice
only_toplevel=false 
value="
.osdi /foss/designs/PLL_IHP_PDK/src/freq_div.osdi
*.include tb_CP.save
.param RAW_TEMP = agauss(40, 30, 1)
.param TEMPGAUSS = max(20, min(RAW_TEMP, 80))
.option temp = 'TEMPGAUSS'
.param VDDGAUSS = agauss(1.2, 0.05, 1)

.param VDD = 'VDDGAUSS'
* analysis

.control
*save all
write tb_COMB.raw
set appendwrite
let i = 0
dowhile i < 1

  
  tran 10p 200n uic
  write tb_COMB.raw
  linearize v(outp)
  fft v(outp)
  write tb_COMB.raw
  fft v(F_DIV)
  write tb_COMB.raw
  let i = i + 1
end
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
.param C_CP = 20p
"}
C {launcher.sym} 1600 -460 0 0 {name=h4
descr=SimulateNGSPICE
tclcommand="
xschem netlist; 
xschem simulate; 
xschem raw_read $netlist_dir/tb_COMB.raw tran; 
xschem redraw
"}
C {lab_pin.sym} 760 -410 0 0 {name=p15 lab=VDD}
C {lab_pin.sym} 760 -290 0 0 {name=p6 lab=GND}
C {lab_pin.sym} 730 -350 0 0 {name=p1 sig_type=std_logic lab=F_REF}
C {lab_pin.sym} 910 -350 0 1 {name=p2 sig_type=std_logic lab=F_OUT}
C {/foss/designs/PLL_IHP_PDK/src/freq_div.sym} 760 -350 0 0 {name=n1 ratio=4 vth=0.6 vh=1.2 vl=0.0 tr=20e-12}
