`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Class:			EC551 Spring 2015 
// Assignment:		Lab 1
// Lab Team:		Priya Baskaran & Laura Kamfonik
// Due Date: 		March 6, 2015
//
// Module:			t_instr_fetch
//
// Description:  	testbench for instr_fetch module
////////////////////////////////////////////////////////////////////////////////

module t_instr_fetch;

	// Inputs
	reg clk;
	reg [15:0] pc;
	reg [15:0] instr;

	// Outputs
	wire [11:0] instr_addr;
	wire [3:0] opcode;
	wire [5:0] Rm;
	wire [5:0] Rn;
	wire [11:0] jump_addr;
	wire [15:0] next_pc;

	// Instantiate the Unit Under Test (UUT)
	instr_fetch uut (
		.clk(clk), 
		.pc(pc), 
		.instr(instr), 
		.instr_addr(instr_addr), 
		.opcode(opcode), 
		.Rm(Rm), 
		.Rn(Rn), 
		.jump_addr(jump_addr), 
		.next_pc(next_pc)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		pc = 0;
		instr = 0;

		// Wait 100 ns for global reset to finish
		//#100;
        
		// Add stimulus here
		repeat (10)
		begin
			clk = !clk;
			#10 pc = pc + 1;
			#20 instr = instr + 16;
			#20;
		end
		
	end
      
endmodule

