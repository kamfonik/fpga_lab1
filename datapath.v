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
clk,
resume_btn,
Rm,
Rn,
pc,

//not really outputs
clk_dis,
jump_en,
fetch_clk,
opcode,
jump_addr,
next_pc,
instr_addr,
instr
    );
	 
//INPUTS
input clk;
input resume_btn;
input [15:0] pc;				//for now
input [15:0] instr;			//for now

//DECODER CONTROL SIGNALS
output wire clk_dis;
output wire jump_en;

//INSTRUCTION FETCH WIRES
output wire fetch_clk;		//input
output wire [3:0] opcode; 	//outputs
output wire [11:0] jump_addr;
output wire [15:0] next_pc;
output wire [11:0] instr_addr;
//output wire [15:0] instr;

/*
// a fake memory for testing purposes
// instructions are established as needed below
reg [15:0] instr_mem [11:0];*/


//OUTPUTS
output reg [5:0] Rm;
output reg [5:0] Rn;

	 
halt_handler HALT(
	.clk(clk),
	.clk_dis(clk_dis),
	.button(resume_btn),
	.clk_out(fetch_clk)
);

instr_fetch IF(
	.clk(fetch_clk),
	.pc(pc),	
	.instr(instr),
	.instr_addr(instr_addr),
	.opcode(opcode),
	.Rm(Rm),
	.Rn(Rn),
	.jump_addr(jump_addr),
	.next_pc(next_pc)
);

decoder DECODE(
	.opcode(opcode),
	.clk_dis(clk_dis),
	.jump_en(jump_en)
);



/*initial begin
	instr_mem[12'b0000_0000_0000] = 16'b0000_0010_0000_1000;	//1
	instr_mem[12'b0000_0000_0001] = 16'b0000_0000_0000_0000; //3
	instr_mem[12'b0000_0000_0010] = 16'b0000_0010_0000_0011; //4
	instr_mem[12'b0000_0000_0011] = 16'b0000_0010_0000_1001; //5
	instr_mem[12'b0000_0000_1000] = 16'b0000_0010_0000_0001; //2
	instr_mem[12'b0000_0000_1001] = 16'b0000_0010_0000_0000; //6
	instr_mem[12'b0000_0000_1001] = 16'b0000_0010_0000_0000; //7 - JUMPS BACK TO 1
end*/

//assign instr = instr_mem[instr_addr];


endmodule
