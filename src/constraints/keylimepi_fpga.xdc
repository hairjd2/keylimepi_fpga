set_property -dict {PACKAGE_PIN G2 IOSTANDARD SSTL135} [get_ports clk]
create_clock -period 10.000 -name sys_clk_pin -waveform {0.000 5.000} -add [get_ports clk]


set_property -dict {PACKAGE_PIN A2 IOSTANDARD LVCMOS33} [get_ports rst]

set_property -dict {PACKAGE_PIN B4 IOSTANDARD LVCMOS33} [get_ports CSn]
set_property -dict {PACKAGE_PIN A4 IOSTANDARD LVCMOS33} [get_ports MOSI]
set_property -dict {PACKAGE_PIN C5 IOSTANDARD LVCMOS33} [get_ports MISO]
set_property -dict {PACKAGE_PIN B5 IOSTANDARD LVCMOS33} [get_ports SCK]
## USB-UART Interface
set_property -dict {PACKAGE_PIN B6 IOSTANDARD LVCMOS33} [get_ports uart_tx]
set_property -dict {PACKAGE_PIN A5 IOSTANDARD LVCMOS33} [get_ports uart_rx]

## Configuration options, can be used for all designs
# set_property BITSTREAM.CONFIG.CONFIGRATE 50 [current_design]
# set_property CONFIG_VOLTAGE 3.3 [current_design]
# set_property CFGBVS VCCO [current_design]
# set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]
# set_property CONFIG_MODE SPIx4 [current_design]

# set_property INTERNAL_VREF 0.675 [get_iobanks 34]