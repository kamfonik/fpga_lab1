`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Class:			EC551 Spring 2015 
// Assignment:		Lab 1
// Lab Team:		Priya Baskaran & Laura Kamfonik
// Due Date: 		March 6, 2015
//
// Module:			t_halt_handler
//
// Description:  	testbench for halt_handler 
//
// Dependencies:	debouncer.v
////////////////////////////////////////////////////////////////////////////////

module t_halt_handler;

	// Inputs
	reg clk;
	reg clk_dis;
	reg button;

	// Outputs
	wire clean_btn;
	wire clk_out;
	wire state;
	wire [3:0] delay_reg;

	// Instantiate the Unit Under Test (UUT)
	halt_handler uut (
		.clk(clk), 
		.clk_dis(clk_dis), 
		.button(button), 
		.clk_out(clk_out),
		.state(state),
		.clean_btn(clean_btn),
		.delay_reg(delay_reg)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		clk_dis = 0;
		button = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		repeat (3)
			begin
			#300 clk_dis = 1;
			#50 clk_dis = 0;
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
			#200;
			end
		end
	
	always
		#50 clk = !clk;
      
endmodule

