//////////////////////////////////////////////////////////////////////////////////
// Exercise #3 
// Student Name:
// Date: 
//
//  Description: In this exercise, you need to design an up / down counter, where 
//  if the rst=1, the counter should be set to zero. If enable=0, the value
//  should stay constant. If direction=1, the counter should count up every
//  clock cycle, otherwise it should count down.
//  Wrap-around values are allowed.
//
//  inputs:
//           clk, rst, enable, direction
//
//  outputs:
//           counter_out[7:0]
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

module counter(
   input  clk,
    input wire rst,
    input wire enable,
	input wire direction,
    output counter_out[7:0]
    );
                    
  reg counter[7:0];


    always @(posedge clk or posedge rst)     
	if(rst)       
	counter <= 8'b00000000;     
	else 
      if(!enable)
	counter <= counter;
	else
	if(direction)
	counter <= counter + 1'b1;
	else
	counter <= counter - 1'b1;

	counter_out[7:0] <= counter[7:0];


      
endmodule
