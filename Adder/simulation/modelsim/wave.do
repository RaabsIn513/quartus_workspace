onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /Adder_TestBench/clock
add wave -noupdate /Adder_TestBench/datA
add wave -noupdate /Adder_TestBench/datB
add wave -noupdate /Adder_TestBench/datZ
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {279 ps} 0}
configure wave -namecolwidth 200
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {869 ps}
