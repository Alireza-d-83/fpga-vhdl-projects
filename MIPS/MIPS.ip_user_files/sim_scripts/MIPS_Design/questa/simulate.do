onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib MIPS_Design_opt

do {wave.do}

view wave
view structure
view signals

do {MIPS_Design.udo}

run -all

quit -force
