//////////////////////////////////////////////////////////////////////////////////
// Test bench for Exercise #5 - Traffic Lights
// Student Name:
// Date: 
//
// Description: A testbench module to test Ex5 - Traffic Lights
// You need to write the whole file
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

module lights(
	input wire clk,
	output reg red, amber, green,
	output reg [2:0] RAG
);
                  
    //Todo: add registers and wires, if needed

	
	
	

    //Todo: add user logic

	always @(posedge clk)     
begin
	if(RAG == 3'b000 | 3'b101 | 3'b011 | 3'b111)
	RAG <= 3'b100;
	else
	if(RAG == 3'b100)
	RAG <= 3'b110;
	else
	if(RAG == 3'b110)
	RAG <= 3'b001;
	else
	if(RAG == 3'b001)
	RAG <= 3'b010;
	else
	if(RAG == 3'b010)
	RAG <= 3'b100;
	else
	RAG <= 3'b100;
end

endmodule
