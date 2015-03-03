`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Class:			EC551 Spring 2015 
// Assignment:		Lab 1
// Lab Team:		Priya Baskaran & Laura Kamfonik
// Due Date: 		March 6, 2015
//
// Module:   		memory 
// Requires:		
//
// Description: 	12b x 16b memory storing instructions and data
////////////////////////////////////////////////////////////////////////////////////
module memory (
	input [11:0] instr_addr,
	//input [11:0] data_addr;
	//input [11:0] data_in;
	//input write_enable,
	
	output reg [15:0] instr_out
	//output [11:0] data_out;

	//input [address_size-1:0] Read_addr, Write_addr,
);
	 


//integer i;

reg [15:0] memory [0:11];
//assign Data_Out = Memory[Read_addr];




initial begin
	// test initialization
	memory[12'b0000_0000_0000] = 16'b0010_0000_0000_0001;	//1
	memory[12'b0000_0000_0001] = 16'b0010_0000_0000_0010; //2
	memory[12'b0000_0000_0010] = 16'b0010_0000_0000_0011; //3
   memory[12'b0000_0000_0011] = 16'b0000_0000_0000_0000; //4 halt

	//for(i=0; i<4096;i= i+1) 
	//	Memory[i] =i;
end

always @(instr_addr)
begin
	 instr_out = memory[instr_addr];
end

/*always @(Write_Enable, Data_in)
	begin
			if ( Write_Enable == 1'b1) begin
				Memory[Write_addr] <= Data_in;
			end
	end*/

endmodule
