`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Class:			EC551 Spring 2015 
// Assignment:		Lab 1
// Lab Team:		Priya Baskaran & Laura Kamfonik
// Due Date: 		March 6, 2015
//
// Module:   		t_datapath
//
// Description: 	testbench for main CPU datapath
////////////////////////////////////////////////////////////////////////////////////

module t_datapath;

	// Inputs
	reg clk;
	reg resume_btn;
	reg [5:0] Rm;
	reg [5:0] Rn;
	reg [15:0] pc;
	reg [15:0] instr;

	// Outputs
	wire clk_dis;
	wire jump_en;
	wire fetch_clk;
	wire [3:0] opcode;
	wire jump_addr;
	wire next_pc;
	wire [11:0] instr_addr;


	// Instantiate the Unit Under Test (UUT)
	datapath uut (
		.clk(clk), 
		.resume_btn(resume_btn), 
		.Rm(Rm), 
		.Rn(Rn), 
		.clk_dis(clk_dis), 
		.jump_en(jump_en), 
		.fetch_clk(fetch_clk), 
		.opcode(opcode), 
		.jump_addr(jump_addr), 
		.next_pc(next_pc), 
		.instr_addr(instr_addr), 
		.instr(instr)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		resume_btn = 0;
		Rm = 0;
		Rn = 0;
		pc = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
		instr = 16'b0000_0010_0000_1000;

		/*initial begin
		instr_mem[12'b0000_0000_0000] = 16'b0000_0010_0000_1000;	//1
		instr_mem[12'b0000_0000_0001] = 16'b0000_0000_0000_0000; //3
		instr_mem[12'b0000_0000_0010] = 16'b0000_0010_0000_0011; //4
		instr_mem[12'b0000_0000_0011] = 16'b0000_0010_0000_1001; //5
		instr_mem[12'b0000_0000_1000] = 16'b0000_0010_0000_0001; //2
		instr_mem[12'b0000_0000_1001] = 16'b0000_0010_0000_0000; //6
		instr_mem[12'b0000_0000_1001] = 16'b0000_0010_0000_0000; //7 - JUMPS BACK TO 1
end*/

	end
      
		
endmodule

