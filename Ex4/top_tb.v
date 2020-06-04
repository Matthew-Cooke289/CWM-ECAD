//////////////////////////////////////////////////////////////////////////////////
// Test bench for Exercise #4 - Electronic Dice
// Student Name:
// Date: 
//
// Description: A testbench module to test Ex4 - Electronic Dice
// You need to write the whole file
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 100ps

module top_tb(
    );
    
//Todo: Parameters
parameter CLK_PERIOD = 10;

//Regitsers and wire

	reg clk, err, rst, button;
	wire [2:0] throw ;
	

// Clock generation
initial
    begin
       clk = 1'b0;
       forever
         #5 
	clk=~clk;
     end
	
	initial begin
	rst = 1;
	#100;
	rst = 0; 
	end


//Todo: User logic
	initial begin
   
    assign 
	
	button = 1;
 	#100;
	button = 0;
	 #100;
	rst = 1;
 	#100;
    end

//Todo: Finish test, check for success
initial 
	begin
	#600
	if(throw != 3'b000)
	begin
	err <= 1;
	end


	if (err==1)
	begin
	$display("***TEST FAILED :( reset doesnt work Final_Counter_Value ==%d, ***", throw);
	end
	else begin
	$display("***TEST PASSED! reset works :) ***");
	end

	end

//Todo: Instantiate counter module
dice top ( 
	.clk (clk),
     .rst (rst),
	.button (button),
     .throw (throw)
     );
 
endmodule 
