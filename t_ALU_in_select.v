`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Class:			EC551 Spring 2015 
// Assignment:		Lab 1
// Lab Team:		Priya Baskaran & Laura Kamfonik
// Due Date: 		March 6, 2015
//
// Module:   		t_ALU_in_select
//
// Description: 	testbench for ALU input MUXes
////////////////////////////////////////////////////////////////////////////////////

module t_ALU_in_select;

	// Inputs
	reg [15:0] reg_out_A;
	reg [15:0] reg_out_B;
	reg [15:0] mem_data;
	reg [11:0] number;
	reg [1:0] ALU_A_sel;
	reg [1:0] ALU_B_sel;

	// Outputs
	wire [15:0] ALU_in_A;
	wire [15:0] ALU_in_B;
	
	// Instantiate the Unit Under Test (UUT)
	ALU_in_select uut (
		.reg_out_A(reg_out_A), 
		.reg_out_B(reg_out_B), 
		.mem_data(mem_data), 
		.number(number), 
		.ALU_A_sel(ALU_A_sel), 
		.ALU_B_sel(ALU_B_sel), 
		.ALU_in_A(ALU_in_A), 
		.ALU_in_B(ALU_in_B)
	);

	initial begin
		// Initialize Inputs
		reg_out_A = 10;
		reg_out_B = 11;
		mem_data = 16;
		number = 42;
		ALU_A_sel = 0;
		ALU_B_sel = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		repeat (3) begin
			#20 ALU_A_sel = ALU_A_sel + 1;
			ALU_B_sel = ALU_B_sel + 1;
		end
		

	end
      
endmodule

