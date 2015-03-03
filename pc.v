`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Class:			EC551 Spring 2015 
// Assignment:		Lab 1
// Lab Team:		Priya Baskaran & Laura Kamfonik
// Due Date: 		March 6, 2015
//
// Module:   		pc 
// Requires:		
//
// Description: 	Program Counter / R6
////////////////////////////////////////////////////////////////////////////////////
module prog_count(
	input [15:0] old_pc,
	output[15:0] next_pc
);


//OUTPUT
output reg pc;		

//CODE

always @(jump_addr or next_addr)
begin
	if (jump_en) begin
		pc = jump_addr;
	end else begin
		pc = next_pc;
	end
end
endmodule
