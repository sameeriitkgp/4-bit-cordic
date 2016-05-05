`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:58:28 03/07/2016 
// Design Name: 
// Module Name:    ALU 
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
module ALU(
    input [15:0] X,
    input [15:0] Y,
    input Sign,
    output [15:0] Out
    );
	 
wire [15:0] a;
wire [15:0] s;
wire [15:0] b;
wire [15:0] c;

assign s[0]=Sign;
assign s[1]=Sign;
assign s[2]=Sign;
assign s[3]=Sign;
assign s[4]=Sign;
assign s[5]=Sign;
assign s[6]=Sign;
assign s[7]=Sign;
assign s[8]=Sign;
assign s[9]=Sign;
assign s[10]=Sign;
assign s[11]=Sign;
assign s[12]=Sign;
assign s[13]=Sign;
assign s[14]=Sign;
assign s[15]=Sign;

assign a = s^Y;
assign b = a+X;

assign c[0] = Sign;
assign c[15:1] = 7'b000000000000000;

assign Out = c+b;

endmodule