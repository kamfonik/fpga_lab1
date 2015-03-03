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
module Register_File #(parameter address_size= 6, word_size= 16)(
	output [word_size -1 :0] Data_Out_1, Data_Out_2,
	input [word_size -1 : 0] Data_in,
	input [address_size-1 : 0] Read_addr_1, Read_addr_2, Write_addr,
	input Write_Enable, Reset
    );

reg [word_size-1:0] Reg_File[2:0];

assign Data_Out_1 = Reg_File[Read_addr_1];
assign Data_Out_2 = Reg_File[Read_addr_2];

always @(Write_Enable, Reset, Data_in, Write_addr )
	begin
		if ( Reset ) begin
			Reg_File[0] <= 0;
			Reg_File[1] <= 0;
			Reg_File[2] <= 0;
			Reg_File[3] <= 0;
			Reg_File[4] <= 0;
			Reg_File[5] <= 0;
		end
		else begin
			if ( Write_Enable == 1'b1)
				Reg_File[Write_addr] <= Data_in;
		end
	end
endmodule
