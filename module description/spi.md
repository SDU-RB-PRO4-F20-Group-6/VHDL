# spi
![spi module](https://i.gyazo.com/5e5fc90acf1c3c4499d29da648abc44d.png)
The spi handles communication between the MCU and the FPGA. The moduel works asynchronous with sclk as clock, while the slave select (ss) is low and works in sync with the rest of the FPGA while ss is not low.
The data comming into the FPGA form the MCU can be read on the spi_data_in bus while outgoing data is sent to the MCU using the spi_data_out bus on the spi module.
## test bench
![Image from Gyazo](https://i.gyazo.com/e856f0cace5aabb92b863ec43b2b1aae.png)
