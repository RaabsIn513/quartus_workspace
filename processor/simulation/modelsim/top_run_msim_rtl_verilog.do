transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+E:/quartus_workspace/processor {E:/quartus_workspace/processor/Stack.v}
vlog -vlog01compat -work work +incdir+E:/quartus_workspace/processor {E:/quartus_workspace/processor/mux41.v}
vlog -vlog01compat -work work +incdir+E:/quartus_workspace/processor {E:/quartus_workspace/processor/MAR.v}
vlog -vlog01compat -work work +incdir+E:/quartus_workspace/processor {E:/quartus_workspace/processor/Memory.v}
vlog -vlog01compat -work work +incdir+E:/quartus_workspace/processor {E:/quartus_workspace/processor/mux21.v}
vlog -vlog01compat -work work +incdir+E:/quartus_workspace/processor {E:/quartus_workspace/processor/ALU.v}
vlog -vlog01compat -work work +incdir+E:/quartus_workspace/processor {E:/quartus_workspace/processor/ControlBlock.v}
vlog -vlog01compat -work work +incdir+E:/quartus_workspace/processor {E:/quartus_workspace/processor/top.v}

