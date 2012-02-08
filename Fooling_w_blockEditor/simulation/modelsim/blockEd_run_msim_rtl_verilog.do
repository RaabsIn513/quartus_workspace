transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+E:/quartus_workspace/Fooling_w_blockEditor {E:/quartus_workspace/Fooling_w_blockEditor/blockEd.v}

vlog -vlog01compat -work work +incdir+E:/quartus_workspace/Fooling_w_blockEditor/simulation/modelsim {E:/quartus_workspace/Fooling_w_blockEditor/simulation/modelsim/testBench.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneiii_ver -L rtl_work -L work -voptargs="+acc"  aTestBench

add wave *
view structure
view signals
run -all
