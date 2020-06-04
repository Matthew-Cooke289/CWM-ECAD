//////////////////////////////////////////////////////////////////////////////////
// Test bench for Exercise #5 - Traffic Lights
// Student Name:
// Date: 
//
// Description: A testbench module to test Ex5 - Traffic Lights
// You need to write the whole file
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 100ps

module top_tb(
    );
    
//Todo: Parameters

//Todo: Regitsers and wires
	reg clk, err;
	wire green, amber, red;
	wire [2:0] RAG;

// Clock generation
initial
    begin
       clk = 1'b0;
       forever
         #5 
	clk=~clk;
     end

//Todo: User logic

	always @(negedge clk)
	begin
	if(RAG == 3'b000 | 3'b101 | 3'b011 | 3'b111)
	begin 
	err <= 1;
	end

	if (err==1)
	begin
	$display("***TEST FAILED :( invalid state Final_Counter_Value ==%b, ***", RAG);
	end
	else 
	begin
	$display("***TEST PASSED! reset works :) ***");
	end
	end
    
//Todo: Finish test, check for success

//Todo: Instantiate counter module
 lights top ( 
	.clk (clk),
    	.red (red),
	.amber (amber),
	.green (green),
	.RAG (RAG)
     );
endmodule 
