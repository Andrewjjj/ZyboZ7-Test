# Zybo Z7-10 Test for ECE 410 Lab Kit

Zybo Z7-10 Test for ECE 410 Lab Kit is created to run and ensure that all ports / PMODs used from ECE 410 is functioning correctly.

## Requirements

- Vivado 2020.1
- Zybo Z7-10 Board
- Segment Display PMOD
- USB Cable connector to connect the board to the computer running this program

## Preparing

1) Connect the Zybo Board with computer and / or power.
2) Connect the PMOD Segment Display in the port shown as below: 
![alt text](https://github.com/andrewjjj/ZyboZ7-Test/blob/master/img/zybo_board.jpg?raw=true)
3) Power on the Board
4) Open the project file
5) Generate Bitstream and Program the Board
6) You are ready for Testing!

## Test

- The LEDs (M14, M15, G14, D18) respond to the switches (G15, P15, W13, T16) just below them.
- The RGB LEDs (V16, F17, M17) respond to 3 of the buttons (P16, K19, Y16).
- The last Button (K18) turns all bits in both of the segment display on.
- The PMOD Segment Display continuously runs in the background and goes through each bit in the display.

## Recommended Testing Method

Here is a quick 15-second video demonstrating one of the ways the board can be tested.
![Output sample](https://github.com/andrewjjj/ZyboZ7-Test/blob/master/img/zybo_test.gif)

### Ports and PMODs Used in ECE 410

- Switches: 
  - G15, P15, W13, T16

- Buttons: 
  - K18, P16, K19, Y16,

- LEDs: 
  - M14, M15, G14, D18

- RGB LED 6s: 
  - V16, F17, M17

- PMOD Segment Display:
    - JC: V15, W15, T11, T10,
    - JD: T14, T15, P14, R14
