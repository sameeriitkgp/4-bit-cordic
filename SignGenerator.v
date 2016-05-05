`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:18:47 03/07/2016 
// Design Name: 
// Module Name:    SignGenerator 
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
module SignGenerator(
    input [7:0] theta,
	 input Clk,
	 input reset,
    output Sign
    );
	 
wire [7:0] alpha [7:0];

assign alpha[0]=45;
assign alpha[1]=26;
assign alpha[2]=14;
assign alpha[3]=7;
assign alpha[4]=3;
assign alpha[5]=2;
assign alpha[6]=1;
assign alpha[7]=0;

reg [15:0] buffer;
reg [15:0] buffer1;
wire [15:0] buffer2;
reg [3:0] cnt;
reg sig;

ALU alu1(.X(buffer), .Y(buffer1) , .Sign(sig) , .Out(buffer2));

assign Sign=buffer2[15];

always @(posedge Clk) 
begin
	if (reset) begin
		buffer<=0;
		buffer[7:0]<=theta;
		buffer1<=0;
		cnt=0;
		sig=1;
	end
	else begin 
		buffer<=buffer2;
		buffer1<=0;
		buffer1[7:0]<= alpha[cnt];
		sig=~buffer2[15];
		cnt=cnt+1;
	end
end

endmodule
