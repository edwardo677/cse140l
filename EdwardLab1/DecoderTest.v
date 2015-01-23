`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Edward Fletcher
//			 a11702575
//			 140l Friday
// Create Date:   16:01:53 01/22/2015
// Design Name:   Decoder
// Module Name:   /home/kyly/GDrive/wi15/CSE140l/EdwardLab1/DecoderTest.v
// Project Name:  EdwardLab1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Decoder
//
// Dependencies:
// 
// Revision:1.0
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module DecoderTest;

	// Inputs
	reg w;
	reg z;

	// Outputs
	wire p;
	wire q;
	wire r;
	wire s;

	// Instantiate the Unit Under Test (UUT)
	Decoder uut (
		.w(w), 
		.z(z), 
		.p(p), 
		.q(q), 
		.r(r), 
		.s(s)
	);

	initial begin
		// Initialize Inputs
		w = 0;
		z = 0;

		// Wait 100 ns for global reset to finish
		#100;
        w = 0;
		z = 1;
		// Add stimulus here
		#100;
        w = 1;
		z = 0;

		#100;
        w = 1;
		z = 1;

	end

	initial begin
		$monitor("%d %d | %d %d %d %d", w, z, p, q, r, s);
	end
      
endmodule

