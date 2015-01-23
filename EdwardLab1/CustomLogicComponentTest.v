`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Edward Fletcher
//			 a11702575
//			 140l Friday
// Create Date:   15:38:10 01/22/2015
// Design Name:   CustomLogicComponent
// Module Name:   /home/kyly/GDrive/wi15/CSE140l/EdwardLab1/CustomLogicComponentTest.v
// Project Name:  EdwardLab1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CustomLogicComponent
//
// Dependencies:
// 
// Revision: 1.0
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module CustomLogicComponentTest;

	// Inputs
	reg a;
	reg b;
	reg c;

	// Outputs
	wire f;

	// Instantiate the Unit Under Test (UUT)
	CustomLogicComponent uut (
		.a(a), 
		.b(b), 
		.c(c), 
		.f(f)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		c = 0;

		// Wait 100 ns for global reset to finish
		#100;
        a = 0;
		b = 0;
		c = 1;
		// Add stimulus here

		#100;
        a = 0;
		b = 1;
		c = 0;

		#100;
        a = 0;
		b = 1;
		c = 1;

		#100;
        a = 1;
		b = 0;
		c = 0;

		#100;
        a = 1;
		b = 0;
		c = 1;

		#100;
        a = 1;
		b = 1;
		c = 0;

		#100;
        a = 1;
		b = 1;
		c = 1;
	end

	initial begin
		$monitor("%d %d %d | %d", a, b, c, f);
	end
      
endmodule

