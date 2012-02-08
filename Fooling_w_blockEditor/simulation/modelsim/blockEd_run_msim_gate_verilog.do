transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {blockEd_6_1200mv_85c_slow.vo}

vlog -vlog01compat -work work +incdir+E:/quartus_workspace/Fooling_w_blockEditor/simulation/modelsim {E:/quartus_workspace/Fooling_w_blockEditor/simulation/modelsim/testBench.v}

vsim -t 1ps +transport_int_delays +transport_path_delays -L altera_ver -L cycloneiii_ver -L gate_work -L work -voptargs="+acc"  aTestBench

add wave *
view structure
view signals
run -all
