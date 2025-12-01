vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/util_vector_logic_v2_0_1

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap util_vector_logic_v2_0_1 modelsim_lib/msim/util_vector_logic_v2_0_1

vcom -work xil_defaultlib -64 -93 \
"../../../bd/MIPS_Design/ip/MIPS_Design_File_Register_0_0/sim/MIPS_Design_File_Register_0_0.vhd" \
"../../../bd/MIPS_Design/ip/MIPS_Design_IM_0_0/sim/MIPS_Design_IM_0_0.vhd" \
"../../../bd/MIPS_Design/ip/MIPS_Design_DM_0_0/sim/MIPS_Design_DM_0_0.vhd" \
"../../../bd/MIPS_Design/ip/MIPS_Design_PC_0_0/sim/MIPS_Design_PC_0_0.vhd" \
"../../../bd/MIPS_Design/ip/MIPS_Design_Control_Unit_0_0/sim/MIPS_Design_Control_Unit_0_0.vhd" \
"../../../bd/MIPS_Design/ip/MIPS_Design_ALU_0_0/sim/MIPS_Design_ALU_0_0.vhd" \
"../../../bd/MIPS_Design/ip/MIPS_Design_mux_2x1_1_0/sim/MIPS_Design_mux_2x1_1_0.vhd" \
"../../../bd/MIPS_Design/ip/MIPS_Design_mux_2x1_4_0/sim/MIPS_Design_mux_2x1_4_0.vhd" \
"../../../bd/MIPS_Design/ip/MIPS_Design_Sign_Extention_0_0/sim/MIPS_Design_Sign_Extention_0_0.vhd" \
"../../../bd/MIPS_Design/ip/MIPS_Design_PC_Adder_0_0/sim/MIPS_Design_PC_Adder_0_0.vhd" \
"../../../bd/MIPS_Design/ip/MIPS_Design_ALU_Control_0_0/sim/MIPS_Design_ALU_Control_0_0.vhd" \

vlog -work util_vector_logic_v2_0_1 -64 -incr \
"../../../../MIPS.srcs/sources_1/bd/MIPS_Design/ipshared/2137/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr \
"../../../bd/MIPS_Design/ip/MIPS_Design_util_vector_logic_0_0/sim/MIPS_Design_util_vector_logic_0_0.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/MIPS_Design/sim/MIPS_Design.vhd" \
"../../../bd/MIPS_Design/ip/MIPS_Design_mux_addr_0_0/sim/MIPS_Design_mux_addr_0_0.vhd" \
"../../../bd/MIPS_Design/ip/MIPS_Design_mux_2x1_2_1/sim/MIPS_Design_mux_2x1_2_1.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

