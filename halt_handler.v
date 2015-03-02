`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Class:			EC551 Spring 2015 
// Assignment:		Lab 1
// Lab Team:		Priya Baskaran & Laura Kamfonik
// Due Date: 		March 6, 2015
//
// Module:   		halt_handler 
// Requires:		debouncer, halt_state
//
// Description: 	Logic to enable halt instruction to stop execution
//
//						Decoder asserts clk_dis when a halt instruction is detected,
//							and execution halts.
//						Execution resumes when the user presses a push button,
//							which de-asserts clk_dis.
//
////////////////////////////////////////////////////////////////////////////////////

module halt_handler(
clk,
clk_dis,
button,
//clean_btn,
//state,
//delay_reg,
clk_out
);

//INPUTS
input wire clk;
input wire clk_dis;
input wire button;

//OUTPUTS
output reg clk_out;

//INTERNAL
wire [3:0] delay_reg;
wire clean_btn;
reg state;

debouncer deb1( .clk(clk), .button(button), .clean(clean_btn), .delay_reg(delay_reg));

initial begin
	state = 0;
end

always @(posedge clk)
begin
	clk_out = !state;
end

always @(negedge clk)
begin
	clk_out = 0;
end

always @(*)
begin
	if (state) begin				// if halted
		if (clean_btn) begin
			state = 0;
		end
	end else begin					// if executing
		if (clk_dis) begin
			state = 1;
		end
	end
end

endmodule
