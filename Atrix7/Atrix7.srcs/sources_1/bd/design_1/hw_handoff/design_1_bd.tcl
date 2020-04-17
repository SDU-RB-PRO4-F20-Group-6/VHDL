
################################################################
# This is a generated script based on design: design_1
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
set scripts_vivado_version 2019.2
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
# source design_1_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# SPI, delay, pwm_control, pwm_control, quadratur_decoder, quadratur_decoder, state_machine

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7a35tcpg236-1
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name design_1

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
  set JB [ create_bd_port -dir I -from 7 -to 0 JB ]
  set JC [ create_bd_port -dir I -from 7 -to 0 JC ]
  set btnC [ create_bd_port -dir I -type rst btnC ]
  set btnD [ create_bd_port -dir I btnD ]
  set btnU [ create_bd_port -dir I btnU ]
  set clk [ create_bd_port -dir I clk ]
  set led [ create_bd_port -dir O -from 14 -to 0 led ]
  set miso [ create_bd_port -dir O miso ]
  set mosi [ create_bd_port -dir I mosi ]
  set sclk [ create_bd_port -dir I sclk ]
  set ss [ create_bd_port -dir I ss ]

  # Create instance: JB0, and set properties
  set JB0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 JB0 ]
  set_property -dict [ list \
   CONFIG.DIN_WIDTH {8} \
 ] $JB0

  # Create instance: JB1, and set properties
  set JB1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 JB1 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {1} \
   CONFIG.DIN_TO {1} \
   CONFIG.DIN_WIDTH {8} \
   CONFIG.DOUT_WIDTH {1} \
 ] $JB1

  # Create instance: JC0, and set properties
  set JC0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 JC0 ]
  set_property -dict [ list \
   CONFIG.DIN_WIDTH {8} \
 ] $JC0

  # Create instance: JC1, and set properties
  set JC1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 JC1 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {1} \
   CONFIG.DIN_TO {1} \
   CONFIG.DIN_WIDTH {8} \
   CONFIG.DOUT_WIDTH {1} \
 ] $JC1

  # Create instance: SPI_0, and set properties
  set block_name SPI
  set block_cell_name SPI_0
  if { [catch {set SPI_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $SPI_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: basys3_led, and set properties
  set basys3_led [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 basys3_led ]
  set_property -dict [ list \
   CONFIG.NUM_PORTS {16} \
 ] $basys3_led

  # Create instance: delay_0, and set properties
  set block_name delay
  set block_cell_name delay_0
  if { [catch {set delay_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $delay_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
    set_property -dict [ list \
   CONFIG.clock {1} \
   CONFIG.ports {9} \
 ] $delay_0

  # Create instance: pwm_control_0, and set properties
  set block_name pwm_control
  set block_cell_name pwm_control_0
  if { [catch {set pwm_control_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $pwm_control_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: pwm_control_1, and set properties
  set block_name pwm_control
  set block_cell_name pwm_control_1
  if { [catch {set pwm_control_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $pwm_control_1 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: quadratur_decoder_0, and set properties
  set block_name quadratur_decoder
  set block_cell_name quadratur_decoder_0
  if { [catch {set quadratur_decoder_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $quadratur_decoder_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: quadratur_decoder_1, and set properties
  set block_name quadratur_decoder
  set block_cell_name quadratur_decoder_1
  if { [catch {set quadratur_decoder_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $quadratur_decoder_1 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: state_machine_0, and set properties
  set block_name state_machine
  set block_cell_name state_machine_0
  if { [catch {set state_machine_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $state_machine_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: xlconcat_0, and set properties
  set xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_0 ]

  # Create instance: xlconcat_1, and set properties
  set xlconcat_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_1 ]

  # Create instance: xlslice_0, and set properties
  set xlslice_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_0 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {15} \
   CONFIG.DIN_TO {15} \
   CONFIG.DIN_WIDTH {16} \
   CONFIG.DOUT_WIDTH {1} \
 ] $xlslice_0

  # Create instance: xlslice_1, and set properties
  set xlslice_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_1 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {14} \
   CONFIG.DIN_TO {14} \
   CONFIG.DIN_WIDTH {16} \
 ] $xlslice_1

  # Create instance: xlslice_2, and set properties
  set xlslice_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_2 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {13} \
   CONFIG.DIN_TO {13} \
   CONFIG.DIN_WIDTH {16} \
 ] $xlslice_2

  # Create instance: xlslice_3, and set properties
  set xlslice_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_3 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {12} \
   CONFIG.DIN_TO {4} \
   CONFIG.DIN_WIDTH {16} \
   CONFIG.DOUT_WIDTH {9} \
 ] $xlslice_3

  # Create port connections
  connect_bd_net -net Din_0_1 [get_bd_ports JB] [get_bd_pins JB0/Din] [get_bd_pins JB1/Din]
  connect_bd_net -net Din_0_2 [get_bd_ports JC] [get_bd_pins JC0/Din] [get_bd_pins JC1/Din]
  connect_bd_net -net JB0_Dout [get_bd_pins JB0/Dout] [get_bd_pins xlconcat_0/In0]
  connect_bd_net -net JB1_Dout [get_bd_pins JB1/Dout] [get_bd_pins xlconcat_0/In1]
  connect_bd_net -net JC0_Dout [get_bd_pins JC0/Dout] [get_bd_pins xlconcat_1/In0]
  connect_bd_net -net JC1_Dout [get_bd_pins JC1/Dout] [get_bd_pins xlconcat_1/In1]
  connect_bd_net -net SPI_0_spi_data_in [get_bd_pins SPI_0/spi_data_in] [get_bd_pins xlslice_1/Din] [get_bd_pins xlslice_2/Din] [get_bd_pins xlslice_3/Din]
  connect_bd_net -net SPI_0_spi_miso [get_bd_ports miso] [get_bd_pins SPI_0/spi_miso]
  connect_bd_net -net clk_in_0_1 [get_bd_ports clk] [get_bd_pins SPI_0/clk_in] [get_bd_pins delay_0/clk_in] [get_bd_pins pwm_control_0/clk_in] [get_bd_pins pwm_control_1/clk_in] [get_bd_pins quadratur_decoder_0/clk_in] [get_bd_pins quadratur_decoder_1/clk_in] [get_bd_pins state_machine_0/clk_in]
  connect_bd_net -net delay_0_output [get_bd_pins delay_0/output] [get_bd_pins pwm_control_0/pwm_trigger] [get_bd_pins pwm_control_1/pwm_trigger]
  connect_bd_net -net index_ctrl_A_0_1 [get_bd_ports btnU] [get_bd_pins state_machine_0/index_ctrl_A]
  connect_bd_net -net index_ctrl_B_0_1 [get_bd_ports btnD] [get_bd_pins state_machine_0/index_ctrl_B]
  connect_bd_net -net pwm_control_0_pwm_signal [get_bd_pins basys3_led/In0] [get_bd_pins pwm_control_0/pwm_signal]
  connect_bd_net -net pwm_control_1_pwm_signal [get_bd_pins basys3_led/In1] [get_bd_pins pwm_control_1/pwm_signal]
  connect_bd_net -net quadratur_decoder_0_value [get_bd_pins quadratur_decoder_0/value] [get_bd_pins state_machine_0/quad_enc_A]
  connect_bd_net -net quadratur_decoder_1_value [get_bd_pins quadratur_decoder_1/value] [get_bd_pins state_machine_0/quad_enc_B]
  connect_bd_net -net reset_0_1 [get_bd_ports btnC] [get_bd_pins quadratur_decoder_0/reset] [get_bd_pins quadratur_decoder_1/reset]
  connect_bd_net -net spi_mosi_0_1 [get_bd_ports mosi] [get_bd_pins SPI_0/spi_mosi]
  connect_bd_net -net spi_sclk_0_1 [get_bd_ports sclk] [get_bd_pins SPI_0/spi_sclk]
  connect_bd_net -net spi_ss_0_1 [get_bd_ports ss] [get_bd_pins SPI_0/spi_ss]
  connect_bd_net -net state_machine_0_data_out [get_bd_ports led] [get_bd_pins SPI_0/spi_data_out] [get_bd_pins state_machine_0/data_out]
  connect_bd_net -net state_machine_0_motor_ctrl_A [get_bd_pins pwm_control_0/enable] [get_bd_pins state_machine_0/motor_ctrl_A]
  connect_bd_net -net state_machine_0_motor_ctrl_B [get_bd_pins pwm_control_1/enable] [get_bd_pins state_machine_0/motor_ctrl_B]
  connect_bd_net -net xlconcat_0_dout1 [get_bd_pins quadratur_decoder_0/encoder] [get_bd_pins xlconcat_0/dout]
  connect_bd_net -net xlconcat_1_dout [get_bd_pins quadratur_decoder_1/encoder] [get_bd_pins xlconcat_1/dout]
  connect_bd_net -net xlslice_0_Dout [get_bd_pins basys3_led/In4] [get_bd_pins state_machine_0/frame_choice] [get_bd_pins xlslice_0/Dout]
  connect_bd_net -net xlslice_1_Dout [get_bd_pins basys3_led/In3] [get_bd_pins state_machine_0/motor_choice] [get_bd_pins xlslice_1/Dout]
  connect_bd_net -net xlslice_2_Dout [get_bd_pins basys3_led/In2] [get_bd_pins state_machine_0/request_type] [get_bd_pins xlslice_2/Dout]
  connect_bd_net -net xlslice_3_Dout [get_bd_pins delay_0/input] [get_bd_pins xlslice_3/Dout]

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


