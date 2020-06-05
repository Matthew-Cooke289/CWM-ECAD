//////////////////////////////////////////////////////////////////////////////////
// Test bench for Exercise #7 - Times Table
// Student Name:
// Date: 
//
// Description: A testbench module to test Ex7 - Times Table
// You need to write the whole file
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 100ps

module top_tb(
    );
    
//Todo: Parameters

//Todo: Regitsers and wires
reg read, clk, err;
wire [5:0] result;
reg [2:0] a;
reg [2:0] b;

//Clock generation
    initial
    begin
       clk = 1'b0;
       forever
         #10 clk=~clk;
     end

//Todo: User logic
initial begin 
assign 
a = 3'b101;
b = 3'b001;
read = 1'b1;
#20;
end
    
//Todo: Finish test, check for success
initial begin
#100
if(result !==6'b000101)
begin
err <= 1;
end


        if (err==0)
	begin
          $display("***TEST PASSED! :) ***");
	end
	else
	begin
	$display("***TEST FAILED! :) ***");
	end
      end
//Todo: Instantiate counter module
 multi top (
     .a (a),
     .b (b),
     .read (read),
     .result (result),
	.clk (clk)
     );
endmodule 
