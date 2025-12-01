
################################################################
# This is a generated script based on design: MIPS_Design
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2018.3
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source MIPS_Design_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# ALU, ALU_Control, Control_Unit, DM, File_Register, IM, PC, PC_Adder, Sign_Extention, mux_2x1, mux_2x1, mux_2x1, mux_addr

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7vx415tffg1158-2
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name MIPS_Design

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports

  # Create ports
  set clk [ create_bd_port -dir I -type clk clk ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {100000000} \
 ] $clk
  set rst [ create_bd_port -dir I -type rst rst ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_HIGH} \
 ] $rst

  # Create instance: ALU_0, and set properties
  set block_name ALU
  set block_cell_name ALU_0
  if { [catch {set ALU_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $ALU_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: ALU_Control_0, and set properties
  set block_name ALU_Control
  set block_cell_name ALU_Control_0
  if { [catch {set ALU_Control_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $ALU_Control_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: Control_Unit, and set properties
  set block_name Control_Unit
  set block_cell_name Control_Unit
  if { [catch {set Control_Unit [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Control_Unit eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: DM_0, and set properties
  set block_name DM
  set block_cell_name DM_0
  if { [catch {set DM_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $DM_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: File_Register_0, and set properties
  set block_name File_Register
  set block_cell_name File_Register_0
  if { [catch {set File_Register_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $File_Register_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: IM_0, and set properties
  set block_name IM
  set block_cell_name IM_0
  if { [catch {set IM_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $IM_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: PC_0, and set properties
  set block_name PC
  set block_cell_name PC_0
  if { [catch {set PC_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $PC_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: PC_Adder_0, and set properties
  set block_name PC_Adder
  set block_cell_name PC_Adder_0
  if { [catch {set PC_Adder_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $PC_Adder_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: Sign_Extention_0, and set properties
  set block_name Sign_Extention
  set block_cell_name Sign_Extention_0
  if { [catch {set Sign_Extention_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Sign_Extention_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: mux_2x1_1, and set properties
  set block_name mux_2x1
  set block_cell_name mux_2x1_1
  if { [catch {set mux_2x1_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $mux_2x1_1 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: mux_2x1_2, and set properties
  set block_name mux_2x1
  set block_cell_name mux_2x1_2
  if { [catch {set mux_2x1_2 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $mux_2x1_2 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: mux_2x1_4, and set properties
  set block_name mux_2x1
  set block_cell_name mux_2x1_4
  if { [catch {set mux_2x1_4 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $mux_2x1_4 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: mux_addr_0, and set properties
  set block_name mux_addr
  set block_cell_name mux_addr_0
  if { [catch {set mux_addr_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $mux_addr_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: util_vector_logic_0, and set properties
  set util_vector_logic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_0 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_0

  # Create port connections
  connect_bd_net -net ALU_0_Result [get_bd_pins ALU_0/Result] [get_bd_pins DM_0/Address] [get_bd_pins mux_2x1_4/Data2]
  connect_bd_net -net ALU_0_zeros [get_bd_pins ALU_0/zeros] [get_bd_pins util_vector_logic_0/Op2]
  connect_bd_net -net ALU_Control_0_func [get_bd_pins ALU_0/func] [get_bd_pins ALU_Control_0/func]
  connect_bd_net -net Control_Unit_0_ALUOP [get_bd_pins ALU_Control_0/ALUOP] [get_bd_pins Control_Unit/ALUOP]
  connect_bd_net -net Control_Unit_0_ALUScr [get_bd_pins Control_Unit/ALUScr] [get_bd_pins mux_2x1_1/Selector]
  connect_bd_net -net Control_Unit_0_Branch [get_bd_pins Control_Unit/Branch] [get_bd_pins util_vector_logic_0/Op1]
  connect_bd_net -net Control_Unit_0_MemRead [get_bd_pins Control_Unit/MemWrite] [get_bd_pins DM_0/En]
  connect_bd_net -net Control_Unit_0_MemtoReg [get_bd_pins Control_Unit/MemtoReg] [get_bd_pins mux_2x1_4/Selector]
  connect_bd_net -net Control_Unit_0_RegDst [get_bd_pins Control_Unit/RegDst] [get_bd_pins mux_addr_0/selector]
  connect_bd_net -net Control_Unit_0_RegWrite [get_bd_pins Control_Unit/RegWrite] [get_bd_pins File_Register_0/EN]
  connect_bd_net -net DM_0_ReadData [get_bd_pins DM_0/ReadData] [get_bd_pins mux_2x1_4/Data1]
  connect_bd_net -net File_Register_0_ReadData1 [get_bd_pins ALU_0/Data1] [get_bd_pins File_Register_0/ReadData1]
  connect_bd_net -net File_Register_0_ReadData2 [get_bd_pins DM_0/WriteData] [get_bd_pins File_Register_0/ReadData2] [get_bd_pins mux_2x1_1/Data1]
  connect_bd_net -net IM_0_ReadData [get_bd_pins ALU_Control_0/Instruction] [get_bd_pins Control_Unit/OP] [get_bd_pins File_Register_0/ReadRegister1] [get_bd_pins File_Register_0/ReadRegister2] [get_bd_pins IM_0/ReadData] [get_bd_pins Sign_Extention_0/DataIn] [get_bd_pins mux_addr_0/Data1] [get_bd_pins mux_addr_0/Data2]
  connect_bd_net -net PC_0_DataOut [get_bd_pins IM_0/ReadAddress] [get_bd_pins PC_0/DataOut] [get_bd_pins PC_Adder_0/PC_Data] [get_bd_pins mux_2x1_2/Data1]
  connect_bd_net -net PC_Adder_0_PC_New_Data [get_bd_pins PC_Adder_0/PC_New_Data] [get_bd_pins mux_2x1_2/Data2]
  connect_bd_net -net Sign_Extention_0_DataOut [get_bd_pins PC_Adder_0/Signextention_data] [get_bd_pins Sign_Extention_0/DataOut] [get_bd_pins mux_2x1_1/Data2]
  connect_bd_net -net clk_1 [get_bd_ports clk] [get_bd_pins DM_0/clk] [get_bd_pins File_Register_0/clk] [get_bd_pins IM_0/clk] [get_bd_pins PC_0/clk]
  connect_bd_net -net mux_2x1_1_DataOut [get_bd_pins ALU_0/Data2] [get_bd_pins mux_2x1_1/DataOut]
  connect_bd_net -net mux_2x1_2_DataOut [get_bd_pins PC_0/DataIn] [get_bd_pins mux_2x1_2/DataOut]
  connect_bd_net -net mux_2x1_4_DataOut [get_bd_pins File_Register_0/WriteData] [get_bd_pins mux_2x1_4/DataOut]
  connect_bd_net -net mux_addr_0_DataOut [get_bd_pins File_Register_0/WriteRegister] [get_bd_pins mux_addr_0/DataOut]
  connect_bd_net -net rst_1 [get_bd_ports rst] [get_bd_pins PC_0/rst]
  connect_bd_net -net util_vector_logic_0_Res [get_bd_pins mux_2x1_2/Selector] [get_bd_pins util_vector_logic_0/Res]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


