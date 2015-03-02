`timescale 1ns / 1ps
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Class:			EC551 Spring 2015 
// Assignment:		Lab 1
// Lab Team:		Priya Baskaran & Laura Kamfonik
// Due Date: 		March 6, 2015
//
// Module:   		sign_ext_12_16
// Requires:		
//
// Description: 	12b to 16b sign extender
////////////////////////////////////////////////////////////////////////////////////
module sign_ext_12_16(
	input [11:0] in_12b,
	output reg [15:0] out_16b
    );

	always @(*) begin
		{out_16b[15:0]} = { {4{in_12b[11]}}, in_12b[11:0] }; 
	end
		

endmodule
