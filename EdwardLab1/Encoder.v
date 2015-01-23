`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Edward Fletcher
//			 a11702575
//			 140l Friday
// 
// Create Date:    15:51:27 01/22/2015 
// Design Name: 
// Module Name:    Encoder 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: Encoder
//
// Dependencies: 
//
// Revision: 1.0
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Encoder(
    input a,
    input b,
    input c,
    input d,
    output x,
    output y
    );

	assign x = (~a & b & ~c & ~d) | (a & ~b & ~c & ~d);
	assign y = (~a & ~b & c & ~d) | (a & ~b & ~c & ~d);


endmodule
