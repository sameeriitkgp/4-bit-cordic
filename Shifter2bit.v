`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:29:56 03/07/2016 
// Design Name: 
// Module Name:    Shifter2bit 
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
module Shifter2bit(
    input [3:0] X,
    output [3:0] Z
    );

assign Z[3] = 0;
assign Z[2] = 0;
assign Z[1] = X[3];
assign Z[0] = X[2];

endmodule
