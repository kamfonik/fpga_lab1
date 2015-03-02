`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Class:			EC551 Spring 2015 
// Assignment:		Lab 1
// Lab Team:		Priya Baskaran & Laura Kamfonik
// Due Date: 		March 6, 2015
//
// Module:   		t_sign_ext_12_16
//
// Description: 	testbench for 12b-to-16b sign extender
////////////////////////////////////////////////////////////////////////////////////

module t_sign_ext_12_16;

	// Inputs
	reg [11:0] in_12b;

	// Outputs
	wire [15:0] out_16b;

	// Instantiate the Unit Under Test (UUT)
	sign_ext_12_16 uut (
		.in_12b(in_12b), 
		.out_16b(out_16b)
	);

	initial begin
		// Initialize Inputs
		in_12b = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		in_12b = 12'b0111_1010_1001;
		#50 in_12b = 12'b1111_1010_1001;
	end
      
endmodule

