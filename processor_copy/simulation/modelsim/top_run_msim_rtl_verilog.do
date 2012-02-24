transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+E:/quartus_workspace/processor_copy {E:/quartus_workspace/processor_copy/Top.v}
vlog -vlog01compat -work work +incdir+E:/quartus_workspace/processor_copy {E:/quartus_workspace/processor_copy/ALU.v}
vlog -vlog01compat -work work +incdir+E:/quartus_workspace/processor_copy {E:/quartus_workspace/processor_copy/ControlBlock.v}
vlog -vlog01compat -work work +incdir+E:/quartus_workspace/processor_copy {E:/quartus_workspace/processor_copy/MAR.v}
vlog -vlog01compat -work work +incdir+E:/quartus_workspace/processor_copy {E:/quartus_workspace/processor_copy/Memory.v}
vlog -vlog01compat -work work +incdir+E:/quartus_workspace/processor_copy {E:/quartus_workspace/processor_copy/Stack.v}
vlog -vlog01compat -work work +incdir+E:/quartus_workspace/processor_copy {E:/quartus_workspace/processor_copy/PC_MD.v}
vlog -vlog01compat -work work +incdir+E:/quartus_workspace/processor_copy {E:/quartus_workspace/processor_copy/IR_AC.v}

