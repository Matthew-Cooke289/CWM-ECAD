//////////////////////////////////////////////////////////////////////////////////
// Exercise #2 
// Student Name: Matthew Cooke
// Date: 1/6/2020
//
//  Description: In this exercise, you need to design a multiplexer, where the  
//  output acts according to the following truth table:
//
//  sel | out
// -----------------
//   0  | a
//   1  | b
//
//  inputs:
//           a, b, sel
//
//  outputs:
//           out
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

module mux(
    input a,
    input b,
    input sel,
    output out
    );
	
	parameter CLK_PERIOD = 10;
    	reg  clk, out;

	initial begin 
	  clk=0;   
	forever
	#(CLK_PERIOD/2) 
	clk=~clk;
	end

    always @(posedge clk)
	if(sel)
	out = b;
	else
	out = a ;               
      
endmodule
