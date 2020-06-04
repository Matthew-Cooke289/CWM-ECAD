//////////////////////////////////////////////////////////////////////////////////
// Exercise #5 
// Student Name:
// Date: 
//
//  Description: In this exercise, you need to implement a UK traffic lights 
//  sequencing system. 
//
//  inputs:
//           clk
//
//  outputs:
//           red, amber, green
//////////////////////////////////////////////////////////////////////////////////


`timescale 1ns / 100ps

module lights(
	input wire clk,
	output reg red, amber, green  
	output reg [2:0] RAG
);
                  
    //Todo: add registers and wires, if needed

    //Todo: add user logic

	always @(posedge clk)     
begin
	if(RAG == 3'b000 | 3'b101 | 3'b011 | 3'b111)
	reg RAG <= 3'b100;
	else
	if(RAG == 3'b100)
	reg RAG <= 3'b110;
	else
	if(RAG == 3'b110)
	reg RAG <= 3'b001;
	else
	if(RAG == 3'b001)
	reg RAG <= 3'b010;
	else
	if(RAG == 3'b010)
	reg RAG <= 3'b100;
	else
	reg RAG <= 3"b100;
end

endmodule
