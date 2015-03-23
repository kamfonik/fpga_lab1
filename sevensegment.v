`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:22:16 03/03/2015 
// Design Name: 
// Module Name:    sevensegment 
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

module sevensegment(output reg [6:0] Data_out, input [4:0] Data_in);

always @ (Data_in)
    case (Data_in)
        0:     Data_out <= 7'b0000001;  //abcdefg
        1:     Data_out <= 7'b1001111;
        2:     Data_out <= 7'b0010010;
        3:     Data_out <= 7'b0000110;
        4:     Data_out <= 7'b1001100;
        5:     Data_out <= 7'b0100100;
        6:     Data_out <= 7'b0100000;
        7:     Data_out <= 7'b0001111;
        8:     Data_out <= 7'b0000000;
        9:     Data_out <= 7'b0000100;
        10:    Data_out <= 7'b0001000;
        11:    Data_out <= 7'b1100000;
        12:    Data_out <= 7'b0110001;
        13:    Data_out <= 7'b1000010;
        14:    Data_out <= 7'b0110000;
        15:    Data_out <= 7'b0111000;
		  16:		Data_out <= 7'b1111111;
        default:    Data_out <= 7'b1111111;
    endcase
endmodule

