`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Edward Fletcher
//			 a11702575
//			 140l Friday
// Create Date:   15:54:50 01/22/2015
// Design Name:   Encoder
// Module Name:   /home/kyly/GDrive/wi15/CSE140l/EdwardLab1/EncoderTest.v
// Project Name:  EdwardLab1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Encoder
//
// Dependencies:
// 
// Revision:1.0
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module EncoderTest;

	// Inputs
	reg a;
	reg b;
	reg c;
	reg d;

	// Outputs
	wire x;
	wire y;

	// Instantiate the Unit Under Test (UUT)
	Encoder uut (
		.a(a), 
		.b(b), 
		.c(c), 
		.d(d), 
		.x(x), 
		.y(y)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		c = 0;
		d = 0;

		// Wait 100 ns for global reset to finish
		#100;
        a = 0;
		b = 0;
		c = 0;
		d = 1;

		#100;
        a = 0;
		b = 0;
		c = 1;
		d = 0;

		#100;
        a = 0;
		b = 1;
		c = 0;
		d = 0;

		#100;
        a = 1;
		b = 0;
		c = 0;
		d = 0;

	end
      
    initial begin
		$monitor("%d %d %d %d | %d %d", a, b, c, d, x, y);
	end  

 
endmodule

