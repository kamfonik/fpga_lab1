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
	output wire [11:0] instr_addr,
	output wire [3:0] opcode,
	output wire [5:0] Rm,
	output wire [5:0] Rn,
	output wire [11:0] jump_addr,
	output wire [15:0] prev_pc,		// eventually to R6, right now straight to PC_SEL
	
	//DECODER
	output wire clk_dis,
	output wire jump_en,
	
	//MEMORY
	output [15:0] instr,
	
	//PC_SEL
	//input [15:0] prev_pc,
	output [15:0] next_pc
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
	.pc(next_pc),	
	.instr(instr),
	.instr_addr(instr_addr),
	.opcode(opcode),
	.Rm(Rm),
	.Rn(Rn),
	.jump_addr(jump_addr),
	.pc_out(prev_pc)
);

decoder DECODE(
	.opcode(opcode),
	.clk_dis(clk_dis),
	.jump_en(jump_en)
);

memory MEM(
	.instr_addr(instr_addr),
	.instr_out(instr)
);

pc_select PC_SEL(
	.pc(prev_pc),
	.jump_addr(jump_addr),
	.jump_en(jump_en),
	.next_pc(next_pc)
);



endmodule
