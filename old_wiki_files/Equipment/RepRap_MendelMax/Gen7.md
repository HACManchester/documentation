The RepRap uses a gen7 v1.2 board as seen here:
[1](http://reprap.org/wiki/Gen7_Board_1.2)

it has been modified to work slightly differently to most gen7 1.2
boards, to allow the addition of an SD card and remove the need for an
ATX power supply.

| Original Function | MM Function                  | ATMega Name | Arduino Name |
|-------------------|------------------------------|-------------|--------------|
| X Min             | **SD SCK**                   | PB7         | D7           |
| X Max             | **SD MISO**                  | PB6         | D6           |
| Y Min             | **SD MOSI**                  | PB5         | D5           |
| Y Max             | **X Min**                    | PB2         | D2           |
| Z Min             | **Y Min**                    | PB1         | D1           |
| Z Max             | **Z Min**                    | PB0         | D0           |
| Power Enable      | ''' Unused '''               | PD7         | D15          |
| Unused            | ''' Unused '''               | PC4         | D20          |
| Unused            | ''' Unused '''               | PC5         | D21          |
| Misc Header       | ''' Click Encoder A '''      | PD2         | D10          |
| Misc Header       | ''' Click Encoder B '''      | PD3         | D11          |
| Misc Header       | ''' Click Encoder Switch ''' | PD4         | D12          |
| Misc Header       | ''' Unused '''               | PD5         | D13          |
| Misc Header       | ''' SD CS '''                | PD6         | D14          |
| I2C Header        | ''' I2C LCD SCL '''          | PC0         | D16          |
| I2C Header        | ''' I2C LCD SDA '''          | PC1         | D17          |

![<File:SanguinoPinBindings.png>](SanguinoPinBindings.png "File:SanguinoPinBindings.png")

[Category:Mendel Max](Category:Mendel_Max "wikilink")