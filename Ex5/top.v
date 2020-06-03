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
	input clk,
	output red, amber, green  
);
                  
    //Todo: add registers and wires, if needed

	reg [2:0] RAG
	
	

    //Todo: add user logic

	always @(posedge clk)     
begin
	if(RAG == 3'b000 | 3'b101 | 3'b011 | 3'b111)
begin
	assign RAG <= 3'b100;
end
	else
	if(RAG == 3'b100)
begin
	assign RAG <= 3'b110;
end
	else
	if(RAG == 3'b110)
begin
	assign RAG <= 3'b001;
end
	else
	if(RAG == 3'b001)
begin
	assign RAG <= 3'b010;
end
	else
	if(RAG == 3'b010)
begin
	assign RAG <= 3'b100;
end
	else
	RAG <= 3"b100;
	
end

	assign red = RAG[2];
	assign amber = RAG[1];
  assign green = RAG[0];

endmodule
