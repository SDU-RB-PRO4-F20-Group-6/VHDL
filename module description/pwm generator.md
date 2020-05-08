# Pwm generator
![pwm generator module](https://i.gyazo.com/c5f69525687ce70d35a776021444dc4b.png)
The pwm generator module is used to generate a pwm signal. The input is a 9 bit integer thereby dividing the voltage by $\frac{Volt}{512}$.  The pwm generator cannot get to 0V but can output 100% pwm. The lowest possible value is $\frac{1}{512}$.
When enable is high, the pwm generator will read from the pwm_trigger bus and will adjust the pwm according to the input. While the enable is low, the pwm generator will generate pwm according to the value given before the enable went low, that makes is possible to have multiple pwm generators running simultaneously while only reading from a single bus. 
The reset pin will reset the internal pwm value, and set the duty cycle to the lowest value.
## Test bench
![enter image description here](https://i.gyazo.com/0a9fad8a0cb98df5c9e433c121507fe6.png)
<!--stackedit_data:
eyJoaXN0b3J5IjpbLTEwNTkzNDQwNDZdfQ==
-->