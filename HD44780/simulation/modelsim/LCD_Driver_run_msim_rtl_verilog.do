transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+E:/quartus_workspace/HD44780 {E:/quartus_workspace/HD44780/LCD_Driver.v}
vlog -vlog01compat -work work +incdir+E:/quartus_workspace/HD44780 {E:/quartus_workspace/HD44780/clkDiv.v}

