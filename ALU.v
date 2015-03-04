`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Class:			EC551 Spring 2015 
// Assignment:		Lab 1
// Lab Team:		Priya Baskaran & Laura Kamfonik
// Due Date: 		March 6, 2015
//
// Module:   		ALU 
// Requires:		
//
// Description: 	ALU with ADD, SUB, INC, XOR capability
////////////////////////////////////////////////////////////////////////////////////
module ALU(
	input [15:0] Data_A,
	input [15:0] Data_B,
	input [1:0] op_sel,
	output reg Zero,
	output reg [15:0] ALU_out
);

//assign Zero = !(ALU_out);				//goes high when any operation results in 0

always @(op_sel, Data_A, Data_B)
begin
	Zero = 0;
	case(op_sel)
		2'b00: 
			ALU_out = Data_A + Data_B;
			
		2'b01: begin
			ALU_out = Data_A - Data_B;
			if (ALU_out == 0) begin
					Zero = 1;
			end
		end
			
		2'b10:
			ALU_out = Data_A + 1'b1;
			
		2'b11:
			ALU_out = Data_A ^ Data_B;
	endcase
end

endmodule
