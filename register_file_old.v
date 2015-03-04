`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:25:48 03/02/2015 
// Design Name: 
// Module Name:    register_file 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Register_File #(parameter ADDR= 6, WORD= 16)(
	input [WORD-1 : 0] Data_in,
	input [ADDR-1 : 0] Read_addr_1, Read_addr_2, Write_addr,
	input [WORD-1 :0] new_pc_in,
	input Write_Enable, Reset,
	output [WORD-1 :0] Data_Out_1, Data_Out_2,
	output [WORD-1:0] Reg0,
	output [WORD-1:0] Reg1,
	output [WORD-1:0] Reg2,
	output [WORD-1:0] Reg3,
	output [WORD-1:0] Reg4,
	output [WORD-1:0] Reg5,
	output [WORD-1:0] Reg6
);

reg [WORD-1:0] Reg_File [0:6];

assign Data_Out_1 = Reg_File[Read_addr_1];
assign Data_Out_2 = Reg_File[Read_addr_2];

assign Reg0 = Reg_File[0];
assign Reg1 = Reg_File[1];
assign Reg2 = Reg_File[2];
assign Reg3 = Reg_File[3];
assign Reg4 = Reg_File[4];
assign Reg5 = Reg_File[5];
assign Reg6 = Reg_File[6];

always @(new_pc_in)	
begin
	Reg_File[6] = new_pc_in;
end

always @(Write_Enable, Reset, Data_in, Write_addr)
//always @(*)
	begin
	//Reg_File[6] = new_pc_in;
		if ( Reset ) begin
			Reg_File[0] <= 0;
			Reg_File[1] <= 0;
			Reg_File[2] <= 0;
			Reg_File[3] <= 0;
			Reg_File[4] <= 0;
			Reg_File[5] <= 0;
			//Reg_File[6] <= 0;			// This is the PC, do we want it to reset? to what?
		end
		else if( Write_Enable && ( Write_addr != 6)) begin		// prevent writing to R6 via these ports
				Reg_File[Write_addr] = Data_in;
		end
	end
endmodule
