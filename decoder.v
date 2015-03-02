`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Class:			EC551 Spring 2015 
// Assignment:		Lab 1
// Lab Team:		Priya Baskaran & Laura Kamfonik
// Due Date: 		March 6, 2015
//
// Module:    		decoder 
//
// Description:	Decoder
//
//						Receives instruction from fetch unit.
//						Outputs control signals to other modules.
//
//////////////////////////////////////////////////////////////////////////////////
module decoder(
opcode,
clk_dis,
jump_en
    );

//INPUTS
input wire [3:0] opcode;


//OUTPUTS
output reg clk_dis;
output reg jump_en;


always @(opcode)
begin
	case(opcode)
		4'b0000: begin								//halt
			clk_dis = 1;
			jump_en = 0;
		end
		
		4'b0010, 4'b0100, 4'b0011: begin		//jmp <target>, je <target>, jne <target>
			clk_dis = 0;
			jump_en = 1;
		end
			
	endcase
end

endmodule
