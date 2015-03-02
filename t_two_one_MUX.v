`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Class:			EC551 Spring 2015 
// Assignment:		Lab 1
// Lab Team:		Priya Baskaran & Laura Kamfonik
// Due Date: 		March 6, 2015
//
// Module:   		t_two_one_MUX
//
// Description: 	testbench for 2-to-1 multiplexer
////////////////////////////////////////////////////////////////////////////////////

module t_two_one_MUX;

	// Inputs
	reg Data_in_1;
	reg Data_in_2;
	reg select;

	// Outputs
	wire Data_out;

	// Instantiate the Unit Under Test (UUT)
	two_one_MUX uut (
		.Data_in_1(Data_in_1), 
		.Data_in_2(Data_in_2), 
		.select(select), 
		.Data_out(Data_out)
	);

	initial begin
		// Initialize Inputs
		Data_in_1 = 0;
		Data_in_2 = 1;
		select = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		repeat (10)
		begin
			#10 select = !select;
		end

	end
      
      
endmodule

