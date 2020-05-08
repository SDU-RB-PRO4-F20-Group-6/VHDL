# Read me
This project contains the everything related to the FPGA used by group 12 in the robotics civil engineering F20 semester.
The FPGA in the project function as the interface between the hardware and the MCU.  The MCU is used to receive feedback on position and transmitting torque to two motors, thereby controlling the position from two motors. The FPGA is then used to make it easier for the MCU to receive feedback and give a duty cycle to control pwm of the motors using the spi protocol.

The project contains the folder "Atrix7" and "module description".

# Table of Contents
1. [Artix 7](#Atrix-7)
2. [module description](#module-description)
2.1 [modules](#modules)
2.1.1. [spi](#spi)
2.1.2 [state machine](#state-machine)

## Artix 7
[This folder](https://github.com/SDU-RB-PRO4-F20-Group-6/VHDL/tree/master/Atrix7) is the entire folder created by vivado 2019.2 when creating a project. To open the project in vivado, download [this](https://github.com/SDU-RB-PRO4-F20-Group-6/VHDL/tree/master/Atrix7) folder and double click Atrix7.xpr.
## Module description
[This folder](https://github.com/SDU-RB-PRO4-F20-Group-6/VHDL/tree/master/module%20description) contains the documentation for all the modules, used in the vivado project more in depth.
### Modules
The spi module handles the communication between the FPGA and the MCU. Read more [here](https://github.com/SDU-RB-PRO4-F20-Group-6/VHDL/blob/master/module%20description/spi.md)

The state machine module handles the protocol used on top of spi to communicate with the MCU to either give the correct data back to the MCU or execute the correct command givven by the MCU. Read more [here](https://github.com/SDU-RB-PRO4-F20-Group-6/VHDL/blob/master/module%20description/statemachine.md)
<!--stackedit_data:
eyJoaXN0b3J5IjpbLTEzNjg4MzE2ODRdfQ==
-->