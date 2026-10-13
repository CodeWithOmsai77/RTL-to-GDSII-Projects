`timescale 1ns/1ps
module tb_decoder_6to64;

	logic [5 : 0] I;
	logic [63 : 0] Y;
	logic [63 : 0] expected_Y;


	decoder_6to64 DUT (
		.I(I) , 
		.Y(Y)
	);
	
	integer i;
	initial begin 
	
	for (i = 0 ; i < 64 ; i++) begin 
		I = i;
		expected_Y = 64'b1 << I;
 #1;

            if (Y !== expected_Y) begin
                $display("FAIL: I=%0d, Expected=%h, Got=%h",
                         I, expected_Y, Y);
                $fatal(1, "Decoder verification failed");
            end
        end

	$finish;
	end
endmodule
