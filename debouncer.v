`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Class:			EC551 Spring 2015 
// Assignment:		Lab 1
// Lab Team:		Priya Baskaran & Laura Kamfonik
// Due Date: 		March 6, 2015
//
// Module:    		debouncer 
//
// Description:	Debouncer for FPGA pushbutton
//
//						A shift register stores the button signal value at each clock rise.
//						If the shift register fills with 1's or 0's, the outuput changes.
//						To adjust the sensitivity, change the size of the shift register.
//
//////////////////////////////////////////////////////////////////////////////////
module debouncer(
clk,
button,
clean,
delay_reg
);

//INPUTS	 
input wire clk;
input wire button;

//OUTPUTS
output reg clean;

//INTERNAL
output reg [3:0] delay_reg;

//CODE

initial begin
	clean = 0;
	delay_reg = 4'b0000;
end

always@(posedge clk)
begin
	delay_reg <= {delay_reg[6:0], button};
	if (delay_reg == 4'b1111) begin
		clean = 1;
	end else if (delay_reg ==4'b0000) begin
		clean = 0;
	end else begin
		clean <= clean;
	end
end
	
endmodule

