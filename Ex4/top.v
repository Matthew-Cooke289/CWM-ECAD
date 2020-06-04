//////////////////////////////////////////////////////////////////////////////////
// Exercise #4 
// Student Name:
// Date: 
//
//  Description: In this exercise, you need to design an electronic dice, following
//  the diagram provided in the exercises documentation. The dice rolls as long as
//  a button is pressed, and stops when it is released. 
//
//  inputs:
//           clk, rst, button
//
//  outputs:
//           throw [2:0]
//
//  You need to write the whole file.
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

module dice(
	input wire rst, 
	input wire button, 
	input wire clk,
	output reg [2:0] throw 
    );


    always @(posedge clk)
	begin
	if(rst)
	throw <= 3'b000;
	else
	if(!button && (throw == 3'b000 | 3'b111))
	throw <= 3'b001;
	else
	if(!button)
	throw <= throw;
	else
	if(button && (throw !== 3'b111 | 3'b110))
	throw <= throw + 3'b001;
	else
	if(button && (throw == 3'b111 | 3'b110))
	throw <= 3'b001;
	end


                    
      
endmodule
