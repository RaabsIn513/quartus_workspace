transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+E:/quartus_workspace/usePC {E:/quartus_workspace/usePC/PC.v}
vlog -vlog01compat -work work +incdir+E:/quartus_workspace/usePC {E:/quartus_workspace/usePC/PCtop.v}

