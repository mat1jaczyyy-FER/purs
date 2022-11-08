# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct H:\FER\7.semestar\purs\lab\matijaca_dominik\v4\zynq1\platform.tcl
# 
# OR launch xsct and run below command.
# source H:\FER\7.semestar\purs\lab\matijaca_dominik\v4\zynq1\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {zynq1}\
-hw {H:\FER\7.semestar\purs\lab\matijaca_dominik\v4\zynq1.xsa}\
-proc {ps7_cortexa9_0} -os {standalone} -fsbl-target {psu_cortexa53_0} -out {H:/FER/7.semestar/purs/lab/matijaca_dominik/v4}

platform write
platform generate -domains 
platform active {zynq1}
platform generate
