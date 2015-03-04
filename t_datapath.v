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
	//reg [15:0] pc;
	//reg [15:0] instr;
	reg [15:0] reg_data_in;
	//reg reg_write;
	reg reg_reset;
	reg mem_to_reg_data;
	
	
	// Outputs
	
	//halt handler
	wire fetch_clk;
	
	//Decoder
	wire clk_dis;
	wire jump_en;
	wire [1:0] ALU_op;
	wire [1:0] ALU_sel_A;
	wire [1:0] ALU_sel_B;
	
	//IF
	wire [3:0] opcode;
	wire [5:0] Rm;
	wire [5:0] Rn;
	wire [11:0] jump_addr;
	wire [11:0] instr_addr;
	wire [15:0] instr;
	wire [15:0] prev_pc;
	
	//PC Selector
	wire [15:0] pc_store;
	
	//Register File
	wire [15:0] reg_data_A;
	wire [15:0] reg_data_B;
	wire [15:0] Reg0;
	wire [15:0] Reg1;
	wire [15:0] Reg2;
	wire [15:0] Reg3;
	wire [15:0] Reg4;
	wire [15:0] Reg5;
	wire [15:0] Reg6;

	//ALU selector 
	wire [15:0] ALU_data_A;
	wire [15:0] ALU_data_B;
	
	//ALU
	//input [15:0] Data_A,
	//input [15:0] Data_B,
	wire ALU_zero;
	wire [15:0] ALU_out;

	// Instantiate the Unit Under Test (UUT)
	datapath uut (
		.clk(clk), 
		.resume(resume),
		.fetch_clk(fetch_clk),
		//.pc(pc),
		.instr(instr),
		.instr_addr(instr_addr),
		.opcode(opcode),
		.Rm(Rm), 
		.Rn(Rn), 
		
		.clk_dis(clk_dis), 
		.jump_en(jump_en), 
		.ALU_op(ALU_op),
		.ALU_sel_A(ALU_sel_A),
		.ALU_sel_B(ALU_sel_B),
		
		.jump_addr(jump_addr), 
		.pc_store(pc_store),
		.prev_pc(prev_pc),
		
		.reg_data_in(reg_data_in),
		.reg_write(reg_write),
		.reg_reset(reg_reset),
		.reg_data_A(reg_data_A), 
		.reg_data_B(reg_data_B),
		.Reg0(Reg0),
		.Reg1(Reg1),
		.Reg2(Reg2),
		.Reg3(Reg3),
		.Reg4(Reg4),
		.Reg5(Reg5),
		.Reg6(Reg6),
		
		.ALU_data_A(ALU_data_A),
		.ALU_data_B(ALU_data_B),
		.ALU_zero(ALU_zero),
		.ALU_out(ALU_out)
		
		
	);

	initial begin
		// Initialize Inputs
		//pc = 16'b0000_0000_0000_0000;
		//instr = 16'b1111_1111_1111_1111;	 //right now this is a nonsense value		
		clk = 0;
		resume = 0;
		
		//reg_write = 0;
		reg_reset = 0;
		reg_data_in = 16'b1111_0000_1111_0000;
		mem_to_reg_data = 42;

		// Wait 100 ns for global reset to finish
		//#100;
        
		// Add stimulus here
		
		repeat (5)
			#50 clk = !clk;
			
			

		


	end
   
	//always
	//	#50 clk = !clk;
		
endmodule

