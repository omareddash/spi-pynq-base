vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_vip_v1_1_13
vlib modelsim_lib/msim/processing_system7_vip_v1_0_15
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/lib_cdc_v1_0_2
vlib modelsim_lib/msim/proc_sys_reset_v5_0_13
vlib modelsim_lib/msim/dist_mem_gen_v8_0_13
vlib modelsim_lib/msim/lib_pkg_v1_0_2
vlib modelsim_lib/msim/lib_srl_fifo_v1_0_2
vlib modelsim_lib/msim/fifo_generator_v13_2_7
vlib modelsim_lib/msim/lib_fifo_v1_0_16
vlib modelsim_lib/msim/axi_lite_ipif_v3_0_4
vlib modelsim_lib/msim/interrupt_control_v3_1_4
vlib modelsim_lib/msim/axi_quad_spi_v3_2_26
vlib modelsim_lib/msim/generic_baseblocks_v2_1_0
vlib modelsim_lib/msim/axi_data_fifo_v2_1_26
vlib modelsim_lib/msim/axi_register_slice_v2_1_27
vlib modelsim_lib/msim/axi_protocol_converter_v2_1_27

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xpm modelsim_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_13 modelsim_lib/msim/axi_vip_v1_1_13
vmap processing_system7_vip_v1_0_15 modelsim_lib/msim/processing_system7_vip_v1_0_15
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap lib_cdc_v1_0_2 modelsim_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 modelsim_lib/msim/proc_sys_reset_v5_0_13
vmap dist_mem_gen_v8_0_13 modelsim_lib/msim/dist_mem_gen_v8_0_13
vmap lib_pkg_v1_0_2 modelsim_lib/msim/lib_pkg_v1_0_2
vmap lib_srl_fifo_v1_0_2 modelsim_lib/msim/lib_srl_fifo_v1_0_2
vmap fifo_generator_v13_2_7 modelsim_lib/msim/fifo_generator_v13_2_7
vmap lib_fifo_v1_0_16 modelsim_lib/msim/lib_fifo_v1_0_16
vmap axi_lite_ipif_v3_0_4 modelsim_lib/msim/axi_lite_ipif_v3_0_4
vmap interrupt_control_v3_1_4 modelsim_lib/msim/interrupt_control_v3_1_4
vmap axi_quad_spi_v3_2_26 modelsim_lib/msim/axi_quad_spi_v3_2_26
vmap generic_baseblocks_v2_1_0 modelsim_lib/msim/generic_baseblocks_v2_1_0
vmap axi_data_fifo_v2_1_26 modelsim_lib/msim/axi_data_fifo_v2_1_26
vmap axi_register_slice_v2_1_27 modelsim_lib/msim/axi_register_slice_v2_1_27
vmap axi_protocol_converter_v2_1_27 modelsim_lib/msim/axi_protocol_converter_v2_1_27

vlog -work xilinx_vip  -incr -mfcu  -sv -L axi_vip_v1_1_13 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+F:/Vivado2022.2/Vivado/2022.2/data/xilinx_vip/include" \
"F:/Vivado2022.2/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"F:/Vivado2022.2/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"F:/Vivado2022.2/Vivado/2022.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"F:/Vivado2022.2/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"F:/Vivado2022.2/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"F:/Vivado2022.2/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"F:/Vivado2022.2/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"F:/Vivado2022.2/Vivado/2022.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"F:/Vivado2022.2/Vivado/2022.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr -mfcu  -sv -L axi_vip_v1_1_13 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../project_2_axi_master_ila.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_2_axi_master_ila.gen/sources_1/bd/design_1/ipshared/ee60/hdl" "+incdir+../../../../project_2_axi_master_ila.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_2_axi_master_ila.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../project_2_axi_master_ila.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../project_2_axi_master_ila.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+F:/Vivado2022.2/Vivado/2022.2/data/xilinx_vip/include" \
"F:/Vivado2022.2/Vivado/2022.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"F:/Vivado2022.2/Vivado/2022.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"F:/Vivado2022.2/Vivado/2022.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"F:/Vivado2022.2/Vivado/2022.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -incr -mfcu  "+incdir+../../../../project_2_axi_master_ila.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_2_axi_master_ila.gen/sources_1/bd/design_1/ipshared/ee60/hdl" "+incdir+../../../../project_2_axi_master_ila.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_2_axi_master_ila.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../project_2_axi_master_ila.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../project_2_axi_master_ila.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+F:/Vivado2022.2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../project_2_axi_master_ila.gen/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_13  -incr -mfcu  -sv -L axi_vip_v1_1_13 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../project_2_axi_master_ila.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_2_axi_master_ila.gen/sources_1/bd/design_1/ipshared/ee60/hdl" "+incdir+../../../../project_2_axi_master_ila.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_2_axi_master_ila.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../project_2_axi_master_ila.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../project_2_axi_master_ila.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+F:/Vivado2022.2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../project_2_axi_master_ila.gen/sources_1/bd/design_1/ipshared/ffc2/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_15  -incr -mfcu  -sv -L axi_vip_v1_1_13 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../project_2_axi_master_ila.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_2_axi_master_ila.gen/sources_1/bd/design_1/ipshared/ee60/hdl" "+incdir+../../../../project_2_axi_master_ila.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_2_axi_master_ila.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../project_2_axi_master_ila.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../project_2_axi_master_ila.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+F:/Vivado2022.2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../project_2_axi_master_ila.gen/sources_1/bd/design_1/ipshared/ee60/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../project_2_axi_master_ila.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_2_axi_master_ila.gen/sources_1/bd/design_1/ipshared/ee60/hdl" "+incdir+../../../../project_2_axi_master_ila.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_2_axi_master_ila.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../project_2_axi_master_ila.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../project_2_axi_master_ila.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+F:/Vivado2022.2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_processing_system7_0_0/sim/design_1_processing_system7_0_0.v" \

vcom -work lib_cdc_v1_0_2  -93  \
"../../../../project_2_axi_master_ila.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13  -93  \
"../../../../project_2_axi_master_ila.gen/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/design_1/ip/design_1_rst_ps7_0_100M_0/sim/design_1_rst_ps7_0_100M_0.vhd" \

vlog -work dist_mem_gen_v8_0_13  -incr -mfcu  "+incdir+../../../../project_2_axi_master_ila.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_2_axi_master_ila.gen/sources_1/bd/design_1/ipshared/ee60/hdl" "+incdir+../../../../project_2_axi_master_ila.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_2_axi_master_ila.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../project_2_axi_master_ila.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../project_2_axi_master_ila.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+F:/Vivado2022.2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../project_2_axi_master_ila.gen/sources_1/bd/design_1/ipshared/0bf5/simulation/dist_mem_gen_v8_0.v" \

vcom -work lib_pkg_v1_0_2  -93  \
"../../../../project_2_axi_master_ila.gen/sources_1/bd/design_1/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2  -93  \
"../../../../project_2_axi_master_ila.gen/sources_1/bd/design_1/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vlog -work fifo_generator_v13_2_7  -incr -mfcu  "+incdir+../../../../project_2_axi_master_ila.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_2_axi_master_ila.gen/sources_1/bd/design_1/ipshared/ee60/hdl" "+incdir+../../../../project_2_axi_master_ila.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_2_axi_master_ila.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../project_2_axi_master_ila.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../project_2_axi_master_ila.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+F:/Vivado2022.2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../project_2_axi_master_ila.gen/sources_1/bd/design_1/ipshared/83df/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_7  -93  \
"../../../../project_2_axi_master_ila.gen/sources_1/bd/design_1/ipshared/83df/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_7  -incr -mfcu  "+incdir+../../../../project_2_axi_master_ila.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_2_axi_master_ila.gen/sources_1/bd/design_1/ipshared/ee60/hdl" "+incdir+../../../../project_2_axi_master_ila.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_2_axi_master_ila.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../project_2_axi_master_ila.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../project_2_axi_master_ila.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+F:/Vivado2022.2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../project_2_axi_master_ila.gen/sources_1/bd/design_1/ipshared/83df/hdl/fifo_generator_v13_2_rfs.v" \

vcom -work lib_fifo_v1_0_16  -93  \
"../../../../project_2_axi_master_ila.gen/sources_1/bd/design_1/ipshared/6c82/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work axi_lite_ipif_v3_0_4  -93  \
"../../../../project_2_axi_master_ila.gen/sources_1/bd/design_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work interrupt_control_v3_1_4  -93  \
"../../../../project_2_axi_master_ila.gen/sources_1/bd/design_1/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_quad_spi_v3_2_26  -93  \
"../../../../project_2_axi_master_ila.gen/sources_1/bd/design_1/ipshared/75b9/hdl/axi_quad_spi_v3_2_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/design_1/ip/design_1_axi_quad_spi_0_0/sim/design_1_axi_quad_spi_0_0.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../project_2_axi_master_ila.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_2_axi_master_ila.gen/sources_1/bd/design_1/ipshared/ee60/hdl" "+incdir+../../../../project_2_axi_master_ila.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_2_axi_master_ila.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../project_2_axi_master_ila.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../project_2_axi_master_ila.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+F:/Vivado2022.2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_ila_0_0/sim/design_1_ila_0_0.v" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work generic_baseblocks_v2_1_0  -incr -mfcu  "+incdir+../../../../project_2_axi_master_ila.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_2_axi_master_ila.gen/sources_1/bd/design_1/ipshared/ee60/hdl" "+incdir+../../../../project_2_axi_master_ila.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_2_axi_master_ila.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../project_2_axi_master_ila.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../project_2_axi_master_ila.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+F:/Vivado2022.2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../project_2_axi_master_ila.gen/sources_1/bd/design_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_26  -incr -mfcu  "+incdir+../../../../project_2_axi_master_ila.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_2_axi_master_ila.gen/sources_1/bd/design_1/ipshared/ee60/hdl" "+incdir+../../../../project_2_axi_master_ila.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_2_axi_master_ila.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../project_2_axi_master_ila.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../project_2_axi_master_ila.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+F:/Vivado2022.2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../project_2_axi_master_ila.gen/sources_1/bd/design_1/ipshared/3111/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_27  -incr -mfcu  "+incdir+../../../../project_2_axi_master_ila.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_2_axi_master_ila.gen/sources_1/bd/design_1/ipshared/ee60/hdl" "+incdir+../../../../project_2_axi_master_ila.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_2_axi_master_ila.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../project_2_axi_master_ila.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../project_2_axi_master_ila.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+F:/Vivado2022.2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../project_2_axi_master_ila.gen/sources_1/bd/design_1/ipshared/f0b4/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_protocol_converter_v2_1_27  -incr -mfcu  "+incdir+../../../../project_2_axi_master_ila.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_2_axi_master_ila.gen/sources_1/bd/design_1/ipshared/ee60/hdl" "+incdir+../../../../project_2_axi_master_ila.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_2_axi_master_ila.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../project_2_axi_master_ila.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../project_2_axi_master_ila.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+F:/Vivado2022.2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../project_2_axi_master_ila.gen/sources_1/bd/design_1/ipshared/aeb3/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../project_2_axi_master_ila.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_2_axi_master_ila.gen/sources_1/bd/design_1/ipshared/ee60/hdl" "+incdir+../../../../project_2_axi_master_ila.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_2_axi_master_ila.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../project_2_axi_master_ila.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../project_2_axi_master_ila.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+F:/Vivado2022.2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_auto_pc_0/sim/design_1_auto_pc_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

