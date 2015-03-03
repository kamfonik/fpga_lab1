`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Class:			EC551 Spring 2015 
// Assignment:		Lab 1
// Lab Team:		Priya Baskaran & Laura Kamfonik
// Due Date: 		March 6, 2015
//
// Module:   		t_pc_select
//
// Description: 	testbench for PC Select
////////////////////////////////////////////////////////////////////////////////////

module t_pc_select;

	// Inputs
	reg jump_en;
	reg [11:0] jump_addr;
	reg [15:0] pc;
	
	// Outputs
	wire [15:0] next_pc;

	// Instantiate the Unit Under Test (UUT)
	pc_select uut (
		.jump_en(jump_en),
		.jump_addr(jump_addr),
		.pc(pc),
		.next_pc(next_pc)
	);

	initial begin
		// Initialize Inputs
		jump_en = 0;
		jump_addr = 12'b1010_1010_1010;
		pc = 0;

		// Wait 100 ns for global reset to finish
		//#100;
        
		// Add stimulus here
		#50 pc = next_pc;
		#50 pc = next_pc;
		
		#25 jump_en = 1;
		
		#25 pc = next_pc;
			
		#25 jump_en = 0;
		#25 pc = next_pc;

	end
      
endmodule

