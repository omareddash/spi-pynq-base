set_property -dict {PACKAGE_PIN W15 IOSTANDARD LVCMOS33} [get_ports SPI0_MISO_I]
set_property -dict {PACKAGE_PIN T12 IOSTANDARD LVCMOS33} [get_ports SPI0_MOSI_O]
set_property -dict {PACKAGE_PIN H15 IOSTANDARD LVCMOS33} [get_ports SPI0_SCLK_O]
set_property -dict {PACKAGE_PIN F16 IOSTANDARD LVCMOS33} [get_ports SPI0_SS_O]


set_property PACKAGE_PIN W6 [get_ports {ss_o_0[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ss_o_0[0]}]
set_property PACKAGE_PIN Y11 [get_ports io0_o_0]
set_property PACKAGE_PIN Y12 [get_ports io1_i_0]
set_property PACKAGE_PIN W11 [get_ports sck_o_0]
set_property IOSTANDARD LVCMOS33 [get_ports io0_o_0]
set_property IOSTANDARD LVCMOS33 [get_ports io1_i_0]
set_property IOSTANDARD LVCMOS33 [get_ports sck_o_0]


set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets clk]
