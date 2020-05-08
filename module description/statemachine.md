# Statemachine
![statemachine module](https://i.gyazo.com/effd08d41240958dc5f1096c466e2ccb.png)
The statemachine dictates whats happening in the FPGA based on the frame recieved from the spi module.
Motor 0 is the same as motor A.
On the input, there is data comming from quad_enc and index_ctrl.
quad_enc is the quadrature decoders that reads the position of the motor, relative to where it started.
index_ctrl is the hall sensors used to calibrate. 
On the output, there is motor_ctrl and data_out.
motor_ctrl decides which motor may read the data from spi module.
data_out is connected directly to the spi module passes specific data from the input of the statemachine to the output, based on the frame recieved.

## protocol
MCU &rarr; FPGA
Frame type = 1: Data frame.
|frametype	| motor choice	| Direction	| duty cycle	| reserved	| parity	| 
| :----------:	| :-------------: 	| :----------:	| :----------:	| :---------:	| :------:	|
| 1 bit			| 1 bit					| 1 bit			| 9 bits			| 3 bits			| 1 bit		| 

MCU &larr; FPGA (send Hall index frame)
| 0 Padding	| Hall index	| Parity	|
| :--------:	| :----------:	| :-------:	|  
|14 bit			| 1 bit			| 1 bit		|

 MCU  &larr; FPGA(send Motor Position frame)
| Motor position	| Parity	|
| :------------------:	| :-------:	|
|  15 bit					| 1 bit		|

MCU &rarr; FPGA (Request a send frame)
Frame type = 0: Request data frame.
| Frame type	| Motor choice	| Request	| Padding	|
| :-------------:	| :----------------:	| :-------:	| :----------:	|
| 1 bit				| 1 bit					| 1 bit		| 13 bit		|

Motor choice = 0, motor 0 (Vertical)
Motor choice = 1, motor 1 (Horizontal)
Request = 1, Hall index
Request = 0, Position
 

## benchmark
![benchmark](https://i.gyazo.com/33c2b5907761bfed78a1ddda94417587.png)
