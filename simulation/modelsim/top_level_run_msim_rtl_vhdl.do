transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/samuel/Documentos/circuitos/src/debounce.vhd}
vcom -93 -work work {/home/samuel/Documentos/circuitos/src/datapath.vhd}
vcom -93 -work work {/home/samuel/Documentos/circuitos/src/mef.vhd}
vcom -93 -work work {/home/samuel/Documentos/circuitos/src/display_7seg.vhd}
vcom -93 -work work {/home/samuel/Documentos/circuitos/src/top_level.vhd}

vcom -93 -work work {/home/samuel/Documentos/circuitos/testbench/tb_top_level.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  tb_top_level

add wave *
view structure
view signals
run -all
