module ex2 (a, b, carryin, out, carryout);

input a;
input b;
input carryin;

output carryout;
output out;

assign out = a ^ b ^ carryin;
assign carryout = a & b | (a ^ b) & carryin;

endmodule 