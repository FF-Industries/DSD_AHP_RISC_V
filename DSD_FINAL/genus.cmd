# Cadence Genus(TM) Synthesis Solution, Version 20.11-s111_1, built Apr 26 2021 14:57:38

# Date: Fri Nov 03 08:32:41 2023
# Host: cad2 (x86_64 w/Linux 3.10.0-1160.el7.x86_64) (2cores*2cpus*1physical cpu*Intel(R) Pentium(R) CPU G3250 @ 3.20GHz 3072KB)
# OS:   Red Hat Enterprise Linux Server release 7.9 (Maipo)

read_libs saed90nm_typ.lib
read_hdl -sv top.v controller.v maindec.v regfile.v aludec.v datapath.v mux3.v mux2.v adder.v flopr.v extend.v alu.v riscvsingle.v
elaborate
read_sdc constraints_top.sdc
syn_generic
syn_map
syn_opt -incremental
report_timing> top_timinig.rpt
report_area> top_area.rpt
report_power> top_power.rpt
write_hdl> top_netlist.v
