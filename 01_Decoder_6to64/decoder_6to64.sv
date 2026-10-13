module decoder_6to64 (
	input logic [5 : 0] I , 
	output logic [63 : 0] Y
);

	assign Y = 64'b1 << I;
endmodule 
