`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: SwagMastaaa69
// 
// Create Date:    15:25:49 03/07/2016 
// Design Name: 
// Module Name:    Shifter1bit 
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
module Shifter(
    input [15:0] X,
	 input [3:0] bits,
    output [15:0] Z
    );
	
	assign Z = X >>> bits;
	
endmodule
