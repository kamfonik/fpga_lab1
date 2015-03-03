`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Class:			EC551 Spring 2015 
// Assignment:		Lab 1
// Lab Team:		Priya Baskaran & Laura Kamfonik
// Due Date: 		March 6, 2015
//
// Module:			t_decoder
//
// Description:  	testbench for decoder module
////////////////////////////////////////////////////////////////////////////////

module t_decoder;

	// Inputs
	reg [3:0] opcode;

	// Outputs
	wire clk_dis;
	wire jump_en;

	// Instantiate the Unit Under Test (UUT)
	decoder uut (
		.opcode(opcode), 
		.clk_dis(clk_dis), 
		.jump_en(jump_en)
	);

	initial begin
		// Initialize Inputs
		opcode = 4'b1111;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		opcode = 4'b0100;
		#50 opcode = 4'b0000;
		#50 opcode = 4'b0011;
		#50 opcode = 4'b0000;
		#50 opcode = 5'b0010;
	end
      
endmodule

