transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+E:/quartus_workspace/LCD_Driver_top {E:/quartus_workspace/LCD_Driver_top/LCD_top.v}
vlog -vlog01compat -work work +incdir+E:/quartus_workspace/LCD_Driver_top {E:/quartus_workspace/LCD_Driver_top/LCD_Driver.v}
vlog -vlog01compat -work work +incdir+E:/quartus_workspace/LCD_Driver_top {E:/quartus_workspace/LCD_Driver_top/clkDiv.v}

