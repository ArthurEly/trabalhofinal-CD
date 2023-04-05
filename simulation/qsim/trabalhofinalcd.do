onerror {exit -code 1}
vlib work
vlog -work work trabalhofinalcd.vo
vlog -work work Waveform.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.trabalhofinal_swap_vlg_vec_tst -voptargs="+acc"
vcd file -direction trabalhofinalcd.msim.vcd
vcd add -internal trabalhofinal_swap_vlg_vec_tst/*
vcd add -internal trabalhofinal_swap_vlg_vec_tst/i1/*
run -all
quit -f
