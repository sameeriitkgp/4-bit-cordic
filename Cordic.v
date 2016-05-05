`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:54:51 03/14/2016 
// Design Name: 
// Module Name:    Cordic 
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
module Cordic(
    input [7:0] theta,
    input [7:0] X,
    input [7:0] Y,
	 input Clk,
	 input reset,
    output [15:0] Ax,
    output [15:0] Ay
    );

reg [15:0] xr;
reg [15:0] yr;
wire [15:0] shiftedX;
wire [15:0] shiftedY;
wire [15:0] finalX;
wire [15:0] finalY;
wire [15:0] mulX;
wire [15:0] mulY;
reg [15:0] out1;
reg [15:0] out2;
reg[3:0] cnt;
wire Sign;

SignGenerator getALUSign(.theta(theta), .Clk(Clk), .reset(reset), .Sign(Sign));
Shifter shiftx(.X(xr), .bits(cnt), .Z(shiftedX));
Shifter shifty(.X(yr), .bits(cnt), .Z(shiftedY));

ALU alux(.X(xr), .Y(shiftedY), .Sign(Sign), .Out(finalX));
ALU aluy(.X(yr), .Y(shiftedX), .Sign(~Sign), .Out(finalY));

ConstMultiplier mul(.X(out1), .Y(out2), .Ax(mulX), .Ay(mulY));

always @(posedge Clk) begin
	if (reset) begin
		xr<=0;
		xr[15:8]<=X;
		yr<=0;
		yr[15:8]<=Y;
		cnt=0;
	end
	else begin
		xr<=finalX;
		yr<=finalY;
		out1<=finalX;
		out2<=finalY;
		cnt=cnt+1;
	end
end

assign Ax=mulX;
assign Ay=mulY;

endmodule