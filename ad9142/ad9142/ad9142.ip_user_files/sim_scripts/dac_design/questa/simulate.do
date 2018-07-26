onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib dac_design_opt

do {wave.do}

view wave
view structure
view signals

do {dac_design.udo}

run -all

quit -force
