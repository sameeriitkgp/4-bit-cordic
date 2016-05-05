`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:31:05 03/07/2016 
// Design Name: 
// Module Name:    Shifter3bit 
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
module Shifter3bit(
    input [7:0] X,
    output [7:0] Z
    );

assign Z[7] = 0;
assign Z[6] = 0;
assign Z[5] = 0;
assign Z[4] = 0;
assign Z[3] = 0;
assign Z[2] = 0;
assign Z[1] = 0;
assign Z[0] = X[3];

endmodule
