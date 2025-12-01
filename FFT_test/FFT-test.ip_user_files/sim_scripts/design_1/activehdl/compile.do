vlib work
vlib activehdl

vlib activehdl/xbip_utils_v3_0_9
vlib activehdl/axi_utils_v2_0_5
vlib activehdl/c_reg_fd_v12_0_5
vlib activehdl/xbip_dsp48_wrapper_v3_0_4
vlib activehdl/xbip_pipe_v3_0_5
vlib activehdl/xbip_dsp48_addsub_v3_0_5
vlib activehdl/xbip_addsub_v3_0_5
vlib activehdl/c_addsub_v12_0_12
vlib activehdl/c_mux_bit_v12_0_5
vlib activehdl/c_shift_ram_v12_0_12
vlib activehdl/xbip_bram18k_v3_0_5
vlib activehdl/mult_gen_v12_0_14
vlib activehdl/cmpy_v6_0_16
vlib activehdl/floating_point_v7_0_15
vlib activehdl/xfft_v9_1_1
vlib activehdl/xil_defaultlib

vmap xbip_utils_v3_0_9 activehdl/xbip_utils_v3_0_9
vmap axi_utils_v2_0_5 activehdl/axi_utils_v2_0_5
vmap c_reg_fd_v12_0_5 activehdl/c_reg_fd_v12_0_5
vmap xbip_dsp48_wrapper_v3_0_4 activehdl/xbip_dsp48_wrapper_v3_0_4
vmap xbip_pipe_v3_0_5 activehdl/xbip_pipe_v3_0_5
vmap xbip_dsp48_addsub_v3_0_5 activehdl/xbip_dsp48_addsub_v3_0_5
vmap xbip_addsub_v3_0_5 activehdl/xbip_addsub_v3_0_5
vmap c_addsub_v12_0_12 activehdl/c_addsub_v12_0_12
vmap c_mux_bit_v12_0_5 activehdl/c_mux_bit_v12_0_5
vmap c_shift_ram_v12_0_12 activehdl/c_shift_ram_v12_0_12
vmap xbip_bram18k_v3_0_5 activehdl/xbip_bram18k_v3_0_5
vmap mult_gen_v12_0_14 activehdl/mult_gen_v12_0_14
vmap cmpy_v6_0_16 activehdl/cmpy_v6_0_16
vmap floating_point_v7_0_15 activehdl/floating_point_v7_0_15
vmap xfft_v9_1_1 activehdl/xfft_v9_1_1
vmap xil_defaultlib activehdl/xil_defaultlib

vcom -work xbip_utils_v3_0_9 -93 \
"../../../../FFT-test.srcs/sources_1/bd/design_1/ipshared/0da8/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_5 -93 \
"../../../../FFT-test.srcs/sources_1/bd/design_1/ipshared/ec8e/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work c_reg_fd_v12_0_5 -93 \
"../../../../FFT-test.srcs/sources_1/bd/design_1/ipshared/cbdd/hdl/c_reg_fd_v12_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4 -93 \
"../../../../FFT-test.srcs/sources_1/bd/design_1/ipshared/cdbf/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_5 -93 \
"../../../../FFT-test.srcs/sources_1/bd/design_1/ipshared/442e/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_5 -93 \
"../../../../FFT-test.srcs/sources_1/bd/design_1/ipshared/a04b/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_addsub_v3_0_5 -93 \
"../../../../FFT-test.srcs/sources_1/bd/design_1/ipshared/87fb/hdl/xbip_addsub_v3_0_vh_rfs.vhd" \

vcom -work c_addsub_v12_0_12 -93 \
"../../../../FFT-test.srcs/sources_1/bd/design_1/ipshared/6b5f/hdl/c_addsub_v12_0_vh_rfs.vhd" \

vcom -work c_mux_bit_v12_0_5 -93 \
"../../../../FFT-test.srcs/sources_1/bd/design_1/ipshared/512a/hdl/c_mux_bit_v12_0_vh_rfs.vhd" \

vcom -work c_shift_ram_v12_0_12 -93 \
"../../../../FFT-test.srcs/sources_1/bd/design_1/ipshared/a9d0/hdl/c_shift_ram_v12_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_5 -93 \
"../../../../FFT-test.srcs/sources_1/bd/design_1/ipshared/c08f/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_14 -93 \
"../../../../FFT-test.srcs/sources_1/bd/design_1/ipshared/6bb5/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work cmpy_v6_0_16 -93 \
"../../../../FFT-test.srcs/sources_1/bd/design_1/ipshared/6f3d/hdl/cmpy_v6_0_vh_rfs.vhd" \

vcom -work floating_point_v7_0_15 -93 \
"../../../../FFT-test.srcs/sources_1/bd/design_1/ipshared/a054/hdl/floating_point_v7_0_vh_rfs.vhd" \

vcom -work xfft_v9_1_1 -93 \
"../../../../FFT-test.srcs/sources_1/bd/design_1/ipshared/60b9/hdl/xfft_v9_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_xfft_0_0/sim/design_1_xfft_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../FFT-test.srcs/sources_1/bd/design_1/ipshared/85a3" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/sim/design_1.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

