`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:43:44 06/29/2019 
// Design Name: 
// Module Name:    SixteenBitMult 
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
module SixteenBitMult(a,b,c
    );

input [15:0] a,b; // //ma={1'b1,10bit of mantissa}
output [31:0] c;
reg [31:0] a_temp; //for result of 22bit
reg [31:0] q_temp;

integer i;
always @(a,b)
begin
a_temp ={16'b0,a[15:0]};//a_temp=32'b0;
q_temp = 32'b0;

for(i=0;i<16;i=i+1)
begin
   if(b[i] == 1)
        q_temp=q_temp+a_temp;//add based on multiplier bit
   else
        q_temp=q_temp;
   a_temp={a_temp[30:0],1'b0};//shift in each iteration
end
end
assign c=q_temp[31:0];
endmodule
/*
EightBitMult z1(a[7:0],b[7:0],q0[15:0]);
EightBitMult z2(a[15:8],b[7:0],q1[15:0]);
EightBitMult z3(a[7:0],b[15:8],q2[15:0]);
EightBitMult z4(a[15:8],b[15:8],q3[15:0]);


assign c = a*b;
*/

