module ex1( //control_unit
	input [5:0] opcode, funct,
	output MemtoReg, MemWrite, Branch, ALUSrc, RegDst, RegWrite,
 	output [2:0] ALUControl
);

	wire [1:0] ALUOp;

	main_decoder md(opcode, MemtoReg, MemWrite, Branch, ALUSrc, RegDst, RegWrite, ALUOp);
	alu_decoder ad(ALUOp, funct, ALUControl);

endmodule