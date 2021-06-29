`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:59:09 06/29/2019
// Design Name:   EightBitMult
// Module Name:   C:/XLNX_Projects/Project_16x16_Mult/test8.v
// Project Name:  Project_16x16_Mult
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: EightBitMult
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test8;

	// Inputs
	reg [7:0] M;
	reg [7:0] Q;

	// Outputs
	wire [15:0] c;

	// Instantiate the Unit Under Test (UUT)
	EightBitMult uut (
		.M(M), 
		.Q(Q), 
		.c(c)
	);

	initial begin
		// Initialize Inputs
		M = 8'b00000001;
		Q = 8'b00000010;;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

