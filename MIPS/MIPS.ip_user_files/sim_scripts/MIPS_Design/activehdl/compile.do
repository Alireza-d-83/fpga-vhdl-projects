vlib work
vlib activehdl

vlib activehdl/xil_defaultlib
vlib activehdl/util_vector_logic_v2_0_1

vmap xil_defaultlib activehdl/xil_defaultlib
vmap util_vector_logic_v2_0_1 activehdl/util_vector_logic_v2_0_1

vcom -work xil_defaultlib -93 \
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

vlog -work util_vector_logic_v2_0_1  -v2k5 \
"../../../../MIPS.srcs/sources_1/bd/MIPS_Design/ipshared/2137/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/MIPS_Design/ip/MIPS_Design_util_vector_logic_0_0/sim/MIPS_Design_util_vector_logic_0_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/MIPS_Design/sim/MIPS_Design.vhd" \
"../../../bd/MIPS_Design/ip/MIPS_Design_mux_addr_0_0/sim/MIPS_Design_mux_addr_0_0.vhd" \
"../../../bd/MIPS_Design/ip/MIPS_Design_mux_2x1_2_1/sim/MIPS_Design_mux_2x1_2_1.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

