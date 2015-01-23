`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Edward Fletcher
//			 a11702575
//			 140l Friday
// Create Date:    16:00:36 01/22/2015 
// Design Name: 
// Module Name:    Decoder 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 1.0
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Decoder(
    input w,
    input z,
    output p,
    output q,
    output r,
    output s
    );

	assign p = w & z;
	assign q = w & ~z;
	assign r = ~w & z;
	assign s = ~w & ~z;

endmodule
