`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Class:			EC551 Spring 2015 
// Assignment:		Lab 1
// Lab Team:		Priya Baskaran & Laura Kamfonik
// Due Date: 		March 6, 2015
//
// Module:   		instr_fetch
// Requires:		debouncer, halt_state
//
// Description: 	Fetch 1 instruction per clock cycle according to the program counter
////////////////////////////////////////////////////////////////////////////////////
module instr_fetch(
clk,
pc,
instr,
instr_addr,
opcode,
Rm,
Rn,
jump_addr
//next_pc
);

//INPUTS
input wire clk;						// clk is really the output of the halt_handler unit
input wire[15:0] pc;		
input wire[15:0] instr;

//OUTPUTS
output reg [11:0] instr_addr;
output reg [3:0] opcode;			// opcode goes to decoder
output reg [5:0] Rm;					// Rn, Rm go straight to register file
output reg [5:0] Rn;		

//INTERNAL 
output reg [11:0] jump_addr;		
//output reg [15:0] next_pc;

/*pc_select PC_SEL(
	.pc(pc), 
	.jump_addr(jump_addr),
	.jmp_en(jump_en)
	.next_pc
);*/

always @(posedge clk)	
begin	
	instr_addr <= pc[11:0];
end

always @ (instr)
begin
	opcode = instr[15:12];
	Rn = instr[11:6];
	Rm = instr[5:0];
	jump_addr = instr[11:0];
end
endmodule
