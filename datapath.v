`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Class:			EC551 Spring 2015 
// Assignment:		Lab 1
// Lab Team:		Priya Baskaran & Laura Kamfonik
// Due Date: 		March 6, 2015
//
// Module:   		datapath 
// Requires:		
//
// Description: 	Datapath module in which all other modules get instantiated
////////////////////////////////////////////////////////////////////////////////////
module datapath(
	input clk,					// FPGA board clock signal
	input resume,		// resume-execution pushbutton
	
	
	// all following "inputs"/"outputs" will eventually be internal wires
	
	//HALT HANDLER
	//input clk_dis,
	
	//INSTRUCTION FETCH
	//input [15:0] pc,		
	//input [15:0] instr,
	
	output wire fetch_clk,
	output wire [11:0] instr_addr,		//from R6
	output wire [3:0] opcode,
	output wire [5:0] Rm,					//Rm is also the immediate number
	output wire [5:0] Rn,
	output wire [11:0] jump_addr,
	output wire [15:0] prev_pc,		
	
	//DECODER
	output wire clk_dis,
	output wire jump_en,
	output wire reg_write,
	output wire [1:0] ALU_op,
	output wire [1:0] ALU_sel_A,
	output wire [1:0] ALU_sel_B,
	
	//MEMORY
	output [15:0] instr,
	
	//PC_SEL
	//input [15:0] prev_pc,
	output [15:0] pc_store,	 	//To R6
	
	//REG_FILE
	input [15:0] reg_data_in,
	//input reg_write,
	input reg_reset,					//this actually needs to come from a button, or something
	output [15:0] reg_data_A, 
	output [15:0] reg_data_B,
	output [15:0] Reg0,
	output [15:0] Reg1,
	output [15:0] Reg2,
	output [15:0] Reg3,
	output [15:0] Reg4,
	output [15:0] Reg5,
	output [15:0] Reg6,
	
	//ALU INPUT SELECT
	input [15:0] mem_to_reg_data,
	output [15:0] ALU_data_A,
	output [15:0] ALU_data_B,
	
	//ALU
	//input [15:0] Data_A,
	//input [15:0] Data_B,
	//input [1:0] op_sel,
	output ALU_zero,
	output [15:0] ALU_out
);


//internal wires

	//wire fetch_clk;		// clock signal passed from halt_handler to instr_fetch
	//wire clk_dis;			// disable signal from halt instruction




//not really outputs
//clk_dis,
//jump_en,
//next_pc,
	 
//INPUTS
//input clk;
//input resume_btn;


//DECODER CONTROL SIGNALS
//output wire clk_dis;
//output wire jump_en;


/*
// a fake memory for testing purposes
// instructions are established as needed below
reg [15:0] instr_mem [11:0];*/


	 
halt_handler HALT(
	.clk(clk),
	.clk_dis(clk_dis),
	.button(resume),
	.clk_out(fetch_clk)
);

instr_fetch IF(
	.clk(fetch_clk),
	//.pc(next_pc),
	.pc(Reg6),		// get new PC from R6
	.instr(instr),
	.instr_addr(instr_addr),
	.opcode(opcode),
	.Rm(Rm),
	.Rn(Rn),
	.jump_addr(jump_addr),
	.pc_out(prev_pc)	//retaining this becuase I think it may be necessary for discrete clock cycles
);

decoder DECODE(
	.opcode(opcode),
	.clk_dis(clk_dis),
	.jump_en(jump_en),
	.reg_write(reg_write),
	.ALU_op(ALU_op),
	.ALU_sel_A(ALU_sel_A),
	.ALU_sel_B(ALU_sel_B)
);

memory MEM(
	.instr_addr(instr_addr),
	.instr_out(instr)
);

pc_select PC_SEL(
	.pc(prev_pc),				//see note at IF for why this comes from IF rather than R6
	.jump_addr(jump_addr),
	.jump_en(jump_en),
	.next_pc(pc_store)		//store next PC in R6
);

Register_File REG_FILE(
	.Data_in(reg_data_in), 
	.read_write_addr(Rn), 
	.read_addr_2(Rm), 
	//.Write_addr(reg_write_addr), 
	.pc_in(pc_store), 
	.Write_Enable(reg_write), 
	.Reset(reg_reset),
	.Data_Out_1(reg_data_A), 
	.Data_Out_2(reg_data_B),
	.Reg0(Reg0),
	.Reg1(Reg1),
	.Reg2(Reg2),
	.Reg3(Reg3),
	.Reg4(Reg4),
	.Reg5(Reg5),
	.Reg6(Reg6)
);

ALU_in_select ALU_MUX(
	.reg_out_A(reg_data_A),
	.reg_out_B(reg_data_B),
	.mem_data(mem_to_reg_data),		//right now this is a manual input
	.number(Rm),								
	.ALU_A_sel(ALU_sel_A),							
	.ALU_B_sel(ALU_sel_B),						
	.ALU_in_A(ALU_data_A),
	.ALU_in_B(ALU_data_B)
);

ALU ALU_1(
	.Data_A(ALU_data_A),
	.Data_B(ALU_data_B),
	.op_sel(ALU_op),
	.Zero(ALU_zero),
	.ALU_out(ALU_out)
);

endmodule
