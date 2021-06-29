`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:17:24 06/29/2019 
// Design Name: 
// Module Name:    EightBitMult 
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
module EightBitMult(input [7:0] M, input [7:0] Q, output [15:0] c);
    
	 
wire [15:0]b;

wire [7:0]q0;	
wire [7:0]q1;	
wire [7:0]q2;
wire [7:0]q3;	

wire [7:0]c1;	
wire [7:0]c2;	
wire [7:0]c3;

FourBitMult z1(M[3:0],Q[3:0],q0);
FourBitMult z2(M[7:4],Q[3:0],q1);
FourBitMult z3(M[3:0],Q[7:4],q2);
FourBitMult z4(M[7:4],Q[7:4],q3);


//assign c = M*Q; 
endmodule
