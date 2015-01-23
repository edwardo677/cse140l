`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Edward Fletcher
//			 a11702575
//			 140l Friday
// Create Date:    15:34:57 01/22/2015 
// Design Name: 
// Module Name:    CustomLogicComponent 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: custom logic component
//
// Dependencies: 
//
// Revision: 1.0
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module CustomLogicComponent(
    input a,
    input b,
    input c,
    output f
    );

	assign f = (a&c)|(~a & b & ~c)|(~b&c);
	

endmodule
