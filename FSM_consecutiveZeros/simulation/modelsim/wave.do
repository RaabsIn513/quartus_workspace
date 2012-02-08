view wave 
wave clipboard store
wave create -driver freeze -pattern repeater -initialvalue HiZ -period 50ps -sequence { 010011000100  } -repeat forever -starttime 0ps -endtime 1000ps sim:/FSM_consecZeros/inBit 
wave create -driver freeze -pattern repeater -initialvalue HiZ -period 50ps -sequence { 0 1 0 0 1 1 0 0  } -repeat 1 -starttime 0ps -endtime 1000ps sim:/FSM_consecZeros/inBit 
wave create -driver freeze -pattern clock -initialvalue HiZ -period 100ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/FSM_consecZeros/clock 
wave create -driver freeze -pattern constant -value 0 -starttime 0ps -endtime 1000ps sim:/FSM_consecZeros/reset 
wave modify -driver freeze -pattern repeater -initialvalue HiZ -period 50ps -sequence { St0 St1 St0 St0 St1 St1 St0 St0  } -repeat 3 -starttime 0ps -endtime 1000ps Edit:/FSM_consecZeros/inBit 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 100ps -dutycycle 50 -starttime 0ps -endtime 1000ps Edit:/FSM_consecZeros/clock 
wave modify -driver freeze -pattern clock -initialvalue St0 -period 25ps -dutycycle 50 -starttime 0ps -endtime 1000ps Edit:/FSM_consecZeros/clock 
wave modify -driver freeze -pattern repeater -initialvalue (no value) -period 50ps -sequence { 1 0 0 0 0 0 0 0 0 0  } -repeat 2 -starttime 0ps -endtime 1000ps Edit:/FSM_consecZeros/reset 
wave create -pattern repeater -initialvalue 10 -period 50ps -sequence { 00 01 10 11  } -repeat 2 -range 1 0 -starttime 0ps -endtime 1000ps sim:/FSM_consecZeros/state 
WaveExpandAll -1
WaveCollapseAll -1
wave clipboard restore
