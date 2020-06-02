//////////////////////////////////////////////////////////////////////////////////
// Test bench for Exercise #3 - Up/Down counter
// Student Name:
// Date: 
//
// Description: A testbench module to test Ex3 - counter
// Guidance: start with simple tests of the module (how should it react to each 
// control signal?). Don't try to test everything at once - validate one part of 
// the functionality at a time.
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 100ps

module top_tb(

    );
    
//Todo: Parameters
parameter CLK_PERIOD = 10;

//Todo: Regitsers and wires
	reg clk;
    reg rst;
    reg err;
	reg enable;
	reg direction;
    wire [7:0] counter_out;

//Clock generation
    initial
    begin
       clk = 1'b0;
       forever
         #(CLK_PERIOD/2) clk=~clk;
     end

//Todo: User logic
	initial begin
   
    assign 
	rst = 1;
    #10
    rst = 0;
    enable = 1;
    direction = 0;
    #640;
    enable = 0;
    #20;
    enable = 1;
    direction = 1;
    #440;

    end

    
//Todo: Finish test, check for success
	initial 
	begin

	if(counter_out != 8'b00000000)
	begin
	err <= 1;
	end


	if (err==1)
	begin
	$display("***TEST FAILED :( Final_Counter_Value ==\d, ***", counter_out);
	end
	else begin
	$display("***TEST PASSED! :) ***");
	end

	end

//Todo: Instantiate counter module
 counter top (
     .rst (rst),
     .enable (enable),
	.direction (direction),
     .counter_out (counter_out)
     );

endmodule  
