transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+E:/quartus_workspace/clkDiv_top {E:/quartus_workspace/clkDiv_top/useClkDiv.v}
vlog -vlog01compat -work work +incdir+E:/quartus_workspace/clkDiv_top {E:/quartus_workspace/clkDiv_top/clkDiv.v}

