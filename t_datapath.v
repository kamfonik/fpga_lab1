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
	reg resume;
	reg [15:0] pc;
	//reg [15:0] instr;
	
	// Outputs
	wire fetch_clk;
	wire clk_dis;
	wire jump_en;
	wire [3:0] opcode;
	wire [5:0] Rm;
	wire [5:0] Rn;
	wire [11:0] jump_addr;
	//wire next_pc;
	wire [11:0] instr_addr;
	wire [15:0] instr;


	// Instantiate the Unit Under Test (UUT)
	datapath uut (
		.clk(clk), 
		.resume(resume),
		.fetch_clk(fetch_clk),
		.pc(pc),
		.instr(instr),
		.instr_addr(instr_addr),
		.opcode(opcode),
		.Rm(Rm), 
		.Rn(Rn), 
		.clk_dis(clk_dis), 
		.jump_en(jump_en), 
		.jump_addr(jump_addr) 
		//.next_pc(next_pc),  
	);

	initial begin
		// Initialize Inputs
		pc = 16'b0000_0000_0000_0000;
		//instr = 16'b1111_1111_1111_1111;	 //right now this is a nonsense value		
		clk = 0;
		resume = 0;

		// Wait 100 ns for global reset to finish
		//#100;
        
		// Add stimulus here
		
		repeat (3) begin
			#100 pc = pc + 1;
		end
/*			#20 instr = 16'b0100_1111_0000_1111;

			#20 instr = instr + 1;
			
			#20 instr = 16'b0000_0000_0000_0000;	//halt	

			#20 instr = instr + 1;
			
			#150 resume = 1;
			#800 resume = 0;
			
			#20 instr = 16'b0011_0000_1111_1111;*/

			
			
			

		


	end
   
	always
		#50 clk = !clk;
		
endmodule

