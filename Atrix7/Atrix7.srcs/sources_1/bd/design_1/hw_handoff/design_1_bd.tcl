
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
# SPI, delay, delay, delay, enable, enable, pwm_control, pwm_control, motor_controler, motor_controler, Evenparity, Evenparity, quadratur_decoder, quadratur_decoder, state_machine

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
  set JC [ create_bd_port -dir O -from 7 -to 0 JC ]
  set btnC [ create_bd_port -dir I -type rst btnC ]
  set clk [ create_bd_port -dir I clk ]
  set led [ create_bd_port -dir O -from 15 -to 0 led ]
  set miso [ create_bd_port -dir O miso ]
  set mosi [ create_bd_port -dir I mosi ]
  set sclk [ create_bd_port -dir I sclk ]
  set ss [ create_bd_port -dir I ss ]

  # Create instance: JB1, and set properties
  set JB1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 JB1 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {1} \
   CONFIG.DIN_TO {1} \
   CONFIG.DIN_WIDTH {8} \
 ] $JB1

  # Create instance: JB2, and set properties
  set JB2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 JB2 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {2} \
   CONFIG.DIN_TO {2} \
   CONFIG.DIN_WIDTH {8} \
   CONFIG.DOUT_WIDTH {1} \
 ] $JB2

  # Create instance: JB5, and set properties
  set JB5 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 JB5 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {5} \
   CONFIG.DIN_TO {5} \
   CONFIG.DIN_WIDTH {8} \
 ] $JB5

  # Create instance: JB6, and set properties
  set JB6 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 JB6 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {6} \
   CONFIG.DIN_TO {6} \
   CONFIG.DIN_WIDTH {8} \
   CONFIG.DOUT_WIDTH {1} \
 ] $JB6

  # Create instance: Motor, and set properties
  set Motor [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 Motor ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {14} \
   CONFIG.DIN_TO {14} \
   CONFIG.DIN_WIDTH {16} \
 ] $Motor

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
   CONFIG.IN3_WIDTH {1} \
   CONFIG.IN4_WIDTH {9} \
   CONFIG.NUM_PORTS {8} \
 ] $basys3_led

  # Create instance: constant_1, and set properties
  set constant_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 constant_1 ]

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

  # Create instance: delay_1, and set properties
  set block_name delay
  set block_cell_name delay_1
  if { [catch {set delay_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $delay_1 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
    set_property -dict [ list \
   CONFIG.clock {1} \
   CONFIG.ports {1} \
 ] $delay_1

  # Create instance: delay_2, and set properties
  set block_name delay
  set block_cell_name delay_2
  if { [catch {set delay_2 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $delay_2 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
    set_property -dict [ list \
   CONFIG.clock {1} \
   CONFIG.ports {1} \
 ] $delay_2

  # Create instance: dir_or_request_type, and set properties
  set dir_or_request_type [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 dir_or_request_type ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {13} \
   CONFIG.DIN_TO {13} \
   CONFIG.DIN_WIDTH {16} \
 ] $dir_or_request_type

  # Create instance: enable_0, and set properties
  set block_name enable
  set block_cell_name enable_0
  if { [catch {set enable_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $enable_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: enable_1, and set properties
  set block_name enable
  set block_cell_name enable_1
  if { [catch {set enable_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $enable_1 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: frame_type, and set properties
  set frame_type [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 frame_type ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {15} \
   CONFIG.DIN_TO {15} \
   CONFIG.DIN_WIDTH {16} \
   CONFIG.DOUT_WIDTH {1} \
 ] $frame_type

  # Create instance: index_0, and set properties
  set index_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 index_0 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {0} \
   CONFIG.DIN_TO {0} \
   CONFIG.DIN_WIDTH {8} \
   CONFIG.DOUT_WIDTH {1} \
 ] $index_0

  # Create instance: index_1, and set properties
  set index_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 index_1 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {4} \
   CONFIG.DIN_TO {4} \
   CONFIG.DIN_WIDTH {8} \
   CONFIG.DOUT_WIDTH {1} \
 ] $index_1

  # Create instance: motor_0, and set properties
  set block_name pwm_control
  set block_cell_name motor_0
  if { [catch {set motor_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $motor_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: motor_1, and set properties
  set block_name pwm_control
  set block_cell_name motor_1
  if { [catch {set motor_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $motor_1 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: motor_controler_0, and set properties
  set block_name motor_controler
  set block_cell_name motor_controler_0
  if { [catch {set motor_controler_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $motor_controler_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: motor_controler_1, and set properties
  set block_name motor_controler
  set block_cell_name motor_controler_1
  if { [catch {set motor_controler_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $motor_controler_1 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: parity_calc, and set properties
  set block_name Evenparity
  set block_cell_name parity_calc
  if { [catch {set parity_calc [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $parity_calc eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: parity_check, and set properties
  set block_name Evenparity
  set block_cell_name parity_check
  if { [catch {set parity_check [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $parity_check eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: pwm_data, and set properties
  set pwm_data [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 pwm_data ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {12} \
   CONFIG.DIN_TO {4} \
   CONFIG.DIN_WIDTH {16} \
   CONFIG.DOUT_WIDTH {9} \
 ] $pwm_data

  # Create instance: quadratur_motor_0, and set properties
  set block_name quadratur_decoder
  set block_cell_name quadratur_motor_0
  if { [catch {set quadratur_motor_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $quadratur_motor_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: quadratur_motor_1, and set properties
  set block_name quadratur_decoder
  set block_cell_name quadratur_motor_1
  if { [catch {set quadratur_motor_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $quadratur_motor_1 eq "" } {
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

  # Create instance: xlconcat_2, and set properties
  set xlconcat_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_2 ]
  set_property -dict [ list \
   CONFIG.IN0_WIDTH {1} \
   CONFIG.IN1_WIDTH {15} \
   CONFIG.NUM_PORTS {2} \
 ] $xlconcat_2

  # Create instance: xlconcat_3, and set properties
  set xlconcat_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_3 ]
  set_property -dict [ list \
   CONFIG.NUM_PORTS {8} \
 ] $xlconcat_3

  # Create port connections
  connect_bd_net -net Evenparity_0_parity [get_bd_pins parity_check/parity] [get_bd_pins state_machine_0/parity_check]
  connect_bd_net -net JB0_Dout [get_bd_pins JB1/Dout] [get_bd_pins xlconcat_0/In0]
  connect_bd_net -net JB1_Dout [get_bd_pins JB2/Dout] [get_bd_pins xlconcat_0/In1]
  connect_bd_net -net JB_1 [get_bd_ports JB] [get_bd_pins JB1/Din] [get_bd_pins JB2/Din] [get_bd_pins JB5/Din] [get_bd_pins JB6/Din] [get_bd_pins index_0/Din] [get_bd_pins index_1/Din]
  connect_bd_net -net JC0_Dout [get_bd_pins JB5/Dout] [get_bd_pins xlconcat_1/In0]
  connect_bd_net -net JC1_Dout [get_bd_pins JB6/Dout] [get_bd_pins xlconcat_1/In1]
  connect_bd_net -net SPI_0_spi_data_in [get_bd_pins Motor/Din] [get_bd_pins SPI_0/spi_data_in] [get_bd_pins dir_or_request_type/Din] [get_bd_pins frame_type/Din] [get_bd_pins parity_check/data] [get_bd_pins pwm_data/Din]
  connect_bd_net -net SPI_0_spi_miso [get_bd_ports miso] [get_bd_pins SPI_0/spi_miso]
  connect_bd_net -net basys3_led_dout [get_bd_ports led] [get_bd_pins basys3_led/dout]
  connect_bd_net -net clk_in_0_1 [get_bd_ports clk] [get_bd_pins SPI_0/clk_in] [get_bd_pins delay_0/clk_in] [get_bd_pins delay_1/clk_in] [get_bd_pins delay_2/clk_in] [get_bd_pins enable_0/clk] [get_bd_pins enable_1/clk] [get_bd_pins motor_0/clk_in] [get_bd_pins motor_1/clk_in] [get_bd_pins motor_controler_0/clk] [get_bd_pins motor_controler_1/clk] [get_bd_pins quadratur_motor_0/clk_in] [get_bd_pins quadratur_motor_1/clk_in] [get_bd_pins state_machine_0/clk_in]
  connect_bd_net -net constant_1_dout [get_bd_pins constant_1/dout] [get_bd_pins xlconcat_3/In2] [get_bd_pins xlconcat_3/In6]
  connect_bd_net -net delay_0_output [get_bd_pins delay_0/signal_out] [get_bd_pins motor_0/pwm_trigger] [get_bd_pins motor_1/pwm_trigger]
  connect_bd_net -net delay_1_signal_out [get_bd_pins delay_1/signal_out] [get_bd_pins enable_0/sig]
  connect_bd_net -net delay_2_signal_out [get_bd_pins delay_2/signal_out] [get_bd_pins enable_1/sig]
  connect_bd_net -net enable_0_ou [get_bd_pins enable_0/ou] [get_bd_pins motor_controler_0/dir]
  connect_bd_net -net enable_1_ou [get_bd_pins enable_1/ou] [get_bd_pins motor_controler_1/dir]
  connect_bd_net -net index_0_Dout [get_bd_pins index_0/Dout] [get_bd_pins state_machine_0/index_ctrl_A]
  connect_bd_net -net index_1_Dout [get_bd_pins index_1/Dout] [get_bd_pins state_machine_0/index_ctrl_B]
  connect_bd_net -net mosi_1 [get_bd_ports mosi] [get_bd_pins SPI_0/spi_mosi]
  connect_bd_net -net motor_0_pwm_signal [get_bd_pins motor_0/pwm_signal] [get_bd_pins motor_controler_0/pwm]
  connect_bd_net -net motor_1_pwm_signal [get_bd_pins motor_1/pwm_signal] [get_bd_pins motor_controler_1/pwm]
  connect_bd_net -net motor_controler_0_outA [get_bd_pins motor_controler_0/outA] [get_bd_pins xlconcat_3/In0]
  connect_bd_net -net motor_controler_0_outB [get_bd_pins motor_controler_0/outB] [get_bd_pins xlconcat_3/In1]
  connect_bd_net -net motor_controler_1_outA [get_bd_pins motor_controler_1/outA] [get_bd_pins xlconcat_3/In4]
  connect_bd_net -net motor_controler_1_outB [get_bd_pins motor_controler_1/outB] [get_bd_pins xlconcat_3/In5]
  connect_bd_net -net parity_calc_parity [get_bd_pins parity_calc/parity] [get_bd_pins xlconcat_2/In0]
  connect_bd_net -net pwm_data_Dout [get_bd_pins basys3_led/In4] [get_bd_pins delay_0/signal_in] [get_bd_pins pwm_data/Dout]
  connect_bd_net -net quadratur_decoder_0_value [get_bd_pins quadratur_motor_0/value] [get_bd_pins state_machine_0/quad_enc_A]
  connect_bd_net -net quadratur_decoder_1_value [get_bd_pins quadratur_motor_1/value] [get_bd_pins state_machine_0/quad_enc_B]
  connect_bd_net -net reset_0_1 [get_bd_ports btnC] [get_bd_pins motor_0/reset] [get_bd_pins motor_1/reset] [get_bd_pins quadratur_motor_0/reset] [get_bd_pins quadratur_motor_1/reset]
  connect_bd_net -net sclk_1 [get_bd_ports sclk] [get_bd_pins SPI_0/spi_sclk]
  connect_bd_net -net ss_1 [get_bd_ports ss] [get_bd_pins SPI_0/spi_ss_n]
  connect_bd_net -net state_machine_0_data_out [get_bd_pins parity_calc/data] [get_bd_pins state_machine_0/data_out] [get_bd_pins xlconcat_2/In1]
  connect_bd_net -net state_machine_0_motor_ctrl_A [get_bd_pins enable_0/en] [get_bd_pins motor_0/enable] [get_bd_pins state_machine_0/motor_ctrl_A]
  connect_bd_net -net state_machine_0_motor_ctrl_B [get_bd_pins enable_1/en] [get_bd_pins motor_1/enable] [get_bd_pins state_machine_0/motor_ctrl_B]
  connect_bd_net -net xlconcat_0_dout1 [get_bd_pins quadratur_motor_0/encoder] [get_bd_pins xlconcat_0/dout]
  connect_bd_net -net xlconcat_1_dout [get_bd_pins quadratur_motor_1/encoder] [get_bd_pins xlconcat_1/dout]
  connect_bd_net -net xlconcat_2_dout [get_bd_pins SPI_0/spi_data_out] [get_bd_pins xlconcat_2/dout]
  connect_bd_net -net xlconcat_3_dout [get_bd_ports JC] [get_bd_pins xlconcat_3/dout]
  connect_bd_net -net xlslice_0_Dout [get_bd_pins basys3_led/In7] [get_bd_pins frame_type/Dout] [get_bd_pins state_machine_0/frame_choice]
  connect_bd_net -net xlslice_1_Dout [get_bd_pins Motor/Dout] [get_bd_pins basys3_led/In6] [get_bd_pins state_machine_0/motor_choice]
  connect_bd_net -net xlslice_2_Dout [get_bd_pins basys3_led/In5] [get_bd_pins delay_1/signal_in] [get_bd_pins delay_2/signal_in] [get_bd_pins dir_or_request_type/Dout] [get_bd_pins state_machine_0/request_type]

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


