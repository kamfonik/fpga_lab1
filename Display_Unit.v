`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:37:32 03/03/2015 
// Design Name: 
// Module Name:    Display_Unit 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: Takes 16 bit data and displays on Seven segment and VGA display
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Display_Unit(input clk,input [1:0] toggle,
	input [15:0] Data_in,
	output [2:0] R, G, [1:0] B, 
	output HS, VS, // for VGA
	output [6:0] Seven_Segment,  // for seven segment display
	output reg [3:0] Select
    );
	 
	//;parameter [15:0] Data_in = 16'b1011011110100101;
	//parameter s_0 = 2'b00, s_1=2'b01, s_2=2'b10, s_3=2'b11;
	parameter s_0 =1'b0, s_1=1'b1;
	parameter [2:0] rCtrl = 3'b111;
	parameter [2:0] gCtrl = 3'b111;
	parameter [1:0] bCtrl = 2'b11;
	
	reg [4:0] Data_in_seven;
	reg  state, next_state;
	
	integer counter;
	parameter off = 4'b1111; 
	/////////////////////////////////////////////////////
	// Begin clock division
	parameter N = 6;	// parameter for clock division
	reg clk_25Mhz;
	reg [N-1:0] count;
	always @ (posedge clk) begin
		count <= count + 1'b1;
		clk_25Mhz <= count[N-1];
	end
	// End clock division
	/////////////////////////////////////////////////////
	/*reg clk_25Mhz;
   integer count;
	always @(posedge clk)
	begin
	case(count)      
		500: begin clk_25Mhz <= clk_25Mhz + 1; count <= 0; end   // Change 500 to any divisor you like
	default:  count <= count + 1;   
	endcase
end	*/

	always @(posedge clk_25Mhz)
	begin
		case(counter)
		0:
		begin
			Select <= 4'b0111;
			counter <= 1;
		end
		1:
		begin
			Data_in_seven <= {0,Data_in[3:0]};
			counter <= 2;
		end
		2:
		begin
			Data_in_seven <= 5'b10000;
			counter <= 3;
		end
		3:
		begin
			Select <= 4'b1011;
			counter <= 4;
		end
		4:
		begin
			Data_in_seven <= {0,Data_in[7:4]};
			counter <= 5;
		end
		5:
		begin
			Data_in_seven <= 5'b10000;;
			counter <= 6;
		end
		6:
		begin
			Select <= 4'b1101;
			counter <= 7;
		end
		7:
		begin
			Data_in_seven <= {0,Data_in[11:8]};
			counter <= 8;
		end
		8:
		begin
			Data_in_seven <= 5'b10000;;
			counter <= 9;
		end
		9:
		begin
			Select <= 4'b1110;
			counter <= 10;
		end
		10:
		begin
			Data_in_seven <= {0,Data_in[15:12]};
			counter <= 11;
		end
		11:
		begin
			Data_in_seven <= 5'b10000;;
			counter <= 0;
		end
		default:
			counter <= 0;
		endcase
	end
	
   sevensegment s( .Data_in(Data_in_seven), 
			.Data_out(Seven_Segment));
		
	vga_display v(.clk(clk_25Mhz),
					.R_control(rCtrl),
					.G_control(gCtrl),
					.B_control(bCtrl),
					.R(R),
					.G(G),
					.B(B),
					.HS(HS),
					.VS(VS),
					.seven(Seven_Segment)
					);

endmodule
