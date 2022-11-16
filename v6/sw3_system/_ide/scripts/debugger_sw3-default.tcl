# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: H:\FER\7.semestar\purs\lab\matijaca_dominik\v6\sw3_system\_ide\scripts\debugger_sw3-default.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source H:\FER\7.semestar\purs\lab\matijaca_dominik\v6\sw3_system\_ide\scripts\debugger_sw3-default.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent Zed 210248471492" && level==0 && jtag_device_ctx=="jsn-Zed-210248471492-03727093-0"}
fpga -file H:/FER/7.semestar/purs/lab/matijaca_dominik/v6/sw3/_ide/bitstream/zynq1.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw H:/FER/7.semestar/purs/lab/matijaca_dominik/v6/zynq1/export/zynq1/hw/zynq1.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source H:/FER/7.semestar/purs/lab/matijaca_dominik/v6/sw3/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow H:/FER/7.semestar/purs/lab/matijaca_dominik/v6/sw3/Debug/sw3.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con
