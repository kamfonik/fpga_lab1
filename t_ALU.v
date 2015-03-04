`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Class:			EC551 Spring 2015 
// Assignment:		Lab 1
// Lab Team:		Priya Baskaran & Laura Kamfonik
// Due Date: 		March 6, 2015
//
// Module:   		t_ALU
//
// Description: 	testbench for ALU
////////////////////////////////////////////////////////////////////////////////////

module t_ALU;

	// Inputs
	reg [15:0] Data_A;
	reg [15:0] Data_B;
	reg [1:0] op_sel;

	// Outputs
	wire [15:0] ALU_out;
	wire Zero;

	integer i;
	
	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.ALU_out(ALU_out), 
		.Zero(Zero), 
		.Data_A(Data_A), 
		.Data_B(Data_B), 
		.op_sel(op_sel)
	);

	initial begin
		// Initialize Inputs
		Data_A = 20;
		Data_B = 20;
		op_sel = 0;
		
		for ( i=0;i<4;i=i+1 ) begin	
			#10 op_sel= i;
		end

		// Wait 100 ns for global reset to finish
		#100;

	end
      
endmodule

