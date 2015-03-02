`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Class:			EC551 Spring 2015 
// Assignment:		Lab 1
// Lab Team:		Priya Baskaran & Laura Kamfonik
// Due Date: 		March 6, 2015
//
// Module:			t_debouncer
//
// Description:  	testbench for debouncer module
////////////////////////////////////////////////////////////////////////////////

module t_debouncer;

	// Inputs
	reg clk;
	reg button;

	// Outputs
	wire clean;
	wire [3:0] delay_reg;

	// Instantiate the Unit Under Test (UUT)
	debouncer uut (
		.clk(clk), 
		.button(button), 
		.clean(clean),
		.delay_reg(delay_reg)
	);

	initial begin
		/*// Initialize Inputs
		clk = 0;
		button = 0;*/

		// Wait 100 ns for global reset to finish
		#100;
	
		// Initialize Inputs
		clk = 0;
		button = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
		#300;
		repeat (10)
			begin
			#5 button = 1;
			#2 button = 0;
			end
		button = 1;
		#400;
		repeat (10)
			begin
			#5 button = 0;
			#2 button = 1;
			end
		button = 0;
		#300;
	end
	
	always
		#50 clk = !clk;
		
endmodule

