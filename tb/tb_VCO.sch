v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 50 -1020 850 -620 {flags=graph
y1=-0.031442654
y2=0.063803322
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=7.7066335e-10
x2=5.0770652e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/LC_VCO_tb.raw
autoload=1
sim_type=tran
color="5 12"
node="Out;outp 0.6 -
i(v2)"}
N 180 -300 180 -260 {lab=GND}
N 120 -440 120 -360 {lab=VDD}
N 120 -300 120 -260 {lab=GND}
N 180 -440 180 -360 {lab=VCTRL}
N 630 -320 680 -320 {lab=OUTp}
N 630 -300 680 -300 {lab=OUTn}
N 380 -320 420 -320 {lab=VCTRL}
N 520 -220 520 -190 {lab=GND}
N 240 -300 240 -280 {lab=Ibias}
N 380 -300 420 -300 {lab=Ibias}
N 520 -420 520 -400 {lab=VDD}
C {title.sym} 160 -30 0 0 {name=l4 author="Rajinthan R"}
C {vsource.sym} 120 -330 0 0 {name=V1 value=1.2 savecurrent=false}
C {vsource.sym} 180 -330 0 0 {name=V2 value=0.6 savecurrent=false}
C {gnd.sym} 120 -260 0 0 {name=l1 lab=GND}
C {gnd.sym} 180 -260 0 0 {name=l2 lab=GND}
C {devices/vdd.sym} 120 -440 0 0 {name=l5 lab=VDD}
C {devices/vdd.sym} 180 -440 0 0 {name=l8 lab=VCTRL}
C {launcher.sym} 720 -590 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/LC_VCO1_tb.raw tran 0.0n 30n "
}
C {opin.sym} 680 -320 0 0 {name=p2 lab=OUTp
}
C {opin.sym} 680 -300 0 0 {name=p1 lab=OUTn
}
C {iopin.sym} 520 -420 3 0 {name=p4 lab=VDD
}
C {iopin.sym} 380 -320 2 0 {name=p6 lab=VCTRL
}
C {iopin.sym} 520 -190 1 0 {name=p3 lab=GND
}
C {devices/isource.sym} 240 -330 0 0 {name=I0 value=50u}
C {devices/vdd.sym} 240 -360 0 0 {name=l12 lab=VDD}
C {devices/vdd.sym} 240 -280 2 0 {name=l3 lab=Ibias}
C {iopin.sym} 380 -300 2 0 {name=p5 lab=Ibias
}
C {devices/code_shown.sym} 930 -670 0 0 {name=NGSPICE1 only_toplevel=true 
value="
.include /foss/designs/frac-n-pll-vco-mixdes_2026/schematic/blocks/lc-vco/simulations/IHP_4nH_Inductor.spice
.param temp=27
.control
save all
*.ic v(OUTp)=0.6

.options maxstep=10n reltol=1e-3 abstol=1e-6
save v(vout)
tran 10p 50n UIC

* Save transient waveform to raw file
write LC_VCO_tb.raw

* Plot time-domain waveform
plot v(OUTp) xlimit 5n 60n

* Perform FFT on output
fft v(OUTp)

* Convert FFT magnitude to dB
let vmag = db(mag(v(OUTp)))

* Plot FFT result
plot vmag xlabel 'Frequency (Hz)' xlimit 0 5G

* Save FFT data to text file
wrdata fft_output(VCTRL=0.6).txt vmag

quit 0
.endc
"}
C {/foss/designs/frac-n-pll-vco-mixdes_2026/schematic/blocks/lc-vco/LC_VCO.sym} 520 -310 0 0 {name=x2}
C {simulator_commands_shown.sym} 920 -900 0 0 {
name=Libs_Ngspice
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

"
      }
