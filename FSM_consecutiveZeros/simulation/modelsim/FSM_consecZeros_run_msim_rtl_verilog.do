transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+E:/quartus_workspace/FSM_consecutiveZeros {E:/quartus_workspace/FSM_consecutiveZeros/FSM_consecZeros.v}

