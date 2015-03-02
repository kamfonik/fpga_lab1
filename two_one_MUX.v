`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Class:			EC551 Spring 2015 
// Assignment:		Lab 1
// Lab Team:		Priya Baskaran & Laura Kamfonik
// Due Date: 		March 6, 2015
//
// Module:   		two_one_MUX 
//
// Description: 	2-to-1 multiplexer
////////////////////////////////////////////////////////////////////////////////////
module two_one_MUX(
	input Data_in_1, Data_in_2, select,
	output Data_out
 );

reg Data_out;

always @(*)
begin
	if ( select == 1'b0) begin
		Data_out = Data_in_1;
	end
	else begin
		Data_out = Data_in_2;
	end

end

endmodule
