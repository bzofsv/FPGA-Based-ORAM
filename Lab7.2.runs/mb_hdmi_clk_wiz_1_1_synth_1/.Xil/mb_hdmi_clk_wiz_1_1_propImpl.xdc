set_property SRC_FILE_INFO {cfile:c:/Users/BZ/Desktop/ECE385/Lab7.2/Lab7.2.gen/sources_1/bd/mb_hdmi/ip/mb_hdmi_clk_wiz_1_1/mb_hdmi_clk_wiz_1_1.xdc rfile:../../../Lab7.2.gen/sources_1/bd/mb_hdmi/ip/mb_hdmi_clk_wiz_1_1/mb_hdmi_clk_wiz_1_1.xdc id:1 order:EARLY scoped_inst:inst} [current_design]
current_instance inst
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.100
