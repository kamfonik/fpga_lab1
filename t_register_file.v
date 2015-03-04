`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:54:41 03/03/2015
// Design Name:   Register_File
// Module Name:   C:/Users/kamfonik/Documents/Git_Repos/fpga_lab1/t_register_file.v
// Project Name:  fpga_lab1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Register_File
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module t_register_file;

	// Inputs
	reg [15:0] Data_in;
	reg [5:0] read_write_addr;
	reg [5:0] read_addr_2;
	//reg [5:0] Write_addr;
	reg [15:0] pc_in;
	reg Write_Enable;
	reg Reset;
	reg mem_to_reg_data;

	// Outputs
	wire [15:0] Data_Out_1;
	wire [15:0] Data_Out_2;
	
	wire [15:0] Reg0;
	wire [15:0] Reg1;
	wire [15:0] Reg2;
	wire [15:0] Reg3;
	wire [15:0] Reg4;
	wire [15:0] Reg5;
	wire [15:0] Reg6;

	// Instantiate the Unit Under Test (UUT)
	Register_File uut (
		.Data_in(Data_in), 
		.read_write_addr(read_write_addr), 
		.read_addr_2(read_addr_2), 
		//.Write_addr(Write_addr), 
		.pc_in(pc_in), 
		.Write_Enable(Write_Enable), 
		.Reset(Reset),
		.mem_to_reg_data(mem_to_reg_data),
		.Data_Out_1(Data_Out_1), 
		.Data_Out_2(Data_Out_2),
		.Reg0(Reg0),
		.Reg1(Reg1),
		.Reg2(Reg2),
		.Reg3(Reg3),
		.Reg4(Reg4),
		.Reg5(Reg5),
		.Reg6(Reg6)
	);

	integer i;
	initial begin
		// Initialize Inputs
		Data_in = 0;
		pc_in = 0;
		read_write_addr = 0;
		read_addr_2 = 0;
		//Write_addr = 0;
		Write_Enable = 0;
		Reset = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		pc_in = 1;
			 
		// Add stimulus here
	
		
		
		
		for ( i=0;i<6;i=i+1 ) begin
			read_write_addr = i;
			read_addr_2 = i + 1;
			#20 Write_Enable = 1;
			#20 Data_in = i[15:0];
			#10 Write_Enable = 0;
		end
		
		#50;
		
	/*	for ( i=0;i<6;i=i+1 ) begin	
			#10 read_write_addr = i;
			#10 Read_addr_2 = i+1;
		end*/
		#20 Reset = 1;
		#10 Reset = 0;
		
		Data_in = 42;
		read_write_addr = 6;
		Write_Enable = 1;
		#20 Write_Enable = 0;
	

	end
      
endmodule

