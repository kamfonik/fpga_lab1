`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Class:			EC551 Spring 2015 
// Assignment:		Lab 1
// Lab Team:		Priya Baskaran & Laura Kamfonik
// Due Date: 		March 6, 2015
//
// Module:   		t_memory
//
// Description: 	testbench for memory
////////////////////////////////////////////////////////////////////////////////////

module t_memory;

	// Inputs
	reg [11:0] instr_addr;
	
	// Outputs
	wire [15:0] instr_out;

	// Instantiate the Unit Under Test (UUT)
	memory uut (
		.instr_addr(instr_addr),
		.instr_out(instr_out)
	);

	initial begin
		// Initialize Inputs
		instr_addr = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		repeat (3) begin
		#50 instr_addr = instr_addr + 1;
		end
	end
      
endmodule

