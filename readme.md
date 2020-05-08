# Read me
# Table of Contents
1. [Introduction](#introduction)
2. [Useage](#Useage)
3. [Artix 7](#artix-7)
4. [Module description](#module-description)

## Introduction
This project contains the everything related to the FPGA used by group 12 in the robotics civil engineering F20 semester.
The FPGA in the project function as the interface between the hardware and the MCU.  The MCU is used to receive feedback on position and transmitting torque to two motors thereby controlling the position from two motors, the FPGA is then used to make it easier for the MCU to receive feedback and give a duty cycle to control the pwm of the motors using the spi protocol.

This repository contains the folder "Atrix7" and "module description".


## Artix 7
[This folder](https://github.com/SDU-RB-PRO4-F20-Group-6/VHDL/tree/master/Atrix7) is the entire folder created by vivado 2019.2 when creating a project. To open the project in vivado, download [this](https://github.com/SDU-RB-PRO4-F20-Group-6/VHDL/tree/master/Atrix7) folder and double click Atrix7.xpr.


## Module description
[This folder](https://github.com/SDU-RB-PRO4-F20-Group-6/VHDL/tree/master/module%20description) contains the documentation for all the modules, used in the vivado project more in depth. 
The different test bench at the end of each document does not show the actual execution time but is only to show the functionality of each module.
<!--stackedit_data:
eyJoaXN0b3J5IjpbLTMwODM2ODYxNywtMTY2MzM0MjY1MywtOT
E2Nzc3NjcwLC0xMzY4ODMxNjg0XX0=
-->