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
//////////////////////////////////////////////////////////////////////////////////
module decoder(
	input [3:0] opcode,
	
	output reg clk_dis,
	output reg jump_en,
	output reg reg_write,
	output reg [1:0] ALU_op,
	output reg [1:0] ALU_sel_A,
	output reg [1:0] ALU_sel_B
);

initial begin
	clk_dis = 0;
	jump_en = 0;
end


/*NOTES

	Currently I am setting the ALU op and selector controls to 0 for cycles when the ALU is not used,
	This setting adds 0 to Rn and then just doesn't do anything with the output.
	
	If possible, a better strategy might be to have an "ALU enable" to prevent the ALU from actually performing
	math every cycle.
	
	HOWEVER, currently for mov instructions, the register data needs to pass through the ALU (and get added to 0)
	in order to reach the write port of memory and the destination register.
	
*/

always @(opcode)
begin
		case(opcode)
		4'b0000: begin								//halt
			clk_dis = 1;
			jump_en = 0;
			reg_write = 0;
			ALU_op = 0;
			ALU_sel_A = 2'b00;
			ALU_sel_B = 2'b00;
		end
		
		4'b0001:	begin								//inc Rn
			clk_dis = 0;
			jump_en = 0;
			reg_write = 1;
			ALU_op = 0;
			ALU_sel_A = 2'b00;
			ALU_sel_B = 2'b00;
		end
		
		4'b0010, 4'b0100, 4'b0011: begin		//jmp <target>, je <target>, jne <target>
			clk_dis = 0;
			jump_en = 1;
			reg_write = 0;
			ALU_op = 0;
			ALU_sel_A = 2'b00;
			ALU_sel_B = 2'b00;
		end
		
		4'b0101:	begin								//add Rn, Rm
			clk_dis = 0;
			jump_en = 0;
			reg_write = 1;
			ALU_op = 0;
			ALU_sel_A = 2'b10;
			ALU_sel_B = 2'b00;
		end
		
		4'b0110:	begin								//sub Rn, Rm
			clk_dis = 0;
			jump_en = 0;
			reg_write = 1;
			ALU_op = 2'b01;
			ALU_sel_A = 2'b10;
			ALU_sel_B = 2'b00;
		end
		
		4'b0111:	begin								//xor Rn, Rm
			clk_dis = 0;					
			jump_en = 0;
			reg_write = 1;
			ALU_op = 2'b11;
			ALU_sel_A = 2'b10;
			ALU_sel_B = 2'b00;
		end
			
		default: begin					//trying to set this so that the default should never happen, but if it does the CPU should just get the next instruction
			clk_dis = 0;
			jump_en = 0;
			reg_write = 0;
			ALU_op = 2'b00;
			ALU_sel_A = 2'b00;		//default to 0
			ALU_sel_B = 2'b00;		//default to Rm
		end
			
	endcase
end

endmodule
