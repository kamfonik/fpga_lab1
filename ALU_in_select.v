`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Class:			EC551 Spring 2015 
// Assignment:		Lab 1
// Lab Team:		Priya Baskaran & Laura Kamfonik
// Due Date: 		March 6, 2015
//
// Module:   		ALU_in_select 
// Requires:		
//
// Description: 	MUXes to select inputs at ALU inputs A and B
////////////////////////////////////////////////////////////////////////////////////
module ALU_in_select(
	input [15:0] reg_out_A,
	input [15:0] reg_out_B,
	input [15:0] mem_data,
	input [5:0] number,

	input [1:0] ALU_A_sel,
	input [1:0] ALU_B_sel,

	output reg [15:0] ALU_in_A,
	output reg [15:0] ALU_in_B
);


always @(*)
	begin
		case (ALU_A_sel)
			2'b00:
				ALU_in_A = 0;					// ALU input A is zero
				
			2'b01:
				ALU_in_A = 1;					// ALU input A is 1
			
			2'b10:
				ALU_in_A = reg_out_A;		// ALU input A is data from Rn
				
			2'b11:								// at the moment this case doesn't actually get used
				ALU_in_A= 0;
		endcase
		
		case (ALU_B_sel)
			2'b00:
				ALU_in_B = reg_out_B;		// ALU input B is data from Rm	
				
			2'b01:
				ALU_in_B = mem_data;			// ALU input B is data from memory
			
			2'b10:
				ALU_in_B = {{10{number[5]}}, number[5:0]};			// ALU input B is a sign-extended number from the instruction
			
			2'b11:								// at the moment this case doesn't actually get used
				ALU_in_B = 	0;	
		endcase
	end

endmodule
