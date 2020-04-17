# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "clock" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ports" -parent ${Page_0}


}

proc update_PARAM_VALUE.clock { PARAM_VALUE.clock } {
	# Procedure called to update clock when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.clock { PARAM_VALUE.clock } {
	# Procedure called to validate clock
	return true
}

proc update_PARAM_VALUE.ports { PARAM_VALUE.ports } {
	# Procedure called to update ports when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ports { PARAM_VALUE.ports } {
	# Procedure called to validate ports
	return true
}


proc update_MODELPARAM_VALUE.ports { MODELPARAM_VALUE.ports PARAM_VALUE.ports } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ports}] ${MODELPARAM_VALUE.ports}
}

proc update_MODELPARAM_VALUE.clock { MODELPARAM_VALUE.clock PARAM_VALUE.clock } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.clock}] ${MODELPARAM_VALUE.clock}
}

