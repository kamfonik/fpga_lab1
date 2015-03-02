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
	reg [15:0] instr;
	reg clk_dis;
	
	// Outputs
	wire fetch_clk;
	//wire clk_dis;
	//wire jump_en;
	wire [3:0] opcode;
	wire [5:0] Rm;
	wire [5:0] Rn;
	wire [11:0] jump_addr;
	//wire next_pc;
	wire [11:0] instr_addr;


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
		//.jump_en(jump_en), 
		.jump_addr(jump_addr) 
		//.next_pc(next_pc),  
	);

	initial begin
		// Initialize Inputs
		pc = 0;
		instr = 0;
		clk = 0;
		resume = 0;
		clk_dis = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		

			#20 pc = 16'b0000_1111_0000_1111;

			#20 pc = instr + 1;
			
			#20 clk_dis = 1;
	
			#20 clk_dis = 0;
			
			#20 pc = 16'b0000_0011_1111_0000;

			#20 instr = instr + 1;
			
			#150 resume = 1;
			#800 resume = 0;
			
			#20 pc = 16'b0000_0011_1111_1111;

			#20 instr = instr + 1;

		
		/*NOTE THAT THE OPCODES ARE IN THE WRONG PLACE, FIX BEFORE USING*/
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
   
	always
		#50 clk = !clk;
		
endmodule

