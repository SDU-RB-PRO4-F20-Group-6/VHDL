
# SPI
![spi module](https://i.gyazo.com/c7ea519f0bfc1355b7048601c0b834e8.png)
The spi handles communication between the MCU and the FPGA. The moduel works asynchronous with sclk as clock, while the slave select (ss) is low and works in sync with the rest of the FPGA while ss is not low.
The data coming into the FPGA form the MCU can be read on the spi_data_in bus while outgoing data is sent to the MCU using the spi_data_out bus on the spi module.
This module is set up with the following polarity and phase:
CPOL: 0
CPHA: 0

## Test bench
![Image from Gyazo](https://i.gyazo.com/e856f0cace5aabb92b863ec43b2b1aae.png)

<!--stackedit_data:
eyJoaXN0b3J5IjpbMTEwMDQ3NzAzMCw1MjI0NDAzOCwtMzUyOT
k0NDg1LDgxMDAwNTM3NV19
-->