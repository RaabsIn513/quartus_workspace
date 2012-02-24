transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+E:/quartus_workspace/TOP2 {E:/quartus_workspace/TOP2/TOP.v}
vlog -vlog01compat -work work +incdir+E:/quartus_workspace/TOP2 {E:/quartus_workspace/TOP2/pc_md.v}
vlog -vlog01compat -work work +incdir+E:/quartus_workspace/TOP2 {E:/quartus_workspace/TOP2/mar.v}
vlog -vlog01compat -work work +incdir+E:/quartus_workspace/TOP2 {E:/quartus_workspace/TOP2/ac_ir.v}
vlog -vlog01compat -work work +incdir+E:/quartus_workspace/TOP2 {E:/quartus_workspace/TOP2/alu.v}
vlog -vlog01compat -work work +incdir+E:/quartus_workspace/TOP2 {E:/quartus_workspace/TOP2/controlblock.v}
vlog -vlog01compat -work work +incdir+E:/quartus_workspace/TOP2 {E:/quartus_workspace/TOP2/stack.v}
vlog -vlog01compat -work work +incdir+E:/quartus_workspace/TOP2 {E:/quartus_workspace/TOP2/memory.v}

