`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Class:			EC551 Spring 2015 
// Assignment:		Lab 1
// Lab Team:		Priya Baskaran & Laura Kamfonik
// Due Date: 		March 6, 2015
//
// Module:   		pc_select 
//
// Description: 	2-1 MUX to select next PC value
//						Includes extension of jump address from 12b to 16b
////////////////////////////////////////////////////////////////////////////////////
module pc_select(
	input [15:0] pc,
	input [11:0] jump_addr,
	input jump_en,
	
	output reg [15:0] next_pc
);

initial begin
next_pc = 16'b0000_0000_0000_0000;			//eventually this should be 31
end

always @(*)
begin
	if (jump_en) begin
		{next_pc[15:0]} = { 4'b0000, jump_addr[11:0] };
	end else begin
		next_pc = pc + 1;
	end
end

endmodule
