onerror {exit -code 1}
vlib work
vcom -work work MMU_v1.vho
vcom -work work F-mul.vwf.vht
vsim -novopt -c -t 1ps -sdfmax F2_vhd_vec_tst/i1=MMU_v1_vhd.sdo -L cycloneive -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.F2_vhd_vec_tst
vcd file -direction MMU_v1.msim.vcd
vcd add -internal F2_vhd_vec_tst/*
vcd add -internal F2_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f

